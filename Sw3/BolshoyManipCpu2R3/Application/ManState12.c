

#include "StructDef2.h"


#define DYN_DICT_430_TORQUE_ENA 64  // 1 byte
#define DYN_DICT_430_GOAL_POS 116  // 4 byte
#define DYN_DICT_430_GOAL_SPEED 104  // 4 byte
#define DYN_DICT_430_GOAL_TORQUE 102  // 2 byte


/**
* \brief Update the feedback per motion link
*       Updated entries: Pos , Speed , and "stopped" window
*
* \param: pCtl - Control structure
* \param: dT   - Time Ysince last call
*
*/
void UpdateCtlFeedback12( struct LinkControl  * pCtl , float dT  )
{
    pCtl->dT = dT ;

    // Update position and speed , motor on state, NextError = error state

    // Error tracking
    CbitCounterUpdate ( pCtl->LastError , &ManControlCbitCntr[pCtl->AxisId]  );

    // Test if axis is stopped
    if  ( fabsf( pCtl->Pos - pCtl->L12.PosTarget ) > pCtl->StopWindow )
    {
        SetSysTimerTarget ( pCtl->TimerID , pCtl->StopWindowTimeUsec ,&SysTimerStr );
        pCtl->IsStopped = 0 ;
    }
    else
    {
        if ( IsSysTimerElapse ( pCtl->TimerID  , &SysTimerStr) )
            pCtl->IsStopped = 1 ;
        else
            pCtl->IsStopped = 0 ;
    }
}


void SetAxisFeedback12 ( short unsigned cnt ,  float Pos , float Speed , short Err , short unsigned mon )
{
    struct LinkControl  *NextCtl ;
    float dT ;
    long long unsigned now ;

    if ( cnt >= NUM_12V_AXES_TOTAL )
        return ;

    NextCtl = &ManCmd.Ctl12[cnt];
    NextCtl->Pos = Pos ;
    NextCtl->Speed = Speed ;
    NextCtl->LastError=  Err  ;
    NextCtl->MotorOn = mon  ;

    now = GetLongTimer(&SysTimerStr) ;
    dT = (float)( now - NextCtl->LastVistTime ) * 1e-6F ;
    if ( dT < 0.1e-3f || dT > 64e-3f)
        dT = (float) NOMINAL_TS_SEC ;

    UpdateCtlFeedback12 ( NextCtl , dT) ;
    NextCtl->LastVistTime = now ;
}


/**
 * \brief State machine for the 12V network management
 *
 */
void Dyn12StateMachine ( void )
{
    short stat  ;
    short unsigned ecnt ;
    struct CDynamixelStat *pStat ;
    struct LinkControl  *pCtl ;
    long pgoal , rqst  ;
    float eabs , tau , a , k , speedcmd , posTargetMot , posTargetLoad , delta , dT , InvScale  , pact;

    if ( (Dynamixel12.InitState != 1) || ( Dynamixel12.nMembers  == 0 ) )
    {
        Dynamixel12.SubState = 0 ; // Wait initialization done
        Dynamixel12.State = DYN_RUN_RT ;
        SetSysTimerTargetSec( TIMER_RS485_12V_TOUT , Dynamixel12.CommCycleTimeSec ,&SysTimerStr) ;
        return ;
    }

    if ( IsSysTimerElapse(TIMER_RS485_12V_TOUT,&SysTimerStr) == 0 )
    {
        return ;
    }
    dT = SetSysTimerTargetSecGetDelta ( TIMER_RS485_12V_TOUT , Dynamixel12.CommCycleTimeSec, &SysTimerStr ) ;

    switch ( Dynamixel12.State )
    {
    case DYN_RUN_RT: // Real time actions
        switch ( Dynamixel12.SubState )
        {
        case 0:
            // Read previous control confirmation
            stat = DxReadControlConfirm ( &Dynamixel12 , Dynamixel12.NextAxis  );

            if ( stat )
            {
                Dynamixel12.ControlConfirmFailCtr += 1 ;
            }
            else
            {
                Dynamixel12.ControlConfirmCtr += 1 ;
            }


            CbitCounterUpdate ( stat , &Dx12AxisComCbit[Dynamixel12.NextAxis] ) ;

            // Switch to the next axis for feedback read
            Dynamixel12.NextAxis += 1;
            if ( Dynamixel12.NextAxis >= Dynamixel12.nMembers )
                Dynamixel12.NextAxis = 0 ;

            // Request feedback
            ConstructReadMsg ( & Dynamixel12.Msg , Dynamixel12.IndirectReadAdd , 13 , Dynamixel12.IDList[Dynamixel12.NextAxis] , Dynamixel12.Net)  ;
            DynamixelTx ( & Dynamixel12 , &  Dynamixel12.Msg  ) ;
            Dynamixel12.SubState = 1;
            break ;

        case 1:
            // Read feedback report
            stat = ReadSynAxesStat( &Dynamixel12 , DynStat12  , Dynamixel12.NextAxis );

            //CbitCounterUpdate ( stat , &Dx12AxisComCbit[Dynamixel12.NextAxis] ) ;

            pStat = & DynStat12[Dynamixel12.NextAxis] ;
            pCtl  = & ManCmd.Ctl12[Dynamixel12.NextAxis] ;

            ecnt  = KnowWhereIAm12[Dynamixel12.NextAxis] ;



            if ( stat == 0 )
            {
                Dynamixel12.FeedbackCtr +=  1 ;
                SetAxisFeedback12 ( Dynamixel12.NextAxis ,  pStat->PositionActual , pStat->SpeedActual , pStat->HardErrorStat, pStat->MotorOn );
                pStat->HardErrorStat &= pStat->bIgnoreErrorMask ;

                if ( DynStat12[Dynamixel12.NextAxis].HardErrorStat & 0xda )
                {
                    ecnt = __max(ecnt,3)-3 ;
                }
                else
                {
                    ecnt = __min(ecnt+1,60) ;
                }
            }
            else
            {
                Dynamixel12.FeedbackFailCtr +=  1 ;
                pStat->HardErrorStat = 0x180  ;
                ecnt = __max(ecnt,3)-3 ;
            }
            KnowWhereIAm12[Dynamixel12.NextAxis] = ecnt ;


            CbitCounterUpdate ( (pStat->HardErrorStat& 0xff ) ? 1 : 0 , &Dx12AxisComCbit[Dynamixel12.NextAxis] ) ;

            if ( Dx12AxisComCbit[Dynamixel12.NextAxis].ErrorCond )
            {
                if ( pStat->MotorOn )
                {
                    pStat->MotorOn        = 0 ; // Kill motor on condition
                    pStat->MotorOnRequest = 0 ;
                }
                ManCBit.StopFail |= ( 1<< Dynamixel12.NextAxis) ;
                pCtl->MotorOnRequest = 0 ;
            }
            else
            {
                ManCBit.StopFail &= ~( 1<< Dynamixel12.NextAxis) ;
                pStat->MotorOnRequest = pCtl->MotorOnRequest ;
            }

            // If the axis is off, and there is no request for it, then nothing is left to do .... just go on the next axis
            // Sub-state shall remain as 1
            if ( S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual )
            {
                pStat->MotorOnRequest = IndividualAxCtl12[Dynamixel12.NextAxis].MotorOnRequest ;
            }

            if  (( pStat->MotorOn == 0  ) && (pStat->MotorOnRequest == 0  ) )
            {

                pCtl = &ManCmd.Ctl12[Dynamixel12.NextAxis] ;

                // Do kynematics anyway for telemetry
                CalcManipulatorPos12 ( ) ;

                pCtl->PosErr = 0 ;
                pCtl->IsPosDone = 0 ;
                ResetManRecovery12 () ;
                IndividualAxCtl12[Dynamixel12.NextAxis].PosTarget = pCtl->Pos ;

                // Switch to the next axis for feedback read
                Dynamixel12.NextAxis += 1;
                if ( Dynamixel12.NextAxis >= Dynamixel12.nMembers )
                    Dynamixel12.NextAxis = 0 ;

                // Request feedback from next axis
                ConstructReadMsg ( & Dynamixel12.Msg , Dynamixel12.IndirectReadAdd , 13 , Dynamixel12.IDList[Dynamixel12.NextAxis] , Dynamixel12.Net)  ;
                DynamixelTx ( & Dynamixel12 , &  Dynamixel12.Msg  ) ;

                break ;
            }


            UpdateManipulatorControl12( Dynamixel12.NextAxis  );
/*
            if ( pStat->HardErrorStat & 0x108 )
            {
                PdCBit.StopFail |= ( 1<< Dynamixel12.NextAxis) ;
            }
            else
            {
                PdCBit.StopFail &= ~( 1<< Dynamixel12.NextAxis) ;
            }
*/

            // call the manipulator control function
            if ( S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual )
            {
                posTargetLoad  = IndividualAxCtl12[Dynamixel12.NextAxis].PosTarget ;
            }
            else
            {
                posTargetLoad = pCtl->L12.PosTarget ;
            }
            posTargetMot = posTargetLoad ;// Default

            // Send either axis On/Off or position command
            if ( (pStat->MotorOn !=  pStat->MotorOnRequest)  || (pStat->MotorOn == 0 ) ) //axis on/off
            {
                if ( ( S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual == 0 ) &&( IsSysTimerElapse(TMR_DOOR_STOP , &SysTimerStr)  == 0 ) )
                { // Prevent shut down before time is complete
                    rqst = 1 ;
                }
                else
                {
                    rqst = (long)pStat->MotorOnRequest;
                }

                ConstructWriteMsg ( & Dynamixel12.Msg , DYN_DICT_430_TORQUE_ENA , 1 , rqst , Dynamixel12.IDList[Dynamixel12.NextAxis] ) ;
                pCtl->L12.PosTarget = pStat->PositionActual ;
                pStat->SpeedCmdRadSec = 0 ;
            }

            else //position command
            {
                if ( fabsf(pStat->PositionScale) < 1e-7f  )
                {
                    InvScale = 1 ;
                }
                else
                {
                    InvScale = 1.0f / pStat->PositionScale ;
                }

                pgoal = (long) ( posTargetMot * InvScale  ) ;
                if ( pStat->IsOuterPos  )
                {   // Take potentiometer instead of encoder, it has less delay
                    pact = pStat->OuterPos ; //  pStat->PositionAccum ;
                }
                else
                {
                    pact = pStat->PositionActual  ;
                }
                pgoal =  pgoal + (long) ( pStat->PositionOffset + pStat->NominalEncoderOffset ) ;

                // Record goal changes to time out door moves
                if ( pgoal != pStat->PositionGoal)
                {
                    SetSysTimerTargetSec ( TMR_DOOR_STOP , 2.0f ,&SysTimerStr);
                }

                if ( pStat->IsPosLimit )
                {
                    pgoal = __lmax( __lmin(pgoal,pStat->MaxPosRefLimit) , pStat->MinPosRefLimit ) ;
                }

                pStat->PositionGoal = pgoal ;

                if ( pStat->bPinAxis)
                {
                    pStat->CurrentGoal = (short) ( __fmax( __fmin( pStat->CurrentCmd, pStat->CurrentLimit) , -pStat->CurrentLimit)  * pStat->InvCurrentScale ) ;
                    ConstructWriteMsg ( & Dynamixel12.Msg , DYN_DICT_430_GOAL_TORQUE , 2 , pStat->CurrentGoal  , Dynamixel12.IDList[Dynamixel12.NextAxis] ) ;
                }
                else
                {
                    if ( pStat->IsDxlPosLoop )
                    { // Scara doors
                        ConstructWriteMsg ( & Dynamixel12.Msg , DYN_DICT_430_GOAL_POS , 4 , pStat->PositionGoal  , Dynamixel12.IDList[Dynamixel12.NextAxis] ) ;
                    }
                    else
                    { // Tape arm plate

                        pCtl->PosErr   = posTargetMot - pact  ;
                        eabs = fabsf(pCtl->PosErr) ;
                        tau = pCtl->tau ;
                        a   = pCtl->L12.acc ;
                        k   = pCtl->L12.Kpp ;
                        speedcmd = __fmin( __fmin( __sqrt( eabs * 2.0f * a + a * a * tau * tau ) - a * tau , pCtl->MaxSpeedCmd ) , k * eabs ) * ( pCtl->PosErr > 0 ? 1 : -1 ) ;
                        delta = a * 1.5f * __fmin( dT , 0.2f );
                        speedcmd = __fmax ( __fmin( speedcmd , pStat->SpeedCmdRadSec + delta ) , pStat->SpeedCmdRadSec - delta ) ;
                        pStat->SpeedGoal = (long) ( speedcmd / pStat->SpeedScale ) ;
                        ConstructWriteMsg ( & Dynamixel12.Msg , DYN_DICT_430_GOAL_SPEED , 4 , pStat->SpeedGoal  , Dynamixel12.IDList[Dynamixel12.NextAxis] ) ;
                    }
                }

                if( ManCmd.SimulationMode & SIMFLAG_MANIPULATOR )
                {
                    pStat->Sim.SimPositionCnt = (float) pStat->PositionGoal;
                }
                else
                {
                    pStat->Sim.SimPositionCnt = (float) pStat->PositionCnt;
                }
            }

            pStat->Sim.SimMotorOn = pStat->MotorOnRequest; // Simulation

            DynamixelTx ( & Dynamixel12 , &  Dynamixel12.Msg  ) ;
            Dynamixel12.SubState = 0;
            break ;
        default:
            Dynamixel12.SubState = 0;
            break;
        } // end switch ( Dynamixel12.SubState )
        break ;

        case DYN_STATE_REBOOT:

            PBit.DynRebootRequest &= ~1 ;
            if ( Dynamixel12.NextRebootTarget >= Dynamixel12.nMembers)
            {
                SetSysTimerTargetSec ( TIMER_REBOOT_TIME12 , 2.0 , &SysTimerStr );
                Dynamixel12.State = DYN_STATE_REBOOT_WAIT ;
                break ;
            }

            BootMsg.pPay = BootPayload ;
            BootMsg.Error = 0 ;
            BootMsg.PayloadLen = 0 ;
            BootMsg.inst = 8 ;
            BootMsg.ID = Dynamixel12.IDList[Dynamixel12.NextRebootTarget] ;

            DynamixelTx ( & Dynamixel12 , & BootMsg ) ;
            Dx12AxisComCbit[Dynamixel12.NextRebootTarget].ErrorCount = 0 ;
            Dx12AxisComCbit[Dynamixel12.NextRebootTarget].ErrorCond  = 0 ;
            Dynamixel12.NextRebootTarget += 1 ;

            break ;

        case DYN_STATE_REBOOT_WAIT:
            if ( IsSysTimerElapse(TIMER_REBOOT_TIME12,&SysTimerStr)  && ( (PBit.DynRebootRequest&1) == 0) )
            {
                Dynamixel12.NextAxis = 0 ;
                Dynamixel12.State = DYN_RUN_RT ;
                Dynamixel12.SubState = 0 ;
                Dynamixel12.InitState = 0 ;
                InitDynState( 12 , pDyn12Setup );
                PBit.DynRebootRequest |= 1 ;
            }

            break ;

    case DYN_STATE_FAIL: // Network error
        break ;
    case DYN_MANUAL_EXT: // External command, no periodic response
        break ;
    }
    DynStat12[0].Statistic1 = (DynStat12[0].MotorOn ? 1 : 0 ) + (DynStat12[0].MotorOnRequest ? 2 : 0 ) + ((ManCBit.StopFail & 1 ) << 2) +
            (( Dx12AxisComCbit[0].ErrorCond & 0xff ) << 3  ) ;
    DynStat12[1].Statistic1 = (DynStat12[1].MotorOn ? 1 : 0 ) + (DynStat12[1].MotorOnRequest ? 2 : 0 ) + (((ManCBit.StopFail>>1) & 1 ) << 2) +
            (( Dx12AxisComCbit[1].ErrorCond & 0xff ) << 3  ) ;
    Dynamixel12.DStatistic1 = ( Dynamixel12.State & 15 )  + (( Dynamixel12.SubState & 15 ) << 4 ) + (( S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual & 1 ) << 8) +
        ((Dynamixel12.NextAxis & 7 ) << 9 ) + (( (long unsigned)ManCmd.State * 0x1f ) << 12 ) + (((long unsigned)M2S.Items.ActCmd.cmd.ResetMotors & 1 ) << 17)  ;
    Dynamixel12.DStatistic2 = (Dynamixel12.ControlConfirmCtr & 0xff) + (((long unsigned) (Dynamixel12.FeedbackCtr & 0xff) ) << 8 ) +
            ((long unsigned)(Dynamixel12.ControlConfirmFailCtr) & 0xff) + (( (long unsigned)(Dynamixel12.FeedbackFailCtr & 0xff) ) << 8 );


}




