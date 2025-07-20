#include "StructDef2.h"
/*
 * System.c
 *
 *  Created on: Sep 8, 2023
 *      Author: yahal
 */


void CanCBit(void)
{
    short unsigned cnt , qs ;
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

    if ( M2S.Items.ActCmd.cmd.PsCmd.items.RebootPsCntr != SysState.RebootPsCntr  )
    {
        SysState.RebootPsCntr = M2S.Items.ActCmd.cmd.PsCmd.items.RebootPsCntr ;
        if ( (S2M.Items.ActStatus.stat.PsStatus.bit.ManOnState == E_ManonNothing) || (S2M.Items.ActStatus.stat.PsStatus.bit.ManOnState == E_ManonDone) ||  (S2M.Items.ActStatus.stat.PsStatus.bit.ManOnState == E_ManonNonRecoverFail))
        {
            S2M.Items.ActStatus.stat.PsStatus.bit.ManOnState = E_ManonInit ;
        }
    }

    qs = SysState.Mot.QuickStop ;
    for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
    {
        if ( SysState.CanAxis[cnt].Installed && (0==SysState.CanAxis[cnt].BH.AxisCbit.bit.QuickStop ) )
        {
            qs = 0 ;
            break ;
        }
    }
    SysState.Mot.QuickStopRespected = qs  ;

    if (S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual == 0  )
    {
        for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
        {
            SysState.CanAxis[cnt].BH.BhCw.all &= ~(ReleaseBrake_MASK | BrakeOverride_MASK ) ;
        }
    }

    if (M2S.Items.ActCmd.cmd.ModeWord.bit.StoEnabled == 0 )
    {
        LogException(OWN_EXP_ID, EXP_FATAL, exp_core2_disabled_by_sto);
    }
}





void SetMotionMode(short  x, short unsigned y)
{
    short unsigned mask , cnt ;
    if ( x != SysState.Mot.mode )
    { // On mode change , nothing can execute
        mask = BlockInts();

        // If transition to OFF modes, kill all the motors
        if ( x <= E_SysMotionModeMotorOff  )
        {
            for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++)
            {
                KillMotor(&SysState.CanAxis[cnt])  ; // Robot starts with its motors off
            }
        }
        else
        {
            for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++)
            {
                EnableMotor(&SysState.CanAxis[cnt])  ; // Robot starts with its motors off
            }
        }


        SysState.Mot.mode = x ;

        RestoreInts(mask) ;

    }
}


void InitCtlModule(void)
{
short unsigned cnt ;
    ClearMemRpt((short unsigned *) &CommPars,sizeof( CommPars) );
    ClearMemRpt((short unsigned *) &SyncMsg,sizeof( SyncMsg) );
    ClearMemRpt((short unsigned *) &CanSlavePdOutQueue,sizeof( CanSlavePdOutQueue) );
    ClearMemRpt((short unsigned *) &CanPDInMsgQueue,sizeof( CanPDInMsgQueue) );
    ClearMemRpt((short unsigned *) &CanSrvInMsgQueue,sizeof( CanSrvInMsgQueue) );

    WakeupFailReason = 0 ;
    WakeupFatalFailReason = 0 ;

    SlaveSdo.SlaveBuf = (unsigned long* ) SlaveSdoBuf ;
    SlaveSdo.SlaveID = LP_CAN_ID ;
    for ( cnt = 0 ; cnt <= N_CAN_SLAVES ; cnt++ )
    {
        SysState.CanAxis[cnt].Sdo.SlaveBuf = (unsigned long *) SysState.CanAxis[cnt].SdoBuf ;
    }


    //MalinkiLedSet = 0 ;
    CommPars.StandardSdoWaitToutSec = 0.05f ;
    SyncMsg.cobId = 0x80;


    SyncMsg.LogicId = 0 ;
    SyncMsg.cobId = 0x80;
    SyncMsg.dLen = 0 ;
    SyncMsg.data[0] = 0 ;
    SyncMsg.data[1] = 0 ;

    CanSlavePdOutQueue.nQueue = N_SLAVE_QUEUE ;
    CanPDInMsgQueue.nQueue =  N_SLAVE_QUEUE ;
    CanSrvInMsgQueue.nQueue =  N_SLAVE_QUEUE ;
    OutEEFMsg.cobId = (0x200 + CAN_ID_EEF ) ; //  | 0x80000000 ;
    OutEEFMsg.LogicId = 0 ;
    OutEEFMsg.dLen = 8 ;
    OutEEFMsg.data[0] = 0  ;
    OutEEFMsg.data[1] = 0  ;
    SysState.EEF.bIssueMsg2EEF = 0 ;

    SetSysTimerTargetSec ( TIMER_PS_MNGR_PERIOD , 0.025f , &SysTimerStr)   ;
    SetSysTimerTargetSec (TIMER_I2C_TLC_TRANSMIT , 0.1f , &SysTimerStr) ;
}


void SetMotRestart( short unsigned us)
{
    short unsigned mask , cnt ;
    VOLATILE struct CCanAxis * pAxis ;
    mask = BlockInts() ;

    // Order quick motor stop with servo
    if ( us & 0x8000 )
    {
        SysState.Mot.QuickStop = ( ( us & 0x4000 ) ? 1 : 0 ) ;
    }

    if ( us & 0x2000 )
    {
        if ( us & 0x1000 )
        {
            for( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++)
            {
                SysState.CanAxis[cnt].BH.ResetFailRequestCnt += 1 ;
            }
            if ( SysState.Mot.mode <= E_SysMotionModeFault )
            {
                SetMotionMode(E_SysMotionModeMotorOff,21) ;
            }
        }
    }

    // Manual brake engage/release
    if ( us & 0x800)
    {
        SysState.Status.OverRideBrakeRelease = ( us & 0x400 ) >> 10   ;
    }

    // Manipulate motor on and reset
    if ( us & 0x20)
    {
        for( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++)
        {
            pAxis = &SysState.CanAxis[cnt] ;
            pAxis->BH.UserSpeedCmd = 0 ;
            pAxis->SpeedTarget = 0 ;
            pAxis->BH.UserPosCmd = pAxis->BH.UserPos  ;
            pAxis = &SysState.CanAxis[cnt] ;
            if ( ( us &  (1<<cnt) ) && (SysState.CanAxis[cnt].BH.BhCw.bit.MotorOnCmd == 0 ))
            {
                 pAxis->AutoStartCnt = 7 ;
            }
            else
            {
                SysState.CanAxis[cnt].BH.BhCw.bit.MotorOnCmd = 0 ;
            }
        }

        if ( us & 0x1f  )
        { // Any axis requested a start
            SetMotionMode(E_SysMotionModeStay,22) ;
        }
    }
    RestoreInts( mask) ;
}


