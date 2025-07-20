/*
 * PwmIsr.c
 *
 *  Created on: Jun 17, 2023
 *      Author: yahal
 */

#include "StructDef.h"



void PostFsiIsrAction(void)
{
    // Operate brakes
    union UFsiCmd2Intfc Cmd2IntfcSamp   ;
    union
    {
        long ul ;
        short us[2] ;
    } u1, u2 ;

    Cmd2IntfcSamp.us = SysState.AxisState[EA_Wheel].InFsiMsg.fields.Cmd2Intfc.us ;

    if ( SysState.Mot.BrakeControlOverride)
    { // Directly via object dictionary of interface card
        if ( SysState.Mot.BrakeRelease )
        {
            OutBrakeVolts( SysState.Mot.LocalModeBrakeReleaseVolts  );
        }
        else
        {
            OutBrakeVolts( 0 );
        }
    }
    else
    {
        if ( Cmd2IntfcSamp.bit.BrakeRelease == 0 )
        {
            OutBrakeVolts( 0 );
        }
        else
        {
            OutBrakeVolts( Cmd2IntfcSamp.bit.BrakeVolts * 0.5f + 10  );
        }
    }

    ClaControlPars.SwitchWidthSelect = Cmd2IntfcSamp.bit.SwitchWidthSelect & 3  ; // The &3 does nothing, just protection if somebody changes field dimensions
    // Recorder
    RtRecorder() ;

    // Inform interrupts existence to watch-dog
    SysState.WdKickAllow += 1 ;

    // Read limit switch results
    if ( SysState.SwitchDetectValid != ClaMailOut.SwitchDetectValid)
    {
        do
        {
            u1.ul  = ClaMailOut.SwUpdateFlag ;
            SysState.SwitchDetectValid = ClaMailOut.SwitchDetectValid ;
            //u.ul = (long) ClaMailOut.EncoderAtSwitch ;
            //SysState.EncoderAtSwitch   = u.us[0] ;
            SysState.SwitchRev = ( ClaMailOut.SwitchDir >= 0 ) ? 0 : 1 ;
            //ClaState.LLimit.SwitchWidth = (short)ClaMailOut.SwitchWidth  ;
        } while (u1.ul  != ClaMailOut.SwUpdateFlag ) ;
    }

    u2.ul = ( ClaMailOut.SwitchDetectValid & 7 ) + ((ClaState.LLimit.PresentValue>0) ? (1<<3):0)  + ( (SysState.SwitchRev & 3 ) << 4 )
            + ( ( (long)(__fmin(ClaMailOut.SwitchWidth,0.064f) * 15625.0f)  & 2047 ) << 5 ) ;
    u2.us[1] = u2.us[1]  +
            (ClaState.LLimit.PresentValue ? (1<<2) :0) + (ClaState.LLimit.RiseMarker ? (1<<3) :0) +
            (ClaState.LLimit.FallMarker ? (1<<4) :0)
            + ( ( (long)(__fmax(__fmin(ClaState.LLimit.DistIntoSwitch ,0.064f),-0.064f)  * 15625.0f)  & 2047 ) << 5 ) ;
    SysState.RailSwitchStatus = u2.ul ;

    RtCanService() ;
}

inline
void ReadHalls(void)
{
    union
    {
        long unsigned ul ;
        short unsigned us[2] ;
    } u ;

    u.ul = HWREG( GPIODATA_BASE + GPIO_O_GPHDAT) ;
    SysState.AxisState[EA_Wheel].HallKey = ( (u.us[1] & 4 ) >> 2) + (u.us[0] & 2 ) + (( u.us[1] & 0x10) >> 2 ) ;
    SysState.AxisState[EA_Steering].HallKey = ( (u.us[1] & 2 ) >> 1) + ((u.us[0] & 8 ) >> 2 ) + ((u.us[0] & 0x40 ) >> 4 )  ;
}

/*
 * The interface card is interrupted normally from the servo card.
 * However, there is an additional PWM interrupt that happens if the interrupt from the servo card fails
 */
__interrupt void PwmIsr( void)
{
    long unsigned rawtimer ;

    // Acknowledge interrupt
    HWREGH(EPWM1_BASE + EPWM_O_ETCLR) = 0xd ;
    HWREGH(PIECTRL_BASE + PIE_O_ACK) = INTERRUPT_ACK_GROUP3 ;

    if ( SysState.Mot.DisablePeriodicService )
    {
        return  ;
    }

    SysState.Timing.InterruptCtr += 1 ;
    SysState.Timing.PwmInterruptCtr += 1 ;
    // Tune USEC counter to the start of interrupt
    rawtimer = ~HWREG( CPUTIMER1_BASE+CPUTIMER_O_TIM) ;
    SysState.Timing.UsecTimer = rawtimer ;


    ReadHalls();
    PostFsiIsrAction() ;
}

//const unsigned long EcapCaptAddress[2] = { ECAP1_BASE+ , ECAP1_BASE + } ;

// 0x2 is evt1 , 0x4 is evt2
const short NextAxisArr[4] = {-1,0,1,-1} ;

#ifdef TEST_FLTIME
long unsigned junk , jDelta[6] , ull;
#endif


volatile long EcapOnHit ;
volatile long PwmOnHit ;

static short unsigned TimerIntState ;
/*
 * This is the interrupt we get on normal connection to a wheel servo card
 */
__interrupt void EcapIsr(void)
{
    union
    {
        long unsigned ul ;
        long l ;
        short unsigned us[2] ;
        short s[2] ;
    } u ;
    short unsigned EtFlag , *pUsIn,*pUsOut ,  *pData ,  *pmsgData  ,  datacnt , bufcnt ,  next ,nmsg  , Next , rxaxis;
    short unsigned * pUs ;
    long rawtimer ;
    struct CCanQueue *pQueue ;
    struct CFsiMsg2Slave *pMsgOut ;
    struct CCanMsg *paxMsg ;

    EALLOW ;

    HWREGH( GPIODATA_BASE + GPIO_O_GPBSET) = 0x1 ; // Toggle GPIO

    SysState.Timing.InterruptCtr += 1 ;


    // Test the ECAP event that lead to this interrupt
    EtFlag = ( HWREGH(ECAP1_BASE + ECAP_O_ECFLG) >> 1 ) & 0x3 ;
    SysState.ActiveAxis = NextAxisArr[EtFlag] ;

    // Acknowledge the ECAP interrupt
    HWREGH(ECAP1_BASE + ECAP_O_ECCLR) = 0xff ;
    HWREGH(PIECTRL_BASE + PIE_O_ACK) = INTERRUPT_ACK_GROUP4 ;

    if ( SysState.Mot.DisablePeriodicService )
    {
        return  ;
    }


#ifdef TEST_FLTIME
    if (SysState.ActiveAxis != 1000  )
    {
        ull = -HWREG( CPUTIMER2_BASE+CPUTIMER_O_TIM) ;
        jDelta[0] =  ull -  junk;
        junk = ull ;
    }
#endif

    if (SysState.ActiveAxis & 0xfffe  )
    {
        return ;
    }

    if ( SysState.ActiveAxis == EA_Wheel )
    {
        SysState.pAxisTx = &SysState.AxisState[0] ;
        SysState.pAxisRx = &SysState.AxisState[1] ;
        rxaxis = 1 ;
        SysState.AxisState[0].EcapCaptTime = HWREG(ECAP1_BASE + ECAP_O_CAP1);
        SysState.AxisState[0].EcapNowTime  = HWREG(ECAP1_BASE + ECAP_O_TSCTR);
    }
    else
    {
        SysState.pAxisTx = &SysState.AxisState[1] ;
        SysState.pAxisRx = &SysState.AxisState[0] ;
        rxaxis = 0 ;
        SysState.AxisState[1].EcapCaptTime = HWREG(ECAP1_BASE + ECAP_O_CAP2);
        SysState.AxisState[1].EcapNowTime = HWREG(ECAP1_BASE + ECAP_O_TSCTR);
    }

    // Set the PWM counter by ECAP value
    PwmOnHit = HWREGH(PWM_A_BASE+EPWM_O_TBCTR);
    EcapOnHit = HWREG(ECAP1_BASE + ECAP_O_TSCTR) ;
    HWREGH(PWM_A_BASE+EPWM_O_TBCTR) = (short unsigned) EcapOnHit ;

    // Tune USEC counter to the start of interrupt
    rawtimer = ~HWREG( CPUTIMER1_BASE+CPUTIMER_O_TIM) ;
    SysState.Timing.UsecTimer = rawtimer - ( long) ( EcapOnHit * INV_CPU_CLK_MHZ) ;

    // Set interrupt for automatic flush action
    TimerIntState = 0 ;
    HWREG( CPUTIMER0_BASE+CPUTIMER_O_TIM) = FSI_FLUSH_START_TIME - EcapOnHit ;

    HWREGH( CPUTIMER0_BASE+CPUTIMER_O_TCR) = 0xc000; // Start timer and enable interrupt

    SysState.pAxisTx->FsiMsgReady  = 0 ;

    ReadHalls();
    IER = 1;

#ifdef TEST_FLTIME
    ull = -HWREG( CPUTIMER2_BASE+CPUTIMER_O_TIM) ;
    jDelta[1] = ull -  junk;
#endif

    EINT   ;

    // Read the FSI status to verify correct frame
    FsiRxState.FsiRxStat       = HWREGH(FSIRXA_BASE + FSI_O_RX_EVT_STS);
    FsiRxState.FsiRxUserAndTag = HWREGH(FSIRXA_BASE + FSI_O_RX_FRAME_TAG_UDATA) ;
    FsiRxState.FsiRxFrameInfo  = HWREGH(FSIRXA_BASE + FSI_O_RX_FRAME_INFO ) ;

    // Clear events
    HWREGH(FSITXA_BASE + FSI_O_RX_EVT_CLR) = FSI_RX_EVTMASK;

    // Reset receive buffer to zero
    HWREGH(FSIRXA_BASE + FSI_O_RX_BUF_PTR_LOAD ) = 0 ;

    HWREGH( GPIODATA_BASE + GPIO_O_GPBCLEAR) = 0x1 ; // Toggle GPIO

#ifdef TEST_FLTIME
    ull = -HWREG( CPUTIMER2_BASE+CPUTIMER_O_TIM) ;
    jDelta[2] =  ull -  junk;
#endif

    // Must verify correct frame received with correct length
    if  ( ( (FsiRxState.FsiRxStat & 0x840) == 0x840 ) && ( (FsiRxState.FsiRxStat & 0x4 ) == 0 ) &&
            (SysState.pAxisRx->ExpectedTag ==  ( FsiRxState.FsiRxUserAndTag >> 1 ) & 0xf  ) )
    { // Thats a success
        SysState.AxisState[rxaxis].RxCommTime = rawtimer ;

        SysState.pAxisRx->NoFsiMsgCnt.us[0] = 0  ;
        // Get data from the FSI
        pUsIn  = (short unsigned *)(FSIRXA_BASE + FSI_O_RX_BUF_BASE(0)) ;
        pUsOut = &( SysState.pAxisRx->InFsiMsg.us[0])  ;
        *pUsOut++ = *pUsIn++ ;
        *pUsOut++ = *pUsIn++ ;
        *pUsOut++ = *pUsIn++ ;
        *pUsOut++ = *pUsIn++ ;
        *pUsOut++ = *pUsIn++ ;
        *pUsOut++ = *pUsIn++ ;
        *pUsOut++ = *pUsIn++ ;
        *pUsOut++ = *pUsIn++ ;
        *pUsOut++ = *pUsIn++ ;
        *pUsOut++ = *pUsIn++ ;
        *pUsOut++ = *pUsIn++ ;
        *pUsOut++ = *pUsIn++ ;
        *pUsOut++ = *pUsIn++ ;
        *pUsOut++ = *pUsIn++ ;
        *pUsOut++ = *pUsIn++ ;
        *pUsOut++ = *pUsIn++ ;

        nmsg = SysState.pAxisRx->InFsiMsg.fields.Bufcounter >> 8 ;

        // Counter changed. That is a new message an axis want to transmit, put it to output queue
        if ( SysState.pAxisRx->CanRxCntr != nmsg )
        {
            SysState.pAxisRx->CanRxCntr = nmsg ;

            pQueue = SysState.pAxisRx->pCanOutQueue ;
            Next = ( pQueue->nPut + 1 ) & (pQueue->nQueue-1);
            if ( Next != pQueue->nGet )
            {
                paxMsg = &pQueue->Msg[pQueue->nPut] ;
                pQueue->nPut = Next ;
                paxMsg->UseLongId = 0 ;
                paxMsg->cobId     = (( SysState.pAxisRx->InFsiMsg.fields.CobidDataLen & 0xff00 )>> 1) +  SysState.pAxisRx->SlaveId ;
                paxMsg->dLen      = SysState.pAxisRx->InFsiMsg.fields.CobidDataLen   & 0xf ;
                pData           = &SysState.pAxisRx->InFsiMsg.fields.data[0] ;
                pmsgData        = (short unsigned *) & paxMsg->data[0] ;
                *pmsgData++ = *pData++;
                *pmsgData++ = *pData++;
                *pmsgData++ = *pData++;
                *pmsgData++ = *pData++;
            }
        }


        //usTmp = HWREGH(FSIRXA_BASE + FSI_O_RX_FRAME_TAG_UDATA) ;
        SysState.pAxisRx->InFsiMsg.fields.Tag =  ( FsiRxState.FsiRxUserAndTag >> 1 ) & 0xf  ;
        SysState.pAxisRx->InFsiMsg.fields.User =  ( FsiRxState.FsiRxFrameInfo >> 8 ) ;
    }
    else
    {
        // Reset receiver
        HWREGH(FSIRXA_BASE + FSI_O_RX_MASTER_CTRL) = 0xa509 ; // Reset core, isolate pins

        HWREGH(FSIRXA_BASE + FSI_O_RX_EVT_CLR) = FSI_RX_EVTMASK;

        asm(" RPT #120 || NOP");

        HWREGH(FSIRXA_BASE + FSI_O_RX_MASTER_CTRL) = 0xa500 ; // Clear core reset, release isolation

        SysState.pAxisRx->NoFsiMsgCnt.us[0] = __min(SysState.pAxisRx->NoFsiMsgCnt.us[0]+1,10000)   ;

    }


    HWREGH( GPIODATA_BASE + GPIO_O_GPBSET) = 0x1 ; // Toggle GPIO

#ifdef TEST_FLTIME
    ull = -HWREG( CPUTIMER2_BASE+CPUTIMER_O_TIM) ;
    jDelta[3] =  ull -  junk;
#endif

    // Prepare exiting message
    pMsgOut = &SysState.pAxisTx->OutFsiMsg.fields ;
    SysState.pMsg2Tx = &SysState.pAxisTx->OutFsiMsg ;

    datacnt = pMsgOut->Bufcounter & 0xff00 ;
    bufcnt  = pMsgOut->Bufcounter & 0xff ;


    if ( SysState.ActiveAxis == EA_Wheel )
    {
        if ( SysState.bDebugFsi )
        {
            pUs = &SysState.pAxisTx->OutFsiMsg.us[0] ;
            pUs[0] = 1;
            pUs[1] = 2;
            pUs[2] = 3;
            pUs[3] = 4;
            pUs[4] = 5;
            pUs[5] = 6;
            pUs[6] = 7;
            pUs[7] = 8;
            pUs[8] = 9;
            pUs[9] = 10;
            pUs[10] = 11;
            pUs[11] = 12;
            pUs[12] = 13;
            pUs[13] = 14;
            pUs[14] = 15;
            pUs[15] = 16;
        }
        else
        {

            u.l = SysState.AxisState[1].InFsiMsg.fields.PosReport   ;
            SysState.Debug.SteerPosReport = u.l ;
            pMsgOut->FF = u.us[0] ; // Steering c

            pMsgOut->HallsAndStop = SysState.AxisState[EA_Wheel].HallKey
                    + (SysState.Timing.AxesStopCmdWh <<3 ) + (SysState.pAxisTx->WasSync << 4 )
                    +  (( SysState.SwState & 7 ) << 5 )
                    + (SysState.FreeCanTxQueueWheel << 10)
                    + (SysState.AxisState[1].InFsiMsg.fields.Cmd2Intfc.bit.DisableAutoBrake ? (1<<14) : 0 ) ;

            SysState.pAxisTx->WasSync = 0 ;

            u.ul = ClaState.Encoder3.Pos  ;
            pMsgOut->OutEncoder   = u.us[0] ;
            pMsgOut->Speed        = ClaState.Encoder1.MotSpeedHz      ;
            u.ul = (long) ( ClaState.Encoder1.MotorPos * 65536 ) ;
            pMsgOut->encoder      = u.us[0] ;


            SysState.pOutMsgBufTx = & SysState.OutMsgBufWh;
        }
    }
    else // Steering
    {
        if ( SysState.bDebugFsi )
        {
            pUs = &SysState.pAxisTx->OutFsiMsg.us[0] ;
            pUs[0] = 101;
            pUs[1] = 102;
            pUs[2] = 103;
            pUs[3] = 104;
            pUs[4] = 105;
            pUs[5] = 106;
            pUs[6] = 107;
            pUs[7] = 108;
            pUs[8] = 109;
            pUs[9] = 110;
            pUs[10] = 111;
            pUs[11] = 112;
            pUs[12] = 113;
            pUs[13] = 114;
            pUs[14] = 115;
            pUs[15] = 116;
        }
        else
        {
            u.l = SysState.AxisState[0].InFsiMsg.fields.PosReport   ;
            SysState.Debug.WheelPosReport = u.l ;
            pMsgOut->FF = 0 ;

            pMsgOut->HallsAndStop = SysState.AxisState[EA_Steering].HallKey
                    + (SysState.Timing.AxesStopCmdSt << 3 ) + (SysState.pAxisTx->WasSync << 4 ) + (ClaMailOut.PotRefFail ? 0x20 : 0 ) +
                    + (SysState.FreeCanTxQueueSteer << 10);
            SysState.pAxisTx->WasSync = 0 ;
            u.ul = (long) ( ClaState.Pot.PotFilt * 65536.0f) ; // Here no calibration is done at all
            pMsgOut->OutEncoder   = u.us[0] ;
            pMsgOut->Speed        = ClaState.Encoder2.MotSpeedHz      ;
            u.ul = (long) ( ClaState.Encoder2.MotorPos * 65536 ) ;
            pMsgOut->encoder      = u.us[0] ;
            SysState.pOutMsgBufTx = & SysState.OutMsgBufSt;
        }
    }
    if ( SysState.pOutMsgBufTx->Msg2SlavePutPtr != SysState.pOutMsgBufTx->Msg2SlaveGetPtr)
    {
        pMsgOut->CobidDataLen = SysState.pOutMsgBufTx->CobIdLength[SysState.pOutMsgBufTx->Msg2SlaveGetPtr] ;
        pData = &SysState.pOutMsgBufTx->Msg2SlaveBuf[8*SysState.pOutMsgBufTx->Msg2SlaveGetPtr] ;
        pMsgOut->data[0] = *pData++ ;
        pMsgOut->data[1] = *pData++ ;
        pMsgOut->data[2] = *pData++ ;
        pMsgOut->data[3] = *pData++ ;
        pMsgOut->data[4] = *pData++ ;
        pMsgOut->data[5] = *pData++ ;
        pMsgOut->data[6] = *pData++ ;
        pMsgOut->data[7] = *pData++ ;
        datacnt = datacnt + 0x100 ;
        next  = ( SysState.pOutMsgBufTx->Msg2SlaveGetPtr + 1 ) & 0xf ;
        SysState.pOutMsgBufTx->Msg2SlaveGetPtr = next ;
    }

    pMsgOut->Bufcounter = ( (bufcnt + 1) & 0xff ) +  datacnt ;
    SysState.pAxisTx->FsiMsgReady = 1 ;


#ifdef TEST_FLTIME
    ull = -HWREG( CPUTIMER2_BASE+CPUTIMER_O_TIM) ;
    jDelta[4] =  ull -  junk;
#endif

    PostFsiIsrAction() ;

    HWREGH( GPIODATA_BASE + GPIO_O_GPBCLEAR) = 0x1 ; // Toggle GPIO

#ifdef TEST_FLTIME
    ull = -HWREG( CPUTIMER2_BASE+CPUTIMER_O_TIM) ;
    jDelta[5] =  ull -  junk;
#endif

}





__interrupt void Timer0Interrupt( void)
{
    short unsigned *pUs ;
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
    HWREGH( CPUTIMER0_BASE+CPUTIMER_O_TCR) |= 0x8000 ; // Clear overflow flag

    EALLOW;
    if ( TimerIntState == 0 )
    {
        HWREG( CPUTIMER0_BASE+CPUTIMER_O_TIM) = FSI_FLUSH_TIME ;
        HWREGH(FSITXA_BASE + FSI_O_TX_MASTER_CTRL) = ( 0xa500 + FSI_TX_MASTER_CTRL_FLUSH ) ;
        TimerIntState = 1 ;
    }
    else
    {
        if ( TimerIntState == 1 )
        {
            HWREG( CPUTIMER0_BASE+CPUTIMER_O_TIM) = FSI_TX_TIME ;
            HWREGH(FSITXA_BASE + FSI_O_TX_MASTER_CTRL) = ( 0xa500  ) ; // Stop the flush
            TimerIntState = 2 ;

        }
        else
        {
            // Actual FSI send
            if ( SysState.pAxisTx->FsiMsgReady == 1  )
            {
                EALLOW ;
                // Set the transmit buffer pointer to zero
                HWREGH(FSITXA_BASE + FSI_O_TX_BUF_PTR_LOAD) = 0 ;
                pUs = SysState.pMsg2Tx->us ;
                HWREGH(FSITXA_BASE + FSI_O_TX_BUF_BASE(0)) = *pUs++ ;
                HWREGH(FSITXA_BASE + FSI_O_TX_BUF_BASE(1)) = *pUs++ ;
                HWREGH(FSITXA_BASE + FSI_O_TX_BUF_BASE(2)) = *pUs++ ;
                HWREGH(FSITXA_BASE + FSI_O_TX_BUF_BASE(3)) = *pUs++ ;
                HWREGH(FSITXA_BASE + FSI_O_TX_BUF_BASE(4)) = *pUs++ ;
                HWREGH(FSITXA_BASE + FSI_O_TX_BUF_BASE(5)) = *pUs++ ;
                HWREGH(FSITXA_BASE + FSI_O_TX_BUF_BASE(6)) = *pUs++ ;
                HWREGH(FSITXA_BASE + FSI_O_TX_BUF_BASE(7)) = *pUs++ ;
                HWREGH(FSITXA_BASE + FSI_O_TX_BUF_BASE(8)) = *pUs++ ;
                HWREGH(FSITXA_BASE + FSI_O_TX_BUF_BASE(9)) = *pUs++ ;
                HWREGH(FSITXA_BASE + FSI_O_TX_BUF_BASE(10)) = *pUs++ ;
                HWREGH(FSITXA_BASE + FSI_O_TX_BUF_BASE(11)) = *pUs++ ;
                HWREGH(FSITXA_BASE + FSI_O_TX_BUF_BASE(12)) = *pUs++ ;
                HWREGH(FSITXA_BASE + FSI_O_TX_BUF_BASE(13)) = *pUs++ ;
                HWREGH(FSITXA_BASE + FSI_O_TX_BUF_BASE(14)) = *pUs++ ;
                HWREGH(FSITXA_BASE + FSI_O_TX_BUF_BASE(15)) = *pUs++ ;

                HWREGH(FSITXA_BASE + FSI_O_TX_FRAME_TAG_UDATA) = SysState.pAxisTx->TagAndUser  ;


                HWREGH(FSITXA_BASE + FSI_O_TX_FRAME_CTRL) |= FSI_TX_FRAME_CTRL_START;

            }

            // Stop timer and no more int please
            HWREGH( CPUTIMER0_BASE+CPUTIMER_O_TCR) = 0x8010;
            SysState.pAxisTx->FsiMsgReady  = 2 ;
        }
    }
    EDIS;
}


short unsigned InformDrivesCutOff()
{
    long lTime , delta ;
    short unsigned mask ;
    SysState.Timing.AxesStopCmdWh = 1 ;
    SysState.Timing.AxesStopCmdSt = 1 ;
    lTime = SysState.Timing.InterruptCtr ;
    do
    {
        delta = SysState.Timing.InterruptCtr - lTime ;
    }while ( delta < 2 ) ;
    mask = BlockInts() ;
    return mask ;
}

void InformDrivesCutOn(short unsigned mask)
{
    SysState.Timing.AxesStopCmdWh = 0 ;
    SysState.Timing.AxesStopCmdSt = 0 ;
    RestoreInts(mask) ;
}


