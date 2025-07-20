/*
 * ManipComRS485.c
 *
 *  Created on: Aug 21, 2021
 *      Author: Yahali
 */

#include "StructDef2.h"

/*
 * Report baud rate 115200 as default
 */



short unsigned IsPlaceInUS1TxBuf(short unsigned length)
{
    //short unsigned place ;
    long unsigned nmiss ;
    short unsigned place ;
    place = (US_TX_MOD+1) - ( (US1TxBufPutPtr - US1TxBufFetchPtr) & US_TX_MOD ) ;
    nmiss = US1MessageStr.PlaceInTxBuf & 0xffff0000  ;
    if ( place >= length + 5  )
    {
        US1MessageStr.PlaceInTxBuf = (long unsigned) place + nmiss ;
        return 1 ;
    }
    nmiss += 0x10000  ;
    US1MessageStr.PlaceInTxBuf = (long unsigned) place + nmiss ;
    return 0 ;
}
short unsigned IsPlaceInUS2TxBuf(short unsigned length)
{
    //short unsigned place ;
    long unsigned nmiss ;
    short unsigned place ;
    place = (US_TX_MOD+1) - ( (US2TxBufPutPtr - US2TxBufFetchPtr) & US_TX_MOD ) ;
    nmiss = US2MessageStr.PlaceInTxBuf & 0xffff0000  ;
    if ( place >= length + 5  )
    {
        US2MessageStr.PlaceInTxBuf = (long unsigned) place + nmiss ;
        return 1 ;
    }
    nmiss += 0x10000  ;
    US2MessageStr.PlaceInTxBuf = (long unsigned) place + nmiss ;
    return 0 ;
}

/*
 * \brief Handler of SCI for the RT.
 * Just extends the SCI activity with SW buffer
 */
void FastRtUS1SciHandler(void)
{
    short unsigned c     ;

    if ( SciDyn12.SCIRXST.bit.RXERROR )
    {
        SciDyn12.SCICTL1.bit.SWRESET = 0 ;
        SciDyn12.SCIFFRX.bit.RXFIFORESET = 0;

        US1MessageStr.ErrorSignal = 1 ;
        SciDyn12.SCIFFRX.bit.RXFIFORESET = 1;
        SciDyn12.SCICTL1.bit.SWRESET = 1 ;
        US1MessageStr.WaitCntr = 0 ;
        return ;
    }

    while ( SciDyn12.SCIFFRX.bit.RXFFST )
    {
        US1MessageStr.RxCharCounter += 1  ;

        c = SciDyn12.SCIRXBUF.bit.SAR ;

        US1RxBuf[0] = c ;
        US1MessageStr.WaitCntr = 0 ;
    }
    switch (US1MessageStr.WaitCntr)
    {
    case 0:
        US1MessageStr.WaitCntr = 1 ;
        break ;
    case 1:
        US1MessageStr.WaitCntr = 2 ;
        break ;
    case 2:
        US1MessageStr.WaitCntr = 3 ;
        EnableRs485Tx_1() ;
        SciDyn12.SCITXBUF.bit.TXDT = US1RxBuf[0] + 1 ;
        break ;
    case 3:
        US1MessageStr.WaitCntr = 4 ;
        break ;
    case 4:
        US1MessageStr.WaitCntr = 5 ;
        break ;
    case 5:
        US1MessageStr.WaitCntr = 6 ;
        DisableRs485Tx_1() ;
    case 6:
        DisableRs485Tx_1() ;
        break ;
    }
}


/*
 * \brief Handler of SCI for the RT.
 * Just extends the SCI activity with SW buffer
 */
void FastRtUS2SciHandler(void)
{
    short unsigned c    ;

    if ( SciDyn24.SCIRXST.bit.RXERROR )
    {
        SciDyn24.SCICTL1.bit.SWRESET = 0 ;
        SciDyn24.SCIFFRX.bit.RXFIFORESET = 0;

        US2MessageStr.ErrorSignal = 1 ;
        SciDyn24.SCIFFRX.bit.RXFIFORESET = 1;
        SciDyn24.SCICTL1.bit.SWRESET = 1 ;
        US2MessageStr.WaitCntr = 0 ;
        return ;
    }

    while ( SciDyn24.SCIFFRX.bit.RXFFST )
    {
        US2MessageStr.RxCharCounter += 1  ;

        c = SciDyn24.SCIRXBUF.bit.SAR ;

        US2RxBuf[0] = c ;
        US2MessageStr.WaitCntr = 0 ;
    }
    switch (US2MessageStr.WaitCntr)
    {
    case 0:
        US2MessageStr.WaitCntr = 1 ;
        break ;
    case 1:
        US2MessageStr.WaitCntr = 2 ;
        break ;
    case 2:
        US2MessageStr.WaitCntr = 3 ;
        EnableRs485Tx_2() ;
        SciDyn24.SCITXBUF.bit.TXDT = US2RxBuf[0] + 2 ;
        break ;
    case 3:
        US2MessageStr.WaitCntr = 4 ;
        DisableRs485Tx_2() ;
        break ;
    }
}




