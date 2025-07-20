/*
 * FsiDrv.c
 *
 *  Created on: Jun 18, 2023
 *      Author: yahal
 */

#include "..\Application\StructDef.h"

void SetupFSI(void)
{


        //myFSIRX0 initialization
        //
        // Setting for requested nWords and nLanes with transfers
        //
        FSI_setRxSoftwareFrameSize(FSIRXA_BASE, 16);
        FSI_setRxDataWidth(FSIRXA_BASE, FSI_DATA_WIDTH_1_LANE);

        //
        // Configure for External Loopback
        //
        FSI_disableRxInternalLoopback(FSIRXA_BASE);

        //
        // Initialize Rx, reset sequence, clear events
        //
        FSI_performRxInitialization(FSIRXA_BASE);

        //myFSITX0 initialization
        //
        // Setting for requested nWords and nLanes with transfers
        // and desired frame configurations
        //
        FSI_setTxSoftwareFrameSize(FSITXA_BASE, 16);
        FSI_setTxDataWidth(FSITXA_BASE, FSI_DATA_WIDTH_1_LANE);
        FSI_setTxFrameTag(FSITXA_BASE, FSI_FRAME_TAG0);
        FSI_setTxFrameType(FSITXA_BASE, FSI_FRAME_TYPE_NWORD_DATA);

        //
        // Configure start of transmission mode
        //
        FSI_setTxStartMode(FSITXA_BASE, FSI_TX_START_FRAME_CTRL);

        //
        // Configure compute width for ECC
        //
        FSI_setTxECCComputeWidth(FSITXA_BASE, FSI_32BIT_ECC_COMPUTE);

        //
        // Initialize Tx, reset sequence, clear events
        //
        FSI_performTxInitialization(FSITXA_BASE, FSI_BAUD_DIVIDER );
}

void InitFsiService(void)
{
    ClearMemRpt((short unsigned *) &FsiRxState,sizeof( FsiRxState) );
}

short unsigned StamBuf[18] ;
static short unsigned TimerIntState ;

/*
 * FSI action is by two cycles of interrupts (interrupts are by 50usec, FSI cycle is 100)
 *
 */
#pragma FUNCTION_OPTIONS ( FsiRtService, "--opt_level=3" );
void FsiRtService(void)
{
    short unsigned  pos , hs , datacnt , next , pcnt  ;
    short unsigned *pUsIn , *pData  , bufcnt , userdata , tag , expectedtag ;
    short delta ;
    float p1 , p2 , p3  ;
    union
    {
        short s;
        unsigned us ;
    }oute;
    struct CFsiMsgFromSlave *pMsgOut ;

    union
    {
        long unsigned ul ;
        long l ;
        short unsigned us[2] ;
        short unsigned s[2] ;
        float f;
    } u , u1;

    pcnt = HWREGH(PWM_PACER_BASE + EPWM_O_TBCTR) ;
    if ( SysState.AxisSelector == FSI_TAG_FOR_WHEEL)
    { // Wheel
        if (pcnt < SysState.Timing.PwmFrame || pcnt > 3 * SysState.Timing.PwmFrame)
        {
            SysState.ActiveCommunicationAxis = 1 ;
        }
        else
        {
            SysState.ActiveCommunicationAxis = 0 ;
            SysState.Timing.IntCntr &= 0xfffe    ;
        }
        expectedtag = 1  ;
    }
    else
    { // Steering.
        // Test that a harsh synchronization never occurred. If so this is fatal
        u.ul = HWREG(ECAP1_BASE + ECAP_O_TSCTR)  ;
        delta = ( u.s[0] - (short) pcnt ) ;
        if ( ((delta > CPU_CLK_MHZ) || (-delta > CPU_CLK_MHZ)) && ( ClaState.MotorOnRequest  ))
        {
            LogException(EXP_FATAL, exp_rough_synchronization ) ;
        }


        //rport  = (*(short unsigned *)(GPIODATA_BASE+1) >> 2) & 1  ;
        if ( (u.us[0] < SysState.Timing.PwmFrame  ) || (u.us[0] > 3 * SysState.Timing.PwmFrame  ) )
        {
            SysState.ActiveCommunicationAxis = 0 ;
            SysState.Timing.IntCntr &= 0xfffe    ;
        }
        else
        {
            SysState.ActiveCommunicationAxis = 1 ;
        }
        expectedtag = 2 ;
    }

    // Take time
    SysState.Timing.IntCntr = ( SysState.Timing.IntCntr + 1 )    ;


    // Correct usec timer by actual time
    u.ul = HWREGH(PWM_A_BASE+EPWM_O_TBCTR) ;
    // Tune USEC counter to the start of interrupt
    SysState.Timing.UsecTimer = ~HWREG( CPUTIMER1_BASE+CPUTIMER_O_TIM) - ( long) ( u.ul * INV_CPU_CLK_MHZ) ;


    // Set interrupt for automatic flush action
    if ( SysState.ActiveCommunicationAxis == 0 )
    {
        TimerIntState = 0 ;
        HWREG( CPUTIMER0_BASE+CPUTIMER_O_TIM) = FSI_FLUSH_START_TIME - u.ul ;
        HWREGH( CPUTIMER0_BASE+CPUTIMER_O_TCR) = 0xc000; // Start timer and enable interrupt
        SysState.FsiMsgReady  = 0 ;
        IER = 1;
        EINT   ;
    }

    EALLOW ;

    // Read the FSI status to verify correct frame
    FsiRxState.FsiRxStat       = HWREGH(FSIRXA_BASE + FSI_O_RX_EVT_STS);
    FsiRxState.FsiRxUserAndTag = HWREGH(FSIRXA_BASE + FSI_O_RX_FRAME_TAG_UDATA) ;
    FsiRxState.FsiRxFrameInfo  = HWREGH(FSIRXA_BASE + FSI_O_RX_FRAME_INFO ) ;

    //HWREGH( GPIODATA_BASE + GPIO_O_GPACLEAR+1) = (1<<8) ; // Toggle GPIO

    // Reset receive buffer to zero and clear events
    HWREGH(FSITXA_BASE + FSI_O_RX_EVT_CLR) = FSI_RX_EVTMASK;
    HWREGH(FSIRXA_BASE + FSI_O_RX_BUF_PTR_LOAD ) = 0 ;

    tag =  ( FsiRxState.FsiRxUserAndTag >> 1 ) & 0xf  ;


    // if or turn to read , Must verify correct frame received with correct length
    if  ( SysState.ActiveCommunicationAxis  && ( (FsiRxState.FsiRxStat & 0x840) == 0x840 ) && ( (FsiRxState.FsiRxStat & 0x4 ) == 0 )
            && (tag == expectedtag ) )
    { // Thats a success
        SysState.NoFsiMsgCnt.us[0] = 0  ;
        // Get data from the FSI
        pUsIn    = (short unsigned *)(FSIRXA_BASE + FSI_O_RX_BUF_BASE(0)) ;
        userdata = HWREGH(FSIRXA_BASE + FSI_O_RX_FRAME_TAG_UDATA) ;

        // First read FSI RX into temporary buffer
        StamBuf[0] = pUsIn[0] ;
        StamBuf[1] = pUsIn[1] ;
        StamBuf[2] = pUsIn[2] ;
        StamBuf[3] = pUsIn[3] ;
        StamBuf[4] = pUsIn[4] ;
        StamBuf[5] = pUsIn[5] ;
        StamBuf[6] = pUsIn[6] ;
        StamBuf[7] = pUsIn[7] ;
        StamBuf[8] = pUsIn[8] ;
        StamBuf[9] = pUsIn[9] ;
        StamBuf[10] = pUsIn[10] ;
        StamBuf[11] = pUsIn[11] ;
        StamBuf[12] = pUsIn[12] ;
        StamBuf[13] = pUsIn[13] ;
        StamBuf[14] = pUsIn[14] ;
        StamBuf[15] = pUsIn[15] ;
        StamBuf[16] = userdata ;

        pUsIn = &StamBuf[0] ; // Here we decode buffer contents
        {


            u.us[0] = *pUsIn++ ;
            u.us[1] = *pUsIn++ ;
            ClaState.Encoder1.MotSpeedHz = u.f ;
            pos = *pUsIn++ ;
            if ( ClaState.Encoder1.InvertEncoder )
            {
                ClaState.Encoder1.MotSpeedHz = -ClaState.Encoder1.MotSpeedHz ;
                pos = -pos ;
            }

            ProcessEncoderData(& ClaState.Encoder1, ExtendCnt ( ClaState.Encoder1.Pos , pos )  ) ;

            // The delta serves for speed control integration and must be in controller sampling time
            // It must be compensated for the FSI reports being accepted only once in two TS
            ClaState.Encoder1.UserPosDelta = ClaState.Encoder1.UserPosDelta * FSI_OVER_CONTROL   ;


            oute.s = *pUsIn++ ;
            if ( SysState.AxisSelector == FSI_TAG_FOR_STEER )
            {
                SysState.OuterSensor.PotValue  = (float) oute.us * 1.525878906250000e-05f ;
                ClaState.Pot.PotFilt[0] = SysState.OuterSensor.PotValue ;
                ClaState.Pot.PotRat[0]  = SysState.OuterSensor.PotValue ;

                p1 = SysState.OuterSensor.PotValue ;
                p2 = p1 * p1 ;
                p3 = p1 * p2  ;
                SysState.OuterSensor.OuterPos = ClaMailIn.Pot1CalibP3 * p3 + ClaMailIn.Pot1CalibP2 * p2 + ClaMailIn.Pot1CalibP1 * p1 + ClaMailIn.Pot1CalibP0 ;

                //SysState.OuterSensor.OuterPos  = ( SysState.OuterSensor.PotValue - 0.5f - Calib.PotCenter1 ) * 7.14f * ( 1 + Calib.PotGainFac1 )   ;
                SysState.OuterSensor.OuterPosInt.l = (long) ( SysState.OuterSensor.OuterPos * 1.043037835047045e+04f ) ;
            }
            else // Specific for wheels
            {// Encoder always comes in 65536 counts / revolution
                SysState.OuterSensor.OuterPos  =  (float) oute.s * ControlPars.OuterSensorBit2User   ;
                SysState.OuterSensor.OuterPosInt.l += (long)(oute.s - SysState.OuterSensor.OuterPosInt.s[0]) ;
            }

            SysState.FeedForward = (short) (*pUsIn++) ;

            hs = *pUsIn++ ;
            if ( hs & 8 )
            {
                SetReferenceMode(E_PosModeStayInPlace) ;
            }
            if ( hs & 0x10 )
            {
                SysState.WasSync = 1 ;
            }

            if ( SysState.AxisSelector == FSI_TAG_FOR_WHEEL)
            {
                SysState.SwState = ( hs >> 5 ) & 7 ;
                ClaState.PotRefFail = 0 ;
            }
            else
            {
                SysState.SwState = 0 ;
                ClaState.PotRefFail = ( hs >> 5 ) & 1 ;
            }

            //hs ... Get place in tx buf
            SysState.PlaceInIntfcTxBuf = ( ( hs >> 10 ) & 0xf ) ;
            SysState.IntfcDisableWheelAutoStop = ( hs >> 14 ) & 1 ;

            HallDecode.HallKey = hs & 7 ;


            // Accept new pseudo CAN messages from FSI host
            // Data counter changes if this is a new message
            datacnt  = *pUsIn++ ;
            if ( SysState.FirstMessageJunkGot == 0)
            {
                SysState.FirstMessageJunkGot = 1 ; // Prevent a forst-run false message acceptance by accidental counter mismatch
            }
            else
            {
                if ( (SysState.InDataCnt ^ datacnt) & 0xff00 )
                { // Test anything changed
                    next = ( SysState.InMsgBuf.MsgPutPtr + 1) & 0xf ;
                    if ( SysState.InMsgBuf.MsgGetPtr != next )
                    {
                        // If so store the new contents for further processing
                        SysState.InMsgBuf.CobIdLength[SysState.InMsgBuf.MsgPutPtr] =  *pUsIn++ ;
                        pData =  &SysState.InMsgBuf.MsgBuf[8*SysState.InMsgBuf.MsgPutPtr];

                        *pData++ = *pUsIn++ ;
                        *pData++ = *pUsIn++ ;
                        *pData++ = *pUsIn++ ;
                        *pData++ = *pUsIn++ ;
                        *pData++ = *pUsIn++ ;
                        *pData++ = *pUsIn++ ;
                        *pData++ = *pUsIn++ ;
                        *pData++ = *pUsIn++ ;
                        SysState.InMsgBuf.MsgPutPtr = next ;
                    }
                }
            }

            SysState.InDataCnt = datacnt ;
        }

    }
    else
    {
        // Reset own receiver
        HWREGH(FSIRXA_BASE + FSI_O_RX_MASTER_CTRL) = 0xa509 ; // Reset core, isolate pins

        HWREGH(FSIRXA_BASE + FSI_O_RX_EVT_CLR) = FSI_RX_EVTMASK;

        asm(" RPT #120 || NOP");

        HWREGH(FSIRXA_BASE + FSI_O_RX_MASTER_CTRL) = 0xa500 ; // Clear core reset, release isolation

        SysState.NoFsiMsgCnt.us[0] = __min(SysState.NoFsiMsgCnt.us[0]+1,10000);
        if ( SysState.NoFsiMsgCnt.us[0] >= 5 )
        { //  Vandal: Must be exception
            LogException(EXP_FATAL, exp_fsi_message_failure ) ;
        }
    }

    //HWREGH( GPIODATA_BASE + GPIO_O_GPASET+1) = (1<<8) ; // Toggle GPIO

    if (SysState.ActiveCommunicationAxis ==0)
    {
        // Prepare exiting message
        pMsgOut = &SysState.OutFsiMsg.fields ;
        //pUs     = &SysState.OutFsiMsg.us[0]     ;
        SysState.pMsg2Tx = &SysState.OutFsiMsg ;

        datacnt = pMsgOut->Bufcounter & 0xff00 ;
        bufcnt  = pMsgOut->Bufcounter & 0xff ;

        pMsgOut->Cmd2Intfc.us = SysState.Cmd2Intfc.us  ;
        u1.l = (long)( SysState.PosControl.PosFeedBack * 1.043037835047045e+04f) ;
        pMsgOut->PosReport  = u1.us[0] ;
        pMsgOut->iq    = (short)( ClaState.CurrentControl.Iq *  128.0f ) ;
        pMsgOut->ExtStatusWord = SysState.CBit.all ;
        pMsgOut->ErrorCode = SysState.Mot.KillingException ;

        // Prepare exiting message. There is no point in every-interrupt transmission as the CAN treatment of the interface card will
        // not be that fast anyway
        if ( SysState.bCanTxCounter )
        {
            SysState.bCanTxCounter -= 1 ;
        }
        else
        {
            if ( SysState.pOutMsgBufTx->MsgPutPtr != SysState.pOutMsgBufTx->MsgGetPtr)
            {
                 pMsgOut->CobidDataLen = SysState.pOutMsgBufTx->CobIdLength[SysState.pOutMsgBufTx->MsgGetPtr] ;
                 pData = &SysState.pOutMsgBufTx->MsgBuf[8*SysState.pOutMsgBufTx->MsgGetPtr] ;
                 pMsgOut->data[0] = *pData++ ;
                 pMsgOut->data[1] = *pData++ ;
                 pMsgOut->data[2] = *pData++ ;
                 pMsgOut->data[3] = *pData++ ;
                 pMsgOut->data[4] = *pData++ ;
                 pMsgOut->data[5] = *pData++ ;
                 pMsgOut->data[6] = *pData++ ;
                 pMsgOut->data[7] = *pData++ ;
                 SysState.pOutMsgBufTx->MsgGetPtr = (SysState.pOutMsgBufTx->MsgGetPtr+1) & 0xf ;
                 datacnt = datacnt + 0x100 ;
                 SysState.bCanTxCounter = 2 ;
            }
        }
        pMsgOut->Bufcounter = ((bufcnt + 1) & 0xff) +  datacnt ;


         SysState.FsiMsgReady = 1 ;
    }

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
            if ( SysState.FsiMsgReady == 1  )
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

                HWREGH(FSITXA_BASE + FSI_O_TX_FRAME_TAG_UDATA) = SysState.TagAndUser  ;


                HWREGH(FSITXA_BASE + FSI_O_TX_FRAME_CTRL) |= FSI_TX_FRAME_CTRL_START;

            }

            // Stop timer and no more int please
            HWREGH( CPUTIMER0_BASE+CPUTIMER_O_TCR) = 0x8010;
            SysState.FsiMsgReady  = 2 ;
        }
    }
    EDIS;
}




