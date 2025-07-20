#include "StructDef.h"
static short canblink ;



void SetUserWait(short unsigned key , short unsigned value )
{
    if ( key != SysState.Debug.UserWaitKey )
    {
        if ( SysState.Debug.bWaitUserEnable )
        {
            SysState.Debug.bWaitUser = value ;
        }
        SysState.Debug.UserWaitKey = key ;
    }
}



/*
 * \brief Get the mission status, as reflected to CBIT host reports
 *
 */
static void GetMissionStatus( void )
{
    short MissionAbortedStat ;
    short ManipulatorAbortedStat ;
    short MissionStat ;
    short unsigned mask;
    short expcnt;
    long unsigned * pLongexp ;
    short fatality , expcode ;

    // Mission status
    // Points long exception - two longs field
    MissionAbortedStat = E_MissionAbortStat_Good ; // Default
    ManipulatorAbortedStat = E_ManipulatorAbortStat_Good ; //Default

    expcnt = (SysState.Mot.ExceptionCnt - 1) & 0x7 ;

    pLongexp = (long unsigned *) & SysState.Mot.ExceptionTab[expcnt];
    expcode  = * (( short * ) pLongexp ) ;
    fatality = - ( (( short unsigned)( pLongexp[1] & 0xf0)) >> 4 ) ;

    if ( fatality == EXP_RESET )
    {
        expcode = 0 ;
    }

/*
    if ( ManRouteCmd.ShelfMode || ManRouteCmd.CrabCrawl || SysState.ManRouteState.NewCrabFlag ||
            (ImuStartMgr.Good == 0 ) || SysState.ManRouteState.DifferenceDrive )
    {
        SetSysTimerTarget ( TIMER_DONT_EST_GYRO_OFFSET , 2.0f , &SysTimerStr ) ;
    }

    GyroInt.bEnableGyroOffsetEst =
            IsSysTimerElapse (TIMER_DONT_EST_GYRO_OFFSET, &SysTimerStr) ;
*/

    //ext_exp  = (short unsigned)( pLongexp[1] >> 16 ) & 0xffff ;

    if ( SysState.Mot.mode == E_SysMotionModeHostSpeedControl )
    {
        MissionStat = E_MissionStat_IdleNoNav ;
    }
    else if ( ( ( (HostMessageStr.Permission & 3) == 0 ) || (Config.ManipConfig == EManipulator_None) ) && ( M2S.Items.ActCmd.cmd.PsCmd.items.ManipulatorAxesReboot
            || SysState.Package.ComNetState[0] == DYN_STATE_REBOOT
            || SysState.Package.ComNetState[0] == DYN_STATE_REBOOT_WAIT
            || SysState.Package.ComNetState[1] == DYN_STATE_REBOOT
            || SysState.Package.ComNetState[1] == DYN_STATE_REBOOT_WAIT) )
    {
        // Active manipulator rest request or any axis reporting a booting state
        MissionStat = E_MissionStat_Initializing;
        MissionAbortedStat = E_MissionAbortStat_GeneralReason ;
    }

    else if ( SysState.CBit.bit.OnRescueMission || (SysState.WakeupState != E_CAN_WAKEUP_OPERATIONAL))
    {
        switch (SysState.WakeupState)
        {
        case E_CAN_WAKEUP_OPERATIONAL:
            MissionStat = E_MissionStat_Rescue ;
            break ;
        case E_CAN_WAKEUP_SLEEP:
            MissionStat = E_MissionStat_Asleep ;
            break ;
        default:
            MissionStat = E_MissionStat_Initializing;
            break ;
        }
        MissionAbortedStat = E_MissionAbortStat_GeneralReason ; // Default
    }
    else
    {
        if (SysState.Mot.mode != E_SysMotionModeAutomatic)
        {
            // If doing emergency package handling, this is the dominating report
            if ( (SysState.Mot.mode == E_SysMotionModeTestPack) || (SysState.Mot.mode == E_SysMotionModeHostFinePosition) )
            {
                if ( (SysState.Package.Mode == E_PackModeResetManipulatorPower )|| (SysState.Package.Mode == E_PackModeRebootManipulatorMotors) )
                {
                    MissionStat = E_MissionStat_Manipulator_reset ;
                }
                else
                {
                    MissionStat = E_MissionStat_EmcyPackHandling ;
                }
            }
            else
            {
                if (SysState.CBit.bit.NavInitialized)
                {
                    if ( fatality == 0 || fatality == EXP_WARN )
                        MissionStat = E_MissionStat_IdleReady4Auto;
                    else
                    {
                        if (fatality == EXP_FATAL )
                            MissionStat = E_MissionStat_AbortFatal;
                        else
                        {
                            MissionStat = E_MissionStat_IdleReady4Auto;
                            //MissionAbortedStat = E_MissionAbortStat_GeneralReason ; // Default
                        }
                    }
                }
                else
                {
                    MissionStat = E_MissionStat_IdleNoNav ;
                }
            }
        }
        else
        { // yet automatic (may be aborted)
            if (SysState.Mot.ExecutingQueue )
            {
                MissionStat = E_MissionStat_RunMotionQueue ;
            }
            else
            {
                if ( SysState.CBit.bit.QueueAborted  )
                {
                    // Get the abort detail
                    if (expcode == 0 || fatality == EXP_RESET || fatality == EXP_WARN )
                    {
                        MissionAbortedStat = 0 ; // Default
                        MissionStat = E_MissionStat_NullQueue ;
                    }
                    else
                    {
                        MissionAbortedStat = E_MissionAbortStat_GeneralReason ; // Default
                        MissionStat = E_MissionStat_AbortMaybeOperable ;
                    }

                    // If failed, and there is a package abort code ....
                    if ( expcode == err_package_handeling_failed || expcode == exp_package_handeling_recovered )
                    {
                        MissionAbortedStat = E_MissionAbortStat_manipulator_related ;
                        ManipulatorAbortedStat = SysState.Package.ExceptionType ;
                        if ( IsManipulatorWell() != 1  )
                        {

                             if (
                                     //( MissionAbortedStat != E_MissionAbortStat_PushPack_Manipulator_Fail) &&
                                     //( MissionAbortedStat != E_MissionAbortStat_PushPack_EarlyManipulator_Fail) &&
                                     //( MissionAbortedStat != E_MissionAbortStat_GetPack_Manipulator_Fail_NoAceess) &&
                                     //( MissionAbortedStat != E_MissionAbortStat_GetPack_Manipulator_Fail_Midway) &&
                                     //( MissionAbortedStat != E_MissionAbortStat_GetPack_EarlyManipulator_Fail)

                                     ( ManipulatorAbortedStat != E_ManipulatorAbortStat_PushPack_Manipulator_Fail) &&
                                     ( ManipulatorAbortedStat != E_ManipulatorAbortStat_PushPack_EarlyManipulator_Fail) &&
                                     ( ManipulatorAbortedStat != E_ManipulatorAbortStat_GetPack_Manipulator_Fail_NoAceess) &&
                                     ( ManipulatorAbortedStat != E_ManipulatorAbortStat_GetPack_Manipulator_Fail_Midway) &&
                                     ( ManipulatorAbortedStat != E_ManipulatorAbortStat_GetPack_EarlyManipulator_Fail)
                                 )
                             {
                                 ManipulatorAbortedStat = E_ManipulatorAbortStat_General_Manipulator_Fail;//E_MissionAbortStat_General_Manipulator_Fail ;
                             }
                        }
                    }

                    if( SysState.CBit.bit.QueueIsSane == 0 )
                    {
                        MissionAbortedStat = E_MissionAbortStat_insane_mission ;
                    }

                }
                else
                {
                    MissionStat = E_MissionStat_NullQueue ;
                }
            }
        }
    }

    mask = BlockInts() ;
    SysState.MissionAbortedStat = MissionAbortedStat ;
    SysState.ManupilatorAbortedStat = ManipulatorAbortedStat;
    SysState.MissionStat = MissionStat ;
    RestoreInts( mask) ;
}



/**
 * \brief Run continuous built in testing
 */
void CBit (void)
{
    //short unsigned * pUs ;
    short unsigned mask   , stflag;
    short  motena  , m , InPack, OldManipLockFlag;
    short unsigned manstate   ;
    short unsigned ShortModeInfo , srmoving ,slmoving ,nmoving ;
    struct CManipControlWord cw ;
    short ReportedQindex, ReportedActiveQ;
    //long unsigned MalinkiLedSet ;

    // Release flash if so requested
    if ( S2M.Items.ActStatus.stat.FlashPumpRequest )
    {
        RelinquishPupmSemaphore( );
        FlashProg.PassWord = 0 ; // Because flash is not ready anymore
    }

    // test wheel - arm position
    CheckWheelArmPosition() ;
/*
    if ( IsSysTimerElapse(TIMER_BIT, &SysTimerStr)  )
    {
        DoTimedBIT= 1 ;
        SetSysTimerTargetSec ( TIMER_BIT, 0.01f, &SysTimerStr ) ;
    }
    else
    {
        DoTimedBIT= 0 ;
    }
*/

    if ( SysState.Mot.BodyCmd.bBypassTout )
    {
        SetSysTimerTargetSec ( TIMER_OBSTACLE_AVOIDANCE_CMD, 1.0f,  &SysTimerStr);
    }

    if  (SysState.WakeupState == E_CAN_WAKEUP_OPERATIONAL)
    {
        srmoving = ( ( SysState.CBit.bit.MotorReady & (1<<LOGICAL_RSTEER)) &&
                ( SysState.CanAxis[LOGICAL_RSTEER].PositionReached == 0 ) ) ? 1 : 0 ;
        slmoving = ( ( SysState.CBit.bit.MotorReady & (1<<LOGICAL_LSTEER)) &&
                ( SysState.CanAxis[LOGICAL_LSTEER].PositionReached == 0 ) ) ? 1 : 0 ;
        nmoving = ( ( SysState.CBit.bit.MotorReady & (1<<LOGICAL_NECK)) &&
                ( fabsf(SysState.CanAxis[LOGICAL_NECK].BH.UserSpeedCmd) > 0.1f  ) ) ? 1 : 0 ;

    }
    else
    {
        srmoving = 0 ; slmoving = 0 ; nmoving = 0;
    }

    //lDebug[1] = srmoving + (slmoving<<1)+(nmoving<<2)+((SysState.CBit.bit.MotorReady?1:0)<<3)+
    //        +(SysState.CanAxis[LOGICAL_RSTEER].PositionReached<<4)
    //        +(SysState.CanAxis[LOGICAL_LSTEER].PositionReached<<5)
    //        ;

    // Prevent gyro calibration while certain things happen
    if ( ( GyroInt.MustWait4Stop & 1 ) || (SysState.Status.V24 < 20)  || (SysState.Status.V12 < 10 ) ||
            ((SysState.Package.State > EPackState_Init) &&(SysState.Package.State != EPackState_Success))
            ||srmoving ||slmoving || nmoving)
    {
        SetSysTimerTargetSec ( TIMER_INROT , 2.0f , &SysTimerStr);
        GyroInt.MustWait4Stop |= 2 ;
        GyroInt.MustWait4Stop &= 0xfffe  ;
    }
    if ( IsSysTimerElapse(TIMER_INROT, &SysTimerStr)  )
    {
        GyroInt.MustWait4Stop = 0  ;
    }

    SysState.CBit.bit.NoImu = ( ImuStartMgr.Good ? 0 : 1 )   ;
    SysState.CBit.bit.InPause = ( SysState.Mot.bPauseFlag ? 1 : 0 ) ;

    if ( GyroInt.XSenseTimeOutCntr > 400 ) // About 100msec
    { // Too big time with no gyro

        mask = BlockInts() ;
        GyroInt.GyroQuatInterTime = 0 ;
        GyroInt.nGyroQuatListPut = 0 ;
        UnityQuat ( GyroInt.GyroQuat ) ;
        GyroInt.GyroQuatListReady = 0 ;
        RestoreInts(mask);
    }
    SysState.CBit.bit.GyroQuatListReady = ( GyroInt.GyroQuatListReady ) ? 1: 0 ;
    //SysState.ManRouteState.TurnGoesOnGyro  = ( tl < 10000 ) ? 1 : 0 ;

    // PD power sequencing
    SetManipulatorOn();

    // Test potentiometer value
    if ( IsSysTimerElapse(TIMER_POT_PROBLEM, &SysTimerStr)  )
    {
        SysState.CBit.bit.PotRefFail = 0  ;
    }
    else
    {
        SysState.CBit.bit.PotRefFail = 1  ;
    }

    // Test that neck stretching is OK
    if ( fabsf( SysState.WheelFiltAbsTorqueDiff ) < Geom.AlarmWheelUnbalance )
    {
        SetSysTimerTargetSec( TIMER_NECK_STRETCH_ALARM , 0.1f , &SysTimerStr) ;
        SysState.Status.Failure.bit.OverNeckStretch = 0;
    }
    else
    {
        if ( IsSysTimerElapse(TIMER_NECK_STRETCH_ALARM, &SysTimerStr)   )
        { //Allow manual release even if neck is over stretched
            SysState.Status.Failure.bit.OverNeckStretch = 1;
            if ( ManRouteCmd.ShelfMode &&  ( SysState.Mot.mode >= E_SysMotionModeManualTravel )  &&  ( SysState.Debug.bDisableNeckStretchAlarm == 0  ) )
            {
                if ( SysState.WheelFiltAbsTorqueDiff > Geom.AlarmWheelUnbalance )
                {
                    LogException(OWN_EXP_ID, EXP_SAFE_FATAL, exp_bad_shoulder_too_stretched);
                }
                else
                {
                    LogException(OWN_EXP_ID, EXP_SAFE_FATAL, exp_bad_shoulder_too_compressed);
                }
                //SysState.Status.Failure.bit.MotionFatal     = 1;
            }
        }
    }

    // Read Malinki status
    if ( SysState.bMalinkiMsgRdy)
    {
        //MalinkiProcessTxPdo1 ( &MalinkiInMsg ) ;
        SysState.bMalinkiMsgRdy = 0 ;
    }

    // Test PD communication data
    if ( (SysState.Package.ManOnState.PdoAcceptMask & 3 ) ==  3 )
    {
        SetSysTimerTargetSec (TIMER_PD_DATA_RX_TOUT, 0.1f, &SysTimerStr ) ;
        SysState.Package.ManOnState.PdoAcceptMask = 0 ;
        SysState.CBit.bit.NoPdData = 0  ;
    }
    else
    {
        if ( IsSysTimerElapse(TIMER_PD_DATA_RX_TOUT, &SysTimerStr) )
        {
            SysState.CBit.bit.NoPdData = 1 ;
        }
    }



    // Maintain a package standby
    manstate = SysState.Package.ManState  ;

    // Manage manipulator locking while climb
    InPack = IsInPack() ;
    OldManipLockFlag = ManRouteCmd.ManipLockFlag ;
    if ( InPack )
    {
        ManRouteCmd.ManipLockFlag = 0 ;
    }
    else
    {
        if ( (SysState.Mot.mode == E_SysMotionModeAutomatic)
                && SysState.Mot.ExecutingQueue )
                // && ManRouteCmd.CrabCrawl  )
        {
            ManRouteCmd.ManipLockFlag    = 1 ;
            ManRouteCmd.ManipLockRequest = 0 ;
        }
        else if  ( ( (ManRouteCmd.ShelfMode | SysState.Debug.bManipLockEnable ) == E_ShelfArc ) && ManRouteCmd.ManipLockRequest )
        {
            ManRouteCmd.ManipLockFlag = 1 ;
        }
        else
        {
            ManRouteCmd.ManipLockFlag = 0 ;
        }

        if ( ManRouteCmd.ManipLockFlag )
        {
            cw = SysState.Package.ManipControlWord ;
            cw.Standby = 0 ;
            cw.DealPackage =  0 ;
            cw.Automatic = 1 ;
            cw.MotorsOn = 1 ;
            SysState.Package.ManipControlWord = cw ;
        }
        else
        {   // Delete a stray request
            if ( OldManipLockFlag )
            {
                SysState.Package.ManipControlWord.MotorsOn = 0 ;
            }
            ManRouteCmd.ManipLockFlag = 0 ;
            ManRouteCmd.ManipLockRequest = 0 ;
        }
    }

    if ( SysState.Package.StandbyAction )
    {
        cw = SysState.Package.ManipControlWord ;
        if ( cw.DealPackage )
        { // Stolen by a package, just shut the flag
            SysState.Package.StandbyAction = 0 ;
        }
        else
        { // If time elapsed or a completion flag arrived from PD
            if ( manstate == MAN_ST_STDBY )
            {
                SysState.Package.StandbyAction = 2 ;
            }

            if ( IsSysTimerElapse(TIMER_MANIPULATOR_STANDBY,&SysTimerStr) ||
                    ((SysState.Package.StandbyAction == 2 ) && (manstate == MAN_ST_DONE) ))
            {
                cw.MotorsOn = ManRouteCmd.ManipLockFlag ;
                cw.Standby = 0  ;
                SysState.Package.ManipControlWord = cw ;
                SysState.Package.StandbyAction = 0  ;
                SetSysTimerTarget ( TIMER_MANIPULATOR_STANDBY , 0x7fffffff , &SysTimerStr) ;
            }
        }
    }

    /*
    Test the wheel encoder against its motor encoder , and also that potentiometers and encoders correlate
    */
    if (SysState.WakeupState == E_CAN_WAKEUP_OPERATIONAL)
    {// Operational system - if at least one of the encoders traveled 1rad, test that both encoders match approximately
     // Max speed is about 25rad/sec, meaning about 40msec/rad, processing delay can be about 20msec,

#define POT_VERIFY_TOL 0.086f

        // If manual travel command is old , kill it
        if ( ( SysState.Mot.mode == E_SysMotionModeManualTravel) && IsSysTimerElapse(TIMER_MAN_CMD_TOUT, &SysTimerStr) )
        {
            ManRouteCmd.LineSpeedCmd = 0 ;
        }


        // test that robot is stopped
        stflag = (SysState.Mot.mode == E_SysMotionModeAutomaticIdle) ? 1 : 0 ;
        if ( (SysState.Mot.mode == E_SysMotionModeAutomatic ) && (  ManRouteCmd.ShelfMode == 0  ) )
        {
            if ( SysState.Mot.ExecutingQueue <= 0 || SysState.CBit.bit.QueueAborted  || (SysState.ManRouteState.LineSpeed == 0 ) )
            {
                stflag = 1 ;
            }
        }
        if ( stflag == 0 )
        {
            SetSysTimerTarget ( TIMER_DONT_INTEG_GYRO , 1.0f , &SysTimerStr ) ;
            SysState.Nav.DontIntegrateYaw = 0  ;
        }
        else
        {
            SysState.Nav.DontIntegrateYaw = IsSysTimerElapse (TIMER_DONT_INTEG_GYRO, &SysTimerStr) ;
        }

    }

    motena = CbitManageMotorFaults() ;




#define LOGICAL_W_MASK ( (1<<LOGICAL_RW ) | ( 1 << LOGICAL_LW ) )
    if( SysState.Mot.mode <= E_SysMotionModeFault )
    {
        SysState.Status.OverRideBrakeRelease = 0 ;
        motena = 0 ;
    }
    //else
    //{
    //    SetSysTimerTargetSec( TIMER_DELAYED_MOFF_ON_FAULT , 0.1f , &SysTimerStr) ;
    //}

#ifndef SEPARATE_BRAKE
    SysState.Mot.bBrakeWheel[LOGICAL_RW] = 0 ;
    SysState.Mot.bBrakeWheel[LOGICAL_LW] = 0 ;
#endif

    if ( (( E_CAN_WAKEUP_OPERATIONAL == SysState.WakeupState) && (  (motena & LOGICAL_W_MASK) == LOGICAL_W_MASK )  ) || ( SysState.Status.OverRideBrakeRelease == 1 ))
    {
        ForceMotorOnBrake(&SysState.CanAxis[LOGICAL_RW] , SysState.Mot.bBrakeWheel[LOGICAL_RW]) ;
        ForceMotorOnBrake(&SysState.CanAxis[LOGICAL_LW] , SysState.Mot.bBrakeWheel[LOGICAL_LW]) ;
        SysState.CBit.bit.BrakesReleaseCmd = 1 ;
    }
    else
    {
        SysState.CBit.bit.BrakesReleaseCmd = 0 ;
        ForceMotorOnBrake(&SysState.CanAxis[LOGICAL_RW] , 0) ;
        ForceMotorOnBrake(&SysState.CanAxis[LOGICAL_LW] , 0) ;
        SysState.Mot.bBrakeWheel[LOGICAL_RW] = 0  ;
        SysState.Mot.bBrakeWheel[LOGICAL_LW] = 0  ;
    }
    SysState.CBit.bit.ForcedWheelBrake = (SysState.Mot.bBrakeWheel[LOGICAL_RW] + 2 * SysState.Mot.bBrakeWheel[LOGICAL_LW]) & 3 ;


/* Prepare short mode info correction 1-Nov-2021*/
    ShortModeInfo = ManRouteCmd.ShelfMode & 0x1f  + (( SysState.Mot.mode & 0xf) << 10 );
    m = 0 ; // Default
    if ( SysState.Mot.mode >= E_SysMotionModeManualTravel  )
    {
        if ( ManRouteCmd.ShelfMode || (SysState.Mot.mode == E_SysMotionModeHostSpeedControl ) )
        {
             ShortModeInfo += (SysState.ManRouteState.ClimbLeader ? 0x20 : 0 ) ;
        }
        else
        {
            m = 1 ; // Initial bet - straight
            ShortModeInfo += ( ManRouteCmd.CrabCrawl < 0 ) ? 0x20: 0 ;
            if (SysState.ManRouteState.NewCrabFlag )
            {
                m = ( ManRouteCmd.CrabCrawl ) ?  5 : 6 ;
            }
            else if ( ManRouteCmd.CrabCrawl )
            {
                m = 4 ;
            }
            else
            {
                if ( SysState.Mot.mode == E_SysMotionModeAutomatic )
                {
                    if  ( SysState.Mot.ExecutingQueue  )
                    {
                        switch ( SegQ[0].seg[SegRun.SegIndex].Type)
                        {
                        case SegType_Circular:
                        case SegType_Clothoid:
                            m = 2 ;
                            break ;
                        case SegType_Differential:
                            m = 3 ;
                            break ;
                        }
                    }
                }
                else
                { // Manual
                    if ( SysState.ManRouteState.DifferenceDrive)
                    {
                        m = 3 ;
                    }
                    else if ( fabsf(SysState.ManRouteState.Curvature) > 0.2)
                    {
                        m = 2 ;
                    }
                }
            }
        }
     }

    SysState.Status.ShortModeInfo = ShortModeInfo + ( (m & 0xf ) << 6) + (SysState.Mot.mode << 10) ;

    ShortModeInfo =  ( ( (short) fSat ( ( SysState.Status.V36 - 36.0f)  * 10.0f , 127.0f ) ) & 0xff ) +
                ( (( (short) fSat ( ( SysState.Status.V54 - 54.0f ) * 10.0f , 127.0f ) ) & 0xff) << 8 ) ;

    SysState.Status.ShortBatVoltsDeviation = ShortModeInfo  ;

/*
 * Mission Status
 */
    GetMissionStatus() ;

    if ( SysState.Debug.bWaitUserEnable  )
    {
        SysState.Status.Failure.bit.OnDebugWait = (SysState.Debug.bWaitUser ? (SysState.Debug.UserWaitKey & 0xff) : 0 ) ;
        SysState.Status.Failure.bit.DebugHoldEnabled = 1 ;
    }
    else
    {
        SysState.Status.Failure.bit.OnDebugWait = 0 ;
        SysState.Status.Failure.bit.DebugHoldEnabled = 0 ;
        SysState.Debug.bWaitUser   = 0  ;
        SysState.Debug.UserWaitKey = 0  ;
    }


/*
 * PWM - auto
 */
    // Malinki:
    // bits 0-2: left LED color
    // bits 3-5: middle LED color
    // bits 6-8: right LED color
    // bits 9-15: intensity (resolution: 128 intensity levels). PWM.
#define NO_LED      0
#define RED_LED     1
#define GREEN_LED   2
#define BLUE_LED    4
#define YELLOW_LED   (RED_LED | GREEN_LED)



    if ( InhibitAutoTlc == 0 )
    {
        //Robot right led– Motion Control

        //PwmValuesTlc[1] = 0 ;
        if  (  (motena & LOGICAL_W_MASK) == LOGICAL_W_MASK  )
        {
            //PwmValuesTlc[0] = 0 ;
            //PwmValuesTlc[2] = LedBrightness  ;
            //MalinkiLedSet = (MalinkiLedSet & 0xfffffff8  ) | 4 ;
            SysState.GMalinkiLedSet = (SysState.GMalinkiLedSet & 0xfffffe3f  ) | (GREEN_LED<<6) ; //green
        }
        else
        {
            //PwmValuesTlc[0] = LedBrightness  ;
            //PwmValuesTlc[2] = 0 ;
            //MalinkiLedSet = (MalinkiLedSet & 0xfffffff8  ) | 1 ;
            SysState.GMalinkiLedSet = (SysState.GMalinkiLedSet & 0xfffffe3f  ) | (RED_LED<<6) ; //red

        }

        //Robot left led– CAN

        if ( M2S.Items.ActCmd.cmd.ModeWord.bit.StopCan )
        {
            if ( IsSysTimerElapse(TIMER_SHUTCAN_BLINK, &SysTimerStr))
            {
                SetSysTimerTargetSec( TIMER_SHUTCAN_BLINK , 0.25f , &SysTimerStr) ;
                //if ( MalinkiLedSet & (5<<6) )
                if ( canblink )
                {
                    canblink = 0 ;
                    SysState.GMalinkiLedSet = (SysState.GMalinkiLedSet & 0xfffffff8  ) | NO_LED  ; //turn off yellow
                }
                else
                {
                    canblink = 1;
                    SysState.GMalinkiLedSet = (SysState.GMalinkiLedSet & 0xfffffff8  ) | YELLOW_LED ; //turn on yellow
                }
            }
        }
        else
        {
            if ( TxPdoBitStr.ErrorCond | RxPdoBitStr.ErrorCond )
            {
                SysState.GMalinkiLedSet = (SysState.GMalinkiLedSet & 0xfffffff8  ) | RED_LED ; //red
            }
            else
            {
                SysState.GMalinkiLedSet = (SysState.GMalinkiLedSet & 0xfffffff8  ) | YELLOW_LED; //yellow
            }
        }
    }
    SysState.GMalinkiLedSet = ( SysState.GMalinkiLedSet & 0xffff01ff ) + ((LedBrightness >>1 ) <<9 ) ;
    //M2S.Items.ActCmd.cmd.MalinkiSetCmd = MalinkiLedSet ;

    //updatung Qindex and Active Q to be reported
    mask = BlockInts();
    {
        if ( SysState.Mot.mode != E_SysMotionModeAutomatic)
        {
            if ( ( SysState.Mot.mode == E_SysMotionModeTestPack) &&(SysState.Package.PackSim.OldMotMode==E_SysMotionModeAutomatic) )
            {
                ReportedActiveQ = 0; // If interrupted the auto action just to make an emergency package action, and programmed to return to E_SysMotionModeAutomatic
                             // automatically upon completion .... then don't report interruption of Q motion
            }
            else
            {
                ReportedActiveQ = 0xffff; // If manual, there is no queue (mark 0xffff)
            }
            ReportedQindex = 0 ;      // Default
        }
        else
        {
            ReportedActiveQ = SysState.Mot.ExecutingQueue ;
            if ( ReportedActiveQ  == 0 )
            {   // If on the null queue, nothing happens, index is always zero
                ReportedQindex = 0 ;
            }
            else
            {
                ReportedQindex = MQ.nGet ; // Next instruction to fetch
                if (SysState.Mot.InGroundNav )
                {
                    if ( ReportedQindex ) // If now executing the ground nav, the queue pointer already moved, so
                        // pretend it did not
                    {
                        ReportedQindex -= 1 ;
                    }
                }
                // Copy the original location in the motion queue
                ReportedQindex = ( MQ.Item[ReportedQindex].MotionItemMode >> 6 ) ;
            }
        }
    }
    RestoreInts(mask);


    //event-driven status msgs

    if ((SysState.OldAbortStats.OldActiveQ != ReportedActiveQ) || (ReportedActiveQ > 0 && (SysState.OldAbortStats.OldQindex != ReportedQindex)) ||
            (SysState.OldAbortStats.OldMissionAbortedStat != SysState.MissionAbortedStat) || (SysState.OldAbortStats.OldMissionStat != SysState.MissionStat))
    {
        //change of Qindex, ActiveQ, MissionAbortStat or MissionStat is a trigger to send status msg, even if it's not it's period yet.
//        if (HostMessageStr.StatusMessageTrigger == 0 ) //not going to send this message ASAP anyhow
//        {
//            if (HostMessageStr.StatusMessageCntr < HostMessageStr.StatusMessagePeriod-1) //not going to send this message ASAP anyhow
//            {
                HostMessageStr.StatusMessageTrigger = 1  ;
                HostMessageStr.StatusMessageCntr = 0 ;
//            }
//        }
                SysState.OldAbortStats.OldActiveQ = ReportedActiveQ ;
                SysState.OldAbortStats.OldMissionAbortedStat = SysState.MissionAbortedStat;
                SysState.OldAbortStats.OldMissionStat = SysState.MissionStat;
    }
    SysState.OldAbortStats.OldQindex =ReportedQindex ;

    if (SysState.OldAbortStats.OldManupilatorAbortedStat != SysState.ManupilatorAbortedStat)
    {
        HostMessageStr.ManipulatorStatusMessageTrigger = 1  ;
        HostMessageStr.ManipulatorStatusMessageCntr = 0 ;
        SysState.OldAbortStats.OldManupilatorAbortedStat = SysState.ManupilatorAbortedStat;
    }


    SysState.PdBitGen.Pump1SwOn = (SysState.EEF.Status & 1 ) ? 1 : 0 ;
    SysState.PdBitGen.Pump2SwOn = (SysState.EEF.Status & 2 ) ? 1 : 0 ;
    SysState.PdBitGen.LaserPsSwOn = (SysState.EEF.Status & 10 ) ? 1 : 0 ;

    SysState.Status.Failure.bit.SerialFlashFault = ( SpiFlashFail ? 1 : 0 )  ;

    // Support the remote control by core 2 during package handeling
    // Optionally grant neck control to core 2
    M2S.Items.ActCmd.cmd.SlaveStatus.Status.InPackage = IsInPack();
    if ( M2S.Items.ActCmd.cmd.SlaveStatus.Status.InPackage || SysState.Debug.ForceNeckControlByCore2 )
    {
        M2S.Items.ActCmd.cmd.bGrantNeckControl = S2M.Items.RobotControl.RemoteCommand.RemoteCommandRequest  ;
        M2S.Items.ActCmd.cmd.PackageSide = SysState.Package.Side    ;
    }
    else
    {
        M2S.Items.ActCmd.cmd.bGrantNeckControl = 0 ;
        M2S.Items.ActCmd.cmd.PackageSide = 0 ;
    }
    M2S.Items.ActCmd.cmd.NeckIncidenceAngle = SysState.Package.IncidenceAngle ;
    M2S.Items.ActCmd.cmd.NeckAngle = SysState.CanAxis[LOGICAL_NECK].BH.UserPos ;
    M2S.Items.ActCmd.cmd.PlatRoll  = SysState.Nav.roll ;
    M2S.Items.ActCmd.cmd.PlatPitch = SysState.Nav.pitch ;
    M2S.Items.ActCmd.cmd.RobotPositionM[0] = SysState.Nav.Robot.xc[0] ;
    M2S.Items.ActCmd.cmd.RobotPositionM[1] = SysState.Nav.Robot.xc[1] ;
    M2S.Items.ActCmd.cmd.WheelArmTiltCompensation = SysState.TrackWidthCtl.TrackTilt * ManRouteCmd.CrabCrawl ;
    M2S.Items.ActCmd.cmd.SlaveStatus.Status.NeckFault = SysState.CanAxis[LOGICAL_NECK].BH.AxisCbit.bit.MotorFault;
    M2S.Items.ActCmd.cmd.SlaveStatus.Status.NeckMotorOn = SysState.CanAxis[LOGICAL_NECK].BH.AxisCbit.bit.MotorReady;
    M2S.Items.ActCmd.cmd.SlaveStatus.Status.NeckProfileConverged = SysState.CanAxis[LOGICAL_NECK].BH.AxisCbit.bit.ProfileConverged;
    M2S.Items.ActCmd.cmd.SlaveStatus.Status.NeckMotionConverged = SysState.CanAxis[LOGICAL_NECK].BH.AxisCbit.bit.MotionConverged;


    // If now communication from core 2, disable STO
    if ( SysState.Debug.StoTestOverride == 0 )
    {
        if ( SysState.Package.ManCBit1.MushroomDepressed )
        {
            DisableSTO ( ) ;
        }
        else
        {
            if ( S2M.Items.DataFromPd.item.DataFromPdCtr != SysState.Status.LocalPduComCounter)
            {
                // If zero, clear STO and let a lot of time
                EnableSTO ( ) ;
                SysState.Status.LocalPduComCounter = S2M.Items.DataFromPd.item.DataFromPdCtr ;
            }
        }
    }
}

void  KillAllCanAxes(void)
{
    short unsigned cnt , mask ;
    struct CCanAxis* pAxis ;
    for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
    {
        mask = BlockInts() ;
        pAxis = &SysState.CanAxis[cnt] ;
        pAxis->AutoStartCnt = 0 ;
        pAxis->BH.BhCw.bit.MotorOnCmd = 0 ;
        pAxis->BH.UserSpeedCmd = 0 ;
        SetBrakeActionAutomatic(pAxis) ;

        RestoreInts(mask) ;
    }
    KillDifferenceDrive() ;
    SysState.TrackWidthCtl.bActive = 0 ;
}


/*
 * Log an exception in the exception stack
 *
\param ID:  OWN_EXP_ID or the logical ID of the axis that failed
\param fatality:
 #define EXP_RESET (short)(0)   // A code for resetting any existing failure
 #define EXP_FATAL (short)(-1)   // Fatal - dead duck
 #define EXP_WARN  (short)(-2)   // For warning
 #define EXP_ABORT  (short)(-3)  // Abort auto actions
 EXP_SAFE_FATAL : Delayed pass to EXP_FATAL, allow safe braking
\param exp: An exception code.
\note: For resetting, use LogException(OWN_EXP_ID, EXP_RESET, 0);

*/
long unsigned LogException ( short unsigned ID ,  short fatality , long unsigned exp )
{
    short unsigned oldexp , oldmode , qinfo , usexp , packon  ;
    short unsigned mask ;
    long unsigned ext_exp;
    long unsigned  *pExp ;
    mask = BlockInts() ;

    usexp   = (short unsigned)exp;
    ext_exp = exp >> 16 ;

    // Old exception to test if this report is really new
    if ( SysState.Mot.ExceptionInit )
    {
        oldexp = (short unsigned) (  SysState.Mot.ExceptionTab[(SysState.Mot.ExceptionCnt-1)&(EXCEPTION_TAB_LENGTH-1)] & 0xffff ) ;
    }
    else
    {
        oldexp = 0 ;
        SysState.Mot.ExceptionInit  = 1;
    }

    oldmode = SysState.Mot.mode ; // Mode backup

    // Prepare the queue information for error log, if relevant
    if (SysState.Mot.mode != E_SysMotionModeAutomatic  || ( MQ.nGet == MQ.nPut) )
    {
        qinfo   = 0 ;
    }
    else
    {
        qinfo = 0x800 + ( MQ.nGet & 0x7ff ) ;
    }


    if ( ( fatality == EXP_FATAL ) && (( SysState.Mot.mode > E_SysMotionModeMotorOff ) || (SysState.Mot.mode == E_SysMotionModeSafeFault) ) )
    {
        SysState.Mot.QuickStop = 1;
        KillAllCanAxes() ;

        SetMotionMode(E_SysMotionModeFault,7);


        if ( SysState.Mot.mode == E_SysMotionModeTestPack )
        {
            SetMotionMode(E_SysMotionModeManualTravel,8) ;
        }

        // Terminate package state to failure
        switch ( SysState.Package.State )
        {
        case EPackState_Init:
        case EPackState_Success:
            TerminatePackageHandling(SysState.Package.State );
            break ;
        default:
            TerminatePackageHandling(EPackState_Failure );
            break ;
        }

        if ( SysState.Debug.bDebugWheelArm == 0 )
        {
            SetWheelArmPinState( LOGICAL_LW , E_DoNothing ) ;
            SetWheelArmPinState( LOGICAL_RW , E_DoNothing ) ;
        }
    }
    /*
    if ( fatality == EXP_WARN)
    {
        //SysState.Mot.Exception = (unsigned short) exp ;
    }
    */
    packon = 0 ;
    if ( fatality == EXP_ABORT_PACKON)
    {
        fatality = EXP_ABORT ;
        packon = 1 ;
    }
    if ( fatality == EXP_ABORT)
    {
        // Change : ABORT does not leave the auto mode, just go to the null queue
        if ( packon == 0 )
        {
            SysState.Mot.QuickStop = 1;
        }

        if ( SysState.Mot.mode == E_SysMotionModeAutomatic || ((SysState.Package.PackSim.OldMotMode == E_SysMotionModeAutomatic) && (SysState.Mot.mode == E_SysMotionModeTestPack) ) )
        {
            MQ.nGet = 0 ; // Kill motion queue, go practically to null queue
            MQ.nPut = 0 ;
            // SetMotionMode(E_SysMotionModeStay,9) ; // Vandal
            SysState.CBit.bit.QueueAborted = 1;
        }
        else if ( SysState.Mot.mode == E_SysMotionModeTestPack )
        {
            SetMotionMode ( E_SysMotionModeManualTravel , 10 ) ;
        }

        KillDifferenceDrive() ;

        if ( packon == 0 )
        {
            TerminatePackageHandling(SysState.Package.State );
        }

        StopWheels();
        if ( SysState.Debug.bDebugWheelArm == 0 )
        {
            SetWheelArmPinState( LOGICAL_LW , E_DoNothing ) ;
            SetWheelArmPinState( LOGICAL_RW , E_DoNothing ) ;
        }
    }

    /*if ( fatality == EXP_RESET )
    {// Reset exception exits the auto mode by Olivier strange request
        if ( SysState.Mot.mode == E_SysMotionModeAutomatic )
        {
            SetMotionMode(E_SysMotionModeManualTravel,11) ;
            SysState.Mot.QuickStop = 1 ;
            SysState.Mot.JumpCmd.CmdCntr = 0 ; // Signal jump is taken already (even if failed)
        }
    }*/


    if ( usexp != oldexp )
    {
        // Prevent multiple registration of the same error.
        // Specifically, an error reset will be ignored if the error code is anyway 0

        if ( ( fatality == EXP_WARN) && SysState.Mot.RejectWarning.IgnoreWarning  )
        { // Warnings may be logged later if desired
            SysState.Mot.RejectWarning.ID = ID ;
            SysState.Mot.RejectWarning.exp = exp ;
        }
        else
        {// Log exception
            // Exception files:
            // Long[0]:
            // 0..15  : Exception code
            // 16..19 : ID of exception generator
            // 20..23 : Mode (Automatic, .... ) just before exception throw
            // 24..35 : Next position in queue (if relevant)
            // Long[1]:
            //  0..3: 0x80 if was running a queue
            //  4..7: Fatality code
            //  16..31: Extended exception code (high part of exception parameter)

            pExp = (long unsigned  * ) & SysState.Mot.ExceptionTab[SysState.Mot.ExceptionCnt] ;
            pExp[0] = (long unsigned) usexp  +  (( long unsigned) (ID&0xf) << 16 )
                    +  (( long unsigned) (oldmode &0xf) << 20 )
                    +  (( long unsigned) (qinfo &0xff) << 24 ) ;
            pExp[1] = ( (( long unsigned) qinfo >> 8 ) & 0xf ) + (((-fatality) & 0xf) << 4 )
                                +  (( long unsigned) ext_exp  << 16 ) ;
            SysState.Mot.ExceptionCnt =  ( SysState.Mot.ExceptionCnt+1) & (EXCEPTION_TAB_LENGTH-1)  ;
            SysState.Mot.MotLog = SetLBitField ( SysState.Mot.MotLog , 0x7 , 9 , SysState.Mot.ExceptionCnt ) ;
            SysState.Mot.LastException = usexp ;
            SysState.Mot.MotLog = ( SysState.Mot.MotLog & 0x000fffff ) | ((unsigned long) usexp << 20 ) ;
        }
    }


    RestoreInts( mask) ;

    return exp ;
}

/*
 * SelfTest.c
 *
 *  Created on: Sep 29, 2022
 *      Author: yahal
 */




