#include "..\Application\StructDef2.h"


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


#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( FastRtUsSciHandler, "--opt_level=3" );
#endif


/*
 * \brief Handler of SCI for the RT.
 * Just extends the SCI activity with SW buffer
 */
void FastRtUsSciHandler(volatile struct SCI_REGS *pSci, volatile struct CUsMessageStr *pMsg,short unsigned *TxBuf,short unsigned *RxBuf, long unsigned portmask )
{
#ifndef WINSIM
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
#else
    (void)pSci; 
    (void)pMsg; 
    (void)TxBuf;
    (void)RxBuf; 
    (void)portmask;
#endif
}










