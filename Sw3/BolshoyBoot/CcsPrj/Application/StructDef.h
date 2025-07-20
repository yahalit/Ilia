

#ifndef STRUCTDEF_H_DEFINED
#define STRUCTDEF_H_DEFINED

#include "../Drivers/DriverDefs.h"
#include "CanResponser.h"
#include "CanSlave.h"
#include "TimerArr.h"
#include "BlTimerAlloc.h"
#include "../Drivers/Flash/flash_programming_f2838x_c28x.h"
#include "BootConstDef.h"

#ifdef EXTERN_TAG
#undef EXTERN_TAG
#endif

#ifdef VARS_OWNER
#define EXTERN_TAG
#else
#define EXTERN_TAG extern
#endif




//#define M_2_LONG_FAC 10000.0F
//#define LONG_2_M_FAC (1.0F/M_2_LONG_FAC)


//#define OWN_EXP_ID 50

#ifndef NULL
#define NULL 0
#endif



enum SdoAbortErrorCode
{
    Toggle_bit_not_alternated = 0x05030000,
    SDO_protocol_timed_out = 0x5040000 ,
    Client_server_command_specifier_not_valid_or_unknown = 0x5040001 ,
    Object_does_not_exist_in_the_object_dictionary = 0x06020000,
    Unsupported_access_to_an_object = 0x6010000,
    General_parameter_incompatibility_reason = 0x6040043,
    length_of_service_parameter_does_not_match=0x6070010,
    Sub_index_does_not_exist = 0x6090011,
    Out_of_memory = 0x5040005,
    Invalid_block_size = 0x5040002,
    Invalid_sequence_number = 0x5040003,
    crc_error = 0x5040004,
    Manufacturer_error_detail = 0x9000000
};

#define EXP_FATAL (short)(-1)   // Fatal - dead duck
#define EXP_WARN  (short)(-2)   // For warning
#define EXP_ABORT  (short)(-3)  // Abort auto actions

#define exp_bootout_timeout 0x8888
#define exp_sdo_timeout     0x8889
#define exp_sdo_bad_multiplexor 0x888a



#define N_SPI_ERR_LOG_SIZE 16

struct CSpiErrRecord
{
    long  SysTime ;
    short ErrCode ;
    short txcntr ;
}  ;

struct CSpiErrorLog
{
    short nPut   ;
    short nGet ;
    struct CSpiErrRecord Logs[N_SPI_ERR_LOG_SIZE];
};
EXTERN_TAG volatile struct CSpiErrorLog SpiErrorLog ;
EXTERN_TAG volatile short WasSpiError ;
EXTERN_TAG unsigned short MV8 ;

struct CHostHandleStr
{
    //short unsigned NoComCnt     ; //!< Count of consecutive cycles in which no characters are received
    short unsigned IsrLock       ; //!< Lock for preventing ISR preemption
    short unsigned CycleCntr    ; //!< Cycle counter per interrupt slow handling
    short unsigned AdcAccumCnt  ; //!< Counts the "Small" interrupts before forking to the C interrupt
    //short unsigned NewData    ;   // Marker that new data arrived
    short unsigned KillHostSpi ; // !< 1 to kill host SPI messages
    //short unsigned TStamp   ;   // Time stamp, resolution 16usec
    //short unsigned *NextRxBuf ;        //!< The next buffer for receiving a message
    //short unsigned *ReadyRxBuf ;    //!< Buffer for fully read, unchecked SPI message
    //short unsigned *NextTxBuf ;        //!< The next buffer for transmitting a message
    short unsigned Tx2HostCtr ;  //!< Tx counter for message following
    short unsigned CCanMsgSize ;  //!< Size of CCanMsg struct
    short unsigned RxFromHostCtr ;  //!< Rx counter for message following
    short unsigned OpCode ; // !< Last valid accepted Op code
    short unsigned MajorCFlag; // !< Flag that the C routine is to be called
    //short unsigned DataSrc     ; // 1 for host , 2 for debug
    short Algn ;
} ;
EXTERN_TAG volatile struct CHostHandleStr   HostHandleStr ;




EXTERN_TAG struct CCAN_IF CAN_IFRx ;


/**
* \struct periodically sampled timing information
*/
struct CIsrTimer
{
    long UsecTimer ;
    long UsecTimerAtMsec ;
    long mSecTimer ;
    long mSecTimerAtSec ;
    long SecTimer ;
    long OneOver1000Iq32 ; //!< ceil(2^32/1000)
} ;

EXTERN_TAG struct CIsrTimer IsrTimer;

/**
 *\struct Bitfield: Define the properties of a numeric field
 */
struct CCmdMode
{
    int unsigned SetFun : 1 ;
    int unsigned IsFloat : 1 ;
    int unsigned IsUnsigned : 1 ;
    int unsigned IsShort : 1 ;
    int unsigned WriteProtect : 1 ;
    int unsigned IsDouble : 1 ;
    int unsigned rest : 10 ;
} ;


struct CCanDebug
{
    long  unsigned data0 ;
    long  unsigned data1 ;
    short unsigned nToHost ;     // !< lsb: Number of messages awaiting acceptance msb: first nibble zero if valid, msb is data length
    short unsigned cobId ;
};

EXTERN_TAG struct CCanDebug CanDebug;


struct CSysState
{
    short unsigned SdoCounter ; //!< Counts the SDO transmitted in the wakeup proc
    short unsigned CanRxEnable ; //!<Enable the reception of CAN messages from RB
    short unsigned CanPdRxEnable ; //!<Enable the reception of CAN messages form PD
    short ProcExecuting ; // !< Flag that main processing is executing, avoiding preemption
    short unsigned ProcCtr      ; // !< Counts 2msec interrupts between a processing event
    short unsigned ProcCtrMax   ; // !< Number of 2msec ticks between major procs
    short ProcRequest   ; // !< A ready request for the main processing task
    short unsigned LastErrorCode ;// !< Last recorded error code
};
EXTERN_TAG struct CSysState SysState;


struct CHostMessageStr
{
    unsigned short  Counters ; //
    unsigned short  Opcode;
    unsigned short  TimeTag_L;
    unsigned short  TimeTag_H;
    short unsigned  msgBuffer [HOST_SINGLE_MESSAGE_MAX_LEN];
    //short unsigned *msgBody ;
    short unsigned Checksum ;
    short unsigned csOdd ;
    short unsigned csEven ;
    short unsigned State ;
    short unsigned ErrorSignal ;
    short unsigned EvenCollect   ;
    short unsigned MessageLength  ;
    short unsigned InbufCnt ;
    short unsigned StatusMessagePeriod ;
    short unsigned BITMessagePeriod    ;
    short unsigned TravelInfoMessagePeriod;
    short unsigned ManipulatorStatusMessagePeriod;
    short unsigned TrayStatusMessagePeriod ;
    short unsigned RawSensorsStatusMessagePeriod ;
    short unsigned StatusMessageCntr ;
    short unsigned BITMessageCntr    ;
    short unsigned TravelInfoMessageCntr;
    short unsigned ManipulatorStatusMessageCntr;
    short unsigned TrayStatusMessageCntr ;
    short unsigned RawSensorsStatusMessageCntr ;
    short unsigned StatusMessageTrigger ;
    short unsigned BITMessageTrigger    ;
    short unsigned TravelInfoMessageTrigger;
    short unsigned ManipulatorStatusMessageTrigger ;
    short unsigned TrayStatusMessageTrigger ;
    short unsigned RawSensorsStatusMessageTrigger ;
    short unsigned bConfigurationReceived ;
    long  unsigned RcVersion  ; // Version of robot controller
    long  unsigned RxCharCounter ; // Accepted character counter
    long  unsigned TxCharCounter ; // Tx character counter
    long  unsigned TxMsgCounter ; // Tx message counter
    long  unsigned RxMsgCounter ; // Rx message counter
    long  unsigned PlaceInTxBuf ;
    short unsigned HostMessageList[32];
    short unsigned Permission ;
    short unsigned HostMessageListPutPtr ;
    short unsigned HostMessageListFetchPtr ;
};
EXTERN_TAG volatile struct CHostMessageStr HostMessageStr  ;

struct CUsMessageStr
{
    unsigned short  Counters ; //
    unsigned short  Opcode;
    unsigned short  TimeTag_L;
    unsigned short  TimeTag_H;
    short unsigned  msgBuffer [HOST_SINGLE_MESSAGE_MAX_LEN];
    //short unsigned *msgBody ;
    short unsigned Checksum ;
    short unsigned csOdd ;
    short unsigned csEven ;
    short unsigned State ;
    short unsigned ErrorSignal ;
    short unsigned EvenCollect   ;
    short unsigned MessageLength  ;
    short unsigned InbufCnt ;
    long  unsigned RxCharCounter ; // Accepted character counter
    long  unsigned TxCharCounter ; // Tx character counter
    long  unsigned TxMsgCounter ; // Tx message counter
    long  unsigned RxMsgCounter ; // Rx message counter
    long  unsigned PlaceInTxBuf ;
    short unsigned Permission ;
    short unsigned HostMessageListPutPtr ;
    short unsigned HostMessageListFetchPtr ;
    short unsigned TxBufPutPtr  ;
    short unsigned TxBufFetchPtr  ;
    short unsigned RxBufPutPtr  ;
    short unsigned RxBufFetchPtr  ;
};
EXTERN_TAG volatile struct CUsMessageStr Us1MessageStr  ;
EXTERN_TAG volatile struct CUsMessageStr Us2MessageStr  ;

EXTERN_TAG void (*FastSciRxHandlerFunc) (short unsigned c ) ;

struct CEncoder
{
    float Speed ;
    long  Position ; // !< Continuously integrated position
    long  Time ;
    short unsigned Init ;
};
EXTERN_TAG struct CEncoder WheelEncR ;
EXTERN_TAG struct CEncoder WheelEncL ;



EXTERN_TAG struct CSysTimerStr SysTimerStr ;


//EXTERN_TAG short unsigned HostSpiNextRxBuf[SPI_MSG_LEN+1]; // !< SPI temporary buffer
//EXTERN_TAG short unsigned HostSpiReadyRxBuf[SPI_MSG_LEN+1];// !< SPI temporary buffer
#define HOST_RX_MOD 511
#define HOST_TX_MOD 511

EXTERN_TAG short unsigned HostTxBuf[HOST_TX_MOD+1]; // !< SPI temporary buffer
EXTERN_TAG short unsigned HostTxBufPutPtr  ;
EXTERN_TAG short unsigned HostTxBufFetchPtr  ;




EXTERN_TAG short unsigned HostRxBuf[HOST_RX_MOD+1]; // !< SPI temporary buffer
EXTERN_TAG short unsigned HostRxBufPutPtr  ;
EXTERN_TAG short unsigned HostRxBufFetchPtr  ;


EXTERN_TAG short unsigned StartSciRxValid;
EXTERN_TAG short unsigned FastMessageLength;
EXTERN_TAG short unsigned FastInbufCnt;


EXTERN_TAG struct CCanQueue CanSlaveInQueue ;
EXTERN_TAG struct CCanQueue CanSlaveOutQueue ;
EXTERN_TAG struct CCanQueue CanSlaveInQueueB ;
EXTERN_TAG struct CCanQueue CanSlaveOutQueueB ;



EXTERN_TAG long unsigned CanInMsgCntr ;
EXTERN_TAG struct CCanMsg canHistory[32] ;
EXTERN_TAG long unsigned DebugVec[8] ;
EXTERN_TAG short unsigned NMTService ;


EXTERN_TAG unsigned long SlaveSdoBuf[SDO_BUF_LEN_LONGS];

EXTERN_TAG long unsigned TxRdyGlobal ;
EXTERN_TAG long unsigned ManTxRdyGlobal ;

EXTERN_TAG struct CSdo SlaveSdo ;

EXTERN_TAG short unsigned PROJ_CAN_ID;

EXTERN_TAG short unsigned ProgramBufferLength ;

EXTERN_TAG struct CCanStat CanStat;
//EXTERN_TAG short TempSpiBuf[SPI_MSG_LEN] ;

#include "Functions.h"


#endif
