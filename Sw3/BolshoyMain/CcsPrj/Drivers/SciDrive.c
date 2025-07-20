#include "..\Application\StructDef.h"

#ifdef _LPSIM 
#define SCI_REGS CSciRegs
#endif 

/**
 * \brief Initialize an SCI
 *
 * This is a very simple initializer for fixed baud rate, 1 stop, no parity
 * No FIFO
 * Just for testing the hardware
 */
void InitSci(short unsigned ind , float f )
{
    volatile struct SCI_REGS * pSci;
    short unsigned basef ;
    float fac ;

    if ( ClkCfgRegs.LOSPCP.bit.LSPCLKDIV == 0 )
    {
        fac = 1 ;
    }
    else
    {
        fac = 1.0f / (ClkCfgRegs.LOSPCP.bit.LSPCLKDIV * 2 );
    }
    basef = (short unsigned)(( CPU_CLK_HZ * fac / 8.0f ) / f + 0.5f ) - 1 ;

    switch (ind)
    {
    case 0:
        pSci = &SciaRegs;
        break;
    case 1:
        pSci = &ScibRegs;
        break;
    case 2:
        pSci = &ScicRegs;
        break;
    case 3:
        pSci = &ScidRegs;
        break;
    default:
        return;
    }
#ifndef _LPSIM
    pSci->SCIFFTX.bit.SCIFFENA = 1; // Use FIFO

    pSci->SCICTL1.all = 3; // Tx enable, Rx enable , reset
    pSci->SCICCR.all = 7; // 8 bits/char, one stop, no parity
    pSci->SCIHBAUD.bit.BAUD = basef >> 8 ;

    pSci->SCILBAUD.bit.BAUD = basef & 255 ;
    pSci->SCICTL2.all = 0; // No interrupts
    pSci->SCICTL1.bit.SWRESET = 1; // clear reset
    pSci->SCIPRI.bit.FREESOFT = 3; // free run
#endif
}


void FastNextHostSciHandlerCollectOdd(short unsigned c_in );
void FastNextHostSciHandlerCollectEven(short unsigned c );
void FastNextHostSciHandlerInit2(short unsigned c );
void FastNextHostSciHandlerInit(short unsigned c );

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( FastRtHostSciHandler, "--opt_level=3" );
#endif

#ifdef SHIT_BUFFER
short shitbuf[256] ;
short shitbufcnt ;
short shitbufstop ;
#endif
/*
 * \brief Handler of SCI for the RT.
 * Just extends the SCI activity with SW buffer
 */
void FastRtHostSciHandler(void)
{
    short unsigned c , ct   ;

    // On error - just kill SCI, signal and quit , rest of error cleaning expected in idle loop


    if ( SciaRegs.SCIRXST.bit.RXERROR )
    {
        SciaRegs.SCIFFRX.bit.RXFIFORESET = 0;

        HostMessageStr.ErrorSignal = 1 ;
        SciaRegs.SCIFFRX.bit.RXFIFORESET = 1;
        c = SciaRegs.SCIRXBUF.bit.SAR ;

        SciaRegs.SCICTL1.bit.SWRESET = 0 ;
        NOP ;
        SciaRegs.SCICTL1.bit.SWRESET = 1 ;
    }


    if ( SysState.Debug.TestHostCom )
    {
        // Just echo
        while ( SciaRegs.SCIFFRX.bit.RXFFST )
        {
            c = SciaRegs.SCIRXBUF.bit.SAR ;
            SciaRegs.SCITXBUF.bit.TXDT = c & 0xff   ;
        }
        return ;
    }

    // Go over all accepted characters
    while ( SciaRegs.SCIFFRX.bit.RXFFST )
    {
        HostMessageStr.RxCharCounter += 1  ;

        c = SciaRegs.SCIRXBUF.bit.SAR ;

        FastSciRxHandlerFunc(c) ;
    }


    // Transmit queued characters
    while  ( SciaRegs.SCIFFTX.bit.TXFFST < 14 && (HostTxBufPutPtr != HostTxBufFetchPtr ) )     // Note that place is taken in words, thus >>1
    {
        HostMessageStr.TxCharCounter += 1  ;
        ct = HostTxBuf[HostTxBufFetchPtr]  ;
        HostTxBufFetchPtr = ( HostTxBufFetchPtr + 1 ) & HOST_TX_MOD ;
        SciaRegs.SCITXBUF.bit.TXDT = ct & 0xff  ;
        SciaRegs.SCITXBUF.bit.TXDT = ( ct >> 8 )  ;
#ifdef SHIT_BUFFER
        if ( shitbufstop == 0 )
        {
            shitbufcnt &= 0xff ;
            shitbuf[shitbufcnt++] = ct ;
        }
#endif
    }
}


#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( FastRtUsSciHandler, "--opt_level=3" );
#endif


/*
 * \brief Handler of SCI for the RT.
 * Just extends the SCI activity with SW buffer

void FastRtUsSciHandler(volatile struct SCI_REGS *pSci, volatile struct CUsMessageStr *pMsg,short unsigned *TxBuf,short unsigned *RxBuf, long unsigned portmask )
{
    short unsigned c , ct   ;

    // On error - just kill SCI, signal and quit , rest of error cleaning expected in idle loop


    if ( pSci->SCIRXST.bit.RXERROR )
    {
        pSci->SCICTL1.bit.SWRESET = 0 ;
        pSci->SCIFFRX.bit.RXFIFORESET = 0;
        pSci->SCIFFRX.bit.RXFIFORESET = 1;
        pSci->SCICTL1.bit.SWRESET = 1 ;
        pMsg->ErrorSignal = 1 ;
        return ;
    }

    if ( pSci->SCIFFRX.bit.RXFFST )
    {
        pMsg->RxCharCounter += 1  ;

        c = pSci->SCIRXBUF.bit.SAR ;

        RxBuf[pMsg->RxBufPutPtr] = c ;
        pMsg->RxBufPutPtr = ( pMsg->RxBufPutPtr + 1 ) & US_RX_MOD ;
    }


    // Transmit queued characters
    if  ( pSci->SCIFFTX.bit.TXFFST < 14 && (pMsg->TxBufPutPtr != pMsg->TxBufFetchPtr ) )     // Note that place is taken in words, thus >>1
    {
        GpioDataRegs.GPESET.all = portmask ;
        pMsg->TxCharCounter += 1  ;
        ct = TxBuf[pMsg->TxBufFetchPtr]  ;
        pMsg->TxBufFetchPtr = ( pMsg->TxBufFetchPtr + 1 ) & HOST_TX_MOD ;
        pSci->SCITXBUF.bit.TXDT = ct & 0xff  ;
        pSci->SCITXBUF.bit.TXDT = ( ct >> 8 )  ;
    }
    else if (pSci->SCIFFTX.bit.TXFFST == 0 && pSci->SCICTL2.bit.TXEMPTY )
    {
        GpioDataRegs.GPECLEAR.all = portmask ;
    }
}
 */

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( FastNextHostSciHandlerCollectOdd, "--opt_level=3" );
#endif

void FastNextHostSciHandlerCollectOdd(short unsigned c_in )
{
    short unsigned length , c , next , nextm  ;

    next = ( StartSciRxValid + 1 ) &  HOST_RX_MOD ;
    if ( HOST_RX_MOD == HostRxBufFetchPtr)
    { // Data to collect will overflow buffer, so kill it
        FastSciRxHandlerFunc = FastNextHostSciHandlerInit ;
        return ;
    }


    c = HostMessageStr.EvenCollect + (c_in << 8) ;
    HostMessageStr.csEven += c_in ;

    if ( FastInbufCnt == 4 )
    {
        length = c>>1 ;
        if ( length > HOST_SINGLE_MESSAGE_MAX_LEN)
        { // Illegal length
            FastSciRxHandlerFunc = FastNextHostSciHandlerInit ;
            return ;
        }
        FastMessageLength = length + 5   ;
    }

    if ( FastInbufCnt > 4 )
    {
        if (FastInbufCnt == FastMessageLength )
        {
            nextm = ( HostMessageStr.HostMessageListPutPtr + 1 ) & 31 ;
            if (nextm == HostMessageStr.HostMessageListFetchPtr  )
            {
                FastSciRxHandlerFunc = FastNextHostSciHandlerInit ;
                StartSciRxValid = HostRxBufPutPtr  ;
                return ;
            }

            HostMessageStr.Checksum = HostMessageStr.csOdd + (HostMessageStr.csEven << 8) ;
            if ( HostMessageStr.Checksum  == 0 )
            { // Legal checksum
                HostMessageStr.HostMessageList[HostMessageStr.HostMessageListPutPtr]  =  HostRxBufPutPtr ;
                HostRxBufPutPtr = StartSciRxValid ;
                HostMessageStr.HostMessageListPutPtr = nextm ;
            }
            FastSciRxHandlerFunc = FastNextHostSciHandlerInit ;
            return ;
        }
    }
    HostRxBuf[StartSciRxValid] = c ;
    StartSciRxValid = next ;
    FastInbufCnt += 1 ;
    FastSciRxHandlerFunc = FastNextHostSciHandlerCollectEven ;
}

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( FastNextHostSciHandlerCollectEven, "--opt_level=3" );
#endif

void FastNextHostSciHandlerCollectEven(short unsigned c )
{
    HostMessageStr.EvenCollect = c & 0xff ;
    HostMessageStr.csOdd += c ;
    FastSciRxHandlerFunc = FastNextHostSciHandlerCollectOdd ;
}

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( FastNextHostSciHandlerInit2, "--opt_level=3" );
#endif

void FastNextHostSciHandlerInit2(short unsigned c )
{
    if ( c == 0xac )
    {
        FastSciRxHandlerFunc = FastNextHostSciHandlerCollectEven ;
        HostMessageStr.csOdd = 0x13 ; // -0xac13
        HostMessageStr.csEven = 0xac ; // -0xac13
        StartSciRxValid = HostRxBufPutPtr ;
        FastInbufCnt = 0 ;
        FastMessageLength = 32767 ;
    }
    else
    {
        if ( c != 0x13 )
        {
            FastSciRxHandlerFunc = FastNextHostSciHandlerInit ;
        }
    }
}

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( FastNextHostSciHandlerInit, "--opt_level=3" );
#endif

void FastNextHostSciHandlerInit(short unsigned c )
{
    if ( c == 0x13 )
    {
        FastSciRxHandlerFunc = FastNextHostSciHandlerInit2 ;
    }
}

/**
 * SPI protocol error handler
 *
 */
void SetSpiInterpretError(short ErrCode , short unsigned txcntr )
{
    volatile struct CSpiErrRecord *pLog ;
    SpiErrorLog.LastErr.us[0] = ErrCode ;
    pLog = & SpiErrorLog.Logs[SpiErrorLog.nPut].f ;
    SpiErrorLog.nPut = ( SpiErrorLog.nPut + 1 ) & 0xf ;
    if ( SpiErrorLog.nPut == SpiErrorLog.nGet)
    {
        SpiErrorLog.nGet = ( SpiErrorLog.nGet + 1 ) & 0xf ;
    }
    pLog->txcntr = txcntr ;
    pLog->ErrCode = ErrCode ;
    pLog->SysTime = GetShortTimer( &SysTimerStr) ;
    WasSpiError = 1 ;
}










