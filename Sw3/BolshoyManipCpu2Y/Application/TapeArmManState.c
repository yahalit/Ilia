


#include "StructDef2.h"



short ApplySuck( void );

//void CalcManualManipulatorState( float dT   );

//float FlexGetPosFromEncoder( float x);
void FlexGetGripperRobotCoord ( float *x , float *y  , float *theta );

//long GetTmr1_4Kaka(void) ;
void SetDoorPosition(short IsOpen) ;


void ManHandlePackage(float dT , short unsigned updAxis );


#define ThtOffset (78.25f *  MAN_PI_F / 180.0f)
#define MAN_PI_F 3.141592653589793F
#define MAN_2PI_F 6.283185307179586f
#define DoorTilt   (115.89f * MAN_PI_F / 180.0f)
#define x0Mot  (-64.44f)
#define y0Mot  (-10.22f)
#define r1Door  18.0f
#define r2Door  58.0f
#define r3Door  12.13f
#define ThetaDoorMax ((94.95f *  MAN_PI_F / 180.0f)-DoorTilt)
#define ThetaDoorMin ((-14.0f * MAN_PI_F / 180.0f)-DoorTilt)


#define FLAG_POST_SEEPACK 1
#define FLAG_POST_SUCK 2
#define FLAG_POST_SLOW 4
#define FLAG_POST_AUTO_LINEAR 8
#define FLAG_POST_ROBOT_COORD 16


inline
short IsNear ( float x , float y , float tol )
{
    return (fabsf(x-y) < tol) ? 1 : 0 ;
}


//{ 2 , GetOffsetC(FlexDoorTopEndTravel,CCalib),3.0e4f} ,//13:FlexDoorTopEndTravel [TAPEARM] {Flex door top end of travel. Note it is not the top because direction reversed }
//{ 2 , GetOffsetC(FlexDoorBotEndTravel,CCalib),3.0e4f} ,//14:FlexDoorBotEndTravel [TAPEARM] {Flex door bottom end of travel.}


void SetDoorPosition(short IsOpen)
{
    if ( IsOpen )
    {
        ManCmd.Ctl12[MAN_AXIS_LSTOP].L12.PosTarget =  ManGeo.FlexDoorPosDown ;
        ManCmd.Ctl12[MAN_AXIS_RSTOP].L12.PosTarget =  ManGeo.FlexDoorPosDown ;
    }
    else
    {
        ManCmd.Ctl12[MAN_AXIS_LSTOP].L12.PosTarget =  ManGeo.FlexDoorPosUp ;
        ManCmd.Ctl12[MAN_AXIS_RSTOP].L12.PosTarget =  ManGeo.FlexDoorPosUp ;
    }
}


/*
 * Are doors converged? Flex manipulator has one door
 */
short TapeArmAreDoorsConverged(void)
{
    if (  ( fabs( DynStat12[AXIS_ID_LSTOP].PositionActual -  ManCmd.Ctl12[AXIS_ID_LSTOP].L12.PosTarget) > 0.2f ) &&
            ( fabs( DynStat12[AXIS_ID_RSTOP].PositionActual -  ManCmd.Ctl12[AXIS_ID_RSTOP].L12.PosTarget) > 0.2f ))
    {
        return 0 ;
    }
    return 1;
}


void Prep2PaletteBack()
{
    SysState.Package.LaserRequest = 0;
    StopSuctionImmediate() ;
    ApplySuck( );
    SysState.CanAxis[LOGICAL_PLATE].BH.BhCw.bit.ReferenceMode  = E_PosModeStayInPlace ;
    SysState.CanAxis[LOGICAL_PLATE].BH.UserSpeedCmd  = 0 ;

    ApplySuck();

    TapeArmCmd.ThetaTarget = 0 ;
}



/*
 * Calculate the geometric position of the manipulator by motor angles
 */
void FlexGetGripperRobotCoord ( float *x , float *y  , float *theta )
{
    float z ;
    z =  SysState.CanAxis[LOGICAL_TAPEARM].BH.UserPos  ;
    *theta = SysState.CanAxis[LOGICAL_PLATE].BH.UserPos  ;
    *x = z * __cos(*theta) ;
    *y = z * __sin(*theta) ;
}





struct
{
    long PosStart ;
 }FlexHomingStr ;

#define TIME_NOT_MOVING_WINDOW 0.35


/*
 * Manage the tape arm homing process
 */
void  FlexHoming(void)
{
// Take the manipulator HOME
    volatile struct CCanAxis * pAxis ;
     volatile struct CCanAxis * pAxisTape ;
    volatile struct CCanAxis * pAxisPlate ;
    volatile struct CCanAxis *pAxisSpacer ;
    short unsigned cnt ;

    if ( SysState.WaitValidCanCtr )
    { // Verify command is accepted by axes
        return ;
    }

    pAxisTape = &SysState.CanAxis[LOGICAL_TAPEARM] ;
    pAxisPlate = &SysState.CanAxis[LOGICAL_PLATE] ;
    pAxisSpacer =&SysState.CanAxis[LOGICAL_SPACER] ;


    switch( TapeArmCmd.HomingState  )
    {
        case E_FlexHomeState_Init:
            // All the axes: go to null state
            for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
            {
                pAxis = &SysState.CanAxis[cnt] ;
                pAxis->BH.UserSpeedCmd =  0 ;    ;
                pAxis->BH.BhCw.bit.ReferenceMode  = E_PosModeStayInPlace ;
                pAxis->BH.BhCw.bit.LoopClosure  = pAxis->BH.LoopClosureMode ;
                pAxis->BH.BhCw.bit.MotorOnCmd = 1 ;
                pAxis->BH.BhCw.bit.KillHoming = 1 ;
            }

            TapeArmCmd.HomingSubState = 0;

            SysState.WaitValidCanCtr = 2 ;

            if ( SysState.Debug.BypassTapeHoming || (pAxisTape->Installed == 0 ) )
            {
                TapeArmCmd.HomingState = E_FlexHomeState_GoSpacerHome ;
                break ;
            }

            TapeArmCmd.HomingState = E_FlexHomeState_Go2Home ;


            break ;
        case E_FlexHomeState_Go2Home:
            // Wait automatic homing procedure by arm driver
            if ( TapeArmCmd.HomingSubState == 0 )
            {
                for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
                {
                    SysState.CanAxis[cnt].BH.BhCw.bit.KillHoming = 0 ;
                }
                pAxisTape->BH.BhCw.bit.ReferenceMode =  E_RefModeSpeed2Home ;
                SysState.WaitValidCanCtr = 2 ;
                TapeArmCmd.HomingSubState = 1 ;
                SetSysTimerTargetSec( TMR_PREPARE_TMR ,  15.0f  ,&SysTimerStr) ;
                break;
            }

            if ( IsSysTimerElapse(TMR_PREPARE_TMR,&SysTimerStr) == 0 )
            {
                if ( pAxisTape->BH.AxisCbit.bit.Homed  )
                { // If timer elapsed, we are no more moving
                    SetSysTimerTargetSec( TMR_PREPARE_STABILIZE_TMR ,  15.0f  ,&SysTimerStr) ;

                    pAxisTape->BH.BhCw.bit.ReferenceMode  = E_PosModeStayInPlace ;
                    pAxisSpacer->BH.BhCw.bit.ReferenceMode =  E_RefModeSpeed2Home ;
                    SysState.WaitValidCanCtr = 2 ;
                    TapeArmCmd.HomingSubState = 0 ;


                    TapeArmCmd.HomingState = E_FlexHomeState_GoSpacerHome ;
                }
            }
            else
            { // Too much time
                SetManError ( EXCEPT_COULD_NOT_FOLD_TAPE , ERROR_SRC_SYS ) ;
                pAxisTape->BH.BhCw.bit.ReferenceMode =  E_PosModeStayInPlace ;
                TapeArmCmd.HomingState = E_FlexHomeState_Error;
            }
            break ;

        case E_FlexHomeState_GoSpacerHome:
            // Wait automatic homing procedure by arm driver. Homing will be to the far part
            if ( TapeArmCmd.HomingSubState == 0 )
            {
                SysState.WaitValidCanCtr = 2 ;
                pAxisSpacer->BH.BhCw.bit.ReferenceMode =  E_RefModeSpeed2Home ;
                TapeArmCmd.HomingSubState = 1 ;
                SetSysTimerTargetSec( TMR_PREPARE_TMR ,  1.0f  ,&SysTimerStr) ;
                break;
            }

            if ( IsSysTimerElapse(TMR_PREPARE_TMR,&SysTimerStr) == 0 )
            {
                if ( pAxisSpacer->BH.AxisCbit.bit.Homed  )
                { // If timer elapsed, we are no more moving
                    SetSysTimerTargetSec( TMR_PREPARE_STABILIZE_TMR ,  15.0f  ,&SysTimerStr) ;

                    pAxisSpacer->BH.BhCw.bit.ReferenceMode  = E_PosModeStayInPlace ;
                    pAxisPlate->BH.BhCw.bit.ReferenceMode =  E_RefModeSpeed2Home ;
                    SysState.WaitValidCanCtr = 2 ;
                    TapeArmCmd.HomingSubState = 0 ;

                    TapeArmCmd.HomingState = E_FlexHomeState_GoPlateHome ;
                }
            }
            else
            { // Too much time
                SetManError ( EXCEPT_COULD_NOT_FOLD_TAPE , ERROR_SRC_SYS ) ;
                TapeArmCmd.HomingState = E_FlexHomeState_Error;
                pAxisSpacer->BH.BhCw.bit.ReferenceMode =  E_PosModeStayInPlace ;
            }
            break ;


        case E_FlexHomeState_GoPlateHome:

            // Wait automatic homing procedure by arm driver
            if ( TapeArmCmd.HomingSubState == 0 )
            {
                SysState.WaitValidCanCtr = 2 ;
                pAxisPlate->BH.BhCw.bit.ReferenceMode =  E_RefModeSpeed2Home ;
                TapeArmCmd.HomingSubState = 1 ;
                SetSysTimerTargetSec( TMR_PREPARE_TMR ,  1.0f  ,&SysTimerStr) ;
                break;
            }

            if ( IsSysTimerElapse(TMR_PREPARE_TMR,&SysTimerStr) == 0 )
            {
                if ( pAxisPlate->BH.AxisCbit.bit.Homed  )
                { // If timer elapsed, we are no more moving
                    SetSysTimerTargetSec( TMR_PREPARE_STABILIZE_TMR ,  15.0f  ,&SysTimerStr) ;

                    pAxisPlate->BH.BhCw.bit.ReferenceMode  = E_PosModeStayInPlace ;
                    SysState.WaitValidCanCtr = 2 ;
                    TapeArmCmd.HomingSubState = 0 ;

                    TapeArmCmd.HomingState = E_FlexHomeState_AlmostDone ;
                  }
            }
            else
            { // Too much time
                SetManError ( EXCEPT_COULD_NOT_FOLD_TAPE , ERROR_SRC_SYS ) ;
                TapeArmCmd.HomingState = E_FlexHomeState_Error;
                pAxisPlate->BH.BhCw.bit.ReferenceMode =  E_PosModeStayInPlace ;
            }
            break ;

        case E_FlexHomeState_AlmostDone:
            S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Homed = 1 ;
            TapeArmCmd.HomingState = E_FlexHomeState_Done;
            break ;
        case E_FlexHomeState_Done:
            break ;
        case E_FlexHomeState_Error:
            pAxisTape->BH.BhCw.bit.ReferenceMode = E_PosModeStayInPlace ;
            break ;
        default:
            pAxisTape->BH.BhCw.bit.ReferenceMode = E_PosModeStayInPlace ;
            break ;

    }
}




short TapeArmResetManipulatorLogics(void)
{
    //struct CProfiler * pProf ;
    struct CCanAxis *pAxis  ;
    short unsigned cnt ;

    TapeArmCmd.ControlWordCopy = TapeArmCmd.ControlWord ;

    SysState.Package.SuckCmd.ul = 0 ;
    // Reset the mechanism for retry if package suckers failed
    TapeArmCmd.FailedPackageGrip = 0 ;
    SysState.Package.LaserRequest = 0;
    SysState.Package.SuckRequest.ul = 0 ;

    //TapeArmCmd.StdbyRequest = 0 ;

    // Put to initialize state
    if ( TapeArmCmd.ControlWord.MotorsOn)
    {
        TapeArmCmd.State = MAN_ST_INIT ;
    }

    SetSysTimerTargetSec ( TMR_WAIT_SUCK_CHNG , 3.0f ,&SysTimerStr);

    TapeArmCmd.GetSide = GetThetaTarget( & TapeArmCmd.ThetaTarget) ;

    // Reset all the controllers
    for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++)
    {
        pAxis  = &SysState.CanAxis[cnt] ;
        pAxis->BH.BhCw.bit.ReferenceMode = E_PosModeStayInPlace ;
    }

    if ( TapeArmCmd.GetSide == 0 )
    {
        return -1 ;
    }
    return 0 ;
}




short FlexInitPackSanity(void)
{
    TapeArmCmd.StopError = 0 ;

    // Freeze the control word and reset indications
    if ( TapeArmResetManipulatorLogics() )
    {
        SetManError ( EXCEPT_TARGET_DIR_INCONSISTENT , ERROR_SRC_SYS ) ;
        return -1 ;
    }
    ManCBit.GripFail = 0 ;

    // Test that side command makes sense

    // Insane coordinates
    //if ( TapeArmCmd.GetSide * TapeArmCmd.DTarget <= 0 )
    //{
    //    SetManError ( EXCEPT_TARGET_DIR_INCONSISTENT , ERROR_SRC_SYS ) ;
    //    return  0;
    //}

    // Test:
    // Target in range
    if ( fabsf(TapeArmCmd.DTarget) > ManGeo.FlexManipMaxLength)
    {
        SetManError ( EXCEPT_TARGET_NOT_REACHABLE , ERROR_SRC_SYS ) ;
        return -1;
    }


    // - If actuator is in the direction and over stretched, this is an error
    if ( TapeArmCmd.y < -0.05f || TapeArmCmd.y > ManGeo.FlexManipMaxLength + 0.1f  )
    {
        SetManError ( EXCEPT_MANIP_INITIALLY_OUT_RANGE , ERROR_SRC_SYS ) ;
        return -1;
    }

    return 0;
}



enum ESB_GOTOANGLE
{
    ESB_StandbyNone = 0 ,
    ESB_StandbyInit = 1 ,
    ESB_StandbyCloseDoor = 2 ,
    ESB_StandbySetTape = 3 ,
    ESB_StandbyStateDone = 4 ,
    ESB_StandbyStateFailure = 15
};


short IsInternalPoint(float a , float b , float c )
{
    return ( ( a - b ) * ( c - b  ) <= 0 ) ? 1 : 0 ;
}




void TapeArmGoto( short unsigned Id , float PosTarget , short unsigned flags  )
{
    struct CCanAxis *pAxis ;
    pAxis = &SysState.CanAxis[Id] ;
    pAxis->BH.BhCw.bit.ReferenceMode = E_PosModePTP ;
    pAxis->BH.BhCw.bit.LoopClosure   = pAxis->BH.PositionLoopClosureMode ;
    pAxis->BH.UserPosCmd = PosTarget ;
    if ( FLAG_POST_SLOW & flags)
    {
        pAxis->BH.BhCw.bit.GoSlow = 1 ;
    }
    else
    {
        pAxis->BH.BhCw.bit.GoSlow = 0 ;
    }
    pAxis->BH.NewCmdCnt = 4 ;
    pAxis->BH.AxisCbit.bit.ProfileConverged = 0 ;
    pAxis->BH.AxisCbit.bit.MotionConverged = 0 ;
}


short FlexIsMotionDone( short unsigned Id )
{
    struct CCanAxis *pAxis ;
    pAxis = &SysState.CanAxis[Id] ;
    return (pAxis->BH.AxisCbit.bit.MotionConverged ? 1 : 0 ) ;
}

/*
short IsMotorOn(short unsigned Id)
{
    return ( SysState.CanAxis[Id].BH.AxisCbit.bit.MotorOn ? 1 : 0  );
}
*/

short TapeArmIsOnTarget( short unsigned Id , float PosTarget  )
{
    struct CCanAxis *pAxis ;
    pAxis = &SysState.CanAxis[Id] ;
    return (pAxis->BH.AxisCbit.bit.MotorOn && (pAxis->BH.AxisCbit.bit.LoopClosureMode == pAxis->BH.PositionLoopClosureMode)
            && (pAxis->BH.AxisCbit.bit.ReferenceMode == E_PosModePT)
            && pAxis->BH.AxisCbit.bit.MotionConverged
            && (IsNear(pAxis->BH.UserPosCmd , PosTarget,5e-3f)  ? 1 : 0) ) ;
}


short ShallPlateMotionCollide(float angle)
{
    if ( fabsf(angle) < ManGeo.FlexPlateColideAngle)
    {
        return 1 ;
    }
    if ( angle * SysState.CanAxis[LOGICAL_PLATE].OuterPos < 0 )
    {
        return 1 ;
    }
    return 0 ;
}

void FlexStopAxis( short unsigned Id  )
{
    SysState.CanAxis[Id].BH.BhCw.bit.ReferenceMode  = E_PosModeStayInPlace ;
}


short FlexIsStabilized()
{
    short Id ;
    for ( Id = 0 ; Id < N_CAN_SLAVES ; Id++)
    {
        if ( SysState.CanAxis[Id].BH.AxisCbit.bit.MotionConverged == 0  )
        {
            return  0 ;
        }
    }
    return 1;
}

/*
 * Issue a stopping command to all the manipulator motors
 */
short unsigned TapeArmStopMan(void )
{
    short unsigned cnt , Stopped;
    struct CCanAxis *pAxis ;
    Stopped = 1 ;
    for ( cnt = 0 ; cnt < NUM_24V_AXES ; cnt++ )
    {
        pAxis= &SysState.CanAxis[cnt] ;
        pAxis->BH.BhCw.bit.ReferenceMode  = E_PosModeStayInPlace ;
        if ( pAxis->BH.AxisCbit.bit.MotionConverged == 0 )
            Stopped = 0 ;
    }
    return Stopped ;
}

/*
 *
*/
void FlexShutManBody(void )
{
    short unsigned cnt ;
    for ( cnt = 0 ; cnt < NUM_24V_AXES ; cnt++ )
    {
        SysState.CanAxis[cnt].BH.BhCw.bit.MotorOnCmd = 0 ;
    }
    ManCmd.Ctl12[MAN_AXIS_LSTOP].MotorOnRequest = 0 ;
    ManCmd.Ctl12[MAN_AXIS_RSTOP].MotorOnRequest = 0 ;
    SetSysTimerTargetSec ( TIMER_DYNAMIXEL_ON_TMR12 , DYNAMIXEL_MOTOR_ON_TOUT ,&SysTimerStr);
    CanNet.ManOnRequestFlag = 0 ;
    ManCmd.State = MAN_ST_INIT ;
    TapeArmCmd.State = MAN_ST_INIT ;
    ResetManRecovery12 () ;
}

void FlexShutMan(void )
{
    short unsigned mask ;
    mask = BlockInts() ;
    FlexShutManBody();
    RestoreInts(mask) ;
}


/*
 * Set the entire manipulator mechanism on
 */
void TapeArmSetManOn(void )
{
    short unsigned cnt ;

    // Set the servo axes on
    for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
    {
        SysState.CanAxis[cnt].BH.BhCw.bit.MotorOnCmd = 1 ;
    }

#if DEF_NUM_12V_MANIP_AXES > 0
    // Set dynamixel to on
    mask = BlockInts() ;
    {
        ManCmd.Ctl12[MAN_AXIS_LSTOP].MotorOnRequest = 1 ;
        ManCmd.Ctl12[MAN_AXIS_RSTOP].MotorOnRequest = 1 ;

        if ( CanNet.ManOnRequestFlag == 0 )
        { // Time out the motor on of DXL
            SetSysTimerTargetSec ( TIMER_DYNAMIXEL_ON_TMR12 , DYNAMIXEL_MOTOR_ON_TOUT ,&SysTimerStr);
        }
        CanNet.ManOnRequestFlag = 1 ;
        ResetManRecovery12 () ;
    }
    RestoreInts(mask) ;
#endif
}


enum E_SetPlateState
{
    ES_PaletteNothing = 0 ,
    ES_Palette_Init = 1 ,
    ES_WaitSpacer = 2 ,
    ES_WaitAngle = 3 ,
    ES_Palette_Done = 4,
    ES_Palette_Error = 7
};



/*
 * Check if a posture is legal (reachable)
 */
short CheckPosture(float AngleCmd , float LengthCmd , float Linear  )
{
    if ( LengthCmd < 0  ||  LengthCmd > ManGeo.FlexArmMaxTravel )
    {
        return -1 ;
    }
    if ( fabsf(ManGeo.FlexArmMaxAngle ) )
    {
        return -2 ;
    }
    if ( Linear < 0  || Linear > ManGeo.FlexArmMaxLinearTravel)
    {
        return -3 ;
    }
    if ( ShallPlateMotionCollide( TapeArmCmd.GoTo.angle) && (Linear < ManGeo.FlexSpacerOperationalPos) )
    {
        return -4 ;
    }
    return 0 ;
}


/*
 * \brief Command the robot a new posture.
 * \arguments:
 *  AngleCmd , LengthCmd: Polar coordinates of the end effector, relative to effector base
 *  Linear:  Length of the linear actuator when operation ends
 *  Flags: A bit field
 *  FLAG_POST_SEEPACK (1) : Monitor seeing a sucked package while traveling
 *   FLAG_POST_SUCK (2)    : Apply suction while traveling
 *   FLAG_POST_SLOW (4)    : Go reduced speed
 *   FLAG_POST_AUTO_LINEAR (8)  : Automatic calculation of linear actuator final position
 *   FLAG_POST_ROBOT_COORD (16) : Interpret angle and linear shift in robot coordinates
 *
 *  \Returns:
 *  0 if ok
 *  -1 if out of range (nothing is commanded)
 *
 * \Note:
 * (a) without (FLAG_POST_ROBOT_COORD) The command is in manipulator base coordinates: at zero angle the manipulator points back
 * (b) With FLAG_POST_AUTO_LINEAR the "Linear" argument is "don't care"
 */
short GoToPosture(float AngleCmd , float LengthCmd , float Linear , short unsigned Flags )
{
    short stat ;

    if ( Flags & FLAG_POST_AUTO_LINEAR)
    {
        if ( ShallPlateMotionCollide( TapeArmCmd.GoTo.angle) )
        {
            Linear = ManGeo.FlexSpacerOperationalPos ;
        }
        else
        {
            Linear = ManGeo.FlexSpacerStandbyPos ;
        }
        if ( Flags & FLAG_POST_ROBOT_COORD )
        {
            Linear = -Linear ;
        }
    }

    if ( Flags & FLAG_POST_ROBOT_COORD )
    {
        Linear = -Linear ;
        AngleCmd = mod2piS ( AngleCmd - PI )  ;
    }

    stat = CheckPosture(AngleCmd , LengthCmd , Linear  );
    if ( stat )
    {
        return stat ;
    }

    if ( ( AngleCmd != TapeArmCmd.GoTo.angle) || ( LengthCmd != TapeArmCmd.GoTo.length ) || (  TapeArmCmd.GoTo.SpacerFinal != Linear ))
    { // Something changed in the command, then do it: Otherwise do nothing
        TapeArmCmd.GoTo.State = 0 ;
        TapeArmCmd.GoTo.angle  = AngleCmd ;
        TapeArmCmd.GoTo.length = LengthCmd  ;
        TapeArmCmd.GoTo.SpacerFinal = Linear ;
        TapeArmCmd.GoTo.Error = 0 ;
        TapeArmCmd.GoTo.Flags = Flags ;
        TapeArmCmd.GoTo.IsActive  = 2 ;
    }
    return 0 ;
}



/*
 * Manage the movement to the next posture
 */
void  ManagePosture( )
{
    //struct LinkControl *pCtlPlate  ;
    //struct LinkControl *pCtlSpacer  ;

    //struct CCanAxis *pAxisPlate  ;
    struct CCanAxis *pAxisTape , *pAxisSpacer , *pAxisPlate   ;
    //struct CCanAxis *pAxisSpacer  ;


    //pAxisPlate  = pCtlPlate->pAxis ;
    pAxisTape   = &SysState.CanAxis[LOGICAL_TAPEARM] ;
    pAxisSpacer   = &SysState.CanAxis[LOGICAL_SPACER] ;
    pAxisPlate   = &SysState.CanAxis[LOGICAL_PLATE] ;
    //pAxisSpacer = pCtlSpacer->pAxis ;

    if ( (IsMotorOn(pAxisSpacer) == 0 ) || (IsMotorOn(pAxisTape) == 0 ) || (IsMotorOn(pAxisPlate) == 0 ) )
    {
        TapeArmCmd.GoTo.State = EGT_Error ;
        TapeArmCmd.GoTo.Error = exp_goto_premature_motoroff ;
    }

    if ( TapeArmCmd.GoTo.Flags & FLAG_POST_SEEPACK)
    {
        if ( ( TapeArmCmd.GoTo.State == EGT_GoToInit) || SysState.Package.LaserMedianValid )
        {
            SetSysTimerTargetSec ( TMR_WAIT_LASER_READ , 0.2f ,&SysTimerStr); // Avoid loss of package
        }
        else
        {
            if ( IsSysTimerElapse(TMR_WAIT_LASER_READ,&SysTimerStr)  )
            {
                TapeArmCmd.GoTo.State = EGT_Error ;
                TapeArmCmd.GoTo.Error = exp_goto_laser_loss ;
            }
        }
    }

    if ( TapeArmCmd.GoTo.Error )
    {
        TapeArmStopMan() ;
        TapeArmCmd.GoTo.IsActive  = 0 ;
        return ;
    }


    switch ( TapeArmCmd.GoTo.State )
    {
    case EGT_GoToInit:
        if ( TapeArmCmd.GoTo.Flags & FLAG_POST_SUCK )
        {
            InitSuctionMonitor()  ;
        }
        if ( pAxisTape->BH.ReportPosCmd > TapeArmCmd.GoTo.length )
        {
            TapeArmGoto( LOGICAL_TAPEARM , TapeArmCmd.GoTo.length  , TapeArmCmd.GoTo.Flags  );
            FlexStopAxis(LOGICAL_PLATE) ;
            FlexStopAxis(LOGICAL_SPACER);
            TapeArmCmd.GoTo.State = EGT_WaitInitRetract ;
        }
        else
        {
            FlexStopAxis(LOGICAL_TAPEARM);
            TapeArmCmd.GoTo.State = EGT_InitSpacer ;
        }
        break ;
    case EGT_WaitInitRetract:
        if ( TapeArmIsOnTarget( LOGICAL_TAPEARM , TapeArmCmd.GoTo.length   ))
        {
            TapeArmCmd.GoTo.State = EGT_InitSpacer ;
        }
        break ;


     case EGT_InitSpacer:
        if ( ShallPlateMotionCollide( TapeArmCmd.GoTo.angle) == 0  )
        {
            TapeArmCmd.GoTo.SpacerTarget = TapeArmCmd.GoTo.SpacerFinal ;
        }
        else
        {
            TapeArmCmd.GoTo.SpacerTarget = ManGeo.FlexSpacerOperationalPos ;
        }
        TapeArmGoto( LOGICAL_SPACER , TapeArmCmd.GoTo.SpacerTarget ,0 );
        TapeArmCmd.GoTo.State = EGT_WaitSpacer ;
        break ;
    case EGT_WaitSpacer:
        if ( TapeArmIsOnTarget( LOGICAL_SPACER , TapeArmCmd.GoTo.SpacerTarget   ))
        {
            TapeArmGoto( LOGICAL_PLATE , TapeArmCmd.GoTo.angle ,TapeArmCmd.GoTo.Flags  );
            TapeArmCmd.GoTo.State = EGT_WaitRot ;
        }
        break ;
    case EGT_WaitRot:
        if ( TapeArmIsOnTarget( LOGICAL_PLATE , TapeArmCmd.GoTo.angle    ))
        {
            TapeArmGoto( LOGICAL_TAPEARM , TapeArmCmd.GoTo.length ,TapeArmCmd.GoTo.Flags  );
            if ( TapeArmCmd.GoTo.Flags & FLAG_POST_SUCK )
            {
                InitSuctionMonitor()  ;
            }
            TapeArmCmd.GoTo.State = EGT_WaitLength;
        }
        break ;
    case EGT_WaitLength:
        if ( TapeArmIsOnTarget( LOGICAL_TAPEARM , TapeArmCmd.GoTo.length   ))
        {
            if (  TapeArmCmd.GoTo.SpacerTarget =- TapeArmCmd.GoTo.SpacerFinal )
            {
                TapeArmCmd.GoTo.State = EGT_Done ;
            }
            else
            {
                TapeArmCmd.GoTo.State = EGT_WaitRetract ;
                TapeArmCmd.GoTo.SpacerTarget =  ManGeo.FlexSpacerOperationalPos ;
                TapeArmGoto( LOGICAL_SPACER , TapeArmCmd.GoTo.SpacerFinal,0 );
            }
        }
        break ;
    case EGT_WaitRetract:
        if ( TapeArmIsOnTarget( LOGICAL_SPACER , TapeArmCmd.GoTo.SpacerTarget   ))
        {
            TapeArmCmd.GoTo.State = EGT_Done ;
        }
        break ;
    case EGT_Done:
        TapeArmCmd.GoTo.IsActive  = 0 ;
        break ;
    }
}







/*
 * This routine manages the flex-arm manipulator, called after verifying Motor On,  This routine is called only on automatic mode
 */
void TapeArmHandleOperations(void )
{
    short suckResult   ;

    // Manage suction
    suckResult = ApplySuck();// happens twice - need to fix (the previous one need to happen only in individual
    if( suckResult == 0  )
    { // Waiting sucker to reach desired state, nothing more to do
        TapeArmStopMan() ;
        return ;
    }


    if (  TapeArmCmd.ControlWord.GoToCoord )
    { // If commanded directly, do it
        GoToPosture(M2S.Items.ActCmd.cmd.PalletAngle,M2S.Items.ActCmd.cmd.Flexmm * 1e-3f,0,FLAG_POST_AUTO_LINEAR|FLAG_POST_ROBOT_COORD) ;
    }
    else
    {
        if ( TapeArmCmd.ControlWord.Standby )
        { // Command the stand by position 0,0,0
            SysState.Package.ManHolds &= ~(MAN_HOLDS_SUSPECT_CONTACT | MAN_HOLDS_SUSPECT_CONTACT_W_PUMP);
            SysState.Package.ManHolds |= MAN_HOLDS_INACTIVE ;
            GoToPosture(0,0,0,FLAG_POST_AUTO_LINEAR|FLAG_POST_ROBOT_COORD) ;
        }
    }
    if ( TapeArmCmd.GoTo.IsActive )
    { // Wait completion of current posture go
        ManagePosture() ;
        return ;
    }

    if  ( TapeArmCmd.ControlWord.Standby )
    {// Standby completed, no just deal the book keeping
        FlexShutMan();
        //TapeArmCmd.StdbyRequest == 4 ?
        TapeArmCmd.StdbyRequest = 0 ;
        TapeArmCmd.State = MAN_ST_DONE ;
        return ;
    }

    // Package get or put
    SysState.Package.ManHolds &= (~MAN_HOLDS_INACTIVE) ;

    if (TapeArmCmd.State == MAN_ST_INIT)
    {
        TapeArmCmd.CmdSamp.PackageGet = TapeArmCmd.ControlWord.PackageGet ;
        TapeArmCmd.CmdSamp.IsRepeated = ( TapeArmCmd.ControlWord.RepeatAction ? 1 : 0 ) ;
        StopSuctionImmediate() ; // No suck , no wait
        SysState.Package.ManHolds = MAN_HOLDS_ACTIVE_STICKY  ;
    }


    // Log suspect package contacts
    LogHoldingState() ;


    if ( TapeArmCmd.CmdSamp.PackageGet  )
    {
        FlexGetPackageNew(  suckResult ) ;
        return ;
    }
    else
    {
        FlexSetPackageNew(  suckResult  ,  TapeArmCmd.CmdSamp.IsRepeated ) ;
    }
}


void FlexSetPackageNew( short suckResult , short IsRepush )
{
    (void) suckResult ;

    switch ( TapeArmCmd.State )
    {
    case MAN_ST_INIT:

        // Initial sanity tests
        if ( FlexInitPackSanity() )
        {
            TapeArmStopMan();
            return ;
        }

        // Sucker off, we just go to start position
        StopSuctionImmediate(); // Don't suck, don't test
        SysState.Package.LaserRequest =   1; // Laser will shine all the time allowing package hold detection

        // Go to starting position
        TapeArmCmd.YTarget =  TapeArmCmd.YOrigin * TapeArmCmd.GetSide ;

        // Go to laser finding
        SysState.Package.LaserDistValid = 0 ;
        SysState.Package.LaserMedianCnt = 0 ;
        SysState.Package.LaserMedianValid = 0 ;

        SetSysTimerTargetSec ( TIMER_MAN_TOUT , 1.0f ,&SysTimerStr); // Avoid premature "Stopped" indication

        GetThetaTarget(&TapeArmCmd.ThetaTarget);
        if (TapeArmIsOnTarget( LOGICAL_PLATE,TapeArmCmd.ThetaTarget ) || IsRepush )
        { // No need to verify package, just go
            GoToPosture(TapeArmCmd.ThetaTarget,TapeArmCmd.YTarget , 0 , (IsRepush ? 0 : FLAG_POST_SEEPACK) | FLAG_POST_SUCK ) ;
            SafeTransitManState( TAPE_PUSH_PACK) ; // Verify that the package to be pushed is in place
        }
        else
        {
            SafeTransitManState( TAPE_WAIT_PACK_VERIFY) ; // Verify that the package to be pushed is in place
        }
        break ;

    case TAPE_WAIT_PACK_VERIFY:
        // Go to initial position, wait laser indication if fetching
        // Take laser only if stopped at position
        if ( SysState.Package.LaserMedianValid )
        {
            SysState.Package.LaserDistValid = (short) SysState.Package.LaserMedianValid ;
            SysState.Package.LaserDist =  SysState.Package.LaserDistMedian ;
            GoToPosture(TapeArmCmd.ThetaTarget,TapeArmCmd.YTarget ,  0 , FLAG_POST_SEEPACK | FLAG_POST_SUCK ) ;
            SafeTransitManState( TAPE_PUSH_PACK) ; // Verify that the package to be pushed is in place
        }

        if ( IsSysTimerElapse(TIMER_MAN_TOUT , &SysTimerStr)  )
        { // Enough time already in place
            SetManError ( EXCEPT_LASER_TIMEOUT , ERROR_SRC_SYS ) ;
            TapeArmCmd.State =  MAN_ST_FAILURE ;
        }
        break ;

    case TAPE_PUSH_PACK:
        if ( TapeArmCmd.GoTo.Error )
        {
            SetManError ( EXCEPT_LASER_TIMEOUT , ERROR_SRC_SYS ) ;
            TapeArmCmd.State =  MAN_ST_FAILURE ;
        }
        else
        {
            if(FlexIsStabilized())
            {
                StopSuctionMonitor() ;
                SetSysTimerTargetSec ( TIMER_MAN_TOUT , 1.0f ,&SysTimerStr); // Avoid premature "Stopped" indication
                SafeTransitManState( TAPE_RELEASE_SUCTION ) ; // Verify that the package to be pushed is in place
            }
        }
        break ;


    case TAPE_RELEASE_SUCTION:
        if ( IsSysTimerElapse(TIMER_MAN_TOUT , &SysTimerStr)  )
        { // Enough time already in place
            GoToPosture(TapeArmCmd.ThetaTarget,TapeArmCmd.YTarget - ManGeo.FlexRetreatDist4SuctRelease,  0 , FLAG_POST_SLOW ) ;
            SafeTransitManState( TAPE_RELEASE_PACK ) ; // Verify that the package to be pushed is in place
        }
        break;

    case TAPE_RELEASE_PACK:
        if(FlexIsStabilized())
        {
            StopSuctionMonitor() ;
            GoToPosture(TapeArmCmd.ThetaTarget,ManGeo.FlexStandbyYTarget , 0 ,  0 ) ;
            SetSysTimerTargetSec ( TIMER_MAN_TOUT , 1.0f ,&SysTimerStr); // Avoid premature "Stopped" indication
            SafeTransitManState( TAPE_RETREAT_SDTBY ) ; // Verify that the package to be pushed is in place
        }
        break;

    case TAPE_RETREAT_SDTBY:
        if(FlexIsStabilized())
        {
            SafeTransitManState( TAPE_PACSET_DONE ) ; // Verify that the package to be pushed is in place
        };
        break;

    case TAPE_PACSET_DONE:
        break;

    case TAPE_PACSET_FAIL:
        break ;
    }
}

/*
 * Test if flex manipulator is stopped
 */
short IsTapeArmStopped()
{
    short unsigned cnt ;
    short stopped ;
    struct  CCanAxis * pAxis ;
    stopped = 1 ;
    for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
    {
        pAxis  = & SysState.CanAxis[cnt] ;
        if ( pAxis->Installed && (pAxis->BH.AxisCbit.bit.ProfileConverged == 0 ) &&( pAxis->BH.NewCmdCnt == 0 ) )
        {
            stopped = 0 ;
            break ;
        }
    }
    return stopped  ;
}

/*
 * \brief Get package with enhanced speed
 */
void FlexGetPackageNew(short suckResult )
{
    float  ypack;
    short unsigned  IndividualStopped;
    short stat ;

    IndividualStopped = IsTapeArmStopped() ;

    switch ( TapeArmCmd.State )
    {
    case MAN_ST_INIT:

        // Initial sanity tests
        if ( FlexInitPackSanity() < 0 )
        {
            return ;
        }

        if ( TapeArmCmd.State == MAN_ST_FAILURE )
        {
            break ; // Failed already
        }

        // Actuate platform
        ManCmd.Ctl12[AXIS_ID_LSTOP].L12.PosTarget = ManGeo.FlexDoorPosDown ;
        ManCmd.Ctl12[AXIS_ID_RSTOP].L12.PosTarget = ManGeo.FlexDoorPosDown ;

        // Set the sucker according to Get/Set: on to put package
        StopSuctionImmediate()  ; // No suck yet, no wait
        SysState.Package.LaserRequest =   1; // Laser will shine all the time allowing package hold detection

        // Time Out
        TapeArmStopMan() ;
        TapeArmGetThetaTarget(&TapeArmCmd.ThetaTarget);

        // Go to starting position
        TapeArmCmd.YTarget =  fabsf(TapeArmCmd.DTarget)  ;

        TapeArmGoto( LOGICAL_TAPEARM , TapeArmCmd.YTarget , 0 );

        // Go to laser finding
        SysState.Package.LaserDistValid = 0 ;
        SysState.Package.LaserMedianCnt = 0 ;
        SysState.Package.LaserMedianValid = 0 ;

        SetSysTimerTargetSec ( TMR_LASER_START, 0.35f , &SysTimerStr); // Time for laser to become valid
        SetSysTimerTargetSec ( TIMER_MAN_TOUT , 1.0f ,&SysTimerStr); // Avoid premature "Stopped" indication

        SafeTransitManState( MAN_ST_GO_ROUGH_POSITION ); // Prevent next gate only if failed already

        break ;


    case MAN_ST_EMCSTOP:
        if ( IsSysTimerElapse(TMR_LASER_START , &SysTimerStr)  )
        {
            TapeArmGoto( LOGICAL_TAPEARM , ManGeo.FlexArmHomingRet2Area , 0 );
            SafeTransitManState(  MAN_ST_RETREAT ) ;
        }
        else
        {
            TapeArmStopMan()  ;
        }
        break ;

    case MAN_ST_GO_ROUGH_POSITION:
        // Go to initial position, wait laser indication if fetching
        if ( IsSysTimerElapse(TMR_LASER_START , &SysTimerStr)  )
        {
            if ( SysState.Package.LaserMedianValid )
            {
                ypack = SysState.CanAxis[LOGICAL_TAPEARM].BH.UserPos + SysState.Package.LaserDistMedian ;

                if (  (ypack > ManGeo.FlexArmMaxTravel )||  (ypack <  fabsf(TapeArmCmd.DTarget)  - TapeArmCmd.DFinalApproach )  )
                {
                    SetSysTimerTargetSec ( TMR_LASER_START, 1.5 , &SysTimerStr); // time for complete stop
                    TapeArmStopMan()  ;
                    TapeArmCmd.StopError = EXCEPT_STRAY_SEE_PACK;
                    SafeTransitManState(  MAN_ST_EMCSTOP ) ;
                }
                else
                {
                    if ( ypack - SysState.CanAxis[LOGICAL_TAPEARM].BH.UserPos > 0.15f)
                    {
                        SysState.CanAxis[LOGICAL_TAPEARM].BH.UserPosCmd = ypack ;
                    }
                }
            }
            else
            {
                if (  SysState.CanAxis[LOGICAL_TAPEARM].BH.UserPos > fabsf(TapeArmCmd.DTarget)  - TapeArmCmd.DFinalApproach )
                TapeArmGoto( LOGICAL_TAPEARM , ManGeo.FlexArmHomingRet2Area , 0 );
                TapeArmCmd.StopError = EXCEPT_LASER_TIMEOUT;
                SafeTransitManState(  MAN_ST_RETREAT ) ;
            }
            if ( TapeArmAreDoorsConverged() == 0 )
            {
                TapeArmGoto( LOGICAL_TAPEARM , ManGeo.FlexArmHomingRet2Area , 0 );
                TapeArmCmd.StopError = EXCEPT_SHELF_TIMEOUT;
                //TapeArmCmd.StopError = EXCEPT_LASER_TIMEOUT;
                SafeTransitManState(  MAN_ST_RETREAT ) ;
            }
        }

        if( IndividualStopped )
        {
            InitSuctionMonitor()  ;
            SysState.Package.SuckRequest.items.RestartTimerAnyway = 1 ;
            SafeTransitManState( MAN_ST_DO_SUCTION ) ;
        }
        break ;

    case MAN_ST_DO_SUCTION:
        //SysState.Package.LaserRequest = 0;
        if ( suckResult == -1)
        {
            // Suck action failed, abort mission
            StopSuctionMonitor()  ;
            // Start the long way home
            TapeArmCmd.StopError = EXCEPT_FAILED_INIT_PACKAGE_SUCTION;
            SafeTransitManState( MAN_ST_RETREAT ) ;
            break ;
        }
        else
        {
            SafeTransitManState(  MAN_ST_FOLDBACK ) ;
        }
        TapeArmGoto( LOGICAL_TAPEARM , ManGeo.FlexArmHomingRet2Area , 0 );
        break ;

    case MAN_ST_FOLDBACK:
        if( suckResult == -1 )
        {
            StopSuctionImmediate() ; // Stop sucking , no wait
            TapeArmCmd.YTarget = TapeArmCmd.YTargetRepush ;
            TapeArmCmd.StopError = EXCEPT_LOST_PACKAGE_GRIP;
            TapeArmGoto( LOGICAL_TAPEARM , fabsf(TapeArmCmd.DTarget) , 0 );
            SafeTransitManState( MAN_ST_RELEASE_PUT ) ;
            break ;
        }

        //At this point, nearly always stopped as increments are beneath the posDone error margin
        if( IndividualStopped  ) //check within .01m of desired position
        {
            StopSuctionImmediate()  ; // Stop sucking , no wait
            SafeTransitManState(  MAN_ST_RELEASE_WAIT_STOP );
        }
        break;

    case MAN_ST_RELEASE_WAIT_STOP:
        // Command the stop shelves to close
        ManCmd.Ctl12[MAN_AXIS_LSTOP].L12.PosTarget = ManGeo.FlexDoorPosUp ;
        ManCmd.Ctl12[MAN_AXIS_RSTOP].L12.PosTarget = ManGeo.FlexDoorPosUp ;

        SetSysTimerTargetSec ( TMR_WAIT_MAN_FPOS , 0.5f ,&SysTimerStr);

        SafeTransitManState(  MAN_ST_DO_EDGE_STOP ) ;
        break ;

    case MAN_ST_DO_EDGE_STOP: //wait stop shelves to close
        if ( IsSysTimerElapse(TMR_WAIT_MAN_FPOS,&SysTimerStr) )
        {
            if ( TapeArmCmd.StopError == 0 )
            {
                SafeTransitManState(   MAN_ST_PALETTE_BACK ) ;
                Prep2PaletteBack();
            }
            else
            {
                SetManError ( TapeArmCmd.StopError  , ERROR_SRC_SYS ) ;
            }
        }
        break ;

    default :
        TapeArmCmd.State = MAN_ST_FAILURE;
        ManCBit.GripFail = 1 ;
        break ;

    case MAN_ST_PALETTE_BACK:
        // Final
        stat = FlexIsMotionDone( LOGICAL_PLATE) ;
        if ( stat < 0 )
        {
            SetManError ( EXCEPT_COULD_NOT_PALLET_BACK , ERROR_SRC_SYS ) ;
            TapeArmCmd.State =  MAN_ST_FAILURE ;
        }
        if ( stat > 0 )
        {
            SafeTransitManState(MAN_ST_DONE) ;
        }

    case MAN_ST_RELEASE_PUT:
        // Re-put package in place ; when done, just retreat
         if( IndividualStopped )
        {
            TapeArmGoto( LOGICAL_TAPEARM , ManGeo.FlexArmHomingRet2Area , 0 );
            SafeTransitManState(  MAN_ST_RETREAT );
        }
        break ;

    case MAN_ST_RETREAT:
        // Retreat home after failure
        if( IndividualStopped  ) //check within .01m of desired position
        {
            SafeTransitManState(  MAN_ST_RELEASE_WAIT_STOP );
        }
        break;
    }
}





/*
 * For Tape arm manipulator get the cartesian position and the reachable space
 */
void TapeArmGetManipulatorLimits (float *x1_out, float *y1_out , float *ymin_out , float *ymax_out  )
{

    // Ofer please complete
    *x1_out = 0 ;
    *y1_out = 0 ;
    *ymax_out = 0 ;
    *ymin_out = 0 ;

}





