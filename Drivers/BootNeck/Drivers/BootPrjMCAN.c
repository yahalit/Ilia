/*
 * PrjMCAN.c
 *
 *  Created on: May 19, 2023
 *      Author: yahal
 */


#include "..\Application\BootStructDef.h"

#ifdef ON_BOARD_CAN
#define NUM_OF_MSG                    (7U)  // Must be 2^N-1
#define MCAN_STD_ID_FILT_START_ADDR   (0U)
#define MCAN_STD_ID_FILTER_NUM        (4U)

#define MCAN_FIFO_1_START_ADDR        (2560U)  // (64 + 18 * 16 + 18 * 16 ) * 4
#define MCAN_FIFO_1_NUM               (NUM_OF_MSG)
#define MCAN_FIFO_1_WATERMARK         (NUM_OF_MSG)

#define MCAN_FIFO_0_START_ADDR        (1408U) // (64 + 18 * 16  ) * 4
#define MCAN_FIFO_0_NUM               (NUM_OF_MSG)  // Must be 2^N-1
#define MCAN_FIFO_0_WATERMARK         (NUM_OF_MSG)

#define MCAN_TX_BUFF_START_ADDR       (256U) // 64 * 4
#define MCAN_TX_BUFF_SIZE             (NUM_OF_MSG)  // Must be 2^N-1

/*
#define MCAN_EXT_ID_FILT_START_ADDR   (48U)
#define MCAN_EXT_ID_FILTER_NUM        (1U)
#define MCAN_TX_EVENT_START_ADDR      (100U)
#define MCAN_TX_EVENT_SIZE            (NUM_OF_MSG)
#define MCAN_TX_EVENT_WATERMARK       (NUM_OF_MSG/2)
#define MCAN_TX_FIFO_SIZE             (NUM_OF_MSG)
#define MCAN_FIFO_0_START_ADDR        (548U)
#define MCAN_FIFO_0_NUM               (NUM_OF_MSG)
#define MCAN_FIFO_0_WATERMARK         (NUM_OF_MSG)
#define MCAN_FIFO_1_WATERMARK         (NUM_OF_MSG)
#define MCAN_RX_BUFF_START_ADDR       (948U)
#define MCAN_EXT_ID_AND_MASK          (0x1FFFFFFFU)
#define MCAN_TS_PRESCALAR             (0xB0)

#define MCAN_TX_BUFF_ELEM_SIZE       (MCAN_ELEM_SIZE_64Bytes)
#define MCAN_RX_BUFF_ELEM_SIZE       (MCAN_ELEM_SIZE_64Bytes)
#define MCAN_RX_FIFO0_ELEM_SIZE      (MCAN_ELEM_SIZE_64Bytes)
#define MCAN_RX_FIFO1_ELEM_SIZE      (MCAN_ELEM_SIZE_64Bytes)
*/




const short SpaceForElementSizeInLongs[8] = {4 , 5 , 6 , 7 , 8 , 10 , 14 , 18 } ;
const short Dlc2Len[16] = {0,1,2,3,4,5,6,7,8,12,16,20,32,18,48,64} ;

short unsigned dLen2Dlc(short unsigned l )
{
    if ( l <= 8 )
    {
        return l ;
    }
    if ( l <= 24 )
    {
        return ((l >> 2) + 6 ) ;
    }
    return (((l>>4)+11) & 0xf )  ;
}

//long cccr ;



volatile long unsigned rmw ;

void setupMCAN(void)
{
    MCAN_InitParams            initParams;
    MCAN_MsgRAMConfigParams    msgRAMConfigParams;
    MCAN_BitTimingParams       bitTimes;
    MCAN_StdMsgIDFilterElement stdFiltelem;
    MCAN_GlobalFiltConfig      filter_config_obj;

    MemClr((short unsigned *)&initParams , sizeof(initParams));
    MemClr((short unsigned *)&msgRAMConfigParams , sizeof(msgRAMConfigParams));
    MemClr((short unsigned *)&bitTimes , sizeof(bitTimes));
    MemClr((short unsigned *)&stdFiltelem , sizeof(stdFiltelem));
    MemClr((short unsigned *)&filter_config_obj , sizeof(filter_config_obj));


//    MCAN_ConfigParams          config_params;     // Reserve
//    MCAN_RxBufElement          rxMsg1;            // Reserve

    filter_config_obj.anfs = 1;

//    config_params.filterConfig = filter_config_obj;   // Reserve

    //
    // Configure the divisor for the MCAN bit-clock
    //
    SysCtl_setMCANClk(SYSCTL_MCANCLK_DIV_3);

    // Initialize MCAN Init parameters.
    //
    //
    initParams.fdMode            = 0 ; // 0x1U; // FD operation enabled.
    initParams.brsEnable         = 0 ; // x1U; // Bit rate switching for
                                         // transmissions enabled.

    initParams.wkupReqEnable  = 1 ;
    initParams.autoWkupEnable = 1 ;
    initParams.emulationEnable = 1 ;


    // Transmitter Delay Compensation parameters.
    //
    initParams.tdcConfig.tdcf    = 0xAU;
    initParams.tdcConfig.tdco    = 0x6U;

    //
    // Initialize Message RAM Sections Configuration Parameters for Rx
    //
    msgRAMConfigParams.flssa                = MCAN_STD_ID_FILT_START_ADDR;

    // Standard ID Filter List Start Address (0).
    msgRAMConfigParams.lss                  = MCAN_STD_ID_FILTER_NUM;
    // Standard ID Filter List Size (1).

    msgRAMConfigParams.rxFIFO0startAddr     = MCAN_FIFO_0_START_ADDR;
    // Rx FIFO1 Start Address (748U).
    msgRAMConfigParams.rxFIFO0size          = MCAN_FIFO_0_NUM;
    // Number of Rx FIFO elements (1).
    msgRAMConfigParams.rxFIFO0waterMark     = MCAN_FIFO_0_WATERMARK;
    // Level for Rx FIFO 1 watermark interrupt (1).
    msgRAMConfigParams.rxFIFO0OpMode        = 0U;
    // FIFO overwriting mode.
    msgRAMConfigParams.rxFIFO0ElemSize      = MCAN_ELEM_SIZE_64BYTES;
    // Rx FIFO1 Element Size. RBDS field of MCAN_RXESC Register

    /*
    msgRAMConfigParams.rxFIFO1startAddr     = MCAN_FIFO_1_START_ADDR;
    // Rx FIFO1 Start Address (748U).
    msgRAMConfigParams.rxFIFO1size          = MCAN_FIFO_1_NUM;
    // Number of Rx FIFO elements (1).
    msgRAMConfigParams.rxFIFO1waterMark     = MCAN_FIFO_1_WATERMARK;
    // Level for Rx FIFO 1 watermark interrupt (1).
    msgRAMConfigParams.rxFIFO1OpMode        = 0U;
    // FIFO overwriting mode.
    msgRAMConfigParams.rxFIFO1ElemSize      = MCAN_ELEM_SIZE_64BYTES;
    // Rx FIFO1 Element Size. RBDS field of MCAN_RXESC Register
    */

    //
    // Initialize Message RAM Sections Configuration Parameters
    //
    msgRAMConfigParams.txStartAddr          = MCAN_TX_BUFF_START_ADDR ;
    // Tx Buffers Start Address.
    msgRAMConfigParams.txBufNum             = MCAN_TX_BUFF_SIZE;
    // Number of Dedicated Transmit Buffers.
    msgRAMConfigParams.txBufMode            = 1U; // Queue , not FIFO
    msgRAMConfigParams.txBufElemSize        = MCAN_ELEM_SIZE_64BYTES;
    // Tx Buffer Element Size.


    //
    // Initialize bit timings.
    // These values are for 0.5M
    // 40MH / (3+1) = 10MHz after prescale
    // Bit time = 8 + 9 + 3 = 20  so 10/20 = 0.5
    bitTimes.nomRatePrescalar   = 0x3U; // Nominal Baud Rate Pre-scaler.
    bitTimes.nomTimeSeg1        = 0x9U; // Nominal Time segment before SP
    bitTimes.nomTimeSeg2        = 0x8U; // Nominal Time segment after SP
    bitTimes.nomSynchJumpWidth  = 0x8U; // Nominal SJW

    // Bit time = 20M / 20 = 1M NBD
    bitTimes.dataRatePrescalar  = 0x1U; // Data Baud Rate Pre-scaler.
    bitTimes.dataTimeSeg1       = 0x9U; // Data Time segment before SP
    bitTimes.dataTimeSeg2       = 0x8U; // Data Time segment after SP
    bitTimes.dataSynchJumpWidth = 0x8U; // Data SJW

    setupGpioCAN() ;

    //
    // Wait for memory initialization to happen.
    //
    while(false == MCAN_isMemInitDone(MCAN0_BASE))
    {
    }

    //
    // Put MCAN in SW initialization mode.
    //
    MCAN_setOpMode(MCAN0_BASE, MCAN_OPERATION_MODE_SW_INIT);

    //
    // Wait till MCAN is not initialized.
    //
    while (MCAN_OPERATION_MODE_SW_INIT != MCAN_getOpMode(MCAN0_BASE))
    {}

    //
    // Initialize MCAN module.
    //
    MCAN_init(MCAN0_BASE, &initParams);

    //
    // Configure Bit timings.
    //
    MCAN_setBitTime(MCAN0_BASE, &bitTimes);

    //
    // Configure Message RAM Sections
    //
    MCAN_msgRAMConfig(MCAN0_BASE, &msgRAMConfigParams);

    SysState.MCanSupport.Fifo0ElementWidth = SpaceForElementSizeInLongs[msgRAMConfigParams.rxFIFO0ElemSize] ;
    SysState.MCanSupport.pFifo0Start       = (unsigned long *)(MCANA_MSG_RAM_BASE+msgRAMConfigParams.rxFIFO0startAddr);
    SysState.MCanSupport.TxBufElementWidth = SpaceForElementSizeInLongs[msgRAMConfigParams.txBufElemSize]  ;
    SysState.MCanSupport.pTxBufStart       = (unsigned long *)(MCANA_MSG_RAM_BASE+msgRAMConfigParams.txStartAddr);

    SysState.MCanSupport.Fifo0NumElements = msgRAMConfigParams.rxFIFO0size+1  ;  // Must be 2^N
    SysState.MCanSupport.TxNumElements = msgRAMConfigParams.txBufNum+1  ;  // Must be 2^N


    //
    // Initialize Rx Buffer Filter element Configuration parameters.
    //
    //CanId

    stdFiltelem.sfid2              = 0x7ffU; // Standard ID Filter Mask. 0 bit is "don't care"
    stdFiltelem.sfid1              = CanId + PDO1_RX ; // Standard ID Filter
    stdFiltelem.sfec               = 0x5U; // Store into FIFO 0.
    stdFiltelem.sft                = 0x02U; // SFID1 = filter; SFID2 = mask

    //
    // Configure Standard ID filter element
    //
    MCAN_addStdMsgIDFilter(MCAN0_BASE, 0U, &stdFiltelem);

    stdFiltelem.sfid2              = 0x7ffU; // Standard ID Filter Mask. 0 bit is "dont care"
    stdFiltelem.sfid1              = CanId + PDO2_RX ; // Standard ID Filter
    stdFiltelem.sfec               = 0x5U; // Store into FIFO 0.
    stdFiltelem.sft                = 0x02U; // SFID1 = filter; SFID2 = mask

    //
    // Configure Standard ID filter element
    //
    MCAN_addStdMsgIDFilter(MCAN0_BASE, 1U, &stdFiltelem);

    stdFiltelem.sfid2              = 0x700U; // Standard ID Filter Mask. 0 bit is "dont care"
    stdFiltelem.sfid1              = CAN_SYNC ; // Standard ID Filter
    stdFiltelem.sfec               = 0x5U; // Store into FIFO 0.
    stdFiltelem.sft                = 0x02U; // SFID1 = filter; SFID2 = mask

    //
    // Configure Standard ID filter element
    //
    MCAN_addStdMsgIDFilter(MCAN0_BASE, 2U, &stdFiltelem);

    stdFiltelem.sfid2              = 0x7ffU; // Standard ID Filter Mask. 0 bit is "dont care"
    stdFiltelem.sfid1              = CanId + SDO_RX ; // Standard ID Filter
    stdFiltelem.sfec               = 0x5U; // Store into FIFO 0.
    stdFiltelem.sft                = 0x02U; // SFID1 = filter; SFID2 = mask

    //
    // Configure Standard ID filter element
    //
    MCAN_addStdMsgIDFilter(MCAN0_BASE, 3U, &stdFiltelem);


    /*
     * Uncommend the following line in order to bypass any type of Message Filter
     */
   // MCAN_config(MCANA_BASE, &config_params);         // Reserve


    //
    // Take MCAN out of the SW initialization mode
    //
    //MCAN_writeProtectedRegAccessUnlock(MCAN0_BASE);
    rmw = * (unsigned long *) (MCAN0_BASE + MCAN_CCCR) ;
    rmw |= 2 ;
    * (unsigned long *) (MCAN0_BASE + MCAN_CCCR) = rmw ;

    // Reject all non-matching messages
    * (unsigned long *) (MCAN0_BASE + MCAN_GFC) = 0x3ff ;

    MCAN_setOpMode(MCAN0_BASE, MCAN_OPERATION_MODE_NORMAL);

    //cccr = * (unsigned long *) (MCAN0_BASE + MCAN_CCCR) ;
    while (MCAN_OPERATION_MODE_NORMAL != MCAN_getOpMode(MCAN0_BASE))
    {
        MCAN_setOpMode(MCAN0_BASE, MCAN_OPERATION_MODE_NORMAL);
        //cccr = * (unsigned long *) (MCAN0_BASE + MCAN_CCCR) ;
    }

    //
    // Enable Interrupts.
    //
    //MCAN_enableIntr(MCAN0_BASE, MCAN_INTR_MASK_ALL, 1U);

    //
    // Select Interrupt Line.
    //
    //MCAN_selectIntrLine(MCAN0_BASE, MCAN_INTR_MASK_ALL, MCAN_INTR_LINE_NUM_1);

    //
    // Enable Interrupt Line.
    //
    //MCAN_enableIntrLine(MCAN0_BASE, MCAN_INTR_LINE_NUM_1, 1U);

    return;
}


//MCAN_RxBufElement rxMsg[4] ;
//MCAN_TxBufElement txMsg[4] ;
//struct CCanMsg TempMsgRT ;
#endif

#ifdef ON_BOARD_CAN
#define MCAN_RAM_LONG_PTR_INC 2

struct CCanMsg TxMsg ;
#define HW_RD_REG32(addr) (uint32_t)(HW_RD_REG32_RAW((uint32_t) (addr)))
void RtCanService(void)
{
    struct CCanMsg  *pQMsg ;
    short unsigned next , dlc   ;
    union
    {
        long unsigned ul ;
        long l ;
        float f ;
        short unsigned us[2];
        short s[2] ;
    } u , u2 , u3 ;
    unsigned long cobId  ;
    unsigned long * pmsg ;
    short unsigned nf , nread , cnt  , nget , filtIndex , target ;

    // Track sync time validity
    u.ul = SysState.Timing.UsecTimer - SysState.MCanSupport.SyncTrackTime ;
    if ( u.us[1] & 0x8000)
    {
        SysState.MCanSupport.SyncValid = 0 ;
    }

    //Test which receivers are free to use;
    u.ul = HWREG(MCAN0_BASE + MCAN_RXF0S) ;
    nf     = (short unsigned) (u.us[0] & 0x7f) ;
    //TxPend = HWREG(MCAN0_BASE + MCAN_TXBRP) ;
    if ( nf )
    {
        nread  = __min( nf , 3 ) ;
        for ( cnt = 0 ; cnt < nread ; cnt++ )
        {
            nget  =  ( u.us[0] >> 8 ) & 0x3f ;
            pmsg = SysState.MCanSupport.pFifo0Start + nget * SysState.MCanSupport.Fifo0ElementWidth * MCAN_RAM_LONG_PTR_INC ;
            u3.ul = pmsg[0] ;
            if ( u3.us[1] & 0x6000 )
            {
                HWREG(MCAN0_BASE + MCAN_RXF0A) = nget ;
                continue ; // Either RTR or extended frame
            }
            cobId =  ( u3.ul >> 18 ) & 0x7ff ;

            u2.ul = pmsg[MCAN_RAM_LONG_PTR_INC] ;
            if ( u2.us[1] & 0x30  )
            { // Either baud rate change or FD
                HWREG(MCAN0_BASE + MCAN_RXF0A) = nget ;
                continue ;
            }


            dlc   = Dlc2Len[u2.us[1] & 0xf ];
            filtIndex     = ( u2.us[1] >> 8 ) & 0x3f ;
            switch ( filtIndex)
            {
            case 0: // RX PDO 1
                break ;
            case 1: // RX PDO 2
                break ;
            case 2: // SYNC or NMT
                // The message itself is don't care
                //PDO1:
                // Byte 0-1: First word of BIT
                // Bytes 2-3: Current, 10mAmp units
                // Bytes 4-5: Fault code
                // PDO2:
                // Bytes 0..3: Speed user-unit/sec
                // Bytes 4..7: Position user-unit/sec

                // Even stopped nodes listens NMT
                if ( (cobId & 0x780) == 0  )
                { // That is NMT
                    if (( cobId == CanId ) || (cobId == 0 ) )
                    {
                        // NMT for us
                        SysState.MCanSupport.uNMTRx.ul[0] = pmsg[MCAN_RAM_LONG_PTR_INC*2] ;
                        target = (SysState.MCanSupport.uNMTRx.us[0] >> 8 ) & 0xff ;
                        if ( (target == CanId ) || (target == 0 ) )
                        {
                            // Enter the NMT queue
                            SysState.MCanSupport.uNMTRx.ul[1] = ( SysState.MCanSupport.uNMTRx.ul[1] <<8 ) |  (SysState.MCanSupport.uNMTRx.us[0] & 0xff ) ;
                        }
                    }
                    break ;
                }

                break;
            case 3: // SDO

                next = ( CanSlaveInQueue.nPut + 1 ) & (CanSlaveInQueue.nQueue-1) ;
                pQMsg = &CanSlaveInQueue.Msg[CanSlaveInQueue.nPut]  ;
                pQMsg->cobId = cobId ;
                pQMsg->dLen  = dlc   ;
                pQMsg->data[0] = pmsg[MCAN_RAM_LONG_PTR_INC*2] ;
                pQMsg->data[1] = pmsg[MCAN_RAM_LONG_PTR_INC*3] ;

                if (  SysState.BlockUpload.InBlockUload )
                { // Got confirmation for service , just proceed
                    BlockUploadConfirmService(pQMsg) ;
                }
                else
                {
                    if ( SysState.BlockDnload.InBlockDload )
                    { // Got confirmation for service , just proceed
                        DealBlockDloadRt(pQMsg) ;
                    }
                    else
                    {
                        if ( CanSlaveInQueue.nGet != next )
                        {
                            CanSlaveInQueue.nPut = next ;
                        }
                    }
                 }
                 //next = ( CanSlaveInQueue.nPut + 1 ) & (CanSlaveInQueue.nQueue-1) ;
                break;
            }
            HWREG(MCAN0_BASE + MCAN_RXF0A) = nget ;
            u.ul = HWREG(MCAN0_BASE + MCAN_RXF0S) ;
            nget =  ( u.us[0] >> 8 ) & 0x3f ;
        }
    }

    // TX queued message
    // Is SDO waiting
    // Transmit messages required by the idle process
    if ( CanSlaveOutQueue.nGet != CanSlaveOutQueue.nPut )
    {
        if ( SetMsg2HW(& CanSlaveOutQueue.Msg[CanSlaveOutQueue.nGet]) == 0 )
        {
            CanSlaveOutQueue.nGet = (CanSlaveOutQueue.nGet+1) & (CanSlaveOutQueue.nQueue-1) ;
        }
    }

    if ( SysState.BlockUpload.InBlockUload   )
    {
        RTDealBlockUpload();
    }

}

short unsigned GetLeadingOne(long unsigned dat)
{
    short unsigned t ;
    if ( dat & 0x80000000 )
    {
        return 31 ;
    }
    __norm32(dat , (int *) &t );
    return 30 - t ;
}


void RTDealBlockUpload(void)
{
    union
    {
        long unsigned ul ;
        short unsigned us[2] ;
    }u2 ;

    short unsigned nleft , statenext ;
    long unsigned *pNext ;
    short unsigned *pU;
    //short stat ;    //TxRdy &= ~(1L<<Next);

    // Assure hardware ability to xmit
    u2.ul = ~HWREG(MCAN0_BASE + MCAN_TXBRP) ;

    u2.us[0] &= (SysState.MCanSupport.TxNumElements-1)  ; // Look only at implemented boxes
    if (  u2.us[0] == 0 )
    {// All clogged, go home
        return  ;
    }

    switch ( SysState.BlockUpload.InBlockUload )
    {
    /*
    case 2:
        // Block SDO service
        stat = SetCanMsg2Hardware(CAN_REGSA,& SysState.BlockUpload.StartBlockMsg ,Next+1) ;
        if ( stat == 0 )
        {
            SysState.BlockUpload.InBlockUload = 3 ;
        }
        TxRdy &= ~(1L<<Next);
        break ;
 */
    case 3:
        statenext = 3;
        SysState.BlockUpload.SeqNo = (SysState.BlockUpload.SeqNo+1)&127  ;
        nleft  = 4 - ( SysState.BlockUpload.BytesTransmitted  & 3 )  ;
        switch ( nleft )
        {
        case 1:
            SysState.BlockUpload.InBlockMsg.data[0] = ( SysState.BlockUpload.pBuf[0] >> 16 ) +  ( SysState.BlockUpload.pBuf[1] << 16 ) ;
            SysState.BlockUpload.InBlockMsg.data[1] = ( SysState.BlockUpload.pBuf[1] >> 16 ) +  ( SysState.BlockUpload.pBuf[2] << 16 ) ;
            pNext  = SysState.BlockUpload.pBuf + 2 ;
            break ;
        case 2:
            SysState.BlockUpload.InBlockMsg.data[0] = ( SysState.BlockUpload.pBuf[0] >> 8 ) +  ( SysState.BlockUpload.pBuf[1] << 24 ) ;
            SysState.BlockUpload.InBlockMsg.data[1] = ( SysState.BlockUpload.pBuf[1] >> 8 ) +  ( SysState.BlockUpload.pBuf[2] << 24 ) ;
            pNext  = SysState.BlockUpload.pBuf + 2 ;
            break ;
        case 3:
            SysState.BlockUpload.InBlockMsg.data[0] = ( SysState.BlockUpload.pBuf[0] & 0xffffff00 ) ;
            SysState.BlockUpload.InBlockMsg.data[1] =  SysState.BlockUpload.pBuf[1];
            pNext  = SysState.BlockUpload.pBuf + 2 ;
            break ;
        default:
            SysState.BlockUpload.InBlockMsg.data[0] = ( SysState.BlockUpload.pBuf[0] << 8 ) ;
            SysState.BlockUpload.InBlockMsg.data[1] = ( SysState.BlockUpload.pBuf[0] >> 24 ) +  ( SysState.BlockUpload.pBuf[1] << 8 ) ;
            pNext  = SysState.BlockUpload.pBuf + 1 ;
            break ;
        }
        pU = (short unsigned *)SysState.BlockUpload.InBlockMsg.data ;
        pU[0] = (pU[0] & 0xff00 ) | SysState.BlockUpload.SeqNo ;
        SysState.BlockUpload.BytesTransmitted += 7 ;
        if  ( SysState.BlockUpload.BytesTransmitted >= SysState.BlockUpload.nBytes  )
        { // Last
            SysState.BlockUpload.BytesTransmitted = SysState.BlockUpload.nBytes ;
            pU[0]  |= 0x80 ;
            statenext = 4 ;
        }
        else
        {
            if ( SysState.BlockUpload.SeqNo == 127 )
            {
                statenext = 4 ;
            }
        }
        SetMsg2HW( &SysState.BlockUpload.InBlockMsg ) ;
        SysState.BlockUpload.pBuf = pNext ;
        SysState.BlockUpload.InBlockUload = statenext ;
        break ;
    case 4: // Wait confirm sub-block
        break;
    case 5:
        // TX end block
        SysState.BlockUpload.EndBlockMsg.data[0] = 0xc1 + ((long unsigned)SysState.BlockUpload.crc << 8 ) + ( SysState.BlockUpload.BytesEmptyAtEnd << 2 ) ;

        SetMsg2HW(& SysState.BlockUpload.EndBlockMsg) ;
        {
            SysState.BlockUpload.InBlockUload = 7 ; // Wait end
        }
        break ;
    case 6:
        SysState.BlockUpload.AbortBlockMsg.data[1] = SysState.BlockUpload.emcy ;
        SetMsg2HW(& SysState.BlockUpload.AbortBlockMsg ) ;
        SysState.BlockUpload.InBlockUload = 0;
        break ;
    }
}

void BlockUploadConfirmService( struct CCanMsg *pMsg)
{ // Got confirmation for service , just proceed
    switch (SysState.BlockUpload.InBlockUload)
    {
    case 1:
        if ( (pMsg->data[0] & 0xff) == 0xa3 )
        {
            SysState.BlockUpload.InBlockUload = 3 ;
            SysState.BlockUpload.SeqNo        = 0 ;
            SysState.BlockUpload.BytesTransmitted  = 0 ;
            break ;
        }
        else
        {
            SysState.BlockUpload.emcy = Client_server_command_specifier_not_valid_or_unknown ;
            SysState.BlockUpload.InBlockUload = 6 ; // Kill it, misplaced
        }
        break ;
    case 2:
        if ( (pMsg->data[0] & 0xff) == 0xa3 )
        {
            SysState.BlockUpload.InBlockUload = 3 ;
            SysState.BlockUpload.SeqNo        = 0 ;
            break ;
        }
        else
        {
            SysState.BlockUpload.emcy = Client_server_command_specifier_not_valid_or_unknown ;
            SysState.BlockUpload.InBlockUload = 6 ; // Kill it, misplaced
        }
        break ;
    case 4:
        if ( (pMsg->data[0] & 0xff) == 0xa2 )
        {// Got confirmation for service , just proceed
            if ( SysState.BlockUpload.BytesTransmitted >= SysState.BlockUpload.nBytes )
            {
                SysState.BlockUpload.InBlockUload = 5 ; // Go to end of block
            }
            else
            {
                SysState.BlockUpload.InBlockUload = 2 ; // Tx another sub block
            }
            break ;
        }
        else
        {
            SysState.BlockUpload.emcy = Client_server_command_specifier_not_valid_or_unknown ;
            SysState.BlockUpload.InBlockUload = 6 ; // Kill it, misplaced
        }
        break ;
    case 7:
        if ( (pMsg->data[0] & 0xff) != 0xa1 )
        {
             SysState.BlockUpload.emcy = Client_server_command_specifier_not_valid_or_unknown ;
             SysState.BlockUpload.InBlockUload = 6 ; // Kill it, misplaced
        }
        else
        {
            SysState.BlockUpload.InBlockUload = 0 ; // Done
        }
        break ;
    default:
        SysState.BlockUpload.emcy = Client_server_command_specifier_not_valid_or_unknown ;
        SysState.BlockUpload.InBlockUload = 6 ; // Kill it, misplaced
        break ;
    }
}



short SetMsg2HW(struct CCanMsg  *pMsg )
{
    int  shift ;
    union
    {
        long unsigned ul ;
        short unsigned us[2];
    } u2 ;
    long unsigned *pmsg ;


    // Invert the pending state so we have the clear mailboxes
    u2.ul = ~HWREG(MCAN0_BASE + MCAN_TXBRP) ;

    u2.us[0] &= (SysState.MCanSupport.TxNumElements-1)  ; // Look only at implemented boxes
    if (  u2.us[0] == 0 )
    {// All clogged, go home
        return -1 ;
    }

    u2.us[0] = __flip16(u2.us[0] ) ;
    u2.us[1] = 0  ;
    __norm32(u2.ul , &shift );
    shift -= 15 ;
    pmsg = SysState.MCanSupport.pTxBufStart + shift * SysState.MCanSupport.TxBufElementWidth * MCAN_RAM_LONG_PTR_INC   ;
    pmsg[0] = ( pMsg->cobId & 0x7ff) << 18 ;
    pmsg[MCAN_RAM_LONG_PTR_INC] = ( unsigned long) pMsg->dLen << 16 ;
    pmsg[MCAN_RAM_LONG_PTR_INC*2] = pMsg->data[0] ;
    pmsg[MCAN_RAM_LONG_PTR_INC*3] = pMsg->data[1] ;

    // Send request to transmit this buffer
    HWREG(MCAN0_BASE +MCAN_TXBAR) = (1<<shift) ;
    return 0 ;
}

#else

struct CCanMsg TxMsg ;
void RtCanService(void)
{
    struct CCanMsg  *pQMsg ;
    short unsigned next , dlc , mask ;
    short unsigned *pData ;
    short unsigned cl ;
    union
    {
        long unsigned ul ;
        float f ;
        short unsigned us[2];
        short s[2] ;
    } u , u2 , u3 ;
    unsigned long cobId  ;
    short unsigned nf , nget  ;

    short unsigned target;

    // Track sync time validity
    u.ul = SysState.Timing.UsecTimer - SysState.MCanSupport.SyncTrackTime ;
    if ( u.us[1] & 0x8000)
    {
        SysState.MCanSupport.SyncValid = 0 ;
    }

    nf  =  ( SysState.InMsgBuf.MsgPutPtr - SysState.InMsgBuf.MsgGetPtr) & 0xf ;


    //TxPend = HWREG(MCAN0_BASE + MCAN_TXBRP) ;
    if ( nf )
    {
        nget  = SysState.InMsgBuf.MsgGetPtr ;
        SysState.InMsgBuf.MsgGetPtr = ( SysState.InMsgBuf.MsgGetPtr+1) & 0xf ;
        cl = SysState.InMsgBuf.CobIdLength[nget] ;
        cobId = (( cl >> 8 ) & 0xf) << 7   ;
        dlc   = cl  & 0x7f ;
        pData =  &SysState.InMsgBuf.MsgBuf[8*nget] ;
        if ( dlc <= 16 )
        {
            switch ( cobId)
            {
            case CAN_NMT:
                // NMT for us
                SysState.MCanSupport.uNMTRx.us[0] = *pData++ ;
                SysState.MCanSupport.uNMTRx.us[1] = *pData++ ;
                pData += 2 ;

                target = (SysState.MCanSupport.uNMTRx.us[0] >> 8 ) & 0xff ;
                if ( (target == CanId ) || (target == 0 ) )
                {
                    // Enter the NMT queue
                    SysState.MCanSupport.uNMTRx.ul[1] = ( SysState.MCanSupport.uNMTRx.ul[1] <<8 ) |  (SysState.MCanSupport.uNMTRx.us[0] & 0xff ) ;
                }
                break  ;
            case PDO1_RX : // RX PDO 1
                // Byte 0: Control word. Thats: .0: motor on, 1: Fault reset, :2..4: Loop type : 5..7: Reference type
                // byte 1: Current limit, 1/256 of rated
                // Bytes 2..3 :  Spare
                // Bytes 4..7: Command
                SysState.MCanSupport.uPDO1Rx.us[0] = *pData++ ;
                SysState.MCanSupport.uPDO1Rx.us[1] = *pData++ ;
                SysState.MCanSupport.uPDO1Rx.us[2] = *pData++ ;
                SysState.MCanSupport.uPDO1Rx.us[3] = *pData++ ;

                SysState.MCanSupport.PdoDirtyBoard |= 1 ;
                SysState.Status.bNewControlWord = 1 ;

                mask = BlockInts() ;
                SysState.MCanSupport.Pdo1RxTime.ll = SysTimerStr.SysTimer ;
                if ( SysState.Timing.UsecTimer <  SysState.MCanSupport.Pdo1RxTime.ul[0]   )
                {
                    SysState.MCanSupport.Pdo1RxTime.ul[1]  += 1   ;
                }
                RestoreInts( mask) ;

                break ;
            case PDO2_RX: // RX PDO 2
                // Spare
                SysState.MCanSupport.PdoDirtyBoard |= 2 ;
                SysState.MCanSupport.uPDO2Rx.us[0] = *pData++ ;
                SysState.MCanSupport.uPDO2Rx.us[1] = *pData++ ;
                SysState.MCanSupport.uPDO2Rx.us[2] = *pData++ ;
                SysState.MCanSupport.uPDO2Rx.us[3] = *pData++ ;
                break ;

             case SDO_RX: // SDO
                next = ( CanSlaveInQueue.nPut + 1 ) & (CanSlaveInQueue.nQueue-1) ;
                pQMsg = &CanSlaveInQueue.Msg[CanSlaveInQueue.nPut]  ;
                pQMsg->cobId = cobId ;
                pQMsg->dLen  = dlc   ;
                u2.us[0] = *pData++  ;
                u2.us[1] = *pData++  ;
                u3.us[0] = *pData++  ;
                u3.us[1] = *pData++  ;

                pQMsg->data[0] = u2.ul ;
                pQMsg->data[1] = u3.ul ;

                //if (  SysState.BlockUpload.InBlockUload )
                //{ // Got confirmation for service , just proceed
                //    BlockUploadConfirmService(pQMsg) ;
                //}
                //else
                {
                    if ( SysState.BlockDnload.InBlockDload )
                    { // Got confirmation for service , just proceed
                        DealBlockDloadRt(pQMsg) ;
                    }
                    else
                    {
                        if ( CanSlaveInQueue.nGet != next )
                        {

                            CanSlaveInQueue.nPut = next ;
                        }
                    }
                }

                //next = ( CanSlaveInQueue.nPut + 1 ) & (CanSlaveInQueue.nQueue-1) ;
                break;
            }
        }
    }

    if ( CanSlaveOutQueue.nGet != CanSlaveOutQueue.nPut )
    {
        if ( SetMsg2HW(& CanSlaveOutQueue.Msg[CanSlaveOutQueue.nGet]) == 0 )
        {
            CanSlaveOutQueue.nGet = (CanSlaveOutQueue.nGet+1) & (CanSlaveOutQueue.nQueue-1) ;
        }
    }
}


short SetMsg2HW(struct CCanMsg * pMsg)
{
    short unsigned next ;
    short unsigned *pData ;
    short unsigned *pDataIn ;
    next = ( SysState.OutMsgBuf.MsgPutPtr + 1 ) & 0xf ;
    if ( next != SysState.OutMsgBuf.MsgGetPtr )
    {
        SysState.OutMsgBuf.CobIdLength[SysState.OutMsgBuf.MsgPutPtr] = ((pMsg->cobId<<1) & 0xf00 )  + pMsg->dLen ;
        pData = & SysState.OutMsgBuf.MsgBuf[8*SysState.OutMsgBuf.MsgPutPtr] ;
        pDataIn = (unsigned short *) &pMsg->data[0] ;
        *pData++ = *pDataIn++ ;
        *pData++ = *pDataIn++ ;
        *pData++ = *pDataIn++ ;
        *pData++ = *pDataIn++ ;
        *pData++ = *pDataIn++ ;
        *pData++ = *pDataIn++ ;
        *pData++ = *pDataIn++ ;
        *pData++ = *pDataIn++ ;
        SysState.OutMsgBuf.MsgPutPtr = next ;
        return 0 ;
    }
    return -1;
}
#endif


/*
 * @brief handle the CAN communication in the real time.
 *
 * The brought messages are first of all classified as:
 * - PDO which should react immediately
 * - Emergency that should be reacting by stopping the machine
 * - Other things are treated at the idle
 */
struct CCanMsg TempMsg ;



void DealBlockDloadRt(struct CCanMsg *pMsg )
{
	struct CCanMsg TempMsgRT ;
    unsigned short byte0 , cnt ;
    volatile unsigned  long*  pfar;
    if ( SysState.BlockDnload.bSendEndOfBlock | SysState.BlockDnload.bEndOfBlockTransmission )
    {
        return ;
    }
    TempMsgRT = *pMsg ;
    byte0 = TempMsgRT.data[0] & 0xff ;

    if ( SysState.BlockDnload.seqno == 127 )
    {
        SysState.BlockDnload.emcy = Invalid_sequence_number ;
        return  ;
    }

    SysState.BlockDnload.seqno += 1 ;
    if ( SysState.BlockDnload.seqno != (byte0 & 0x7f) )
    {
        SysState.BlockDnload.emcy =  Invalid_sequence_number ;
        return ;
    }
    SysState.BlockDnload.cv[0] =  ((TempMsgRT.data[0] >> 8 )  & 0xff) ;
    SysState.BlockDnload.cv[1] =  ((TempMsgRT.data[0] >> 16 )  & 0xff) ;
    SysState.BlockDnload.cv[2] =  ((TempMsgRT.data[0] >> 24 )  & 0xff) ;
    SysState.BlockDnload.cv[3] =  ((TempMsgRT.data[1] >> 0 )  & 0xff) ;
    SysState.BlockDnload.cv[4] =  ((TempMsgRT.data[1] >> 8 )  & 0xff) ;
    SysState.BlockDnload.cv[5] =  ((TempMsgRT.data[1] >> 16 )  & 0xff) ;
    SysState.BlockDnload.cv[6] =  ((TempMsgRT.data[1] >> 24 )  & 0xff) ;

    for ( cnt = 0 ; cnt < 7 ; cnt++)
    {
        SysState.BlockDnload.blockdatano += 1 ;
        SysState.BlockDnload.nextBlockLong |= (((long unsigned)SysState.BlockDnload.cv[cnt] << (SysState.BlockDnload.inlongcnt++ * 8))) ;
        SysState.BlockDnload.crc = crc_ccitt_byte(SysState.BlockDnload.crc, SysState.BlockDnload.cv[cnt]);
        if ( SysState.BlockDnload.inlongcnt >= 4)
        {
            SysState.BlockDnload.inlongcnt = 0 ;
            if ( SysState.BlockDnload.longcnt >= SDO_BUF_LEN_LONGS)
            {
                SysState.BlockDnload.emcy = Out_of_memory;
                return ;
            }
            pfar = (unsigned long  *) SlaveSdoBuf ;
            //pfar += ;
            //RecorderBuffer[SysState.BlockDnload.longcnt++]
            pfar[SysState.BlockDnload.longcnt] = SysState.BlockDnload.nextBlockLong ;
            SysState.BlockDnload.longcnt += 1 ;
            SysState.BlockDnload.nextBlockLong = 0 ;
        }

        if (SysState.BlockDnload.blockdatano == SysState.BlockDnload.BlockDloadLen)
        { // received all
            SysState.BlockDnload.bEndOfBlockTransmission = 1  ;
            break  ;
        }
    }

    if ( byte0 & 0x80 )
    {  // block completion
        SysState.BlockDnload.bSendEndOfBlock = 1 ;
        //SysState.BlockDnload.seqno = 0 ;
    }
}

/**
 * \brief Prepare and send boot-up message
*/
void SetBootUpMessage( void )
{
    struct CCanMsg  Msg ;
    Msg.UseLongId = 0 ;
    Msg.cobId = CanId + CAN_NMT_ERROR_CONTROL ;
    Msg.dLen = 1 ;
    Msg.data[0] = 0  ;
    Msg.data[1] = 0 ;
    PutCanSlaveQueue( &Msg);
}

/**
 * \brief Prepare and send boot-up message
*/
void SetExtendedBootUpMessage( void )
{
    struct CCanMsg  Msg ;
    Msg.UseLongId = 0 ;
    Msg.cobId = CanId + CAN_NMT_ERROR_CONTROL ;
    Msg.dLen = 8 ;
    //Msg.data[0] = ( PROJ_TYPE << 8  ) + (((unsigned long)ProjId & 255)<<24)  ;
    Msg.data[0] = ( (unsigned long)Proj_Type << 8  ) + (((unsigned long)ProjId & 255)<<24)  ;
    Msg.data[1] = SubverPatch ;
    PutCanSlaveQueue( &Msg);
}

