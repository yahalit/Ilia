/*
 * PsMgr.c
 *
 *  Created on: Sep 8, 2023
 *      Author: yahal
 */
#include "Structdef2.h"




void LailaTov(void)
{
    long unsigned stat ;
    long val = 0 ;
    // Delay on power restart
    //SetSysTimerTargetSec ( TIMER_PS_MNGR_PERIOD , 0.2f , &SysTimerStr)    ;
    switch ( S2M.Items.ActStatus.stat.PsStatus.bit.SleepState )
    {
    case 0: // Wait brake engage
        if (IsSysTimerElapse ( TIMER_BRAKE_ENGAGE, &SysTimerStr))
        {
            S2M.Items.ActStatus.stat.PsStatus.bit.SleepState = 1 ;
            SetMotRestart(0x20); // Kill control
            SetSysTimerTargetSec ( TIMER_BRAKE_ENGAGE , 0.2f , &SysTimerStr)    ;
        }
        break ;
    case 1: //Kill 54V
        SetMotionMode(E_SysMotionModeMotorOff,43);
        if (IsSysTimerElapse ( TIMER_BRAKE_ENGAGE, &SysTimerStr))
        {
            stat = SendSdo2PDRetry ( 0x2004 , 3 , &val , 2 , 3) ;
            if ( stat == 0 )
            {
                S2M.Items.ActStatus.stat.PsStatus.bit.SleepState = 2 ;
            }
        }
        break ;
    case 2: // Kill 24V
        stat = SendSdo2PDRetry ( 0x2004 , 2 , &val , 2 , 3 ) ;
        if ( stat == 0 )
        {
            S2M.Items.ActStatus.stat.PsStatus.bit.SleepState = 3  ;
        }
        break ;
    case 3: // Kill 12V
        stat = SendSdo2PDRetry ( 0x2004 , 1 , &val , 2 , 3 ) ;
        if ( stat == 0 )
        {
            S2M.Items.ActStatus.stat.PsStatus.bit.SleepState = 4  ;
        }
        break ;
    }
}
/*
 * \brief Deal with sleep requests, honor them after robot stopped
 */
void SleepRequestManager(void)
{
    short unsigned mask;
    short unsigned InPack = ( (SysState.Package.State > EPackState_Init) &&  (SysState.Package.State < EPackState_Success ) ) ? 1 : 0 ;

    if ( SysState.SleepRequest == 0 )
    {
        S2M.Items.ActStatus.stat.PsStatus.bit.SleepState = 0 ;
        return ;
    }


    if ( SysState.WakeupState == E_CAN_WAKEUP_SLEEP)
    { // All pre arrangements done, manage the sleep itself
        LailaTov() ;
        return ;
    }

    if ( (S2M.Items.ActStatus.stat.PsStatus.bit.PsWakeState != SYSSTAT_WAKE_WAIT_OPER ) || InPack )
    {// Need wait till power supply is on to sleep it
        return ;
    }

    SysState.Mot.QuickStop = 1 ;

    if( SysState.Mot.QuickStopRespected  && ( ( SysState.SleepRequest & 2  ) == 0 )  )
    {
        SysState.SleepRequest = 3 ;
        SetSysTimerTargetSec ( TIMER_PRESLEEP , 1 , &SysTimerStr)    ;
    }

    if ( (SysState.SleepRequest & 0x1) == 0 )
    { // No request pending nothing to do
        return ;
    }


    // If system state does not support sleep anymore, halt here
    if ( ( SysState.WakeupState != E_CAN_WAKEUP_FAILURE) &&
            (SysState.WakeupState!=E_CAN_WAKEUP_OPERATIONAL) )
    {
        SysState.SleepRequest = 0 ;
        return ;
    }


    if (IsSysTimerElapse( TIMER_PRESLEEP , &SysTimerStr  ) )
    {   // Timed out, go to actual sleep
        mask = BlockInts() ;
        SysState.Mot.SleepBupMode  = SysState.Mot.mode  ;
        SysState.WakeupState = E_CAN_WAKEUP_SLEEP;
        SysState.Status.OverRideBrakeRelease = 0 ;
        SysState.Operational = 0 ;
        SysState.PsActive = 0 ;

        SysState.Package.State = EPackState_Init ;
        S2M.Items.ActStatus.stat.PsStatus.bit.SleepState = 0 ;
        //SetSysTimerTargetSec ( TIMER_PS_MNGR_PERIOD , 0.2f , &SysTimerStr)    ;
        SetSysTimerTargetSec ( TIMER_BRAKE_ENGAGE , 1.2f , &SysTimerStr)    ;
        SetSysTimerTargetSec ( TIMER_I_SLEEP_LET_ME_SNORE , 4.0f , &SysTimerStr)    ;
        SysState.SleepRequest &= ~0x1 ; // remove active sleep request
        SysState.SleepRequest |= 4 ;    // Sleep request honored
        RestoreInts(mask) ;
    }
}






void SetWakeupFail(short reason)
{
    long val = 0 ;
    if ( SysState.Status.FailCount < 10 )
    {
        SysState.Status.FailCount += 1 ;
        WakeupFailReason = reason ;
        S2M.Items.ActStatus.stat.PsStatus.bit.PsWakeState  = SYSSTAT_WAKE_TRY_COMMUNICATE_PD   ;
    }
    else
    {
        SendSdo2PDRetry ( 0x2004 , 3 , &val , 2 , 3 ) ; // Kill 54
        SendSdo2PDRetry ( 0x2004 , 2 , &val , 2 , 3 ) ; // Kill 24
        SendSdo2PDRetry ( 0x2004 , 1 , &val , 2 , 3 ) ; // Kill 12


        S2M.Items.ActStatus.stat.PsStatus.bit.PsWakeState  = SYSSTAT_WAKE_FAIL  ;
        WakeupFatalFailReason = reason ;
        //asm( " ESTOP0") ;
    }
}



/**
 * \Wakeup sequence for the PD
 *
 */
short PdWakeUpPs( void )
{
    long val ;
    long unsigned stat, stat1, stat2 , PdVersion , verpatch  ;
    long unsigned pdyr ;
    short unsigned nData , nData1, nData2;
    //short unsigned nData2;

// Work at periods
    if ( SysState.Status.PdInTest ==  1 )
    {
        return -1 ;
    }


    switch (S2M.Items.ActStatus.stat.PsStatus.bit.PsWakeState )
    {
    case SYSSTAT_WAKE_INIT : // Just start
        SysState.Status.FailCount = 0 ;
        S2M.Items.ActStatus.stat.PsStatus.bit.PsWakeState  = SYSSTAT_WAKE_TRY_COMMUNICATE_PD ;
        break ;

    case SYSSTAT_WAKE_TRY_COMMUNICATE_PD:
        val = 1 ;
        nData = 4 ; nData1 = 4 ; nData2 = 4 ;
        stat = GetSdoFromPD ( 0x2301 , 5 , &val , &nData  ) ; // Ask PD presence

        if ( stat )
        {
            break ;
        }

        stat2 = GetSdoFromPD ( 0x2301 , 6 , (long *)  &verpatch , &nData2  ) ; // Ask PD Olivier version


        // continuously until PD is there
        if ( stat2 )
        {
            break ;
        }

        switch ( val )
        {
        case 0x8000:
            S2M.Items.ActStatus.stat.CoreId.bit.RobotType = ROBOT_GEN2 ;
            S2M.Items.ActStatus.stat.CoreId.bit.PDInBoot  = 1 ;
            break ;
        case 0x8200:
            S2M.Items.ActStatus.stat.CoreId.bit.RobotType = ROBOT_GEN2 ;
            break ;
        case 0x9200:
            S2M.Items.ActStatus.stat.CoreId.bit.RobotType = ROBOT_GEN3 ;
            break ;
        default:
            S2M.Items.ActStatus.stat.CoreId.bit.RobotType = ROBOT_GEN_BAD ;
            break ;
        }


        if ( S2M.Items.ActStatus.stat.CoreId.bit.RobotType == ROBOT_GEN2 )
        {
            stat1 = GetSdoFromPD ( 0x2301 , 4 , (long *) &PdVersion , &nData1  ) ; // Ask PD version
            if ( stat1)
            {
                break ;
            }
            pdyr  = ( PdVersion >> 20 ) & 0x1fff ;
            S2M.Items.SlaveRevisions.item.PdVerSubverPatch = PdVersion ;
        }
        else
        {
            S2M.Items.SlaveRevisions.item.PdVerSubverPatch = verpatch ;
            pdyr = 2000 + ((S2M.Items.SlaveRevisions.item.PdVerSubverPatch>>24) & 0xff) ;
        }


        if (  S2M.Items.ActStatus.stat.CoreId.bit.PDInBoot || (S2M.Items.ActStatus.stat.CoreId.bit.RobotType == ROBOT_GEN_BAD ) || ( nData != 4 )  )
        {
            //No a valid FW at the PD, stop all the PD communications
            //Set CBIT for absent PD
            SysState.Status.Failure.bit.PDAbsent = 1 ;
            if ( S2M.Items.ActStatus.stat.CoreId.bit.PDInBoot )
            {  // That's boot
                SysState.Status.PdInTest = 1 ; // Dont communicate PD anymore
                SetWakeupFail(1) ;
            }
        }
        else
        { //Check PD software versions makes sense
            if  ((pdyr<2000) || (pdyr>2050) || ( nData1 != 4 ) || (nData2 != 4) )
            {
                break ;
            }
            SysState.Status.Failure.bit.PDAbsent = 0 ;
            SysState.Status.WakeUpSubState = 0 ;
            SysState.Package.ManCBit1.MushroomDepressed = 1 ;
            SetSysTimerTarget ( TIMER_WAIT_PS , 50000 , &SysTimerStr);
            bEnableSync = 1 ;
            S2M.Items.ActStatus.stat.PsStatus.bit.PsWakeState  = SYSSTAT_WAKE_INIT_WM2 ;
        }
        break ;
    case SYSSTAT_WAKE_INIT_WM2:
        // Wait mushroom ready
        if ( SysState.Package.ManCBit1.MushroomDepressed )
        {
            SetSysTimerTargetSec ( TIMER_WAIT_PS , 0.05f, &SysTimerStr );
        }
        else
        {
            if (IsSysTimerElapse(TIMER_WAIT_PS, &SysTimerStr))
            {
                S2M.Items.ActStatus.stat.PsStatus.bit.PsWakeState  = SYSSTAT_WAKE_INIT_WM3 ;
            }
        }
        break;

    case SYSSTAT_WAKE_INIT_WM3:
        // Reset all the power supplies
        switch (S2M.Items.ActStatus.stat.CoreId.bit.RobotType)
        {
        case ROBOT_GEN2:
            val = 0 ;

            switch ( SysState.Status.WakeUpSubState)
            {
            case 0: //Kill 54V
                stat = SendSdo2PDRetry ( 0x2004 , 3 , &val , 2 , 3) ;
                if ( stat == 0 )
                {
                    SysState.Status.WakeUpSubState = 1 ;
                }
                break ;
            case 1: // Kill 24V
                stat = SendSdo2PDRetry ( 0x2004 , 2 , &val , 2 , 3 ) ;
                if ( stat == 0 )
                {
                    SysState.Status.WakeUpSubState = 2  ;
                }
                break ;
            case 2: // Kill 12V
                stat = SendSdo2PDRetry ( 0x2004 , 1 , &val , 2 , 3 ) ;
                if ( stat == 0 )
                {
                    SysState.Status.WakeUpSubState = 3  ;
                }
                break ;
            case 3:
                // Do not overload 12VPS / 24vps on wake up
                * ( (unsigned short *) &SysState.Package.PDControlWord ) = 0 ; // Kill all
                *( (unsigned short *) &val  ) = * ( (unsigned short *) &SysState.Package.PDControlWord );
                stat = SendSdo2PDRetry ( 0x2210 , 0 , &val , 4 , 3 ) ; // Reset all the bits in the control word

                // continuously until PD is there
                if ( stat == 0)
                {
                    SysState.Status.WakeUpSubState = 5 ;
                    SetSysTimerTargetSec ( TIMER_WAIT_PS , 2.0f , &SysTimerStr);// Wait CAP drain
                    S2M.Items.ActStatus.stat.PsStatus.bit.PsWakeState  = SYSSTAT_WAKE_INIT_W0 ;
                }
                break ;
            }
            break ;
        case ROBOT_GEN3:

            switch ( SysState.Status.WakeUpSubState)
            {
            case 0: //Kill 54V
                SysState.Status.WakeUpSubState = 1 ;
                break ;
            case 1: // Kill 24V
                stat = SendSdo2PDRetry ( 0x2004 , 2 , &val , 2 , 3 ) ;
                if ( stat == 0 )
                {
                    SysState.Status.WakeUpSubState = 2  ;
                }
                break ;
            case 2: // Kill 12V
                stat = SendSdo2PDRetry ( 0x2004 , 1 , &val , 2 , 3 ) ;
                if ( stat == 0 )
                {
                    SysState.Status.WakeUpSubState = 3  ;
                }
                break ;
            case 3:
                // Do not overload 12VPS / 24vps on wake up
                * ( (unsigned short *) &SysState.Package.PDControlWord ) = 0 ; // Kill all
                *( (unsigned short *) &val  ) = * ( (unsigned short *) &SysState.Package.PDControlWord );
                SysState.Status.WakeUpSubState = 5 ;
                SetSysTimerTargetSec ( TIMER_WAIT_PS , 2.0f , &SysTimerStr);// Wait CAP drain
                S2M.Items.ActStatus.stat.PsStatus.bit.PsWakeState  = SYSSTAT_WAKE_INIT_W0 ;
                break ;
            }

            // The battery is already selected; if it had not, the LP would be dead duck and never arrived here
            /*
            val = 0 ; //
            stat = SendSdo2PDRetry ( 0x2004 , 30 , &val , 2 , 3) ;

            if ( stat == 0 )
            {
                val = 1 ; // Set the servo supply on
                stat = SendSdo2PDRetry ( 0x2004 , 3 , &val , 2 , 3) ;

                // continuously until PD is there
                if ( stat == 0)
                {
                    SysState.Status.WakeUpSubState = 5 ;
                    SetSysTimerTargetSec ( TIMER_WAIT_PS , 2.0f , &SysTimerStr);// Wait CAP drain
                    S2M.Items.ActStatus.stat.PsStatus.bit.PsWakeState  = SYSSTAT_WAKE_INIT_W0 ;
                }
            }
            */
            break ;
        }
        break ;

    case SYSSTAT_WAKE_INIT_W0:
        if (IsSysTimerElapse(TIMER_WAIT_PS, &SysTimerStr))
        {
            val = 1 ;
            stat = SendSdo2PDRetry ( 0x2004 , 1 , &val , 2 , 3 ) ; // Ask power on of 12V
            if ( stat == 0 )
            { // Go on 12 V if SDO OK
                SetSysTimerTargetSec ( TIMER_WAIT_PS , 0.7f , &SysTimerStr);
                S2M.Items.ActStatus.stat.PsStatus.bit.PsWakeState  = SYSSTAT_WAKE_WAIT_12V ;
            }
            if ( S2M.Items.ActStatus.stat.PsStatus.bit.PsWakeState  != SYSSTAT_WAKE_WAIT_12V )
            {
                SetWakeupFail(1) ;// 12V request failed
            }
        }

       break ;
    case SYSSTAT_WAKE_WAIT_12V:
        //   /* VANDALISIMUS
        if (IsSysTimerElapse(TIMER_WAIT_PS, &SysTimerStr))
        {
            if ( (SysState.Package.ManCBit1.V12Fail == 0) &&  SysState.Package.ManCBit2.Active12V  )
            { // 12V is on, go on initialization
                if  (IsGen3()==0)
                { // Automatic wake of 24V PS only in GEN 2
                    val = 1 ;
                    stat1 = SendSdo2PDRetry ( 0x2004 , 2 , &val , 2 , 3 ) ; // Ask power on of 24V
                    if ( stat1 == 0 )
                    {
                        stat1 = SendSdo2PDRetry ( 0x2003 ,13 , &val , 2 , 3 ) ; // Ask FAN
                    }
                }
                else
                {
                    stat1 = 0 ;
                }
                if ( stat1 == 0 )
                {
                    SetSysTimerTargetSec ( TIMER_WAIT_PS , 0.7f , &SysTimerStr);
                    S2M.Items.ActStatus.stat.PsStatus.bit.PsWakeState  = SYSSTAT_WAKE_WAIT_24V ;
                }
            }
             if ( S2M.Items.ActStatus.stat.PsStatus.bit.PsWakeState  != SYSSTAT_WAKE_WAIT_24V )
            {
                SetWakeupFail(2) ;// 12V should be running by now
            }
        }
        break ;
    case SYSSTAT_WAKE_WAIT_24V:
        if (IsSysTimerElapse(TIMER_WAIT_PS, &SysTimerStr))
        {
            if (  IsGen3() ||
                    ( (SysState.Package.ManCBit1.V24Fail == 0) &&  SysState.Package.ManCBit2.Active24V  ))
            { // 12V is on, go on initialization

                val = 1 ;

                if  (IsGen3() )
                {
                    // Ask power on of 18V
                    stat1 = SendSdo2PDRetry ( 0x2004 , 10 , &val , 2 , 3 ) ;
                }
                else
                {
                    // Ask power on of 54V
                    stat1 = SendSdo2PDRetry ( 0x2004 , 3 , &val , 2 , 3 ) ;
                    if ( stat1 == 0 )
                    {
                        // Initialize the Dynamixel axes
                            stat1 = SendSdo2PDRetry ( 0x2004 , 6 , &val , 2 , 3 ) ;
                    }
                }

                //SendSdo2PD ( 0x2004 , 5 , &val , 2 ) ;
                if ( stat1 == 0 )
                {
                    SetSysTimerTargetSec ( TIMER_WAIT_PS , 1.8f , &SysTimerStr);
                    // Vandal SetSysTimerTargetSec ( TIMER_WAIT_PS , 3600.0f , &SysTimerStr);
                    S2M.Items.ActStatus.stat.PsStatus.bit.PsWakeState  = SYSSTAT_WAKE_WAIT_54V ;
                }
            }
            if ( S2M.Items.ActStatus.stat.PsStatus.bit.PsWakeState  != SYSSTAT_WAKE_WAIT_54V )
            {
                SetWakeupFail(3) ;
            }
        }
        break ;
    case SYSSTAT_WAKE_WAIT_54V:
        if (IsSysTimerElapse(TIMER_WAIT_PS, &SysTimerStr))
        {
            if  (IsGen3() )
            {
                if (  (SysState.Package.ManCBit1.V18Fail == 0) && SysState.Package.ManCBit2.Active18V  )
                { // VServo is on, go on initialization
                    S2M.Items.ActStatus.stat.PsStatus.bit.PsWakeState  = SYSSTAT_WAKE_WAIT_OPER ;
                    SysState.PsActive = 1 ;
                }
            }
            else
            {
                if (  (SysState.Package.ManCBit1.V54Fail == 0) && SysState.Package.ManCBit2.Active54V  )
                { // VServo is on, go on initialization
                    S2M.Items.ActStatus.stat.PsStatus.bit.PsWakeState  = SYSSTAT_WAKE_WAIT_OPER ;
                    SysState.PsActive = 1 ;
                }
            }
            if ( S2M.Items.ActStatus.stat.PsStatus.bit.PsWakeState  != SYSSTAT_WAKE_WAIT_OPER )
            {
                SetWakeupFail(4) ;
            }
        }
        break ;
    case SYSSTAT_WAKE_WAIT_OPER:
        break;
    case SYSSTAT_WAKE_FAIL:
        break ;
    }

    return 0 ;
}


short IsManipulatorWell (void)
{
    if ( (SysState.Package.ManCBit2.Active12V == 0) || SysState.Package.ManCBit1.V12Fail || ( ManipulatorType == None_Manipulator) )
    {
        return E_ManPowerOff;
    }
    if ( IsGen3() )
    { // Gen3 manipulator does not require 24V
        if ( SysState.Package.ManCBit3.Dyn12NetOn == 0)
        {
            return E_ManNetsOff;
        }
        if ( SysState.Package.ManCBit3.Dyn12InitDone == 0)
        {
            return E_ManInitializing;
        }
    }
    else
    {
        if ( (SysState.Package.ManCBit2.Active24V == 0) ||  SysState.Package.ManCBit1.V24Fail  )
        {
            return E_ManPowerOff;
        }
        if ( (SysState.Package.ManCBit3.Dyn12NetOn == 0) || (SysState.Package.ManCBit3.Dyn24NetOn == 0))
        {
            return E_ManNetsOff;
        }
        if ( (SysState.Package.ManCBit3.Dyn12InitDone == 0) || (SysState.Package.ManCBit3.Dyn24InitDone == 0))
        {
            return E_ManInitializing;
        }
    }
    if (SysState.EEF.bUse && SysState.EEF.WasEvent < 0 )
    {
        return E_EEF_Absent ;
    }

    if ( SysState.CBit.bit.NoPdData  )
    {
        return  E_ManNoData;
    }
    return 1 ;
}

/*
 * \brief Set the manipulator power on sequence to failure (and possible retry) mode
 */
void   SetManipulatorOnFailure(short unsigned FailureCode )
{
    //struct CPdCmd2 *pPdCmd2 ;
    //pPdCmd2 = (struct CPdCmd2 *) & SysState.PdCmd2 ;
    SysState.Package.ManOnState.FailureCode = FailureCode;
    S2M.Items.ActStatus.stat.PsStatus.bit.ManOnState = E_ManonRecoverFail ;
}



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
    S2M.Items.ActStatus.stat.PsStatus.bit.ManOnState = E_ManonWaitVoltDown ;
}



short RetryCtr ;
//Set the manipulator to its on state
void SetManipulatorOn( )
{
    struct CPdCmd2 *pPdCmd2 ;
    pPdCmd2 = (struct CPdCmd2 *) & SysState.PdCmd2 ;

    if (SysState.PdCmd2EnterCtr )
    { // Still entering last command, just wait
        return ;
    }


    if ( SysState.CBit.bit.NoPdData || S2M.Items.ActStatus.stat.PsStatus.bit.ManOnState == E_ManonNothing) // SysState.Package.ManOnState.WellnessStatus == 0 )
    { // If don't know manipulator state, nothing more to do
        return ;
    }

    // State machine: revive manipulator
    switch (S2M.Items.ActStatus.stat.PsStatus.bit.ManOnState)
    {
    case E_ManonInit:
        // Its wrong, we don't know exactly what, so power cycle is reset, including the retry counter
        SysState.Package.ManOnState.RetryCounter = 0 ;
        RestartPowerCycle() ;
        break ;

    case E_ManRebootInit:
        SysState.Package.ManipulatorAxesReboot = 3; // 3 consecutive transmissions to PD for reliability
        SysState.Package.ManOnState.RetryCounter = 1 ;
        SetSysTimerTargetSec( TIMER_PACK_MON_HELPER , 10.0f , &SysTimerStr) ;
        SetSysTimerTargetSec( TIMER_PACK_MON_HELPER2 , 0.2f , &SysTimerStr) ;
        S2M.Items.ActStatus.stat.PsStatus.bit.ManOnState = E_ManonWaitReboot ;
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
                /*
                if ( NUM_12V_WHEELARM_AXES > 0 )
                {
                    S2M.Items.ActStatus.stat.PsStatus.bit.ManOnState = E_ManonTestWarm ;
                    SysState.TrackWidthCtl.IBitState  = 1 ;
                }
                else
                */
                {
                    S2M.Items.ActStatus.stat.PsStatus.bit.ManOnState = E_ManonDone ;
                }
//                     S2M.Items.ActStatus.stat.PsStatus.bit.ManOnState = E_ManonDone ;
            }
        }
        break ;

    case E_ManonWaitVoltDown:
        // Wait voltages are down
        if ( (SysState.Status.V12 < 4.0f)  && ( SysState.Status.V24 < 4.0f ))
        { // Voltages low enough , can try re-power
            S2M.Items.ActStatus.stat.PsStatus.bit.ManOnState = E_ManonWaitVoltUp ;
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
            S2M.Items.ActStatus.stat.PsStatus.bit.ManOnState = E_ManonWaitCommUp;
        }
        break ;

    case E_ManonWaitCommUp:
        if ( IsSysTimerElapse(TIMER_PACK_MON_HELPER, &SysTimerStr) )
        {
            SetManipulatorOnFailure(error_manipulator_comm_wake_tout ) ;
        }
        if ( SysState.Package.ManOnState.WellnessStatus == 1  )
        {
/*
            if ( NUM_12V_WHEELARM_AXES > 0 )
            {
                S2M.Items.ActStatus.stat.PsStatus.bit.ManOnState = E_ManonTestWarm ;
                SysState.TrackWidthCtl.IBitState  = 1 ;
            }
            else
*/
            {
                S2M.Items.ActStatus.stat.PsStatus.bit.ManOnState = E_ManonDone ;
            }

        }
        break ;

/*
    case E_ManonTestWarm:

        if (  ManageWheelArmIBit() )
        {
            S2M.Items.ActStatus.stat.PsStatus.bit.ManOnState = E_ManonDone ;
        }
        break ;
*/

    case E_ManonRecoverFail:
        // If more retries are possible, try it
        if ( SysState.Package.ManOnState.RetryCounter >= MAN_POWER_RETRY_CYCLES_MAX )
        {
            S2M.Items.ActStatus.stat.PsStatus.bit.ManOnState = E_ManonNonRecoverFail ;  // Too many retries, remain in failure  ...
        }
        else
        {
            RestartPowerCycle();
        }
        break;
    case E_ManonNonRecoverFail:
        break;
    case E_ManonDone:
        // Nothing to do
        break ;

    default:
        SetManipulatorOnFailure(error_manipulator_wake_tout_undef_state  ) ;
        break ;
    }
}



