/*
 * SpecialModes.c
 *
 *  Created on: Sep 10, 2022
 *      Author: yahal
 */
#include "StructDef.h"
#include "ItNav.h"
#include "gyro.h"

#ifdef _LPSIM
#include <math.h>
#else
float fabsf(float x) ;
#endif


/*
 * Shut the manipulator
 */
void    ShutManipulator(void)
{
    struct CManipControlWord LocManControlWord;
     LocManControlWord = SysState.Package.ManipControlWord;
     LocManControlWord.MotorsOn = 0;
     LocManControlWord.Standby = 0;
     LocManControlWord.DealPackage = 0;
     //LocManControlWord.LaserValid = 0;
     //LocManControlWord.UnProcFromPdo = 0;
     LocManControlWord.ForceLaser = 0;
     LocManControlWord.ForcePump = 0;
     SysState.Package.ManipControlWord = LocManControlWord;
     //SysState.Package.PDControlWord.LaserPsOn = 0 ;
}


/*
 * Manage the special motion modes
 */
void ManageSpecialModes(void)
{
    struct CMotionItem * pItem ;
    short CmdFail  ;
    short unsigned mask ;
    short fatality   ,PackState ;
    struct CManipControlWord LocManControlWord;

    if ( SysState.Package.Mode == E_PackModeAlignOnShelf)
    {
        ManageSpecialModeShelfAlign() ;
        return ;
    }


    pItem = &SimPackageItem ;
    if  ( (pItem->MotionItemMode & 1 ) == 0 )
    {   // New command just set

         CmdFail = (( SysState.Mot.mode<=E_SysMotionModeMotorOff) ? 1 : 0 )   ;
         pItem->MotionItemMode |= 1 ; // Mark command as executed
         // Record desired action and side
         SysState.Package.Get  = (pItem->z_or_lModeData & 0x1) ? 1 : 0   ;// May be over-ridden by mode
         SysState.Package.Mode = (pItem->z_or_lModeData & 0xf0) >> 4;   //ok
         SysState.Package.Side = (pItem->z_or_lModeData >> 16) & 0x3     ;//ok
         SysState.Package.TapeArmPalletAngle = (short)(pItem->z_or_lModeData >> 16)      ;
         SysState.Package.IncidenceAngle = pItem->cx ;
         SysState.Package.PackageX = (float) pItem->x ;
         SysState.Package.PackageY = (float ) pItem->y ;
         SysState.Package.PendingException = 0 ;
         mask  = BlockInts();


         if ( CmdFail == 0 )
         {
             SysState.Package.State = EPackState_Init ;
             SysState.Mot.NeckControl.NeckMode = E_NeckShelfAuto ;
             ManRouteCmd.LineSpeedCmd = 0 ; // Stop anyway
             SysState.Mot.QuickStop = 0 ;
             SysState.Package.ManipControlWord.RepeatAction = ( (SysState.Package.Mode == E_PackModeRepush) ? 1 : 0);
             SetSysTimerTargetSec(TIMER_MANPACK_ACTION_TMR, 0.1f, &SysTimerStr); // Take time to allow safe transmissions

             if ( SysState.Package.Mode == E_PackModeResetManipulatorPower )
             {
                 SysState.Package.ManOnState.State = E_ManonInit;
             }
             if ( SysState.Package.Mode == E_PackModeRebootManipulatorMotors)
             {
                 SysState.Package.ManOnState.State = E_ManRebootInit;
             }
         }

         RestoreInts(mask) ;

         if ( CmdFail )
         {
             return  ;
         }
    }


    PackState = SysState.Package.State ;
    if ( (SysState.Package.Mode == E_PackModeResetManipulatorPower ) || ( SysState.Package.Mode == E_PackModeRebootManipulatorMotors) )
    { // The package will eventually fail during power reset, we want to hide it
        PackState = EPackState_Init ;
    }


     switch (PackState )
     {
     default:
         switch (SysState.Package.Mode)
         {
         case E_PackModeIdle:
             break ;
         case E_PackModeNone:
             SysState.Package.State = EPackState_Success; // Do nothing
             break ;
         case E_PackModeResetManipulatorCmds : // Reset all the manipulator commands
             ShutManipulator();

             if (IsSysTimerElapse(TIMER_MANPACK_ACTION_TMR, &SysTimerStr))
             {
                 SysState.Package.State = EPackState_Success;
             }
             break;
         case E_PackModeDebugRunPack: // Default: Normal handling
             ManPackage(0);
             break;
         case E_PackModeStandby: // To standby position
             ManPackage(1);

             break;
         case E_PackModeRepush: // Re push from Idle position
             SysState.Package.ManipControlWord.RepeatAction = 1;
             SysState.Package.Get = 0;
             ManPackage(0);
             break;
         case E_PackModeRetryGet: // Treated above as GET, never reach here
             SysState.Package.Get = 1;
             ManPackage(0);
             break;
         case E_PackModeApplyLaser: // Just apply laser
             LocManControlWord = SysState.Package.ManipControlWord;
             LocManControlWord.MotorsOn = 0;
             LocManControlWord.Standby = 0;
             LocManControlWord.DealPackage = 0;
             //LocManControlWord.LaserValid = 0;
             //LocManControlWord.UnProcFromPdo = 0;
             SysState.Package.ManipControlWord = LocManControlWord;
             //SysState.Package.PDControlWord.LaserPsOn = 1;
             //if (IsSysTimerElapse(TIMER_MANPACK_ACTION_TMR, &SysTimerStr))
             //{
                 //SysState.Package.State = EPackState_Success;
             //}
             break;
         case E_PackModeResetManipulatorPower: //Reset manipulator already commanded, wait outcome
             if (SysState.Package.ManOnState.State == E_ManonDone)
             {
                 // Reset possible FATAL fault
                 fatality = GetExpFatality() ;
                 if ( fatality == EXP_FATAL )
                 {
                     LogException( OWN_EXP_ID , EXP_RESET ,exp_reset_after_man_reset ) ;
                 }
                 // RestartServo() ;

                 SysState.Package.State = EPackState_Success;
                 SysState.Package.Mode = E_PackModeIdle ;
                 SysState.Status.Failure.bit.PackHandleFail = 0 ;
             }
             if (SysState.Package.ManOnState.State == E_ManonFail)
             {
                 SysState.Package.PendingException = exp_pd_power_reset_fail;
                 SysState.Package.State = EPackState_Failure;
                 SysState.Package.Mode = E_PackModeIdle ;
                 SysState.Status.Failure.bit.PackHandleFail = 1 ;
             }
             break;
         case E_PackModeRebootManipulatorMotors:
             if (SysState.Package.ManOnState.State == E_ManonDone)
             {
                 // Reset possible FATAL fault
                 fatality = GetExpFatality() ;
                 if ( fatality == EXP_FATAL )
                 {
                     LogException( OWN_EXP_ID , EXP_RESET ,exp_reset_after_man_reboot ) ;
                 }
                 // RestartServo() ;

                 SysState.Package.State = EPackState_Success;
                 SysState.Package.Mode = E_PackModeIdle ;
                 SysState.Status.Failure.bit.PackHandleFail = 0 ;
             }
             if (SysState.Package.ManOnState.State == E_ManonFail)
             {
                 SysState.Package.PendingException = exp_pd_man_boot_fail;
                 SysState.Package.State = EPackState_Failure;
                 SysState.Package.Mode = E_PackModeIdle ;
                 SysState.Status.Failure.bit.PackHandleFail = 1 ;
             }
             break ;
         default:
             LogException( OWN_EXP_ID , EXP_ABORT , exp_bad_package_emcy_cmd);
             break ;
         } // end switch(switch (SysState.Package.Mode))
         break ;

     case EPackState_Success:
         // Done, do nothing
         ShutManipulator();

         mask = BlockInts( ) ;

         SetMotionMode(SysState.Package.PackSim.OldMotMode,30)  ;
         SetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_NECK],SysState.Package.PackSim.OldPosTarget)  ;
         SysState.Mot.NeckControl.NeckMode = SysState.Package.PackSim.OldNeckMode  ;

         RestoreInts(mask) ;

         // Reset any abort error in effect (Olivier request)
         if ( (SysState.Mot.mode == E_SysMotionModeAutomatic) && SysState.CBit.bit.QueueAborted)
         {
             LogException(OWN_EXP_ID , EXP_RESET ,exp_reset_after_pack_success ) ;
         }

         SysState.Package.LastFault = 0 ;

         break ;

     // Here the ability to un-climb is irrelevant, its like any other failure
     case EPackState_MayUnclimb_Failure:

         ShutManipulator();

         SysState.Package.IsFaultRecoverable = 1;
         SysState.Package.LastFault =SysState.Package.PendingException;

         mask = BlockInts( ) ;
         SetMotionMode(SysState.Package.PackSim.OldMotMode,31)  ;
         SetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_NECK], SysState.Package.PackSim.OldPosTarget)  ;
         SysState.Mot.NeckControl.NeckMode = SysState.Package.PackSim.OldNeckMode  ;
         RestoreInts(mask) ;

         ManRouteCmd.DisableResetNeckPosTarget = 1;
         LogException( OWN_EXP_ID , EXP_ABORT  , exp_package_handeling_recovered);
         ManRouteCmd.DisableResetNeckPosTarget = 0;
         SysState.Mot.QuickStop = 0 ; // Allow for neck correction
         break ;

     case EPackState_Failure:
         // Also done, do nothing
         ShutManipulator();

         mask = BlockInts( ) ;

         //SetMotionMode(SysState.Package.PackSim.OldMotMode,32)  ;
         SetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_NECK],SysState.Package.PackSim.OldPosTarget)  ;
         SysState.Mot.NeckControl.NeckMode = SysState.Package.PackSim.OldNeckMode  ;

         RestoreInts(mask) ;

         LogException( OWN_EXP_ID , EXP_ABORT  , err_package_handeling_failed);
         SysState.Package.LastFault = SysState.Package.PendingException;
         SysState.Package.IsFaultRecoverable = 0;
         SysState.Mot.QuickStop = 0 ; // Allow for neck correction
         break ;
     } // End switch(PackState)
     return ;

}
