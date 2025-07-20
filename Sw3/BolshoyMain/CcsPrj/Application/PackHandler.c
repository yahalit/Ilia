
#include "StructDef.h"
#include "ItNav.h"
#include "gyro.h"

#ifdef _LPSIM
#include <math.h>
#else
float fabsf(float x);
#endif



/*
 * \brief Terminate the package handling
 *
 * Release the brakes and advance the task queue
 *
 */
void TerminatePackageHandling(short NextState )
{
    short unsigned mask ;
    float NeckPos ;

    if ( GlobalDebug && (EPackState_Success != NextState) )
    {
        __asm( " ESTOP0") ;
    }


    mask = BlockInts() ;
    SysState.Package.ManipControlWord.Automatic = 0 ;
    SysState.Package.ManipControlWord.MotorsOn = 0 ; // Stop all the manipulator motors
    SysState.Package.ManipControlWord.Standby = 0 ; // No command for any package action
    SysState.Package.ManipControlWord.DealPackage = 0 ;
    RestoreInts(mask) ;

    //AdvanceMotionQueue() ; // Go over queue entry, exiting package mode

    SysState.Package.State = NextState ;
    NeckPos = GetUserPosNeck() ;

    if ( (fabsf(NeckPos) < 0.5f ) && (  ManRouteCmd.DisableResetNeckPosTarget == 0 ) )
    {
        SetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_NECK], 0)  ; // SysState.Package.IncidenceAngle ;
    }
}


/*
 * \brief Decide if manipulator is up and running (not testing motor on)
 * \return Negative: bad, 0: don't know , 1: ok
 */

short IsManipulatorWell (void)
{
    if ( Config.ManipConfig == EManipulator_Scara )
    {
        if ( (SysState.Package.ManCBit2.Active12V == 0)  || SysState.Package.ManCBit1.V12Fail  )// || (SysState.Package.ManCBit2.Active24V == 0) ||   // || (Config.ManipConfig == EManipulator_None) ) //|| SysState.Package.ManCBit1.V24Fail
        {
            return E_ManPowerOff;
        }
        if ( SysState.Package.ManCBit3.Dyn12NetOn == 0 )//|| (SysState.Package.ManCBit3.Dyn24NetOn == 0))
        {
            return E_ManNetsOff;
        }
        if ( SysState.Package.ManCBit3.Dyn12InitDone == 0 )  //|| (SysState.Package.ManCBit3.Dyn24InitDone == 0))
        {
            return E_ManInitializing;
        }
    }

    if ( Config.ManipConfig == EManipulator_None )
    {
        return E_ManMissing;
    }

    if (SysState.EEF.bUse && SysState.EEF.WasEvent < 0 )
    {
        return E_EEF_Absent ;
    }

    if ( SysState.CBit.bit.NoPdData  ) //why test here if communication to PD is good??
    {
        return  E_ManNoData; //TODO:change description
    }
    return 1 ;
}

/*
 * \brief: Verify that the entire manipulator is no
 */
short IsManipulatorMotorOn (short test)
{
    //GlobalDebug |= 2 ;
    if ( ( SysState.Package.ManCBit3.MotorOnMan == 7  ) && (SysState.Package.ManCBit3.MotorOnStop == 3))
    {
        GlobalDebugCtr[1] = 0 ;
        return 1 ;
    }

    if ( test == 0 )
    {
        GlobalDebugCtr[1] = 0 ;
        return 0 ;
    }


    //if ( GlobalDebug & 2)
    {
        if ( SysState.Package.ManCBit3.MotorOnMan == 7  )
        {
            if ( GlobalDebugCtr[1] == 0 )
            {
                GlobalDebugCtr[0] += 1 ;
            }
            GlobalDebugCtr[1] = 1 ;
            if ( GlobalDebug & 4 )
            {
                __asm(" ESTOP0" );
            }
            return 1 ;
        }
    }

    return 0 ;
}



/*
 * \brief Set the manipulator power on sequence to failure (and possible retry) mode
 */
void   SetManipulatorOnFailure(short unsigned FailureCode )
{
    //struct CPdCmd2 *pPdCmd2 ;
    //pPdCmd2 = (struct CPdCmd2 *) & SysState.PdCmd2 ;
    SysState.Package.ManOnState.FailureCode = FailureCode;
    SysState.Package.ManOnState.State = E_ManonFail ;
}

#ifndef CORE2_OWNS_CAN
// Restart the power cycle of the PD
void RestartPowerCycle(void)
{
    struct CPdCmd2 *pPdCmd2 ;
    pPdCmd2 = (struct CPdCmd2 *) & SysState.PdCmd2 ;
    SysState.Package.ManOnState.RetryCounter += 1 ;
    pPdCmd2->Power24V = 0 ;
    pPdCmd2->Power12V = 0 ;
    SysState.PdCmd2EnterCtr=  6;

    if ( SysState.Package.ManOnState.RetryCounter >= MAN_POWER_RETRY_CYCLES_MAX )
    {
        pPdCmd2->Power12V = 1 ;  // At least release the brakes ...
    }

    SetSysTimerTargetSec( TIMER_PACK_MON_HELPER , 10.0f , &SysTimerStr) ;
    SetSysTimerTargetSec( TIMER_PACK_MON_HELPER2 , 0.2f , &SysTimerStr) ;
    SysState.Package.ManOnState.State = E_ManonWaitVoltDown ;
}
#endif

// Restart the servo
void SetControlOper( short unsigned * cw , short unsigned on);

void RestartServo( void)
{
    short unsigned mask , cnt;
    struct CCanAxis * pAxis ;
    mask = BlockInts() ;

    // Order quick motor stop with servo
    SysState.Mot.QuickStop = 1 ;

    for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++)
    {
        pAxis  = &SysState.CanAxis[cnt];
        ResetAxisFaults(pAxis)  ;
        KillMotor(pAxis)  ;
        SetPosCmd2PosFeedback(pAxis)  ;
        SetWheelSpeedCmd(pAxis,0,0)  ;
    }

    SysState.Status.OverRideBrakeRelease = 0 ;

    SetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_RSTEER],GetUserPosRSteer()) ;

    SetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_LSTEER], GetUserPosLSteer()) ;

    SetCanAxisPosTarget ( &SysState.CanAxis[LOGICAL_NECK], GetUserPosNeck() ) ;

    SysState.Mot.NeckControl.NeckMode = E_NeckModeEncCmd ;

    SetMotionMode(E_SysMotionModeStay,25) ;

    ManRouteCmd.LineSpeedCmd = 0 ;
    ManRouteCmd.CurvatureCmd = 0 ;
    ManRouteCmd.dCurvatureCmd = 0;

    SysState.CanAxis[LOGICAL_RW].AutoStartCnt = 7 ;
    SysState.CanAxis[LOGICAL_LW].AutoStartCnt = 7 ;
    SysState.CanAxis[LOGICAL_RSTEER].AutoStartCnt = 7 ;
    SysState.CanAxis[LOGICAL_LSTEER].AutoStartCnt = 7 ;
    SysState.CanAxis[LOGICAL_NECK].AutoStartCnt = 7 ;
    RestoreInts( mask) ;
}


short RetryCtr ;
//Set the manipulator to its on state
void SetManipulatorOn( void )
{
    short unsigned mstate ;

    SysState.Package.ManOnState.WellnessStatus = IsManipulatorWell();

    if ( SysState.CBit.bit.NoPdData || SysState.Package.ManOnState.State == E_ManonNothing) // SysState.Package.ManOnState.WellnessStatus == 0 )
    { // If don't know manipulator state, nothing more to do
        return ;
    }

    // State machine: revive manipulator
    switch (SysState.Package.ManOnState.State)
    {
#ifdef CORE2_OWNS_CAN
    case E_ManonInit:
        M2S.Items.ActCmd.cmd.PsCmd.items.RebootPsCntr += 1 ;
        SysState.Package.ManOnState.State = E_ManRebootInit ;
        break ;
    case E_ManRebootInit:
        SetSysTimerTargetSec( TIMER_PACK_MON_HELPER , 20.0f , &SysTimerStr) ;
        SetSysTimerTargetSec( TIMER_PACK_MON_HELPER2 , 0.2f , &SysTimerStr) ;
        SysState.Package.ManOnState.State = E_ManonWaitReboot ;
        break ;
    case E_ManonWaitReboot:
        mstate = S2M.Items.ActStatus.stat.PsStatus.bit.ManOnState ;
        if ( (mstate == E_ManonFail) || (mstate == E_ManonDone))
        {
            SysState.Package.ManOnState.State = E_ManonWaitCommUp ;
        }

        if ( IsSysTimerElapse(TIMER_PACK_MON_HELPER, &SysTimerStr) )
        {
            SetManipulatorOnFailure(error_manipulator_comm_wake_tout ) ;
        }

        break ;

#else
    case E_ManonInit:
        // Its wrong, we don't know exactly what, so power cycle is reset, including the retry counter
        SysState.Package.ManOnState.RetryCounter = 0 ;
        RestartPowerCycle() ;
        break ;

    case E_ManRebootInit:
        M2S.Items.ActCmd.cmd.PsCmd.items.ManipulatorAxesReboot = 3; // 3 consecutive transmissions to PD for reliability
        SysState.Package.ManOnState.RetryCounter = 1 ;
        SetSysTimerTargetSec( TIMER_PACK_MON_HELPER , 10.0f , &SysTimerStr) ;
        SetSysTimerTargetSec( TIMER_PACK_MON_HELPER2 , 0.2f , &SysTimerStr) ;
        SysState.Package.ManOnState.State = E_ManonWaitReboot ;
        break ;

    case E_ManonWaitReboot:
        if ( IsSysTimerElapse(TIMER_PACK_MON_HELPER2, &SysTimerStr) )
        { // Allow time for manipulator reset to start
            if ( IsSysTimerElapse(TIMER_PACK_MON_HELPER, &SysTimerStr) )
            {
                SetManipulatorOnFailure(error_manipulator_reboot_tout ) ;
            }
            if ( SysState.Package.ManOnState.WellnessStatus == 1  )
            {
                if ( Config.WheelArmType > 0 )
                {
                    SysState.Package.ManOnState.State = E_ManonTestWarm ;
                    SysState.TrackWidthCtl.IBitState  = 1 ;
                }
                else
                {
                    SysState.Package.ManOnState.State = E_ManonDone ;
                }
//                     SysState.Package.ManOnState.State = E_ManonDone ;
            }
        }
        break ;

    case E_ManonWaitVoltDown:
        // Wait voltages are down
        if ( (SysState.Status.V12 < 4.0f)  && ( SysState.Status.V24 < 4.0f ))
        { // Voltages low enough , can try re-power
            SysState.Package.ManOnState.State = E_ManonWaitVoltUp ;
            // Time for entire power on process
            SetSysTimerTargetSec( TIMER_PACK_MON_HELPER , 3.0f , &SysTimerStr) ;
            // Time for consistent voltages good
            SetSysTimerTargetSec( TIMER_PACK_MON_HELPER2 , 0.2f , &SysTimerStr) ;
            pPdCmd2->Power12V = 1 ;  // Re-power robot
            pPdCmd2->Power24V = 1 ;
            SysState.PdCmd2EnterCtr = 6 ;
            RetryCtr = 0 ;
        }
        if ( IsSysTimerElapse(TIMER_PACK_MON_HELPER, &SysTimerStr) )
        { // Too much of bloody time, voltage not yet below thold
            SetManipulatorOnFailure(error_voltages_dont_fall) ;
        }
        break ;

    case E_ManonWaitVoltUp:
        // See that the voltage wakeup is not too long
        if ( IsSysTimerElapse(TIMER_PACK_MON_HELPER, &SysTimerStr) )
        {
            if ( SysState.Package.ManOnState.WellnessStatus <= E_ManPowerOff )
            {
                if ( RetryCtr < 5 )
                {
                    RetryCtr += 1 ;
                    SetSysTimerTargetSec( TIMER_PACK_MON_HELPER , 3.0f , &SysTimerStr) ;
                    // Time for consistent voltages good
                    SetSysTimerTargetSec( TIMER_PACK_MON_HELPER2 , 0.2f , &SysTimerStr) ;
                    pPdCmd2->Power12V = 1 ;  // Re-power robot
                    pPdCmd2->Power24V = 1 ;
                    SysState.PdCmd2EnterCtr = 6 ;
                }
                else
                {
                    SetManipulatorOnFailure(error_man_voltage_dont_restart ) ;
                }
            }
        }
        // Accept if voltages are high enough for enough time
        if ( (SysState.Status.V24 < 20)  || (SysState.Status.V12 < 10 ) )
        {
            SetSysTimerTargetSec( TIMER_PACK_MON_HELPER2 , 0.2f , &SysTimerStr) ;
        }

        if ( IsSysTimerElapse(TIMER_PACK_MON_HELPER2, &SysTimerStr) )
        {
            // Time out entire communication restart
            SetSysTimerTargetSec( TIMER_PACK_MON_HELPER , 20.0f , &SysTimerStr) ;
            pPdCmd2->CommRestart = 1 ;
            M2S.Items.ActCmd.cmd.ModeWord.bit.CommRestart = 1 ;
            SysState.PdCmd2EnterCtr = 6 ;
            SysState.Package.ManOnState.State = E_ManonWaitCommUp;
        }
        break ;
#endif
    case E_ManonWaitCommUp:
        if ( IsSysTimerElapse(TIMER_PACK_MON_HELPER, &SysTimerStr) )
        {
            SetManipulatorOnFailure(error_manipulator_comm_wake_tout ) ;
        }
        if ( SysState.Package.ManOnState.WellnessStatus == 1  )
        {
            if ( Config.WheelArmType > 0 )
            {
                SysState.Package.ManOnState.State = E_ManonTestWarm ;
                SysState.TrackWidthCtl.IBitState  = 1 ;
            }
            else
            {
                SysState.Package.ManOnState.State = E_ManonDone ;
            }
        }
        break ;

    case E_ManonTestWarm:
        if (  ManageWheelArmIBit() )
        {
            SysState.Package.ManOnState.State = E_ManonDone ;
        }
        break ;

    case E_ManonFail:
        // If more retries are possible, try it
#ifndef CORE2_OWNS_CAN
        RestartPowerCycle();
        if ( SysState.Package.ManOnState.RetryCounter >= MAN_POWER_RETRY_CYCLES_MAX )
        {
            SysState.Package.ManOnState.State = E_ManonFail ;  // Too many retries, remain in failure  ...
        }
#endif
        break;

    case E_ManonDone:
        // Nothing to do
        break ;

    default:
        SetManipulatorOnFailure(error_manipulator_wake_tout_undef_state  ) ;
        break ;
    }
}



// R3Ask: What are np, nr?
float np ;
float nr ;
void   GetPackageImuCorrection(void)
{
    float NeckPos ;
    NeckPos = GetUserPosNeck() ;
    SysState.Package.ImuRoll = SysState.Nav.roll - NeckPos  ;
    np = NeckPos ;
    nr = SysState.Nav.roll ;
}

/*
 * Handling of package:
 * - Programming of the package handling parameters to the PD
 * - Set the neck to proper incidence angle
 * - Monitor failure reports
 * - Wait mode completion
 */
void ManPackageBodyScara ( short IsStandby ) //TODO: write an entirely new function for flex
{
    struct CManipControlWord cw  ;
    long stat ,packY , packXX , Zero  ;
    short direction  ;
    short unsigned manstate  ;
    short unsigned mask ;

    if (  IsManipulatorWell() < 0  || (SysState.Mot.mode < E_SysMotionModeMotorOff) )
    { // Deep shit - exception handling
        SysState.Package.PendingException = exp_manipulator_actuators_down ;
        if ( SysState.Package.State== 0  )
        { // Tray motion not even started before failure
            if ( SysState.Package.Get )
            {
                SysState.Package.ExceptionType = E_ManipulatorAbortStat_GetPack_EarlyManipulator_Fail;//E_MissionAbortStat_GetPack_EarlyManipulator_Fail ;
            }
            else
            {
                SysState.Package.ExceptionType = E_ManipulatorAbortStat_PushPack_EarlyManipulator_Fail;//E_MissionAbortStat_PushPack_EarlyManipulator_Fail ;
            }

            TerminatePackageHandling(EPackState_MayUnclimb_Failure) ;
        }
        else
        {
            TerminatePackageHandling(EPackState_Failure) ;
            if ( SysState.Package.Get )
            {
                if ( SysState.Package.ManHolds & ( MAN_HOLDS_SUSPECT_CONTACT_STICKY || MAN_HOLDS_SUSPECT_CONTACT_W_PUMP_STICKY ))
                {
                    SysState.Package.ExceptionType = E_ManipulatorAbortStat_GetPack_Manipulator_Fail_Midway;//E_MissionAbortStat_GetPack_Manipulator_Fail_Midway ;
                }
                else
                {
                    SysState.Package.ExceptionType = E_ManipulatorAbortStat_GetPack_Manipulator_Fail_NoAceess;//E_MissionAbortStat_GetPack_Manipulator_Fail_NoAceess ;
                }
            }
            else
            {
                SysState.Package.ExceptionType = E_ManipulatorAbortStat_PushPack_Manipulator_Fail;//E_MissionAbortStat_PushPack_Manipulator_Fail   ;
            }
        }
    }

    // Kill wheel motion on the pack handling
    mask = BlockInts();
    SysState.ManRouteState.LineSpeed = 0 ;
    ManRouteCmd.LineSpeedCmd = 0 ;
    StopWheels() ; 
    RestoreInts(mask) ;

    manstate = SysState.Package.ManState ;
    switch (SysState.Package.State)
    {
    case 0: // Initialization
        // Verify no already in package sequence
        stat = 0;
        SysState.Package.IsFaultRecoverable = 0;
        SysState.Package.PendingException = 0;
        SysState.Package.LastFault = 0;
        SysState.Status.Failure.bit.PackHandleFail = 0 ;
        if ((manstate != MAN_ST_INIT) && (manstate != MAN_ST_FAILURE))
        { // Report failure
            stat = err_manipulator_is_busy;
        }

        // Get the IMU roll
        GetPackageImuCorrection();

        if (IsStandby)
        {// Standby - always neck is horizontal
            SysState.Package.IncidenceAngle = 0;
        }
        else
        {
            // Check incidence in range
            if ( fabsf(SysState.Package.IncidenceAngle) > (Geom.MaxIncidence4Package + 0.001F))
            {
                stat = err_too_big_incidence_package;
            }
        }

        if ( (SysState.Package.Side != PICKDIR_LEFT) && ( SysState.Package.Side != PICKDIR_RIGHT) )
        {
                stat = err_side_mismatch_for_package ;
        }

        // Verify either ground navigation or stabilized neck
        if ( ManRouteCmd.ShelfMode )
        {// Varify that package direction agrees with shelf direction
           if ( ManRouteCmd.CrabCrawl  )
            {
                if ( ManRouteCmd.CrabCrawl > 0 )
                {
                    SysState.Package.Side = PICKDIR_RIGHT ;
                }
                else
                {
                    SysState.Package.Side = PICKDIR_LEFT ;
                }
            }
            else
            {
                if ( SysState.ManRouteState.OldCrabValue > 0 )
                {
                    SysState.Package.Side = PICKDIR_RIGHT ;
                }
                else if ( SysState.ManRouteState.OldCrabValue < 0 )
                {
                    SysState.Package.Side = PICKDIR_LEFT ;
                }
            }
        }
        direction = ((SysState.Package.Side==2)?1:-1) ;


        // Bring manipulator to known state
        cw = SysState.Package.ManipControlWord  ;
        cw.Automatic = 0  ;
        cw.MotorsOn = 1 ;
        cw.DealPackage = 0 ;
        cw.PackageGet =  (SysState.Package.Get ) ? 1 : 0  ;
        cw.Side =  (SysState.Package.Side == 1 ) ? 1 : 2  ;
        cw.Standby = 0 ;
        SysState.Package.ManipControlWord = cw ;

        // Give 4 second to set Dynamixel on
        SetSysTimerTargetSec ( TIMER_PACK_ACTION_TMR , 4.0f , &SysTimerStr)  ; // Take time to allow start of manipulator servo

        if (stat == 0)
        { // Reset state machine of manipulator
            Zero = 0;

            stat = SendLong2Manip(0x2103, 8, 0x1234 ); // Remove any individual state
            stat = SendLong2Manip(0x2103, 105, Zero ); // ManCmd.State = 0 ;

            M2S.Items.ActCmd.cmd.StateResetCnt += 1 ;

            if (stat)
            {
                stat = err_cant_program_reset_pack;
            }
        }

        // Program package coordinates into PD
        // Send SDO with X and Y coordinates
        if (IsStandby)
        {
            if (stat == 0)
            { // Set the standby mode and direction (standby has direction only in SCARA)
                packXX = (SysState.Package.Side == 1) ? 1 : 2;
                stat = SendLong2Manip(0x2103, 107 , packXX) ;
                // stat = SendSdo2Manip(0x2103, 107, (long *)&packXX, 4, 4); // Standby side
                M2S.Items.ActCmd.cmd.PackDir = (unsigned short) packXX ;
                if (stat)
                {
                    stat = err_cant_program_man_stdby;
                }
            }
        }
        else
        {
            // Set expected package coordinates
            if (stat == 0)
            {
                packXX = (long)(SysState.Package.PackageX * 0.1f);
                //stat = SendSdo2Manip(0x2103, 102, (long *)&packXX, 4, 4); // Package X coordinate
                stat = SendLong2Manip(0x2103, 102 , packXX) ;
                if (stat)
                {
                    stat = err_cant_program_package_x;
                }
            }
            if (stat == 0)
            {
                packY = (long)( fabsf(SysState.Package.PackageY * 0.1f ) * direction );
                //stat = SendSdo2Manip(0x2103, 103, (long *)&packY, 4, 4); // Package Y coordinate
                stat = SendLong2Manip(0x2103, 103 , packY) ;
                //M2S.Items.ActCmd.cmd.PackY = SysState.Package.PackageY ;
                if (stat)
                {
                    stat = err_cant_program_package_y;
                }
            }
        }


        // If anything failed till now, declare early failure
        if ( stat )
        {
            if ( SysState.Package.Get )
            {
                SysState.Package.ExceptionType = E_ManipulatorAbortStat_GetPack_EarlyManipulator_Fail;//E_MissionAbortStat_GetPack_EarlyManipulator_Fail ;
            }
            else
            {
                SysState.Package.ExceptionType = E_ManipulatorAbortStat_PushPack_EarlyManipulator_Fail;//E_MissionAbortStat_PushPack_EarlyManipulator_Fail ;
            }
            SysState.Package.PendingException = (unsigned short) stat ;
            TerminatePackageHandling(EPackState_MayUnclimb_Failure ) ;
            return ;
        }
        SysState.Mot.QuickStop = 0 ; // Release quick stop condition, so tail may rotate
        SetSysTimerTargetSec ( TIMER_PACK_ACTION_TMR , 0.4f, &SysTimerStr )  ; // Was 1 second Sept 2019
        SysState.Package.State = EPackState_WaitTailIncidence ;
        SysState.Package.ExceptionType = E_MissionAbortStat_Good ;
        break ;


    case EPackState_WaitTailIncidence:
        if ( IsSysTimerElapse(TIMER_PACK_ACTION_TMR, &SysTimerStr)  )
        {
            GetPackageImuCorrection();
            cw =  SysState.Package.ManipControlWord  ;
            cw.Automatic = 1  ;
            cw.MotorsOn = 1 ;
            cw.DealPackage = (IsStandby) ? 0 : 1   ;
            cw.PackageGet =  (SysState.Package.Get ) ? 1 : 0  ;
            cw.Side =  (SysState.Package.Side == 1 ) ? 1 : 2  ;
            cw.Standby = (IsStandby) ? 1 : 0;
            SysState.Package.ManipControlWord = cw ;
            // Give 1 second to set Dynamixel on
            SetSysTimerTargetSec ( TIMER_PACK_ACTION_TMR , 4.0f , &SysTimerStr)  ; // Take time to allow start of manipulator servo
            SysState.Package.State = EPackState_ManipulatorWaitMon ;
        }
        break ;

    case EPackState_ManipulatorWaitMon: // Wait for manipulator to report its motors are on (abort on timeout)
        if ( IsManipulatorMotorOn(0) )
        {
            SetSysTimerTargetSec ( TIMER_PACK_ACTION_TMR , 40.0f, &SysTimerStr )  ;
            SetSysTimerTargetSec ( TIMER_DYNAMIXEL_PROBLEM , 0.3f , &SysTimerStr )  ;
            SysState.Package.State = EPackState_ManipulatorAction ;
        }

        if ( IsSysTimerElapse(TIMER_PACK_ACTION_TMR, &SysTimerStr))
        { // By now Dynamixel should be on and manipulator active, so we can time out the entire process
            // and check for manipulator BIT
            if ( SysState.Package.Get )
            {
                SysState.Package.ExceptionType = E_ManipulatorAbortStat_GetPack_EarlyManipulator_Fail;//E_MissionAbortStat_GetPack_EarlyManipulator_Fail ;
            }
            else
            {
                SysState.Package.ExceptionType = E_ManipulatorAbortStat_PushPack_EarlyManipulator_Fail;//E_MissionAbortStat_PushPack_EarlyManipulator_Fail ;
            }

            TerminatePackageHandling(EPackState_MayUnclimb_Failure ) ;
        }
        break;

    case EPackState_ManipulatorAction:
        if ( IsSysTimerElapse(TIMER_PACK_ACTION_TMR, &SysTimerStr)  )
        { // Total time out. Remove tail incidence and decide if error is critical
            // Time incidence retract
            SetSysTimerTargetSec ( TIMER_PACK_ACTION_TMR , 1.4f, &SysTimerStr )  ;
            SysState.Package.PendingException = err_package_handeling_timeout ;

            if ( SysState.Package.Get )
            {
                SysState.Package.ExceptionType = E_ManipulatorAbortStat_GetPack_Manipulator_Fail_Midway;//E_MissionAbortStat_GetPack_Manipulator_Fail_Midway ;
            }
            else
            {
                SysState.Package.ExceptionType = E_ManipulatorAbortStat_PushPack_Manipulator_Fail;//E_MissionAbortStat_PushPack_Manipulator_Fail ;
            }

            TerminatePackageHandling(EPackState_WaitTailIncidenceRetract ) ;
            return ;
        }

        if ( ( (IsStandby == 0 ) && SysState.Package.ManCBit1.GripFail)  || (manstate == MAN_ST_FAILURE )
                || ( IsManipulatorMotorOn(1) == 0  ))
        {
            if ( IsSysTimerElapse(TIMER_DYNAMIXEL_PROBLEM, &SysTimerStr) || (manstate == MAN_ST_FAILURE ) )
            {
                // Time incidence retract
                SetSysTimerTargetSec ( TIMER_PACK_ACTION_TMR , 1.4f, &SysTimerStr )  ;
                SysState.Package.PendingException = err_package_handeling_failed ;


                // Analyze source of error
                switch (SysState.Package.ManStopErr + EXCEPT_MANIPULATOR_FAIL_BASE  )
                {
                case EXCEPT_TARGET_NOT_REACHABLE:
                    if ( SysState.Package.Get )
                    {
                        SysState.Package.ExceptionType = E_ManipulatorAbortStat_GetPack_Manipulator_Fail_NoAceess;// E_MissionAbortStat_GetPack_Manipulator_Fail_NoAceess ;
                    }
                    else
                    {
                        SysState.Package.ExceptionType = E_ManipulatorAbortStat_PushPack_EarlyManipulator_Fail;//E_MissionAbortStat_PushPack_EarlyManipulator_Fail ;
                    }
                    break ;
                case EXCEPT_FINAL_PT_NOT_REACHABLE:
                case EXCEPT_INTERMEDIATE_PT_NOT_REACHABLE:
                    if ( SysState.Package.Get )
                    {
                        SysState.Package.ExceptionType = E_ManipulatorAbortStat_GetPack_Manipulator_Fail_NoAceess;//E_MissionAbortStat_GetPack_Manipulator_Fail_NoAceess ;
                    }
                    else
                    {
                        SysState.Package.ExceptionType = E_ManipulatorAbortStat_PushPack_Lost_Pack ;//E_MissionAbortStat_PushPack_Lost_Pack ;
                    }
                    break ;
                case EXCEPT_FAILED_INIT_PACKAGE_SUCTION:
                    if ( SysState.Package.Get )
                    {
                        SysState.Package.ExceptionType = E_ManipulatorAbortStat_GetPack_LostPack;//E_MissionAbortStat_GetPack_LostPack ;
                    }
                    else
                    {
                        SysState.Package.ExceptionType = E_ManipulatorAbortStat_PushPack_No_Package ; //E_MissionAbortStat_PushPack_No_Package ;
                    }
                    break ;
                case EXCEPT_LASER_TIMEOUT:
                    if ( SysState.Package.Get )
                     { // No package found
                         SysState.Package.ExceptionType = E_ManipulatorAbortStat_GetPack_No_Package;//E_MissionAbortStat_GetPack_No_Package ;
                     }
                     else
                     { // No package found
                         SysState.Package.ExceptionType = E_ManipulatorAbortStat_PushPack_No_Package;//E_MissionAbortStat_PushPack_No_Package ;
                     }
                     break ;
                case EXCEPT_LOST_PACKAGE_GRIP:
                case EXCEPT_FAILED_CALCULATING_PATH:
                case EXCEPT_NO_LASER_AT_RELEASE:
                    if ( SysState.Package.Get )
                    {
                        SysState.Package.ExceptionType = E_ManipulatorAbortStat_GetPack_LostPack;//E_MissionAbortStat_GetPack_LostPack ;
                    }
                    else
                    {
                        SysState.Package.ExceptionType = E_ManipulatorAbortStat_PushPack_Lost_Pack;//E_MissionAbortStat_PushPack_Lost_Pack ;
                    }
                    break ;
                case EXCEPT_STRAY_SEE_PACK:
                    if ( SysState.Package.Get )
                    {
                        SysState.Package.ExceptionType = E_ManipulatorAbortStat_GetPack_AlreadyLoaded;//E_MissionAbortStat_GetPack_AlreadyLoaded ;
                    }
                    else
                    {
                        SysState.Package.ExceptionType = E_MissionAbortStat_GeneralReason ;
                    }
                    break;
                default:
                    if ( SysState.Package.Get )
                    {
                        SysState.Package.ExceptionType = E_ManipulatorAbortStat_GetPack_Manipulator_Fail_Midway;//E_MissionAbortStat_GetPack_Manipulator_Fail_Midway ;
                    }
                    else
                    {
                        SysState.Package.ExceptionType = E_ManipulatorAbortStat_PushPack_Manipulator_Fail;//E_MissionAbortStat_PushPack_Manipulator_Fail ;
                    }
                    break ;
                }


                TerminatePackageHandling(EPackState_WaitTailIncidenceRetract ) ;
                return ;
            }
        }
        else
        {
            SetSysTimerTargetSec ( TIMER_DYNAMIXEL_PROBLEM , 0.3f , &SysTimerStr )  ;
        }

        if ( manstate == MAN_ST_DONE )
        {// Success termination
            TerminatePackageHandling(EPackState_Success) ;
        }
        break ;

    case EPackState_WaitTailIncidenceRetract:


        // Allow time for tail incidence to retract before quick-stop applies
        if ( IsSysTimerElapse(TIMER_PACK_ACTION_TMR, &SysTimerStr)  )
        {
            // Reach here only on error
            // If recoverable , go now
            if (    fabsf( SysState.Package.YPosition ) < ( G_YDistWheelShoulderPivot  - 0.01) )
            {
                TerminatePackageHandling(EPackState_MayUnclimb_Failure ) ;
            }
            else
            {
                TerminatePackageHandling(EPackState_Failure ) ;
            }
            SysState.Status.Failure.bit.PackHandleFail = 1  ;
        }
        break ;

    case EPackState_Success:
        // Finished with success
        TerminatePackageHandling(EPackState_Success) ;
        break ; // DONT call TerminatePackageHandling

    case EPackState_MayUnclimb_Failure:
        // Finished with failure, but can travel on
        TerminatePackageHandling(EPackState_MayUnclimb_Failure) ;
        SysState.Status.Failure.bit.PackHandleFail = 1  ;
        break;

    case EPackState_Failure:
        // Finished with failure, but can't travel on as manipulator may be extended
        TerminatePackageHandling(EPackState_Failure) ;
        SysState.Status.Failure.bit.PackHandleFail = 1  ;
        break;
    }
}



/*
 * Handling of package:
 * - Programming of the package handling parameters to the PD
 * - Set the neck to proper incidence angle
 * - Monitor failure reports
 * - Wait mode completion
 */
void ManPackageBodyFlex ( short IsStandby ) //TODO: write an entirely new function for flex
{
    struct CManipControlWord cw  ;
    long stat ,packY , packXX , Zero  ;
    short direction  ;
    short unsigned manstate, ManStateMachine  ;
    short unsigned mask ;

    //Zero = 0 ;
    // Test sanity

    if (  IsManipulatorWell() < 0  || (SysState.Mot.mode < E_SysMotionModeMotorOff) )
    { // Deep shit - exception handling
        SysState.Package.PendingException = exp_manipulator_actuators_down ;
        if ( SysState.Package.State== 0  )
        { // Tray motion not even started before failure
            if ( SysState.Package.Get )
            {
                SysState.Package.ExceptionType = E_ManipulatorAbortStat_GetPack_EarlyManipulator_Fail;//E_MissionAbortStat_GetPack_EarlyManipulator_Fail ;
            }
            else
            {
                SysState.Package.ExceptionType = E_ManipulatorAbortStat_PushPack_EarlyManipulator_Fail;//E_MissionAbortStat_PushPack_EarlyManipulator_Fail ;
            }

            TerminatePackageHandling(EPackState_MayUnclimb_Failure) ;
        }
        else
        {
            TerminatePackageHandling(EPackState_Failure) ;
            if ( SysState.Package.Get )
            {
                if ( SysState.Package.ManHolds & ( MAN_HOLDS_SUSPECT_CONTACT_STICKY || MAN_HOLDS_SUSPECT_CONTACT_W_PUMP_STICKY ))
                {
                    SysState.Package.ExceptionType = E_ManipulatorAbortStat_GetPack_Manipulator_Fail_Midway;//E_MissionAbortStat_GetPack_Manipulator_Fail_Midway ;
                }
                else
                {
                    SysState.Package.ExceptionType = E_ManipulatorAbortStat_GetPack_Manipulator_Fail_NoAceess;//E_MissionAbortStat_GetPack_Manipulator_Fail_NoAceess ;
                }
            }
            else
            {
                SysState.Package.ExceptionType = E_ManipulatorAbortStat_PushPack_Manipulator_Fail;//E_MissionAbortStat_PushPack_Manipulator_Fail   ;
            }
        }
    }

    // Kill wheel motion on the pack handling
    mask = BlockInts();
    SysState.ManRouteState.LineSpeed = 0 ;
    ManRouteCmd.LineSpeedCmd = 0 ;
    StopWheels() ;
    RestoreInts(mask) ;

    manstate = SysState.Package.ManState ;
    ManStateMachine = SysState.Package.ManStateMachine;
    switch (SysState.Package.State)
    {
    case 0: // Initialization
        // Verify no already in package sequence
        stat = 0;
        SysState.Package.IsFaultRecoverable = 0;
        SysState.Package.PendingException = 0;
        SysState.Package.LastFault = 0;
        SysState.Status.Failure.bit.PackHandleFail = 0 ;
        if ((manstate != MAN_ST_INIT) && (manstate != MAN_ST_FAILURE))
        { // Report failure
            stat = err_manipulator_is_busy;
        }

        // Get the IMU roll
        GetPackageImuCorrection();

        if (IsStandby)
        {// Standby - always neck is horizontal
            SysState.Package.IncidenceAngle = 0;
        }
        else
        {
            // Check incidence in range
            if ( fabsf(SysState.Package.IncidenceAngle) > (Geom.MaxIncidence4Package + 0.001F))
            {
                stat = err_too_big_incidence_package;
            }
        }

        if ( (SysState.Package.Side != PICKDIR_LEFT) && ( SysState.Package.Side != PICKDIR_RIGHT) )
        {
                stat = err_side_mismatch_for_package ;
        }

        // Verify either ground navigation or stabilized neck
        if ( ManRouteCmd.ShelfMode )
        {// Varify that package direction agrees with shelf direction
           if ( ManRouteCmd.CrabCrawl  )
            {
                if ( ManRouteCmd.CrabCrawl > 0 )
                {
                    SysState.Package.Side = PICKDIR_RIGHT ;
                }
                else
                {
                    SysState.Package.Side = PICKDIR_LEFT ;
                }
            }
            else
            {
                if ( SysState.ManRouteState.OldCrabValue > 0 )
                {
                    SysState.Package.Side = PICKDIR_RIGHT ;
                }
                else if ( SysState.ManRouteState.OldCrabValue < 0 )
                {
                    SysState.Package.Side = PICKDIR_LEFT ;
                }
            }
        }
        direction = ((SysState.Package.Side==2)?1:-1) ;


        // Bring manipulator to known state
        cw = SysState.Package.ManipControlWord  ;
        cw.Automatic = 0  ;
        cw.MotorsOn = 1 ;
        cw.DealPackage = 0 ;
        cw.PackageGet =  (SysState.Package.Get ) ? 1 : 0  ;
        cw.Side =  (SysState.Package.Side == 1 ) ? 1 : 2  ;
        cw.Standby = 0 ;
        SysState.Package.ManipControlWord = cw ;

        // Give 4 second to set tray motors on
        SetSysTimerTargetSec ( TIMER_PACK_ACTION_TMR , 4.0f , &SysTimerStr)  ; // Take time to allow start of manipulator servo

        if (stat == 0)
        { // Reset state machine of manipulator
            Zero = 0;

            stat = SendLong2Manip(0x2508, 8, 0x1234 ); // Remove any individual state
            //Canceled since is done by core 2 when initiating package handling CW
            //stat = SendLong2Manip(0x2506, 105, Zero ); // ManCmd.State = 0 ; set to initial state of state machine of package handling

            M2S.Items.ActCmd.cmd.StateResetCnt += 1 ; //set a new CW ready for core 2

            if (stat)
            {
                stat = err_cant_program_reset_pack;
            }
        }

        SysState.Mot.QuickStop = 0 ; // Release quick stop condition, so tail may rotate
        SetSysTimerTargetSec ( TIMER_PACK_ACTION_TMR , 0.4f, &SysTimerStr )  ; // Was 1 second Sept 2019
        SysState.Package.State = EPackState_WaitTailIncidence ;
        SysState.Package.ExceptionType = E_MissionAbortStat_Good ;
        break ;


    case EPackState_WaitTailIncidence:
        if ( IsSysTimerElapse(TIMER_PACK_ACTION_TMR, &SysTimerStr)  )
        {
            GetPackageImuCorrection();
            cw =  SysState.Package.ManipControlWord  ;
            cw.Automatic = 1  ;
            cw.MotorsOn = 1 ;
            cw.DealPackage = (IsStandby) ? 0 : 1   ;
            cw.PackageGet =  (SysState.Package.Get ) ? 1 : 0  ;
            cw.Side =  (SysState.Package.Side == 1 ) ? 1 : 2  ;
            cw.Standby = (IsStandby) ? 1 : 0;
            SysState.Package.ManipControlWord = cw ; //TODO: check if the M2S neck control parameters are up to date.Why not set in here?
            // Give 1 second to set Dynamixel on
            SetSysTimerTargetSec ( TIMER_PACK_ACTION_TMR , 4.0f , &SysTimerStr)  ; // Take time to allow start of manipulator servo
            SysState.Package.State = EPackState_ManipulatorWaitMon ;
        }
        break ;

    case EPackState_ManipulatorWaitMon: // Wait for manipulator to report its motors are on (abort on timeout)
        if ( ManStateMachine == E_ManipSysMotionModeAutomatic ) // was ( IsManipulatorMotorOn(0) )
        {
            SetSysTimerTargetSec ( TIMER_PACK_ACTION_TMR , 40.0f, &SysTimerStr )  ;
            //SetSysTimerTargetSec ( TIMER_DYNAMIXEL_PROBLEM , 0.3f , &SysTimerStr )  ;
            SysState.Package.State = EPackState_ManipulatorAction ;
            break;
        }

        if ( IsSysTimerElapse(TIMER_PACK_ACTION_TMR, &SysTimerStr) )
        { // By now the manipulator should be active, so we can time out the entire process
            if ( SysState.Package.Get )
            {
                SysState.Package.ExceptionType = E_ManipulatorAbortStat_GetPack_EarlyManipulator_Fail;//E_MissionAbortStat_GetPack_EarlyManipulator_Fail ;
            }
            else
            {
                SysState.Package.ExceptionType = E_ManipulatorAbortStat_PushPack_EarlyManipulator_Fail;//E_MissionAbortStat_PushPack_EarlyManipulator_Fail ;
            }

            TerminatePackageHandling(EPackState_MayUnclimb_Failure ) ;
        }
        break;

    case EPackState_ManipulatorAction:
        if ( IsSysTimerElapse(TIMER_PACK_ACTION_TMR, &SysTimerStr)  )
        { // Total time out. Remove tail incidence and decide if error is critical
            // Time incidence retract
            SetSysTimerTargetSec ( TIMER_PACK_ACTION_TMR , 1.4f, &SysTimerStr )  ;
            SysState.Package.PendingException = err_package_handeling_timeout ;

            if ( SysState.Package.Get )
            {
                SysState.Package.ExceptionType = E_ManipulatorAbortStat_GetPack_Manipulator_Fail_Midway;//E_MissionAbortStat_GetPack_Manipulator_Fail_Midway ;
            }
            else
            {
                SysState.Package.ExceptionType = E_ManipulatorAbortStat_PushPack_Manipulator_Fail;//E_MissionAbortStat_PushPack_Manipulator_Fail ;
            }

            TerminatePackageHandling(EPackState_WaitTailIncidenceRetract ) ;
            return ;
        }

        if ( manstate == MAN_ST_FAILURE )//grip fail if package gripping failed during package handling.
        {
            SysState.Package.PendingException = err_package_handeling_failed ;

            // Analyze source of error
            switch (SysState.Package.ManStopErr + EXCEPT_MANIPULATOR_FAIL_BASE  )
            {
            case EXCEPT_TARGET_NOT_REACHABLE:
                if ( SysState.Package.Get )
                {
                    SysState.Package.ExceptionType = E_ManipulatorAbortStat_GetPack_Manipulator_Fail_NoAceess;// E_MissionAbortStat_GetPack_Manipulator_Fail_NoAceess ;
                }
                else
                {
                    SysState.Package.ExceptionType = E_ManipulatorAbortStat_PushPack_EarlyManipulator_Fail;//E_MissionAbortStat_PushPack_EarlyManipulator_Fail ;
                }
                break ;
            case EXCEPT_FINAL_PT_NOT_REACHABLE:
            case EXCEPT_INTERMEDIATE_PT_NOT_REACHABLE:
                if ( SysState.Package.Get )
                {
                    SysState.Package.ExceptionType = E_ManipulatorAbortStat_GetPack_Manipulator_Fail_NoAceess;//E_MissionAbortStat_GetPack_Manipulator_Fail_NoAceess ;
                }
                else
                {
                    SysState.Package.ExceptionType = E_ManipulatorAbortStat_PushPack_Lost_Pack ;//E_MissionAbortStat_PushPack_Lost_Pack ;
                }
                break ;
            case EXCEPT_FAILED_INIT_PACKAGE_SUCTION:
                if ( SysState.Package.Get )
                {
                    SysState.Package.ExceptionType = E_ManipulatorAbortStat_GetPack_LostPack;//E_MissionAbortStat_GetPack_LostPack ;
                }
                else
                {
                    SysState.Package.ExceptionType = E_ManipulatorAbortStat_PushPack_No_Package ; //E_MissionAbortStat_PushPack_No_Package ;
                }
                break ;
            case EXCEPT_LASER_TIMEOUT:
                if ( SysState.Package.Get )
                 { // No package found
                     SysState.Package.ExceptionType = E_ManipulatorAbortStat_GetPack_No_Package;//E_MissionAbortStat_GetPack_No_Package ;
                 }
                 else
                 { // No package found
                     SysState.Package.ExceptionType = E_ManipulatorAbortStat_PushPack_No_Package;//E_MissionAbortStat_PushPack_No_Package ;
                 }
                 break ;
            case EXCEPT_LOST_PACKAGE_GRIP:
            case EXCEPT_FAILED_CALCULATING_PATH:
            case EXCEPT_NO_LASER_AT_RELEASE:
                if ( SysState.Package.Get )
                {
                    SysState.Package.ExceptionType = E_ManipulatorAbortStat_GetPack_LostPack;//E_MissionAbortStat_GetPack_LostPack ;
                }
                else
                {
                    SysState.Package.ExceptionType = E_ManipulatorAbortStat_PushPack_Lost_Pack;//E_MissionAbortStat_PushPack_Lost_Pack ;
                }
                break ;
            case EXCEPT_STRAY_SEE_PACK:
                if ( SysState.Package.Get )
                {
                    SysState.Package.ExceptionType = E_ManipulatorAbortStat_GetPack_AlreadyLoaded;//E_MissionAbortStat_GetPack_AlreadyLoaded ;
                }
                else
                {
                    SysState.Package.ExceptionType = E_MissionAbortStat_GeneralReason ;
                }
                break;
            default:
                if ( SysState.Package.Get )
                {
                    SysState.Package.ExceptionType = E_ManipulatorAbortStat_GetPack_Manipulator_Fail_Midway;//E_MissionAbortStat_GetPack_Manipulator_Fail_Midway ;
                }
                else
                {
                    SysState.Package.ExceptionType = E_ManipulatorAbortStat_PushPack_Manipulator_Fail;//E_MissionAbortStat_PushPack_Manipulator_Fail ;
                }
                break ;
            }

            TerminatePackageHandling(EPackState_WaitTailIncidenceRetract ) ;
            return ;
        }

        if ( manstate == MAN_ST_DONE )
        {// Success termination
            TerminatePackageHandling(EPackState_Success) ;
        }

        if ( ManStateMachine != E_ManipSysMotionModeAutomatic )
        {
            TerminatePackageHandling(EPackState_WaitTailIncidenceRetract ) ;
            return ;
        }

        break ;

    case EPackState_WaitTailIncidenceRetract:

        // Allow time for tail incidence to retract before quick-stop applies
        if ( IsSysTimerElapse(TIMER_PACK_ACTION_TMR, &SysTimerStr)  )
        {
            // Reach here only on error
            // If recoverable , go now
            if (    fabsf( SysState.Package.YPosition ) < ( G_YDistWheelShoulderPivot  - 0.01) )
            {
                TerminatePackageHandling(EPackState_MayUnclimb_Failure ) ;
            }
            else
            {
                TerminatePackageHandling(EPackState_Failure ) ;
            }
            SysState.Status.Failure.bit.PackHandleFail = 1  ;
        }
        break ;

    case EPackState_Success:
        // Finished with success
        TerminatePackageHandling(EPackState_Success) ;
        break ; // DONT call TerminatePackageHandling

    case EPackState_MayUnclimb_Failure:
        // Finished with failure, but can travel on
        TerminatePackageHandling(EPackState_MayUnclimb_Failure) ;
        SysState.Status.Failure.bit.PackHandleFail = 1  ;
        break;

    case EPackState_Failure:
        // Finished with failure, but can't travel on as manipulator may be extended
        TerminatePackageHandling(EPackState_Failure) ;
        SysState.Status.Failure.bit.PackHandleFail = 1  ;
        break;
    }
}


/*
 * Handling of package:
 * - Programming of the package handling parameters to the PD
 * - Set the neck to proper incidence angle
 * - Monitor failure reports
 * - Wait mode completion
 */
void ManPackage ( short IsStandby ) //TODO: write an entirely new function for flex
{
    switch (Config.ManipConfig)
    {
    case EManipulator_None:
        SysState.Package.PendingException = exp_manipulator_not_installed ;
        TerminatePackageHandling(EPackState_MayUnclimb_Failure) ;
        return ;

    case EManipulator_Flex_Arm:
        ManPackageBodyFlex(IsStandby);
        break;

    case EManipulator_Scara:
        ManPackageBodyScara(IsStandby);
        break;
    }
}

