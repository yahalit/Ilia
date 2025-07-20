#include "Structdef2.h"
/*
 * CanStateMachine.c
 *
 *  Created on: Feb 1, 2024
 *      Author: yahal
 */



/**
 * @brief Acknowledge handler for the arrival of boot up message
 */
short EEFCanAcknowledgeBootUp( struct CCanTrap * me )
{
    short unsigned id ;

    id = me->GetCobId & 0x7f ;

    if ( id == CAN_ID_EEF ) //EEF Logical
    {
        if (( me->Msg.dLen == 4 ) || ( me->Msg.dLen == 8 ))
        {
//            if ( ( SysState.CanAxis[LOGICAL_EEF].AxisRole == (short unsigned)( me->Msg.data[0] >> 24 ))  &&
//                    ( SysState.CanAxis[LOGICAL_EEF].AxisProj == (short unsigned)( (me->Msg.data[0] >> 8) & 0xffff )) )
            SysState.CanAxis[LOGICAL_EEF-1].BootAcknowledge = 1 ;
            return 0 ;
        }
        else
        {
            LogException ( id , EXP_WARN , exp_unexpected_bootup_msg1 ) ;
            return -1;
        }
    }

    LogException ( id , EXP_SAFE_FATAL , exp_expected_bootup_found_unknow_id2 ) ;
    return -1 ;
}



/**
 * @brief: Send a reset communication and wait bootup - for EEF
 */
short EEFSendResetComWaitBootup( short unsigned id)
{
    short unsigned GetCobId ;
    short TrapId ;
    struct CCanTrap *ptr ;
    ptr = AllocateTrap ( & TrapId ) ; // Ask an index to a non-busy trap

    if (ptr == (struct CCanTrap *) NULL )
    {
        return -1 ;
    }
    ptr->GetCobId = 0x700 + id ; // Standard reply COB ID for a bootup message
    ptr->Msg.cobId = 0 ;
    ptr->Msg.dLen = 2 ; //send only 2 least significant bytes
    ptr->Msg.data[0] = 105 + 256 * id ; //105 service code
    ptr->TimeOut = 2000000  ; // 2 seconds
    ptr->arg = exp_bootout_timeout ;
    ptr->ToutHandler = CanExceptionKill ;
    ptr->TrapHandler = EEFCanAcknowledgeBootUp ;
    SendTrap2Queue (ptr , TrapId , & GetCobId ) ;
    return 0;
}



short WakeFailReason ;



/**
 * \brief The state machine that contacts the servo until their initial setup is complete
 */
void CanStateMng(void)
{
    short cnt , done  , stat , TimeOver;
    short unsigned nextmask , fullmask;
    VOLATILE struct CCanAxis * pAxis ;
    short unsigned mask  ;
    //long val ;
    //struct CMotionItem * pItem ;
    //float q[4] , qdif[4] , ang ;
    //struct CPdCmd2 * pPdCmd2 ;


    switch ( SysState.WakeupState )
    {
    case E_CAN_WAKEUP_INIT :
        // Initialize the servo boot process
        SysState.WakeupSubState = 0 ; // The index of next slave to ask vitality
        WakeFailReason = 0 ;
        SetSysTimerTargetSec ( TIMER_ARR_RESET_BOOTUP , TIME_FROM_NMT_RESET_TO_ACKNOWLEDGE, &SysTimerStr );
        SetSysTimerTargetSec ( TIMER_ARR_RESET_TOTAL_BOOTUP , 8.0f , &SysTimerStr); // 5 sec to wake entire system

        SysState.WakeupState = E_CAN_WAKEUP_SEND_NMT_RESET;
        for ( cnt = 0 ; cnt < N_CAN_SLAVES +1 ; cnt++ ) //TODO: Not tested, added required NMT response from EEF
        {
            SysState.CanAxis[cnt].BootAcknowledge = -1 ; // No axis is yet acknowledged for boot
        }
        SysState.EmcyStopCsp = 0  ;
        break ;

    case E_CAN_WAKEUP_SEND_NMT_RESET:
        // For all the slaves, try send NMT reset, wait 20msec, and try to collect boot-up acknowledge

        if ( SysState.WakeupSubState >= N_CAN_SLAVES )
        { // Done if all the slaves are covered
            SysState.WakeupSubState = 0 ;
            SysState.SdoCounter  = 0 ;
            for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
            {
                SysState.CanAxis[cnt].SdoMng.state = 0 ; // Initialize SDO dload mechanisms
            }

            SetSysTimerTargetSec ( TIMER_PREOP_ALLOW_TIME , 60.0f , &SysTimerStr  );

            SysState.WakeupState = E_CAN_WAKEUP_SEND_NMT_RESET_EEF ; // GO to next state
            SysState.Debug.MoreInfo = 0 ;
            break ;
        }

        if ( IsSysTimerElapse(TIMER_ARR_RESET_BOOTUP, &SysTimerStr) == 0  )
        { // Not enough time since last NMT transmission
            break ;
        }

        if ( SysState.CanAxis[SysState.WakeupSubState].Installed == 0 )
        {   // axis not installed, skip it
            SysState.WakeupSubState += 1 ;
            break ;
        }

        // Place wake-ups for all the CAN axes
        if ( SysState.CanAxis[SysState.WakeupSubState].BootAcknowledge < 1 )
        {// No reset sent until now , or reset retry, so send it
            SysState.CanAxis[SysState.WakeupSubState].BootAcknowledge = 0  ; // Mark send
            SendResetComWaitBootup( SysState.CanAxis[SysState.WakeupSubState].CanId ) ;
            SetSysTimerTargetSec ( TIMER_ARR_RESET_BOOTUP , TIME_FROM_NMT_RESET_TO_ACKNOWLEDGE , &SysTimerStr);

            SysState.AxisWakeUpTryCnt[SysState.WakeupSubState] = (SysState.AxisWakeUpTryCnt[SysState.WakeupSubState]>=0) ? SysState.AxisWakeUpTryCnt[SysState.WakeupSubState]+1 : -1;
            if (SysState.AxisWakeUpTryCnt[SysState.WakeupSubState] >1000)
            {
                SysState.AxisWakeUpTryCnt[SysState.WakeupSubState] = -1;
                LogException(SysState.WakeupSubState, EXP_WARN , exp_can_axis_failed_to_answer_to_5_nmt_tries); // OWN_EXP_ID
            }
        }
        else
        { // Done with booting this axis
            SysState.WakeupSubState += 1 ;
        }

//#define VANDAL1
#ifdef VANDAL1
        if (IsSysTimerElapse(TIMER_ARR_RESET_TOTAL_BOOTUP, &SysTimerStr))
        { // Total timeout - could not complete servo axis reset process
            SysState.WakeupState = E_CAN_WAKEUP_FAILURE ;
            WakeFailReason = 1 ;
            LogException( SysState.WakeupSubState , EXP_SAFE_FATAL , error_NoCANcom_Axis1+SysState.WakeupSubState);
        }
#endif
        break ;

    case E_CAN_WAKEUP_SEND_NMT_RESET_EEF: //TODO: Not tested!

        if ( IsSysTimerElapse(TIMER_ARR_RESET_BOOTUP, &SysTimerStr) == 0  )
        { // Not enough time since last NMT transmission
            break ;
        }

        if ( SysState.EEF.EEFInstalled == 0 )
        {   // axis not installed, skip it
            SysState.WakeupSubState += 1 ;
            break ;
        }

        // Place wake-ups for EEF
        if ( SysState.CanAxis[LOGICAL_EEF-1].BootAcknowledge < 1 )
        {// No reset sent until now , or reset retry, so send it
            SysState.CanAxis[LOGICAL_EEF-1].BootAcknowledge = 0  ; // Mark send
            EEFSendResetComWaitBootup( CAN_ID_EEF ) ;

            SetSysTimerTargetSec ( TIMER_ARR_RESET_BOOTUP , TIME_FROM_NMT_RESET_TO_ACKNOWLEDGE , &SysTimerStr);

            SysState.AxisWakeUpTryCnt[LOGICAL_EEF-1] = (SysState.AxisWakeUpTryCnt[LOGICAL_EEF-1]>=0) ? SysState.AxisWakeUpTryCnt[LOGICAL_EEF-1]+1 : -1;
            if (SysState.AxisWakeUpTryCnt[LOGICAL_EEF-1] >5)
            {
                SysState.AxisWakeUpTryCnt[LOGICAL_EEF-1] = -1;
                LogException(SysState.WakeupSubState, EXP_WARN , exp_EEF_failed_to_answer_to_5_nmt_tries); // OWN_EXP_ID
            }
        }
        else
        { // Done with booting this axis
            SysState.WakeupSubState = 0 ;
            SysState.SdoCounter  = 0 ;

            SetSysTimerTargetSec ( TIMER_PREOP_ALLOW_TIME , 60.0f , &SysTimerStr  );

            SysState.WakeupState = E_CAN_WAKEUP_SEND_CONFIG_SDO ; // GO to next state
            SysState.Debug.MoreInfo = 0 ;
            break ;
        }

        break ;

    case E_CAN_WAKEUP_SEND_CONFIG_SDO:
        // Download all the configuration SDOs.
        // These shall include PDO mappings, heartbeat configuration, and many more
        TimeOver = IsSysTimerElapse(TIMER_PREOP_ALLOW_TIME, &SysTimerStr) ;

        stat = 0 ;
        for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
        {
            if ( SysState.CanAxis[cnt].Installed == 0 )
            {
                continue ;
            }

            nextmask = (1<<cnt) ;
            fullmask |= nextmask ;

            if ( (SysState.Debug.MoreInfo & nextmask) == 0 )
            {
                stat = ManageCfgSdoList (cnt , InitSdoGlob  );
                if ( stat > 0  )
                {
                    SysState.Debug.MoreInfo |= nextmask ;
                }
                /*
                if (stat < 0)
                {
                    SysState.WakeupState = E_CAN_WAKEUP_FAILURE; // Achalnu ota
                    WakeFailReason = 2 ;
                }
                */
                if ( (stat <= 0) && TimeOver )
                {
                    //SysState.WakeupState = E_CAN_WAKEUP_FAILURE ; // Achalnu ota
                    LogException(OWN_EXP_ID, EXP_FATAL, exp_could_not_program_cfg_sdo_0+cnt);
                    WakeFailReason = 3 ;
                }
            }
        }
        nextmask = (1<<8) ;
        fullmask |= nextmask ;
        if ( (SysState.Debug.MoreInfo & nextmask) == 0 )
        {// Read rated and maximum currents from axes
            if ( ReadAxesConfig ( ) == 0 )
            {
                SysState.Debug.MoreInfo |= nextmask ;
            }
            else
            {
                if ( TimeOver)
                {
                    LogException(OWN_EXP_ID, EXP_FATAL, exp_could_not_read_cur_limits);
                }
            }
        }
        nextmask = (1<<9) ;
        fullmask |= nextmask ;
        if ( (SysState.Debug.MoreInfo & nextmask) == 0 )
        {
            if ( HomePots() == 0 )
            {
                SysState.Debug.MoreInfo |= nextmask ;
            }
        }

        if (( SysState.Debug.MoreInfo & fullmask) == fullmask  )
        { // This SDO is transmitted;
            SysState.WakeupSubState = 0 ;
            SysState.WakeupState = E_CAN_WAKEUP_SEND_NMT_OPER ;
            SetSysTimerTarget( TIMER_ARR_GEN_WAIT_CAN_MGR, 10000 , &SysTimerStr) ;
        }
        break ;

    case E_CAN_WAKEUP_SEND_NMT_OPER:

        if ( IsSysTimerElapse (TIMER_ARR_GEN_WAIT_CAN_MGR, &SysTimerStr) )
        {
            SetSysTimerTarget( TIMER_ARR_GEN_WAIT_CAN_MGR, 10000 , &SysTimerStr) ;
        }
        else
        {
            break ;
        }

        // Pass NMT to operational (un-confirmed service)
        if ( SysState.WakeupSubState <  N_CAN_SLAVES )
        {
            if ( SysState.CanAxis[SysState.WakeupSubState ].Installed )
            {
                SendNMT(SysState.CanAxis[SysState.WakeupSubState].CanId , NMT_CODE_START_NODE );
            }
            SysState.WakeupSubState +=1 ;
            break ;
        }


        if ( SysState.WakeupSubState == N_CAN_SLAVES )
        {
            // Restart state machine for SDO sending
            for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
            {
                SysState.CanAxis[cnt].SdoMng.state = 0 ;
            }

            SysState.WakeupSubState = 0 ;
            SetSysTimerTargetSec ( TIMER_PREOP_ALLOW_TIME , 60.0f , &SysTimerStr  );
            SysState.WakeupState = E_CAN_WAKEUP_PROG_SPECIFIC_SDO ;
        }
        break;

    case E_CAN_WAKEUP_PROG_SPECIFIC_SDO:
        // System is on and fully awake.
        // Download all the configuration SDOs.
        // These shall include PDO mappings, heart-beat configuration, and many more
        TimeOver = IsSysTimerElapse(TIMER_PREOP_ALLOW_TIME, &SysTimerStr) ;
        done = 1 ;
        SysState.Debug.MoreInfo = 0 ;
        for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
        {
            if ( SysState.CanAxis[SysState.WakeupSubState ].Installed )
            {
                stat = ManageCfgSdoList (cnt , SpecificSdoInit[cnt]  ); //Initializes each axis parameters (send all SDOs defined for each axis).
                if ( stat > 0 )
                {
                    SysState.Debug.MoreInfo |= (1<<cnt) ;
                }

                if ( stat == 0 ) done = 0 ;
#ifdef VANDAL
                if ( stat < 0 )
                {
                    SysState.WakeupState = E_CAN_WAKEUP_FAILURE ; // Achalnu ota
                    WakeFailReason = 3 ;
                }
#endif
                if ( (stat <= 0) && TimeOver )
                {
                    //SysState.WakeupState = E_CAN_WAKEUP_FAILURE ; // Achalnu ota
                    LogException(OWN_EXP_ID, EXP_FATAL, exp_could_not_program_sdo_0+cnt);
                    WakeFailReason = 3 ;
                }

            }
        }
/*
        if (done )
            if ( RxPdoBitStr.ErrorCond)
            {
                break ;  // Stuck right here
            }
        }
*/
        // This SDO pack is transmitted; PDOs are now normally received
        if ( done )  // &&  GyroInt.bIgnoreGyro  || (( (GyroInt.bOffsetCalibDone==2)  || (GyroInt.nOffsetCalibAttempts > MAX_GYRO_CALIB_ATTEMPTS )) && GyroInt.GyroQuatListReady  ) )
        { // Gyro calibration complete or despaired
            for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
            {
                mask = BlockInts() ;
                pAxis = & SysState.CanAxis[cnt];
                pAxis->Pdo1RxMsg.LogicId  = 0 ;
                pAxis->Pdo1RxMsg.dLen = 8 ;
                pAxis->Pdo1RxMsg.cobId = pAxis->CanId + 0x200 ;
                pAxis->Pdo2RxMsg.LogicId  = 0 ;
                pAxis->Pdo2RxMsg.dLen = 8 ;
                pAxis->Pdo2RxMsg.cobId = pAxis->CanId + 0x300 ;
                //pAxis->BH.BhCw.bit.MotorOnCmd = 0 ;
                KillMotor(pAxis);
                pAxis->MotorOnToutCnt = 0 ;
                RestoreInts(mask) ;
            }

            SetMotionMode(E_SysMotionModeStay) ;
            SysState.WakeupSubState = 0 ;
            SysState.WakeupState = E_CAN_WAKEUP_PRE_OPERATIONAL ;
            SysState.SleepRequest = 0 ;
            SysState.Operational  = 1 ; // Sync shall be emitted and periodic PDO expected

#ifdef MNG_WARM_BIT
            SysState.TrackWidthCtl.IBitState = 1 ;
#endif
            //SysState.ToOperWakeUp = 0 ;
            //SysState.ToOperWakeUpBig = 0 ;

        }
        break ;

    case E_CAN_WAKEUP_PRE_OPERATIONAL :
/*
 * Manipulator servo does not start automatically
        done = 1 ; // Wait waxes to stabilize with halted state
        TimeOver = IsSysTimerElapse(TIMER_PREOP_ALLOW_TIME, &SysTimerStr) ;

        for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
        {
            pAxis = & SysState.CanAxis[cnt];
            if ( pAxis->Installed  )
            {
                if ( pAxis->MotorOnToutCnt < 10  )
                {
                    done = 0 ;
                    if ( TimeOver )
                    {
                        LogException(OWN_EXP_ID, EXP_FATAL, exp_could_not_start_servo_0+cnt);
                    }
                    break;
                }
            }
        }


#ifdef MNG_WARM_BIT
        if ( (Geom.RobotCfg.WheelArmType > 0 ) && (Geom.RobotCfg.WheelArmType != 0xffff ) && done && ( SysState.Debug.bAllowMotionUndeterminedWheelArm == 0 ))
        { // Robot equiped with wheel arm - test that the wheel arm network is on
            done = ManageWheelArmIBit() ;
        }
#endif

        if ( done == 0 )
        {
            SysState.Mot.QuickStop = 1 ;
            break ;
        }
*/

        mask = BlockInts( );
            SysState.WakeupState = E_CAN_WAKEUP_OPERATIONAL ;
            if (SysState.Mot.SleepBupMode )
            { // Possible sleep wakeup
                //SetMotRestart(0xb83f);
                SetMotionMode(SysState.Mot.SleepBupMode) ;
                SysState.Mot.SleepBupMode = 0 ;

            }
            for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
            {
                SysState.Mot.QuickStop = 0 ;
            }
            RestoreInts(mask) ;
            ClearExceptions() ; // Clear exception

            break ;


    case E_CAN_WAKEUP_OPERATIONAL:
        if ( FlexManipControl.ControlWordCopy.Automatic ) //was SysState.Mot.mode == E_SysMotionModeAutomatic. no sense in core2 automatic mode (there are only single automatic commands managed in ManCMD
        { // Auto mode - run motion planner

            if ( SysState.CBit.bit.NoCalib   )//in Manual mode we should be able to work without calibration (in order to calibrate the motors).
            {
                LogException( OWN_EXP_ID , EXP_ABORT , exp_auto_motion_requires_calibration);
            }
        }
        SysState.Status.Failure.bit.IsWakeStateFault = 0 ;
        break;

    case E_CAN_WAKEUP_FAILURE :

        // Do nothing, its a wreck
        for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
        {
            KillMotor( & SysState.CanAxis[cnt]) ;
        }

        SysState.Status.Failure.bit.IsWakeStateFault = 1 ;
        break ;

    default:
        break;

    }

}



