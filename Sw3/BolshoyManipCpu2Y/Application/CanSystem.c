/*
 * CanSystem.c
 * Intermediate level state machine for CAN based manipulator management
 *
 *  Created on: Nov 11, 2023
 *      Author: yahal
 */
#include "StructDef2.h"
float CalcManipulatorPosCan ( void );
short ApplySuck( void );

void CalcManipulatorPosCAN ( void );
void UpdateManipulatorControlCAN( void );



struct CBH * GetBH(short unsigned LogicId)
{
    return &SysState.CanAxis[LogicId].BH ;
}
/**
 * \brief State machine for the 24V network management
 *
 */



/*
 * The main periodic code to treat the manipulator.
 * Code is synchronized by acceptance of new synchronous messages from the manipulator drivers
 * All the axes are treated in each cycle.
 */
void CANStateMachine ( void )
{
    short  cnt ;
    short unsigned mask , bDisableControl ;
    //short unsigned ShErr , ElErr , WrErr ;
    volatile struct CCanAxis * pAxis ;
    short unsigned MotorOnReq ;// CurrentReq ;

    // Control works only if on operational state
    if ( SysState.WakeupState != E_CAN_WAKEUP_OPERATIONAL )
    {
        CanNet.SubState = 0 ; // Wait initialization done
        return ;
    }

    // call the manipulator control function
    CalcManipulatorPosCAN() ; // Get manipulator coordinates and detect if it is stopped

    UpdateManipulatorControlCAN ( ) ; // Manipulator operation algorithm

    // Manage motor On/Off transition, decide between atomatic/individual control options,  and call build RxPDO messages for axis
    for ( cnt = 0 ; cnt < N_CAN_SLAVES; cnt++)
    {
        pAxis = &SysState.CanAxis[cnt] ;

        if ( S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual )
        {
            pAxis->BH.IndividualMode = 1 ;
            pAxis->BH.UserPosCmd = pAxis->BH.IndividualPosCmd ;
            pAxis->BH.UserSpeedCmd = pAxis->BH.IndividualSpeedCmd ;
            MotorOnReq = ( pAxis->BH.IndividualMotorOnCmd && (SysState.Mot.mode != E_SysMotionModeFault)) ? 1 : 0 ;
        }
        else
        {
            // Manipulator motor is on by request
            pAxis->BH.IndividualMode = 0 ;
            MotorOnReq = ( TapeArmCmd.ControlWord.MotorsOn && (SysState.Mot.mode != E_SysMotionModeFault)) ? 1 : 0 ;
        }
        pAxis->BH.BhCw.bit.MotorOnCmd = (MotorOnReq) ? 1 : 0 ;

        if ( pAxis->BH.BhCw.bit.MotorOnCmd != pAxis->BH.AxisCbit.bit.MotorOn )
        {

            // Test that axes conform their On/Off demands
            CanNet.MotorTransitionCnt[cnt] += 1 ;
            if ( CanNet.MotorTransitionCnt[cnt] > 4 )
            { // Very wrong, too much time that actual motor / on -off deviates from command
                LogException( OWN_EXP_ID , EXP_FATAL , error_ServoOnFail_Axis1+cnt ) ;
            }
        }
        else
        {
            CanNet.MotorTransitionCnt[cnt] = 0  ;
        }

        // Control will not work if either: Motor on is not desired, or not reported, or in motor on-off transition
        bDisableControl = ( (MotorOnReq == 0 ) || CanNet.MotorTransitionCnt[cnt] ) ? 1 : 0 ;
        if (bDisableControl )
        {
            // Just produce a "non jumping" command
            pAxis->BH.UserSpeedCmd = 0 ;
            pAxis->BH.UserPosCmd   = pAxis->BH.UserPos ;
        }
        else
        {
            if (pAxis->BH.BhCw.bit.LoopClosure > E_LC_Speed_Mode  )
            {// This is a position mode; select whether to use potentiometer for position control by axis operational setting
                pAxis->BH.PosError = pAxis->BH.ReportPosCmd - pAxis->BH.UserPos ;
                pAxis->BH.BhCw.bit.LoopClosure = pAxis->BH.PositionLoopClosureMode  ;
            }
            else
            {
                pAxis->BH.UserPosCmd   = pAxis->BH.UserPos ;
                pAxis->BH.PosError  = 0 ;
            }
        }
        mask = BlockInts() ;
        TransmitRxPdo1Slave(cnt) ;
        RestoreInts(mask) ;
    }
}

/*
 * Manage host commands for homing
 */
short DealHomingCommands(void)
{
    if ( TapeArmCmd.ControlWord.KillHoming )
    { // Kill homing on request
        S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Homed = 0 ;
        TapeArmCmd.HomingState = E_FlexHomeStateNothing ;
    }
    else
    {
        if ( S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Homed == 0 )
        {
            if ( TapeArmCmd.ControlWord.DoHoming == 0 )
            {
                TapeArmCmd.HomingState = E_FlexHomeStateNothing;
                TapeArmStopMan();
            }
            else
            {
                // Commanded for home
                if ( TapeArmCmd.HomingState < E_FlexHomeState_Init )
                { // If had not started yet, do it now
                    TapeArmCmd.HomingState = E_FlexHomeState_Init;
                }

                // Manage homing
                FlexHoming( ) ;

                if ( TapeArmCmd.HomingState == E_FlexHomeState_Error )
                {
                    SetManError ( EXCEPT_COULD_NOT_HOME_TAPE , ERROR_SRC_SYS ) ;
                }
            }
        }
    }
    return ( S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Homed  &&  (TapeArmCmd.ControlWord.DoHoming == 0  )) ? 1 : 0  ;
}


/**
 * \brief Apply suction
 *
 * SuckRequest :  Bit field  .0: Suck/release   .1: Dont test suction .2: Restart timer even if already sucking
* \Returns:
 * Apply suction
 * Returns:
 * 1: Actual state matches suction command
 * 0: Processing new command
 * -1: Error
 */

short TapeArmApplySuck( void )
{
    float twait ;

    if ( OverRideSwitches )
    {
        return 0 ;
    }

    // Direct command to pumps
    S2M.Items.ActStatus.stat.PumpCmd = SysState.Package.SuckRequest.items.DoSuck ? 1 : 0 ;

    // If suck command changed, arm change timer
    if (  SysState.Package.SuckRequest.items.RestartTimerAnyway  || ( SysState.Package.SuckRequest.items.DoSuck != SysState.Package.SuckCmd.items.DoSuck ))
    {
        SysState.Package.SuckRequest.items.RestartTimerAnyway = 0  ; // Kill "Time anyway" flag
        twait = ( SysState.Package.SuckRequest.items.DoSuck )  ? ManGeo.TimeForEntireSuck : ManGeo.TimeForEntireSuckRelease ;
        SetSysTimerTargetSec ( TMR_WAIT_SUCK_CHNG , twait + 0.1f ,&SysTimerStr );
    }
    SysState.Package.SuckCmd.us = SysState.Package.SuckRequest.us;

    if ( SysState.Package.SuckRequest.items.DoNotTestSuction )
    { // Flagged to apply suction but not to test it
        return 1 ;
    }

    // test suction: either done or timed out
    if ( (SysState.Package.SuckRequest.items.DoSuck && SysState.Pump.IsHolding) ||  ( (SysState.Package.SuckRequest.items.DoSuck == 0) && SysState.Pump.IsDepleted))
    {
        return 1 ; // As expected
    }


    if ( IsSysTimerElapse(TMR_WAIT_SUCK_CHNG,&SysTimerStr) )
        return -1 ; // Failure

    return 0 ; // No match, but still acceptable
}


/**
 * \brief Operate the manipulator control function
 *
 * \param UpdAxis : The axis whose feedback is just update
 * \param pMonRequest -> Motor on request
 * \param pSpeedCmdRadSec -> Speed command
 *
 */
void  UpdateManipulatorControlCAN( void )
{
    short unsigned cnt ;
    short homed ;
    //volatile CCanAxis * pAxis ;

    // Do kynematics anyway for telemetry
    //dT = CalcManipulatorPosCAN ( ) ;
    // Deal homing kill requests
    // If yet un-homed, reset operational state machines

    TapeArmApplySuck();

    // If in individual mode...
    if ( S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual )
    { // Each axis will have its own reference
        CanNet.ManOnRequestFlag = 0 ; // Remove automatic motor start requests

        for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
        { // For now individual mode assumes position control. Speed individual control may be added at will.
            //SysState.CanAxis[cnt].BH.BhCw.bit.MotorOnCmd = IndividualAxCtl24[cnt].MotorOnRequest ;
            SysState.CanAxis[cnt].BH.UserPosCmd = SysState.CanAxis[cnt].BH.IndividualPosCmd ;
            SysState.CanAxis[cnt].BH.BhCw.bit.MotorOnCmd = SysState.CanAxis[cnt].BH.IndividualMotorOnCmd ;
        }
        //Manual suction cups
        SysState.Package.SuckRequest.us = ManualManCmd.SuctionOn    ;
        TapeArmCmd.State = MAN_ST_INIT ;
        //SetSysTimerTargetSec ( TIMER_DYNAMIXEL_ON_TMR12 , DYNAMIXEL_MOTOR_ON_TOUT ,&SysTimerStr );
        SysState.Package.LaserRequest = 0;
    }
    else
    {

        if ( ( TapeArmCmd.ControlWord.Automatic == 1  ) &&  TapeArmCmd.ControlWord.MotorsOn ) //manual is of lower priority than automatic
        {
            TapeArmSetManOn() ; // Command all the motors to on
#if DEF_NUM_12V_MANIP_AXES > 0
            if ( TapeArmCmd.ServoMotorOn  == 0 || TapeArmCmd.DoorsMotorsOn == 0)
            {
                if ( IsSysTimerElapse ( TIMER_DYNAMIXEL_ON_TMR12  ,&SysTimerStr ) )
                {
                    SetManError ( EXCEPT_CANT_SET_MON_AUTO_MAN+N_CAN_SLAVES-1 , ERROR_SRC_SYS ) ;
                }
            }
            else
#else
            {

            if ( TapeArmCmd.ServoMotorOn   )
#endif
                // Motors are on

                // First see if homing is complete
                homed = DealHomingCommands() ;

                if ( homed )
                { // Absolute position is known, because homing procedure have been successfully completed
                    if (  ( TapeArmCmd.ControlWord.Standby == 0) && (TapeArmCmd.ControlWord.Package == 0) && (TapeArmCmd.ControlWord.DoHoming == 0 ) )
                    { // No commanded to do anything
                        SysState.Package.LaserRequest =  0 ;
                        ResetTapeArmManipulatorLogics() ;
                        TapeArmStopMan() ;
                        SysState.Package.ManHolds |= MAN_HOLDS_INACTIVE ;
                        SysState.Package.ManHolds &= ~(MAN_HOLDS_SUSPECT_CONTACT | MAN_HOLDS_SUSPECT_CONTACT_W_PUMP);
                        ManCmd.GoStandbyState = 0   ;
                    }
                    else
                    {
                        // Normal operating of the  manipulator
                        TapeArmHandleOperations( );
                    }
                }
                else
                { // Not homed yet - reset operational state
                    ResetTapeArmManipulatorLogics() ;
                }
            }
        }
        else
        { // Nothing to do , just shut manipulator
            FlexShutMan();
            ResetTapeArmManipulatorLogics() ;
        }
    }
}

/**
 * \brief Get the angle target and the direction
 * If commanded to a specific direction, its the final angle, otherwise the existing commnded position
 */
short TapeArmGetThetaTarget(float * ThetaTarget)
{
    short dir ;
    switch ( TapeArmCmd.ControlWordCopy.Side )
    {
    case PICKDIR_LEFT: //left
        *ThetaTarget =  -1.570796326794897f ;
        dir = -1;
        break ;
    case PICKDIR_RIGHT: //right
        *ThetaTarget = 1.570796326794897f ;
        dir = 1;
        break ;
    default:
        *ThetaTarget = SysState.CanAxis[LOGICAL_PLATE].BH.UserPos   ;
        dir = 0 ;
        break;
    }
    return dir ;
}



/*
 * Reset manipulator activation logics to the zero state.
 * Used when the manipulator is inactive
 */
short ResetTapeArmManipulatorLogics(void)
{
    volatile struct CCanAxis * pAxis ;
    short unsigned cnt ;

    TapeArmCmd.ControlWordCopy = TapeArmCmd.ControlWord ;

    SysState.Package.SuckCmd.us = 0 ;
    SysState.Package.SuckRequest.us = 0 ;
    // Reset the mechanism for retry if package suckers failed
    TapeArmCmd.FailedPackageGrip = 0 ;
    SysState.Package.LaserRequest = 0;

    // Put to initialize state
    if ( TapeArmCmd.ControlWord.MotorsOn)
    {
        TapeArmCmd.State = MAN_ST_INIT ;
    }

    // Reset suck success timer
    SetSysTimerTargetSec ( TMR_WAIT_SUCK_CHNG , 3.0f ,&SysTimerStr);

    // Get the operating side (right or left)
    TapeArmCmd.GetSide = TapeArmGetThetaTarget( & TapeArmCmd.ThetaTarget) ;

    // Reset all the controllers
    for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++)
    {
        pAxis = &SysState.CanAxis[cnt] ;
        pAxis->BH.BhCw.bit.ReferenceMode = E_PosModeStayInPlace ;
    }

    return 0 ;
}








/*
 * \brief Get actuator position - and detect if it is stopped
 */
void CalcManipulatorPosCAN ( void )
{
    short unsigned cnt  ;
    short unsigned axesStopped ,profstopped ,  motorabsent , motorOn  ;
    float x , y , theta;
    struct CCanAxis *pAxis ;

    // Get the physical position of the manipulator
    FlexGetGripperRobotCoord ( &x , &y  , &theta ) ;

    TapeArmCmd.x = x  ;
    TapeArmCmd.y = y  ;
    TapeArmCmd.theta = theta ;

    // Get motion condition for the servo axes
    axesStopped = 1 ;
    profstopped = 1 ;
    motorOn     = 1 ;
    for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
    {
        pAxis = (struct CCanAxis *) &SysState.CanAxis[cnt] ;
        if ( pAxis->BH.BhCw.bit.MotorOnCmd )
        {
            if ( pAxis->BH.AxisCbit.bit.MotionConverged == 0 )
            {
                axesStopped = 0 ;
            }
            if ( pAxis->BH.AxisCbit.bit.ProfileConverged == 0 )
            {
                profstopped = 0 ;
            }
            if ( pAxis->BH.AxisCbit.bit.MotorOn == 0 )
            {
                motorOn = 0 ;
            }
        }
        else
        {
            motorOn = 0 ;
        }
    }
    TapeArmCmd.ServoStopped = axesStopped * profstopped  ;
    TapeArmCmd.ProfilerStopped =  profstopped   ;
    TapeArmCmd.ServoMotorOn = motorOn ;

    // Get the status of the dynamixel axes
    axesStopped = 1 ;
    motorabsent = 0 ;
    for ( cnt = 0 ; cnt < NUM_12V_MANIP_AXES ; cnt++ )
    {
        if ( DynStat12[cnt].MotorOn == 1 )
        {
            if  ( DynStat12[cnt].Moving )
            {
                axesStopped = 0 ;
            }
        }
        else
        {
            motorabsent = cnt ;
        }
    }
    TapeArmCmd.DoorsMotorsOn = axesStopped ;
    ManCmd.MotorOnStop = axesStopped ;
    ManCmd.MotorAbsentStop = motorabsent ;
}
