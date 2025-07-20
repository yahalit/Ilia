//#include "F28x_Project.h"     // DSP28x Headerfile

#include "..\Application\PdStructDef.h"
//#include "..\..\TiSoft\F2837xS_common\include\F28x_Project.h"     // DSP28x Headerfile
//#include "F2837x_YDCAN.h"
#include "..\Drivers\F2837x_YDCAN.h"


#include "..\Application\PdCanResponser.h"
#include "..\PdLpShared\CanDriver.h"

#include "can.h"
#include "hw_memmap.h"
#include "hw_types.h"
#include "CAN_HW.h"

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
#define DcanSetAddress(pCan,add) (pCan[add>>1])

//*****************************************************************************
//! The structure used for encapsulating all the items associated with a CAN
//! message object in the CAN controller.
//*****************************************************************************
unsigned char txMsgData[8];
unsigned char rxMsgData[8];

#define HWREG_BP(x)                                                           \
        __byte_peripheral_32((uint32_t *)(x))

long unsigned   GetAllReadyTransmitters(volatile long unsigned * pCan)
{
    long unsigned TxPnd;
    long unsigned TxRdy;
    long unsigned base ;

    //while((HWREGH(base + CAN_O_IF1CMD) & CAN_IF1CMD_BUSY) == CAN_IF1CMD_BUSY)
    //{
    //}
    base  = (long unsigned ) pCan ;
    TxPnd =   HWREG_BP(base + CAN_O_TXRQ_21) ; // DcanSetAddress(pCan,DCAN_CAN_TXRQ_21) ; // |DcanSetAddress(pCan,CAN_O_NDAT_21);
    TxRdy = (~ TxPnd) &  0xffff0000 ;
    return TxRdy ;
}

long unsigned 	GetReadyTransmitters(volatile long unsigned * pCan)
{
	long unsigned TxPnd;
	long unsigned TxRdy;

	TxPnd = DcanSetAddress(pCan,CAN_O_NDAT_21) | DcanSetAddress(pCan,DCAN_CAN_TXRQ_21);
	TxRdy = (~ TxPnd) &  0x0fff0000 ;
	return TxRdy ;
}


/**
 * @brief: Put a CAN message into the hardware
 */
tCANMsgObject sTXCANMessage;
//short xxx ;
short SetCanMsg2Hardware( volatile long unsigned * pCan ,struct CCanMsg * msg , short unsigned mbox )
{
	long unsigned ui32Base ;
	long unsigned ui32ArbReg ;
	long unsigned ui32MsgCtrl ;
	short unsigned msg_num ;
	//long unsigned TxPnd ;
	short unsigned *pData ;
	ui32Base = (long unsigned)pCan ;

	//if ( msg->cobId == 0 && msg->dLen == 0 )
	//{
	//	xxx = 1 ;
	//}

	WaitIfRdy((volatile long unsigned *)( ui32Base+CAN_O_IF1CMD)) ;
	pData = (short unsigned *) & msg->data[0] ;
    HWREGH(ui32Base + DCAN_CAN_IF1DATA ) = pData[0] ;
    HWREGH(ui32Base + DCAN_CAN_IF1DATA + 2 ) = pData[1] ;
    HWREGH(ui32Base + DCAN_CAN_IF1DATB ) = pData[2] ;
    HWREGH(ui32Base + DCAN_CAN_IF1DATB + 2 ) = pData[3] ;

	//cmd = 0xb3 to high
    HWREGH(ui32Base + CAN_O_IF1CMD + 2) = 0xb3 ;
	WaitIfRdy((volatile long unsigned *)( ui32Base+CAN_O_IF1CMD)) ;

	//mask = 0 ;
    HWREGH(ui32Base + CAN_O_IF1MSK) = 0 ; //ui32MaskReg & CAN_REG_WORD_MASK;
    HWREGH(ui32Base + CAN_O_IF1MSK + 2) = 0 ; // ui32MaskReg >> 16;

    ui32ArbReg = 0xa0000000 + (msg->cobId<<18) ;
    HWREGH(ui32Base + CAN_O_IF1ARB) = ui32ArbReg & CAN_REG_WORD_MASK;
    HWREGH(ui32Base + CAN_O_IF1ARB + 2) = ui32ArbReg >> 16;

    ui32MsgCtrl = 0x180 + ( msg->dLen & 0xf )  ;
    HWREGH(ui32Base + CAN_O_IF1MCTL) = ui32MsgCtrl & CAN_REG_WORD_MASK;

	msg_num = mbox + 1 ; // ( GetLeadingOne(TxPnd) + 1 );
	WaitIfRdy((volatile long unsigned *)( ui32Base+CAN_O_IF1CMD)) ;
    HWREGH(ui32Base + CAN_O_IF1CMD) = msg_num ;

    return 0 ;

}




short unsigned GetRxBoxLoad(volatile long unsigned * pCan )
{
    return  ( DcanSetAddress(pCan,DCAN_CAN_NDAT_21) & 0xffff ) ;
}

/**
 * @brief: Get a CAN message from the hardware
 *
 */
short GetCanMsgFromHardware(volatile long unsigned * pCan ,struct CCanMsg * msg)
{
	long unsigned RxPend ;
	short unsigned msg_num ;
	RxPend = DcanSetAddress(pCan,DCAN_CAN_NDAT_21) & 0xffff ;

    CanStatistics.MaxRxBoxLoad |= RxPend ;

	if ( RxPend == 0 )
	{
		return -1 ;
	}
//	CanInMsgCntr += 1 ;
	msg_num = GetTrailingOne((short unsigned) RxPend) ;

	ReadMboxNormal ( CAN_REGSA + (DCAN_CAN_IF2_CMD>>1)  , msg_num+1);
	msg->dLen = (short)( CAN_IFRx.mctl & 0x1f );
	msg->data[0] = CAN_IFRx.data0 ;
	msg->data[1] = CAN_IFRx.data1 ;
	if ( CAN_IFRx.arb & DCAN_CAN_IF_ARB_XTD_ADDRESS)
	{
		msg->UseLongId = 1 ;
		msg->cobId    =  CAN_IFRx.arb &  0x1fffffff ;
	}
	else
	{
		msg->UseLongId = 0  ;
		msg->cobId    =  ( CAN_IFRx.arb >> 18 )  &  0x7ff ;
	}
//	if ( CanInMsgCntr > 0 && CanInMsgCntr <= 32)
//	{
//		canHistory[CanInMsgCntr-1] = *msg ;
//	}

	return 0 ;
}


void 	ProgMbox4Rx( long *baseadd , short unsigned num , short unsigned CobId );
void SetCanBox (  long unsigned  ui32Base , short unsigned tx , short unsigned last , short unsigned msgnum )
{
	//tCANMsgObject sRXCANMessage ;
(void) last ;
	if ( tx == 0 )
	{
		ProgMbox4Rx( (long *)(ui32Base+DCAN_CAN_IF1_CMD) , msgnum , 0x180 + msgnum ) ;
	}

}


/*
** Structure used by the CAN Bit time calculator. Will hold values related to
** bit-time configuration.
*/
struct _dcan_bittiming{
    unsigned long bitRate;          /* Bit-rate in bits/second */
    unsigned long samplePnt;        /* Sample point in one-tenth of a percent */
    unsigned long tq;              /* Time quanta (tq) in nanoseconds */
    unsigned long propSeg;          /* Propagation segment in tq */
    unsigned long phaseSeg1;        /* Phase buffer segment 1 in tq */
    unsigned long phaseSeg2;        /* Phase buffer segment 2 in tq */
    unsigned long sjw;              /* Synchronisation jump width in tq */
    unsigned long brp;              /* Bit-rate prescaler */
};

struct _dcan_hw_params{
    unsigned long tseg1Min;        /* Time segement 1 = prop_seg + phase_seg1 */
    unsigned long tseg1Max;
    unsigned long tseg2Min;        /* Time segement 2 = phase_seg2 */
    unsigned long tseg2Max;
    unsigned long sjwMax;          /* Synchronisation jump width */
    unsigned long brpMin;          /* Bit-rate prescaler */
    unsigned long brpMax;
    unsigned long brpInc;
};

/* BTR */
#define DCAN_BTR_BRP   (0x0000003Fu)
#define DCAN_BTR_BRP_SHIFT   (0x00000000u)

#define DCAN_BTR_BRPE   (0x000F0000u)
#define DCAN_BTR_BRPE_SHIFT   (0x00000010u)

#define DCAN_BTR_DCAN_BTR   (0xFFFFFFFFu)
#define DCAN_BTR_DCAN_BTR_SHIFT   (0x00000000u)

#define DCAN_BTR_SJW   (0x000000C0u)
#define DCAN_BTR_SJW_SHIFT   (0x00000006u)

#define DCAN_BTR_TSEG1   (0x00000F00u)
#define DCAN_BTR_TSEG1_SHIFT   (0x00000008u)

#define DCAN_BTR_TSEG2   (0x00007000u)
#define DCAN_BTR_TSEG2_SHIFT   (0x0000000Cu)

/* Macros used by CANBitTimeCalculator */
#define CAN_CALC_MAX_ERROR              (50u)
#define BIT_RATE_ERR_WARN               (2u)
#define BIT_RATE_ERR_MAX                (1u)
#define EXTRACT_BRPE_VAL                (0x3C0u)
#define NO_BIT_RATE_ERR                 (3u)
#define BRPE_SHIFT                      (10u)




#define DCAN_CTL_CCE   (0x00000040uL)
#define DCAN_CTL_SWR   (0x00008000uL)
#define DCAN_IN_CLK (1000000L*CPU_CLK_MHZ)
#define CAN_NUM_OF_MSG_OBJS             (32u)



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
 */
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


// Initialize the CAN controller
void InitCan(void)
{
	long unsigned abortTO ;
// Initialize the MUX for CAN (CAN1, CAN2)
    EALLOW;

    // Decide the CAN clock source and power the CAN module
    // CLKSRCCTL2 is by default set to system clock
    //GpioCtrlRegs.GPCLOCK.all = 0 ;

    //GPIO70 -  CANRXA
    GPIO_SetupPinMux(62, GPIO_MUX_CPU1, 6);
    GPIO_SetupPinOptions(62, GPIO_INPUT, GPIO_ASYNC);
    //GPIO71 - CANTXA
    GPIO_SetupPinMux(63, GPIO_MUX_CPU1, 6);
    GPIO_SetupPinOptions(63, GPIO_OUTPUT, GPIO_PUSHPULL);

    CANInit(CANA_BASE);

    //
    // Setup CAN to be clocked off the PLL output clock
    //
    CANClkSourceSelect(CANA_BASE, 0);   /* 500kHz CAN-Clock */
    //CANClkSourceSelect(CANB_BASE, 0);   /* 500kHz CAN-Clock */

    //
    // Set up the CAN bus bit rate to 500kHz for each module
    // This function sets up the CAN bus timing for a nominal configuration.
    // You can achieve more control over the CAN bus timing by using the
    // function CANBitTimingSet() instead of this one, if needed.
    // Additionally, consult the device data sheet for more information about
    // the CAN module clocking.
    //
    CANBitRateSet(CANA_BASE, 200000000, 500000);

    // Set abort time out
	abortTO = (long unsigned) ( DCAN_IN_CLK * 0.1F) ;
    HWREGH(CANA_BASE + CAN_O_ABOTR + 2) = abortTO >> 16;
    HWREGH(CANA_BASE + CAN_O_ABOTR ) = ( abortTO & 0xffff );

    // Set the CAN to auto time out, also disable auto retransmission
    HWREGH(CANA_BASE + CAN_O_CTL) = HWREGH(CANA_BASE + CAN_O_CTL) | (1<<9) ; // | (1<<5) ;

    CanaRegs = (long unsigned*) CANA_BASE;

    InitCanChan(CANA_BASE) ;

    //
    // Start CAN module A operations
    //
    CANEnable(CANA_BASE);


    EDIS;
}
