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
