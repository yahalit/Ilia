/*
 * BIT.c
 *
 *  Created on: May 12, 2023
 *      Author: Gal Lior
 */
#include "..\Application\StructDef.h"


void IdleCbit(void)
{
// Test I2t
    union UCBit LocalBit ;
    union
    {
        short unsigned us[2] ;
        long  unsigned ul ;
    } u ;
    short unsigned stat, swstate  ;


    // Manage exceptions thrown by the CLA
    if (  ClaMailOut.AbortCounter != SysState.Status.AbortCnt  )
    {
        LogException( EXP_FATAL ,  ClaMailOut.AbortReason ) ;
        SysState.Mot.KillingException = ClaMailOut.AbortReason ; // May be unmarked because motor is already off
    }

    // Construct BIT report
    LocalBit.all = 0 ;


    if ( ClaMailOut.PotRefFail )
    {
        LocalBit.us[0] |= CBIT_POT_REF_FAIL_MASK ;
    }


    SysState.CBit.us[0] = LocalBit.us[0] ;
    stat = GetRecorderStat() ;
    SysState.CBit.bit.RecorderActive = (stat == 22 ) & 1  ;
    SysState.CBit.bit.RecorderWaitTrigger = (stat == 18 ) ? 1 : 0   ;
    SysState.CBit.bit.RecorderReady = (stat ==23 ) ? 1 : 0   ;


    u.us[0] = SysState.Mot.LastException ;
    u.us[1] = SysState.Mot.KillingException ;
    SysState.Status.LongException = u.ul ;


    SysState.CBit2.bit.NodeStopped =  SysState.MCanSupport.NodeStopped?  1 : 0  ;

    // Auto recover bus off condition
    if ( MCAN_getOpMode(MCAN0_BASE) == MCAN_OPERATION_MODE_NORMAL )
    {
        SetSysTimerTargetSec ( TIMER_MCAN_BUSOFF , BUS_OFF_RECOVERY_TIME ,  &SysTimerStr  );
    }
    if ( IsSysTimerElapse( BUS_OFF_RECOVERY_TIME ,  &SysTimerStr   ) )
    {
        MCAN_setOpMode(MCAN0_BASE, MCAN_OPERATION_MODE_NORMAL);
    }

    swstate = (ClaState.LLimit.ValueNPN ? 4 : 0 ) |  (ClaState.LLimit.ValuePNP ? 2 : 0 )
            | (ClaState.LLimit.PresentValue ? 1 : 0 ) ;


    ClaMailIn.MaxSwitchLengthEffective = ClaControlPars.MaxSwitchLengthMeter[ClaControlPars.SwitchWidthSelect];
    ClaMailIn.MinSwitchLengthEffective = ClaControlPars.MinSwitchLengthMeter[ClaControlPars.SwitchWidthSelect];

    SysState.SwState = swstate ;
}





long unsigned LogException (   short fatality , long unsigned exp )
{
    short unsigned oldexp , oldmode  , usexp    ;
    short unsigned mask ;
    short sysmode ;
    long unsigned  *pExp ;
    mask = BlockInts() ;

    usexp   = (short unsigned)exp;
    sysmode = (short)SysState.SystemMode;

    if ( fatality == EXP_SAFE_FATAL )
    { // A delayed FATAL
        if ( sysmode > E_SysMotionModeNothing )
        {
            SysState.Mot.QuickStop = 1;
            SysState.Status.OverRideBrakeRelease = 0 ;
            SysState.Mot.SafeFaultCntDown = SysState.Mot.SafeFaultCntDownMax ; // Give 1000msec of controlled quick stop before downing the servo drives
            SysState.Mot.SafeFaultCode = (short unsigned) exp ;
            RestoreInts( mask) ;
            return 0 ;
        }
        else
        {
            if ( sysmode  == E_SysMotionModeSafeFault )
            { // Already in safe fail, no more action to take
                RestoreInts( mask) ;
                return 0 ;
            }
            else
            { // Was in motor off, no issue in playing safe fail, so its fatal
                fatality = EXP_FATAL ;
            }
        }
    }

    // Old exception to test if this report is really new
    if ( SysState.Mot.ExceptionInit )
    {
        oldexp = (short unsigned) (  SysState.Mot.ExceptionTab[(SysState.Mot.ExceptionCnt-1)&(EXCEPTION_TAB_LENGTH-1)] & 0xffff ) ;
    }
    else
    {
        SysState.Mot.ExceptionInit = 1 ;
        oldexp = 0 ;
    }

    oldmode = sysmode ; // Mode backup


    if ( ( fatality == EXP_FATAL ) && (( sysmode > E_SysMotionModeNothing ) || (sysmode == E_SysMotionModeSafeFault) ) )
    {
        SetSystemMode(E_SysMotionModeFault);
        SysState.Mot.KillingException = exp ;
    }
    if ( fatality == EXP_ABORT)
    {

    }

    if ( usexp != oldexp )
    {
        // Prevent multiple registration of the same error.
        // Specifically, an error reset will be ignored if the error code is anyway 0

        if ( ( fatality == EXP_WARN) && SysState.Mot.RejectWarning.IgnoreWarning  )
        { // Warnings may be logged later if desired
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
            pExp[0] = (long unsigned) usexp  +  (( long unsigned) (oldmode &0xf) << 20 );
            SysState.Mot.ExceptionCnt =  ( SysState.Mot.ExceptionCnt+1) & (EXCEPTION_TAB_LENGTH-1)  ;
            SysState.Mot.LastException = usexp ;
         }
    }


    RestoreInts( mask) ;

    return exp ;
}


