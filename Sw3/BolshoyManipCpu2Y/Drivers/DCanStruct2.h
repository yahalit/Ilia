/*
 * DCanStruct2.h
 *
 *  Created on: Sep 7, 2023
 *      Author: yahal
 */

#ifndef DRIVERS_DCANSTRUCT2_H_
#define DRIVERS_DCANSTRUCT2_H_




struct CCan_EE
{
    int unsigned LastErrorCode : 3 ;
    int unsigned TxOk : 1 ;
    int unsigned RxOk : 1 ;
    int unsigned ErrorPassive : 1 ;
    int unsigned WarningState : 1 ;
    int unsigned BusOff : 1 ;
    int unsigned WakeupPend : 1 ;
    int unsigned LocalPowerDown : 1 ;
    int unsigned Spare : 5 ;
};
union UCan_EE
{
    long   unsigned all ;
    struct CCan_EE bits ;
};

struct CCanERRC
{
    int unsigned TransmitErrorCnt : 8 ;
    int unsigned ReceiveErrorCnt  : 7 ;
    int unsigned RxErrorPassive : 1 ;
};

union UCanERRC
{
    long   unsigned all ;
    struct CCanERRC bits ;
};

struct CCanBtr
{
    int unsigned BRP : 6 ;
    int unsigned SJW : 2 ;
    int unsigned TSEG1 : 4 ;
    int unsigned TSEG2 : 3 ;
    int unsigned Res1 : 1 ;
};

union UCanBtr
{
    long   unsigned all ;
    struct CCanBtr bits ;
};

struct CCanRel
{
    int unsigned Day : 8 ;
    int unsigned Mon : 8 ;
    int unsigned Year: 4 ;
    int unsigned SubSteo : 4 ;
    int unsigned Step: 4 ;
    int unsigned REL : 4 ;
};



struct CCanCtl
{
    short unsigned  Init : 1 ;
    short unsigned  IE0 : 1 ;
    short unsigned  SIE : 1 ;
    short unsigned  EIE : 1 ;
    short unsigned  Res1 : 1 ;
    short unsigned  Dar : 1 ;
    short unsigned  CCE : 1 ;
    short unsigned  Test : 1 ;
    short unsigned  Ids : 1 ;
    short unsigned  ABO : 1 ;
    short unsigned  PMD : 4 ;
    short unsigned  Res2 : 1 ;
    short unsigned  SWR : 1 ;
    short unsigned  INITDBG : 1 ;
    short unsigned  IE1 : 1 ;
    short unsigned  Res3 : 6 ;
    short unsigned  PDR : 1 ;
    short unsigned  WUBA : 1 ;
    short unsigned  Res4 : 6 ;
};

union UCanCtl
{
    long   unsigned all ;
    struct CCanCtl CanCtl;
};



#ifndef CCAN_IF_DEF
#define CCAN_IF_DEF
struct CCanStat
{
    union UCan_EE  Can_EE;
    union UCanERRC CanERRC;
    union UCanBtr  CanBtr;
    long  unsigned CanTxRequest ;
    union UCanCtl CanCtl;
};

struct CCAN_IF
{
    long unsigned cmd;  // Just for order: first address of IF
    long unsigned mask;
    long unsigned arb ;
    long unsigned mctl ;
    long unsigned data0 ;
    long unsigned data1 ;
};
#define N_CAN_TRAPS 64
#define N_CAN_TRAPS_RESERVOIR 16
#endif


/**
Struct to describe a CAN message
NEVER CHANGE THE ARRANGEMENT OF ITEMS IN THIS STRUCT !!!!!
*/
struct CCanMsg
{
    long unsigned data[2] ; //!< Data payload.
    long unsigned cobId   ;  //!< The ID (short or long )
    short dLen ;    //!< Data length (amount of valid bytes in data[]
    short LogicId     ;  //!< Flag: 1 - use long ID (29 bit)
} ;

#define N_SLAVE_QUEUE 32
struct CCanQueue
{
    struct CCanMsg Msg[N_SLAVE_QUEUE]; //!< The message queue
    short  unsigned nPut ;   //!< Where to put
    short  unsigned nGet ;   //!< Wait for fetch
    short  unsigned nQueue ; //!< Number of entries in queue , must be 2^(integer)
};
/*
 * Struct to describe a single CAN trap
 */
struct CCanTrap
{
    short  ReuseCnt  ;//!< If -1, trap is permanent (use sendHandler for data synthesis), 0: Wait send, 1: Wait response
    short unsigned GetCobId  ;//!< The COB ID we are waiting to (0xffff: We wait nothing, it will go to garbage collection)
    struct CCanMsg Msg       ;//!< The comming message to interpret.
    long unsigned arg        ;//!< Argument for exception handler
    long unsigned *ptr       ;//!< Argument for for trap handler
    //struct CCanTrap * me   ;//!< address of The trap record itself
    short (*TrapHandler) ( struct CCanTrap * me) ; //!< The get handler function
    short (*ToutHandler) ( struct CCanTrap * me) ; //!< The time out handler function
    long long TimeSet        ; //!< The time for putting the CAN trap to place
    long TimeOut             ; //!< The maximum time for getting response
} ;

/*
 * Struct of traps for incoming CAN messages
 */
struct CCanTrapQueue
{
    short unsigned nPut ;//!< Put to queue counter
    struct CCanTrap Traps[N_CAN_TRAPS] ; //!< Trap array
};

struct CCanTrapQueueReservoir
{
    short unsigned ScoreBoard[N_CAN_TRAPS_RESERVOIR] ;//!<Resorvoire use scoreboard
    struct CCanTrap Traps[N_CAN_TRAPS_RESERVOIR] ; //!< Trap array
};


#define N_EMCY_QUEUE 16
struct CEmergencyRecord
{
    short unsigned EmcyCode ;
    short unsigned ErrorReg ;
    long  unsigned SpecificError ;
    long unsigned  EmcyCtr ; //!< Reflection of total emcy counter
};

struct CEmergencyLog
{
    struct CEmergencyRecord EmergencyRecord[N_EMCY_QUEUE] ;
    short unsigned nPut ;
    short unsigned nGet ;
    long  unsigned EmcyCtr ; //!< Total emergency counter
    long unsigned SpecificError ; //!<Manufacturer specific error
};


//*****************************************************************************
//
// The following are defines for the bit fields in the CAN_IF3UPD register
//
//*****************************************************************************
#define CAN_IF3UPD_IF3UPDEN_S     0
#define CAN_IF3UPD_IF3UPDEN_M     0xFFFFFFFF  // IF3 Update Enabled


struct CAN_REGS_ADD {
    short unsigned rCAN_CTL ;
    short unsigned rCAN_ES  ;
    short unsigned rCAN_ERRC ;
    short unsigned rCAN_BTR ;
    short unsigned rCAN_INT ;
    short unsigned rCAN_TEST ;
    short unsigned rCAN_PERR ;
    short unsigned rCAN_REL ;
    short unsigned rCAN_RAM_INIT ;
    short unsigned rCAN_GLB_INT_EN ;
    short unsigned rCAN_GLB_INT_FLG ;
    short unsigned rCAN_GLB_INT_CLR ;
    short unsigned rCAN_ABOTR ;
    short unsigned rCAN_TXRQ_X ;
    short unsigned rCAN_TXRQ_21 ;
    short unsigned rCAN_LAST_ITEM ;
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
//#define CAN_GLB_INT_EN 0x50
#define DCAN_CAN_ABOTR 0x80

//------CAN bit rate timing parameters------//
//WARNING: There is very little sanity checking in these calculations. See DCAN spec section 1.16
//for additional requirements. Among other things, you must ensure that one bit takes between
//8 and 25 time quanta, and that Tseg1 and Tseg2 can fit into their respective register fields.
//The main user-controllable parameters here are:
//
//Bit rate  (bits/sec)  CAN bit rate -- must match the rest of the CAN network
//SYSCLK    (hertz)     System clock frequency, which feeds the DCAN module
//BRP       -           Bit rate prescaler, which divides down SYSCLK to provide the bit clock
#define DCAN_BOOT_RATE      500000L
#define DCAN_BOOT_SYSCLK    200000000L
#define DCAN_BOOT_BRP       20L

//Other parameters are defined according to the instructions in section 1.16.2.1
//of the DCAN spec. Exception: This code rounds PhSeg1 up and PhSeg2 down since
//a later sample time works better on most networks. This is implemented by rounding
//down PhSeg2 first, then computing PhSeg1 as Tphase - PhSeg2. Calculating in this
//order also lets us limit Tseg2 to 8 so it will fit in the register.
//
//Bit clock (hertz)     Equal to SYSCLK / BRP by definition; each bit clock is one time quantum (Tq)
//Bit time  (Tq)        Number of time quanta per bit; the ratio of bit clock frequency to bit rate
//Tsync     (Tq)        Synchronization time delay: Fixed at 1 Tq by the CAN protocol
//Tprop     (Tq)        Propagation delay: <2 microseconsd for a <1000 foot bus; assumed to be <2 Tq
//Tphase    (Tq)        Phase compensation buffer for oscillator tolerance: The remainder of the bit time
//PhSeg1    (Tq)        Phase segment 1: Pre-sample buffer; half of the phase time, rounded up (<=16)
//PhSeg2    (Tq)        Phase segment 2: Post-sample buffer; half of the phase time, rounded down (<=8)
#define DCAN_BOOT_BITCLK    (DCAN_BOOT_SYSCLK / DCAN_BOOT_BRP)
#define DCAN_BOOT_BITTIME   (DCAN_BOOT_BITCLK / DCAN_BOOT_RATE)
#if (DCAN_BOOT_BITTIME > 25)
    #error "DCAN boot loader config error: bit time cannot exceed 25 time quanta!"
#endif
#define DCAN_BOOT_TSYNC     1L
#define DCAN_BOOT_TPROP     2L
#define DCAN_BOOT_TPHASE    (DCAN_BOOT_BITTIME - (DCAN_BOOT_TSYNC + DCAN_BOOT_TPROP))
#define DCAN_BOOT_PHSEG2    ((DCAN_BOOT_TPHASE / 2L <= 8) ? DCAN_BOOT_TPHASE / 2L : 8)
#define DCAN_BOOT_PHSEG1    (DCAN_BOOT_TPHASE - DCAN_BOOT_PHSEG2)

//These parameters are then converted into register values. All parameters
//are -1 in the register:
//
//Tseg1     (Tq)        Everything between sync and sample: Tprop + PhSeg1; MUST BE LESS THAN 8
//Tseg2     (Tq)        Everything between sample and next time: PhSeg2; MUST BE LESS THAN 16
//Tsjw      (Tq)        Synchronization jump width: The lesser of 4 and PhSeg1
//BRPEREG   -           Upper 4 bits of bit prescaler; SUBTRACT ONE FROM BRP BEFORE COMPUTING THIS
//BRPREG    -           Lower 6 bits of bit prescaler; SUBTRACT ONE FROM BRP BEFORE COMPUTING THIS
#define DCAN_BOOT_TSEG1     ((DCAN_BOOT_PHSEG1 + DCAN_BOOT_TPROP) - 1)
#define DCAN_BOOT_TSEG2     (DCAN_BOOT_PHSEG2 - 1)
#define DCAN_BOOT_TSJW      (((DCAN_BOOT_PHSEG1 > 4L) ? 4L : DCAN_BOOT_PHSEG1) - 1)
#define DCAN_BOOT_BRPEREG   ((DCAN_BOOT_BRP - 1L) / 64L)
#define DCAN_BOOT_BRPREG    ((DCAN_BOOT_BRP - 1L) % 64L)
#define DCAN_BOOT_BTRREG    (DCAN_BOOT_BRPEREG<<16 | DCAN_BOOT_TSEG2<<12 | DCAN_BOOT_TSEG1<<8 | DCAN_BOOT_TSJW<<6 | DCAN_BOOT_BRPREG)





#ifdef CAN_OWNER
//volatile long unsigned *CanaRegs ;
//volatile long unsigned *CanbRegs ;
const struct CAN_REGS_ADD cradd = {
0, //       short unsigned CAN_CTL ;
4, //       short unsigned CAN_ES  ;
8, //       short unsigned CAN_ERRC ;
0xc, //     short unsigned CAN_BTR ;
0x10,//     short unsigned CAN_INT ;
0x14 ,//        short unsigned CAN_TEST ;
0x1c ,//        short unsigned CAN_PERR ;
0x20 ,//        short unsigned CAN_REL ;
0x40 ,//        short unsigned CAN_RAM_INIT ;
0x50 ,//        short unsigned CAN_GLB_INT_EN ;
0x54 ,//        short unsigned CAN_GLB_INT_FLG ;
0x58 ,//        short unsigned CAN_GLB_INT_CLR ;
0x80 ,//        short unsigned CAN_ABOTR ;
0x84 ,//        short unsigned CAN_TXRQ_X ;
0x88 ,//        short unsigned CAN_TXRQ_21 ;

0xffff  // short unsigned CAN_LAST_ITEM ;
};
#else
//extern volatile long unsigned *CanaRegs ;
//extern volatile long unsigned *CanbRegs ;
extern const struct CAN_REGS_ADD cradd;
#endif



//#define CANA_BASE               0x00048000   // CAN-A
//#define CANA_MSG_RAM            0x00049000



#endif /* DRIVERS_DCANSTRUCT2_H_ */
