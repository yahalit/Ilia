#ifndef DCAN_STRUCT_H_DEFINED
#define DCAN_STRUCT_H_DEFINED

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

union UCanRel
{
	long   unsigned all ;
	struct CCanRel CanRel;
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


struct CCanStat
{
	union UCan_EE  Can_EE;
	union UCanERRC CanERRC;
	union UCanBtr  CanBtr;
	union UCanRel CanRel ;
	union UCanCtl CanCtl;
};


struct CCAN_IF
{
	long unsigned cmd; 	// Just for order: first address of IF
	long unsigned mask;
	long unsigned arb ;
	long unsigned mctl ;
	long unsigned data0 ;
	long unsigned data1 ;
};

#define N_CAN_TRAPS 64
#define N_CAN_TRAPS_RESERVOIR 16

/**
Struct to describe a CAN message
NEVER CHANGE THE ARRANGEMENT OF ITEMS IN THIS STRUCT !!!!!
*/
struct CCanMsg
{
    long unsigned data[2] ; //!< Data payload.
    long unsigned cobId   ;  //!< The ID (short or long )
    short dLen ;    //!< Data length (amount of valid bytes in data[]
    short UseLongId     ;  //!< Flag: 1 - use long ID (29 bit)
} ;

#define N_SLAVE_QUEUE 16
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
    short (*SendHandler) ( struct CCanTrap * me) ; //!< The send handler function (if 0, CAN data is simply copied from Msg)
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




#endif
