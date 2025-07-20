#ifndef DCAN_Y_DEFINED
#define DCAN_Y_DEFINED


struct CAN_REGS_ADD {
	short unsigned CAN_CTL ;
	short unsigned CAN_ES  ;
	short unsigned CAN_ERRC ;
	short unsigned CAN_BTR ;
	short unsigned CAN_INT ;
	short unsigned CAN_TEST ;
	short unsigned CAN_PERR ;
	short unsigned CAN_REL ;
	short unsigned CAN_RAM_INIT ;
	short unsigned CAN_GLB_INT_EN ;
	short unsigned CAN_GLB_INT_FLG ;
	short unsigned CAN_GLB_INT_CLR ;
	short unsigned CAN_ABOTR ;
	short unsigned CAN_TXRQ_X ;
	short unsigned CAN_TXRQ_21 ;
	short unsigned CAN_LAST_ITEM ;
};

#define DCAN_CAN_CTL 0
#define DCAN_CAN_ES 0x4
#define DCAN_CAN_ERRC 0x8
#define DCAN_CAN_BTRR 0xc
#define DCAN_CAN_REL 0x20



#define DCAN_CAN_CTL_SWR (1L<<15) // Software reset
#define DCAN_CAN_CTL_PMD(x) ( ((x)==1)? (0x5L<<10):0 ) // 1 : Parity function disabled
#define DCAN_CAN_CTL_ABO (1L<<9) // 1 enable auto bus on
#define DCAN_CAN_CTL_CCE (1L<<6) // 1 configuration change enable
#define DCAN_CAN_CTL_DAR (1L<<5) // 1 automatic retransmission disabled
#define DCAN_CAN_CTL_INIT (1L)   // 1 to shut controller


#define DCAN_CAN_BTR 0xc
#define CAN_GLB_INT_EN 0x50
#define DCAN_CAN_ABOTR 0x80

//------CAN bit rate timing parameters------//
//WARNING: There is very little sanity checking in these calculations. See DCAN spec section 1.16
//for additional requirements. Among other things, you must ensure that one bit takes between
//8 and 25 time quanta, and that Tseg1 and Tseg2 can fit into their respective register fields.
//The main user-controllable parameters here are:
//
//Bit rate	(bits/sec)	CAN bit rate -- must match the rest of the CAN network
//SYSCLK	(hertz)		System clock frequency, which feeds the DCAN module
//BRP		-			Bit rate prescaler, which divides down SYSCLK to provide the bit clock
#define DCAN_BOOT_RATE		500000L
#define DCAN_BOOT_SYSCLK	200000000L
#define DCAN_BOOT_BRP		20L

//Other parameters are defined according to the instructions in section 1.16.2.1
//of the DCAN spec. Exception: This code rounds PhSeg1 up and PhSeg2 down since
//a later sample time works better on most networks. This is implemented by rounding
//down PhSeg2 first, then computing PhSeg1 as Tphase - PhSeg2. Calculating in this
//order also lets us limit Tseg2 to 8 so it will fit in the register.
//
//Bit clock	(hertz)		Equal to SYSCLK / BRP by definition; each bit clock is one time quantum (Tq)
//Bit time	(Tq)		Number of time quanta per bit; the ratio of bit clock frequency to bit rate
//Tsync		(Tq)		Synchronization time delay: Fixed at 1 Tq by the CAN protocol
//Tprop		(Tq)		Propagation delay: <2 microseconsd for a <1000 foot bus; assumed to be <2 Tq
//Tphase	(Tq)		Phase compensation buffer for oscillator tolerance: The remainder of the bit time
//PhSeg1	(Tq)		Phase segment 1: Pre-sample buffer; half of the phase time, rounded up (<=16)
//PhSeg2	(Tq)		Phase segment 2: Post-sample buffer; half of the phase time, rounded down (<=8)
#define DCAN_BOOT_BITCLK	(DCAN_BOOT_SYSCLK / DCAN_BOOT_BRP)
#define DCAN_BOOT_BITTIME	(DCAN_BOOT_BITCLK / DCAN_BOOT_RATE)
#if (DCAN_BOOT_BITTIME > 25)
	#error "DCAN boot loader config error: bit time cannot exceed 25 time quanta!"
#endif
#define DCAN_BOOT_TSYNC		1L
#define DCAN_BOOT_TPROP		2L
#define DCAN_BOOT_TPHASE	(DCAN_BOOT_BITTIME - (DCAN_BOOT_TSYNC + DCAN_BOOT_TPROP))
#define DCAN_BOOT_PHSEG2	((DCAN_BOOT_TPHASE / 2L <= 8) ? DCAN_BOOT_TPHASE / 2L : 8)
#define DCAN_BOOT_PHSEG1	(DCAN_BOOT_TPHASE - DCAN_BOOT_PHSEG2)

//These parameters are then converted into register values. All parameters
//are -1 in the register:
//
//Tseg1		(Tq)		Everything between sync and sample: Tprop + PhSeg1; MUST BE LESS THAN 8
//Tseg2		(Tq)		Everything between sample and next time: PhSeg2; MUST BE LESS THAN 16
//Tsjw		(Tq)		Synchronization jump width: The lesser of 4 and PhSeg1
//BRPEREG	-			Upper 4 bits of bit prescaler; SUBTRACT ONE FROM BRP BEFORE COMPUTING THIS
//BRPREG	-			Lower 6 bits of bit prescaler; SUBTRACT ONE FROM BRP BEFORE COMPUTING THIS
#define DCAN_BOOT_TSEG1		((DCAN_BOOT_PHSEG1 + DCAN_BOOT_TPROP) - 1)
#define DCAN_BOOT_TSEG2		(DCAN_BOOT_PHSEG2 - 1)
#define DCAN_BOOT_TSJW		(((DCAN_BOOT_PHSEG1 > 4L) ? 4L : DCAN_BOOT_PHSEG1) - 1)
#define DCAN_BOOT_BRPEREG	((DCAN_BOOT_BRP - 1L) / 64L)
#define DCAN_BOOT_BRPREG	((DCAN_BOOT_BRP - 1L) % 64L)
#define DCAN_BOOT_BTRREG	(DCAN_BOOT_BRPEREG<<16 | DCAN_BOOT_TSEG2<<12 | DCAN_BOOT_TSEG1<<8 | DCAN_BOOT_TSJW<<6 | DCAN_BOOT_BRPREG)





#ifdef CAN_OWNER
volatile long unsigned *CanaRegs ;
volatile long unsigned *CanbRegs ;
const struct CAN_REGS_ADD cra = {
0, //		short unsigned CAN_CTL ;
4, //		short unsigned CAN_ES  ;
8, //		short unsigned CAN_ERRC ;
0xc, //		short unsigned CAN_BTR ;
0x10,//		short unsigned CAN_INT ;
0x14 ,//		short unsigned CAN_TEST ;
0x1c ,//		short unsigned CAN_PERR ;
0x20 ,//		short unsigned CAN_REL ;
0x40 ,//		short unsigned CAN_RAM_INIT ;
0x50 ,//		short unsigned CAN_GLB_INT_EN ;
0x54 ,//		short unsigned CAN_GLB_INT_FLG ;
0x58 ,//		short unsigned CAN_GLB_INT_CLR ;
0x80 ,//		short unsigned CAN_ABOTR ;
0x84 ,//		short unsigned CAN_TXRQ_X ;
0x88 ,//		short unsigned CAN_TXRQ_21 ;

0xffff  // short unsigned CAN_LAST_ITEM ;
};
#else
extern volatile long unsigned *CanaRegs ;
extern volatile long unsigned *CanbRegs ;
extern const struct CAN_REGS_ADD cra;
#endif

#endif
