/*#include "F28x_Project.h"     // DSP28x Headerfile
#include "F2837x_YDCAN.h"
#include "StructDef.h"
#include "Functions.h"
#include "CanResponser.h"
#include "CanDriver.h"
#include "can.h"
#include "hw_memmap.h"
#include "hw_types.h"
#include "CAN_HW.h"
*/
#include "..\Application\StructDef.h"

//#include "can.h"

void
CAN_sendMessageAll(uint32_t base, uint32_t objID, short unsigned msgLen,
                short unsigned cobId , unsigned long msgData[2] );

#define DCAN_CAN_TXRQ_21 0x88
#define DCAN_CAN_NDAT_21 0x9c

#define DCAN_CAN_IF1_CMD 0x100
#define DCAN_CAN_IF1_MSK 0x104
#define DCAN_CAN_IF1_ARB 0x108
#define DCAN_CAN_IF1_MCTL 0x10c

#define DCAN_CAN_IF1DATA 0x110
#define DCAN_CAN_IF1DATB 0x114

#define DCAN_CAN_IF2_CMD 0x120
#define DCAN_CAN_IF2_MSK 0x124
#define DCAN_CAN_IF2_ARB 0x128
#define DCAN_CAN_IF2_MCTL 0x12c

#define DCAN_CAN_IF2DATA 0x130
#define DCAN_CAN_IF2DATB 0x134


#define DCAN_CAN_IF_CMD__DIR_WRITE (1L<<23)
#define DCAN_CAN_IF_CMD__ACT_MASK  (1L<<22)
#define DCAN_CAN_IF_CMD__ACT_ARB_BITS  (1L<<21)
#define DCAN_CAN_IF_CMD__ACT_CTRL_BITS  (1L<<20)
#define DCAN_CAN_IF_CMD__ACT_TX_RQST  (1L<<18)
#define DCAN_CAN_IF_CMD__ACT_DATA_A  (1L<<17)
#define DCAN_CAN_IF_CMD__ACT_DATA_B  (1L<<16)
#define DCAN_CAN_IF_CMD_BUSY  (1L<<15)

#define DCAN_CAN_IF_MCTL_NEWDAT (1L<<15)
#define DCAN_CAN_IF_MCTL_MSGLOST (1L<<14)
#define DCAN_CAN_IF_MCTL_INTPND (1L<<13)
#define DCAN_CAN_IF_MCTL_USEMASK (1L<<12)
#define DCAN_CAN_IF_MCTL_TXINTENA (1L<<11)
#define DCAN_CAN_IF_MCTL_RXINTENA (1L<<10)
#define DCAN_CAN_IF_MCTL_RMTENA (1L<<9)
#define DCAN_CAN_IF_MCTL_TXREQUEST (1L<<8)
#define DCAN_CAN_IF_MCTL_EOB (1L<<7)
#define DCAN_CAN_IF_MCTL_DLC8 8L

#define DCAN_CAN_IF_ARB_MSGVALID 0x80000000 // (1L<<31)
#define DCAN_CAN_IF_ARB_XTD_ADDRESS (1L<<30)
#define DCAN_CAN_IF_ARB_MSGDIRTX (1L<<29)

// For long addressing
#define DcanSetAddress(pCan,add) HWREG_BP(pCan+add)




long unsigned   GetReadyTransmitters(volatile long unsigned * pCan)
{
    long unsigned TxPnd;
    long unsigned TxRdy;

    //while((HWREGH(base + CAN_O_IF1CMD) & CAN_IF1CMD_BUSY) == CAN_IF1CMD_BUSY)
    //{
    //}

    TxPnd = DcanSetAddress(pCan,CAN_O_NDAT_21) | DcanSetAddress(pCan,DCAN_CAN_TXRQ_21);
    TxRdy = (~ TxPnd) &  0x0fff0000 ;
    return TxRdy ;
}


/**
 * @brief: Put a CAN message into the hardware
 * \param pCan-> DCAN peripherial
 * msg  -> The message to put in
 * mbox -> The message box ,0 to 31
 */

//short xxx ;
short SetCanMsg2Hardware( volatile long unsigned * pCan ,struct CCanMsg * msg , short unsigned mbox )
{
    CAN_sendMessageAll( (uint32_t) pCan, mbox, msg->dLen,msg->cobId , msg->data) ;
    return 0 ;
}


short unsigned GetRxBoxLoad(volatile long unsigned * pCan )
{
    return  ( DcanSetAddress(pCan,DCAN_CAN_NDAT_21) & 0xffff ) ;
}

/**
 * @ brief Transmit a sync
 *
 * Syncs are transmitted at mailbox 31
 */
void TransmitSync(volatile long unsigned * pCan)
{
    while ( DcanSetAddress(pCan,DCAN_CAN_IF1_CMD) & DCAN_CAN_IF_CMD_BUSY ){ ; } // Wait transfer register free
    DcanSetAddress(pCan,DCAN_CAN_IF1DATA)  =  0 ;
    DcanSetAddress(pCan,DCAN_CAN_IF1DATB)  =  0 ;
    DcanSetAddress(pCan,DCAN_CAN_IF1_MCTL) = DCAN_CAN_IF_MCTL_NEWDAT + DCAN_CAN_IF_MCTL_TXREQUEST  ;
    DcanSetAddress(pCan,DCAN_CAN_IF1_ARB) = DCAN_CAN_IF_ARB_MSGVALID + DCAN_CAN_IF_ARB_MSGDIRTX + (128L << 18 ) ;
    DcanSetAddress(pCan,DCAN_CAN_IF1_CMD) = DCAN_CAN_IF_CMD__DIR_WRITE+DCAN_CAN_IF_CMD__ACT_ARB_BITS+DCAN_CAN_IF_CMD__ACT_CTRL_BITS+
            DCAN_CAN_IF_CMD__ACT_TX_RQST+DCAN_CAN_IF_CMD__ACT_DATA_A+DCAN_CAN_IF_CMD__ACT_DATA_B+32 ;
}


//*****************************************************************************
//
// CAN_sendMessage
//
//*****************************************************************************
void
CAN_sendMessageAll(uint32_t base, uint32_t objID, short unsigned msgLen,
                short unsigned cobId , unsigned long msgData[2] )
{
    uint32_t msgCtrl = 0U;
    long unsigned arb  ;

    //
    // Check the arguments.
    //
    ASSERT(CAN_isBaseValid(base));
    ASSERT((objID <= 32U) && (objID > 0U));
    ASSERT(msgLen <= 8U);

    arb = CAN_IF1ARB_MSGVAL|CAN_IF1ARB_DIR|(( long unsigned)(cobId & 0x7ff) << 18 ) ;

    //
    // Set IF command to read message object control value
    //
    // Set up the request for data from the message object.
    // Transfer the message object to the IF register.
    //

    HWREG_BP(base + CAN_O_IF1CMD) = ((uint32_t)CAN_IF1CMD_CONTROL |
                                     (objID & CAN_IF1CMD_MSG_NUM_M));

    //
    // Wait for busy bit to clear
    //
    while((HWREGH(base + CAN_O_IF1CMD) & CAN_IF1CMD_BUSY) == CAN_IF1CMD_BUSY)
    {
    }

    //
    // Read IF message control
    //
    msgCtrl = HWREGH(base + CAN_O_IF1MCTL);

    msgCtrl = (msgCtrl & ~CAN_IF1MCTL_DLC_M) + (msgLen & CAN_IF1MCTL_DLC_M) ;
    //
    // Check provided DLC size with actual Message DLC size
    //
    // ASSERT((msgCtrl & CAN_IF1MCTL_DLC_M) == msgLen);


    HWREG_BP(base + CAN_O_IF1ARB) = arb ;
    //
    // Write the data out to the CAN Data registers.
    //
    HWREG_BP(base + CAN_O_IF1DATA) = msgData[0] ;
    HWREG_BP(base + CAN_O_IF1DATB) = msgData[1] ;

    HWREG_BP(base + CAN_O_IF1MCTL) = msgCtrl  ;

     //
    // Set Direction to write
    //
    // Set Tx Request Bit
    //
    // Transfer the message object to the message object specified by
    // objID.
    //
    HWREG_BP(base + CAN_O_IF1CMD) = (CAN_IF1CMD_DATA_B | CAN_IF1CMD_DATA_A |
                                     (uint32_t)CAN_IF1CMD_DIR | (uint32_t)CAN_IF1CMD_ARB |
                                     (uint32_t)CAN_IF1CMD_CONTROL |
                                     (uint32_t)CAN_IF1CMD_TXRQST |
                                     (objID & CAN_IF1CMD_MSG_NUM_M));
}


//*****************************************************************************
//
// CAN_readMessage
//
//*****************************************************************************
bool
CAN_readMessageAll(uint32_t base, uint32_t objID,
                uint32_t *msgData,short unsigned *dlc  , long unsigned *arb )
{
    bool status;
    uint16_t msgCtrl = 0U;

    //
    // Check the arguments.
    //
    ASSERT(CAN_isBaseValid(base));
    ASSERT((objID <= 32U) && (objID != 0U));

    //
    // Set the Message Data A, Data B, and control values to be read
    // on request for data from the message object.
    //
    // Transfer the message object to the message object IF register.
    //
    HWREG_BP(base + CAN_O_IF2CMD) =
    ((uint32_t)CAN_IF2CMD_DATA_A | (uint32_t)CAN_IF2CMD_DATA_B |
     (uint32_t)CAN_IF2CMD_CONTROL | (objID & CAN_IF2CMD_MSG_NUM_M) |
     (uint32_t)CAN_IF2CMD_ARB);

    //
    // Wait for busy bit to clear
    //
    while((HWREGH(base + CAN_O_IF2CMD) & CAN_IF2CMD_BUSY) == CAN_IF2CMD_BUSY)
    {
    }

    //
    // Read out the IF control Register.
    //
    msgCtrl = HWREGH(base + CAN_O_IF2MCTL);

    //
    // See if there is new data available.
    //
    if((msgCtrl & CAN_IF2MCTL_NEWDAT) == CAN_IF2MCTL_NEWDAT)
    {
        //
        // Read out the data from the CAN registers.
        //
        * dlc = msgCtrl & CAN_IF2MCTL_DLC_M ;

        msgData[0] =  HWREG_BP(base + CAN_O_IF2DATA);
        msgData[1] =  HWREG_BP(base + CAN_O_IF2DATB);


        *arb = HWREG_BP(base + CAN_O_IF2ARB);

        status = true;

        //
        // Now clear out the new data flag
        //
        HWREG_BP(base + CAN_O_IF2CMD) = ((uint32_t)CAN_IF2CMD_TXRQST |
                                        (objID & CAN_IF2CMD_MSG_NUM_M));

        //
        // Wait for busy bit to clear
        //
        while((HWREGH(base + CAN_O_IF2CMD) & CAN_IF2CMD_BUSY) ==
               CAN_IF2CMD_BUSY)
        {
        }
    }
    else
    {
        status = false;
    }


    return(status);
}

short unsigned GetTrailingOne(short unsigned num )
{
    short unsigned t ;
    num = __flip16(num) ;
    __norm32((long unsigned) num , (int*)&t )  ;
    return t - 15 ;
}


/**
 * @brief: Get a CAN message from the hardware
 *
 * \param pCan: CAN peripherial to use
 * \param msg : Returned message
 * \return -1 if empty , 0 if message is returned
 *
 */
long unsigned RxPend;
short GetCanMsgFromHardwareA(struct CCanMsg * msg)
{

    long unsigned  arb ;
    short unsigned msg_num ;
    short unsigned dlc  ;
    //volatile long unsigned * pIF ;

    uint32_t rxMsgData[2];

    // Detect: Any message in any mailbox
    RxPend = HWREG_BP(CANA_BASE + CAN_O_NDAT_21) & 0xffff ;
    if ( RxPend == 0 )
    {
        return -1 ;
    }

    msg_num = GetTrailingOne((short unsigned) RxPend) + 1;

    if (CAN_readMessageAll(CANA_BASE, msg_num ,  rxMsgData ,&dlc  , &arb ) == 0 )
    {
        return -1 ;
    }


    /*
    // Detect: Any message in any mailbox
    RxPend = DcanSetAddress(pCan,DCAN_CAN_NDAT_21) & 0xffff ;
    if ( RxPend == 0 )
    {
        return -1 ;
    }
    //CanInMsgCntr += 1 ;
    // Take one of them ...
    msg_num = GetTrailingOne((short unsigned) RxPend) ;

    //if (pCan == CAN_REGSA )
    //{
    //  ReadMboxNormal ( CAN_REGSA + (DCAN_CAN_IF2_CMD>>1)  , msg_num+1);
    //}
    pIF = pCan + (DCAN_CAN_IF2_CMD>>1)  ;
    ReadMboxNormal ( pIF , msg_num+1);
*/

    msg->dLen = dlc ;
    msg->data[0] = rxMsgData[0] ;
    msg->data[1] = rxMsgData[1] ;
    if ( arb & DCAN_CAN_IF_ARB_XTD_ADDRESS)
    {
        msg->UseLongId = 1 ;
        msg->cobId    =  arb &  0x1fffffff ;
    }
    else
    {
        msg->UseLongId = 0  ;
        msg->cobId    =  ( arb >> 18 )  &  0x7ff ;
    }

    return 0 ;
}

short GetCanMsgFromHardwareB(struct CCanMsg * msg)
{

    long unsigned  arb ;
    short unsigned msg_num ;
    short unsigned dlc  ;
    //volatile long unsigned * pIF ;

    uint32_t rxMsgData[2];

    // Detect: Any message in any mailbox
    RxPend = HWREG_BP(CANB_BASE + CAN_O_NDAT_21) & 0xffff ;
    if ( RxPend == 0 )
    {
        return -1 ;
    }

    msg_num = GetTrailingOne((short unsigned) RxPend) + 1;

    if (CAN_readMessageAll(CANB_BASE, msg_num ,  rxMsgData ,&dlc  , &arb ) == 0 )
    {
        return -1 ;
    }

    msg->dLen = dlc ;
    msg->data[0] = rxMsgData[0] ;
    msg->data[1] = rxMsgData[1] ;
    if ( arb & DCAN_CAN_IF_ARB_XTD_ADDRESS)
    {
        msg->UseLongId = 1 ;
        msg->cobId    =  arb &  0x1fffffff ;
    }
    else
    {
        msg->UseLongId = 0  ;
        msg->cobId    =  ( arb >> 18 )  &  0x7ff ;
    }

    return 0 ;
}


/*
#define CAN_NUM_OF_MSG_OBJS             (32u)
*/
#define DCAN_IN_CLK (CPU_CLK_HZ)


/**
 * brief: Get the status of the CAN controller
 *
 *
 */
void GetCanState(volatile long unsigned *pCan)
{
    CanStat.CanERRC.all = DcanSetAddress( pCan , DCAN_CAN_ERRC);
    CanStat.Can_EE.all = DcanSetAddress( pCan , DCAN_CAN_ES);
    CanStat.CanBtr.all = DcanSetAddress( pCan , DCAN_CAN_BTRR);
    CanStat.CanRel.all = DcanSetAddress( pCan , DCAN_CAN_REL);
    CanStat.CanCtl.all = DcanSetAddress( pCan , DCAN_CAN_CTL);
}

/**
 * brief: Init the DCAN controller
 *
 * Heavily based on the TI SDK

short InitCanChan(  long unsigned  pCan)
{
    short unsigned cnt ;

    // Configure the CAN mailboxes: 1..16 are FIFO for read , 17..32 are for write queue
    for ( cnt = 1 ; cnt < 16 ; cnt++)
    {
        SetCanBox (pCan ,  0 , 0 , cnt );
    }
    SetCanBox ( pCan , 0 , 1 , 16 );

    for ( cnt  = 1 ; cnt <=16 ; cnt++ )
    {
        ReadMboxNoKill((unsigned long *)(pCan+DCAN_CAN_IF2_CMD),cnt) ;
    }
    return 0 ;
}
 */

#define MSG_DATA_LENGTH 8

// Initialize the CAN controller
void InitCan(void)
{
    long unsigned abortTO ;
    short unsigned cnt ;
// Initialize the MUX for CAN (CAN1, CAN2)
    EALLOW;

    //
    // Initialize the CAN controller
    //
    CAN_initModule(CANA_BASE);
    CAN_initModule(CANB_BASE);

    //
    // Set up the CAN bus bit rate to 500kHz
    // Refer to the Driver Library User Guide for information on how to set
    // tighter timing control. Additionally, consult the device data sheet
    // for more information about the CAN module clocking.

    CAN_setBitRate(CANA_BASE, CPU_CLK_HZ , 500000, 20);
    CAN_setBitRate(CANB_BASE, CPU_CLK_HZ , 500000, 20);

    //
    // Initialize the transmit message object used for sending CAN messages.
    // Message Object Parameters:
    //      Message Object ID Number: 1
    //      Message Identifier: 0x1234
    //      Message Frame: Standard
    //      Message Type: Transmit
    //      Message ID Mask: 0x0
    //      Message Object Flags: None
    //      Message Data Length:
    //
    for ( cnt = 1 ; cnt < 16 ; cnt++ )
    {
        CAN_setupMessageObject(CANA_BASE, cnt+16, 0x1234, CAN_MSG_FRAME_STD,
                           CAN_MSG_OBJ_TYPE_TX, 0, CAN_MSG_OBJ_NO_FLAGS,
                           MSG_DATA_LENGTH);
        CAN_setupMessageObject(CANB_BASE, cnt+16, 0x1234, CAN_MSG_FRAME_STD,
                           CAN_MSG_OBJ_TYPE_TX, 0, CAN_MSG_OBJ_NO_FLAGS,
                           MSG_DATA_LENGTH);
    }

    //
    // Initialize the receive message object used for receiving CAN messages.
    // Message Object Parameters:
    //      Message Object ID Number: 2
    //      Message Identifier: 0x1234
    //      Message Frame: Standard
    //      Message Type: Receive
    //      Message ID Mask: 0x0
    //      Message Object Flags: None
    //      Message Data Length:
    //
     for ( cnt = 1 ; cnt < 16 ; cnt++ )
    {
    CAN_setupMessageObject(CANA_BASE, cnt, LP_CAN_ID, CAN_MSG_FRAME_STD,
                           CAN_MSG_OBJ_TYPE_RX, LP_CAN_ID, CAN_MSG_OBJ_USE_DIR_FILTER | CAN_MSG_OBJ_FIFO ,
                           MSG_DATA_LENGTH);
    CAN_setupMessageObject(CANB_BASE, cnt, LP_CAN_ID, CAN_MSG_FRAME_STD,
                           CAN_MSG_OBJ_TYPE_RX, LP_CAN_ID, CAN_MSG_OBJ_USE_DIR_FILTER | CAN_MSG_OBJ_FIFO ,
                           MSG_DATA_LENGTH);
    }
    CAN_setupMessageObject(CANA_BASE, 16 , LP_CAN_ID, CAN_MSG_FRAME_STD,
                           CAN_MSG_OBJ_TYPE_RX, LP_CAN_ID, CAN_MSG_OBJ_USE_DIR_FILTER  ,
                           MSG_DATA_LENGTH);
    CAN_setupMessageObject(CANB_BASE, 16 , LP_CAN_ID, CAN_MSG_FRAME_STD,
                           CAN_MSG_OBJ_TYPE_RX, LP_CAN_ID, CAN_MSG_OBJ_USE_DIR_FILTER  ,
                           MSG_DATA_LENGTH);

    // Decide the CAN clock source and power the CAN module
    // CLKSRCCTL2 is by default set to system clock
    //GpioCtrlRegs.GPCLOCK.all = 0 ;

    //CANInit(CANA_BASE);

    //
    // Setup CAN to be clocked off the PLL output clock
    //
   // CANClkSourceSelect(CANA_BASE, 0);   /* 500kHz CAN-Clock */

    //
    // Set up the CAN bus bit rate to 500kHz for each module
    // This function sets up the CAN bus timing for a nominal configuration.
    // You can achieve more control over the CAN bus timing by using the
    // function CANBitTimingSet() instead of this one, if needed.
    // Additionally, consult the device data sheet for more information about
    // the CAN module clocking.
    //
    //CANBitRateSet(CANA_BASE, 200000000, 500000);

    // Set abort time out
    abortTO = (long unsigned) ( DCAN_IN_CLK * 0.1F) ;
    HWREG_BP(CANA_BASE + CAN_O_ABOTR) = abortTO ;
    HWREG_BP(CANB_BASE + CAN_O_ABOTR) = abortTO ;
    //HWREGH(CANA_BASE + CAN_O_ABOTR + 2) = abortTO >> 16;
    //HWREGH(CANA_BASE + CAN_O_ABOTR ) = ( abortTO & 0xffff );

    // Set the CAN to auto time out (ABO), also disable auto retransmission
    HWREG_BP(CANA_BASE + CAN_O_CTL) = HWREG_BP(CANA_BASE + CAN_O_CTL) | CAN_CTL_ABO ; // | (1<<5) ;
    HWREG_BP(CANB_BASE + CAN_O_CTL) = HWREG_BP(CANB_BASE + CAN_O_CTL) | CAN_CTL_ABO ; // | (1<<5) ;


    //CanaRegs = (long unsigned*) CANA_BASE;

    //InitCanChan(CANA_BASE) ;

    //
    // Start CAN module A  operations
    //
    //CANEnable(CANA_BASE);
    //
    // Start CAN module operations
    //
    CAN_startModule(CANA_BASE);
    CAN_startModule(CANB_BASE);

    EDIS;
}



