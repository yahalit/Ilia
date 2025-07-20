/*
 * CanSystem.c
 * Intermediate level state machine for CAN based manipulator management
 *
 *  Created on: Nov 11, 2023
 *      Author: yahal
 */
#include "StructDef2.h"

float CalcManipulatorPosCan ( void );
inline void ManCmd2FlexManipControlCopyCommand();

void CalcManipulatorPosCAN ( void );
void UpdateFlexManipControl( void );



struct CBH * GetBH(short unsigned LogicId)
{
    return &SysState.CanAxis[LogicId].BH ;
}

void RunFlexSystem( void ) //was split from RunDynamixelSystem()
{
    //reset servos for recovery purposes.
    if ( M2S.Items.ActCmd.cmd.StateResetCnt != SysState.ManResetCounter)
    {
        SysState.ManResetCounter = M2S.Items.ActCmd.cmd.StateResetCnt ;
        ManCmd.State = 0 ;
        FlexManipAxesStopMan(); //added to stop servo motors, by set stay in place
    }

    SetManipulatorControlWord( M2S.Items.ActCmd.cmd.ControlWord);
}


/*
 *  Manage motor On/Off transition, decide between automatic/individual control options, and call build RxPDO messages for axis
 */
void verifyFlexManipAxesStateBuildRxPDO()
{
    short  cnt, ok  ;
    short unsigned bDisableControl ;
    //short unsigned ShErr , ElErr , WrErr ;
    volatile struct CCanAxis * pAxis ;
//    short unsigned MotorOnReq ;// CurrentReq ;

    // Manage motor On/Off transition, decide between automatic/individual control options, and call build RxPDO messages for axis
    for (cnt = 0; cnt < N_CAN_SLAVES; cnt++)
    {
        pAxis = &SysState.CanAxis[cnt];

        ok = 1 ;
        if ( pAxis->BH.BhCw.bit.MotorOnCmd  == 0 )
        {
            if ( pAxis->BH.AxisCbit.bit.MotorOn )
            {
                ok = 0 ;
            }
        }
        else
        {
            if ( ( pAxis->BH.AxisCbit.bit.MotorOn == 0 ) && ( pAxis->BH.AxisCbit.bit.MotorReady == 0 ))
            {
                ok = 0  ;
            }
        }

        if (ok == 0 ) //there is a motor on/ off command that did not finish execution by the axis
        {
            // Test that axes conform their On/Off demands
            CanNet.MotorTransitionCnt[cnt] += 1;
            if (CanNet.MotorTransitionCnt[cnt] > 1000) //TODO:check if 25 count is enough to release the breaks
            {
                // Very wrong, too much time that actual motor / on -off deviates from command
                LogException(OWN_EXP_ID, EXP_FATAL,error_ServoOnFail_Axis1 + cnt);
                //CanNet.MotorTransitionCnt[cnt] = 0; //No need, will be zeroed next time the cmd and state be aligned. added to reset counter after exception.
            }
        }
        else
        {
            //the axis motor state is in the correct state (on or off)
            CanNet.MotorTransitionCnt[cnt] = 0;
        }

        // Control will not work if either: Motor on is not desired, or not reported, or if motor on-off transition
        bDisableControl = ((pAxis->BH.BhCw.bit.MotorOnCmd == 0) || CanNet.MotorTransitionCnt[cnt]) ? 1 : 0;
        if (bDisableControl) //need to disable control, either received a motor off command (individual or automatic) or the motor did not finish responding to the motor on command
        {
            // Just produce a "non jumping" command
            pAxis->BH.UserSpeedCmd = 0;
            //pAxis->BH.UserPosCmd = pAxis->BH.UserPos;//give a position command that is equal to the current position.
            SetPosCmd2PosFeedback((struct CCanAxis *)pAxis);
        }
        else
        {
            if (pAxis->BH.BhCw.bit.LoopClosure > E_LC_Speed_Mode)
            {
                // This is a position mode; select whether to use potentiometer for position control by axis operational setting
                pAxis->BH.PosError = pAxis->BH.ReportPosCmd - pAxis->BH.UserPos;
                pAxis->BH.BhCw.bit.LoopClosure = pAxis->BH.PositionLoopClosureMode;
            }
            else
            {
                //loop closure is on of the above: E_LC_Voltage_Mode = 0 , E_LC_OpenLoopField_Mode = 1 , E_LC_Torque_Mode = 2 , E_LC_Speed_Mode = 3 ,
                //pAxis->BH.UserPosCmd = pAxis->BH.UserPos;//give a position command that is equal to the current position.
                SetPosCmd2PosFeedback((struct CCanAxis *)pAxis);
                pAxis->BH.PosError = 0;
            }
        }
        //mask = BlockInts();
        BuildRxPdo1Slave(cnt);
        //RestoreInts(mask);
    }
}

/*
 * The main periodic code to treat the manipulator.
 * Code is synchronized by acceptance of new synchronous messages from the manipulator drivers
 * All the axes are treated in each cycle.
 */
void CANStateMachineFlexManip ( void )
{
    ManCmd2FlexManipControlCopyCommand();

    // Control works only if on operational state
    if ( SysState.WakeupState != E_CAN_WAKEUP_OPERATIONAL )
    {
        CanNet.SubState = 0 ; // Wait initialization done
        return ;
    }

    // call the manipulator control function
    CalcManipulatorPosCAN() ; // Get manipulator coordinates and detect if it is stopped

    UpdateFlexManipControl ( ) ; // Manipulator operation algorithm

    // Manage motor On/Off transition, decide between automatic/individual control options, and call build RxPDO messages for axis
    verifyFlexManipAxesStateBuildRxPDO ();
}



/* Transfer commands from ManCmd (received from M2S) to FlexManipAxes
 * if commanded by CAN1 ( ManCmd.RdyNewAction != 0) then don't set FlexManipAxes.ControlWord/ FlexManipAxes.GetSide/ FlexManipAxes.DTarget
 */
inline void ManCmd2FlexManipControlCopyCommand()
{
    //Transfer commands from ManCmd (received from M2S) to FlexManipAxes (all but but reserved & LaserValid);

    //if ( ManCmd.RdyNewAction == 0) //if (ManCmd.RdyNewAction != 0) then a command for deal package/ stand by is being given using OD (CAN1)
    if ( (FlexManipControl.CwOwner ==  1) && ((short)ManCmd.ControlWord.ControlWordModifyCounter != FlexManipControl.CWCounter) ) //CwOwner = 1 core is is the owner.( ManCmd.RdyNewAction == 0)) //new command is waiting
    {
        FlexManipControl.CWCounter = (short)ManCmd.ControlWord.ControlWordModifyCounter;
        FlexManipControl.NewCwFromManCmd = 1;
        FlexManipControl.ControlWord = ManCmd.ControlWord;
        FlexManipControl.DTarget = ManCmd.DTarget; //ManCmd.DTarget is set in SetManipulatorControlWord() --> ProgramFlexManip()

        //ManCmd.GetSide set in ProgramFlexManip
        if (ManCmd.GetSide != ManCmd.ControlWord.Side)//ManCmd.ControlWord may not be ready yet - ready only depending on ManCmd.new counter to be defined.
        {
            LogException( OWN_EXP_ID , EXP_FATAL , exp_side_mismatch_y_coordinate ) ; //EXCEPCION OWN_EXP_ID if not specific axis, logical_ID if specific axis.
        }
    }

    //ManCmd.XTarget - updating package assumed position from M2S, should always be the same and therefore ignored.
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

    FlexManipControl.x = x  ;
    FlexManipControl.y = y  ;
    FlexManipControl.theta = theta ;

    //Just for good practice, the Flex manipulator gets is coordinate values first and then updates back to the manipulator structure (which in time will update S2M in OperSyncReport in the idle process).
    ManCmd.x = FlexManipControl.x;
    ManCmd.y = FlexManipControl.y;
    ManCmd.theta = FlexManipControl.theta;

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
            if ( ( pAxis->BH.AxisCbit.bit.MotorOn == 0 ) && ( pAxis->BH.AxisCbit.bit.MotorReady == 0 ) )
            {
                motorOn = 0 ;
            }
        }
        else
        {
            motorOn = 0 ;
        }
    }
    FlexManipControl.ServoStopped = axesStopped * profstopped  ;

    FlexManipControl.ProfilerStopped =  profstopped   ;
    FlexManipControl.ServoMotorOn = motorOn ;

    // Get the status of the Dynamixel axes
    axesStopped = 1 ;
    motorabsent = 0 ;
    for ( cnt = 0 ; cnt < NUM_12V_MANIP_AXES ; cnt++ ) //if NUM_12V_MANIP_AXES == 0 then axesStopped = 1; No references.
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
    FlexManipControl.DoorsMotorsOn = axesStopped ;
    ManCmd.MotorOnStop = axesStopped ;
    ManCmd.MotorAbsentStop = motorabsent ;
}
