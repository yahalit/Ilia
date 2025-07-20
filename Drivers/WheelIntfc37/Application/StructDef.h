/*
 * StructDef.h
 *
 *  Created on: Jun 17, 2023
 *      Author: yahal
 */

#ifndef APPLICATION_STRUCTDEF_H_
#define APPLICATION_STRUCTDEF_H_

#include <stddef.h>
#include "..\Drivers\LowLevel.h"
#include "Constdef.h"
#include "..\Drivers\board.h"

#include "..\Drivers\ClaDefs.h"
#include "CanStruct.h"
#include "TimerArr.h"
#include "TimerAlloc.h"

#include "Revisions.h"
#include "Config.h"


typedef void (*VoidFun)(void) ;

#ifdef APP_OWNER
#define EXTERN_TAG
#pragma DATA_ALIGN ( FsiMsgFromSlave , 4 );
#else
#define EXTERN_TAG extern
#endif


#ifdef APP_OWNER
#pragma DATA_SECTION(FsiRxState, "ramgs0to3"); // Assure in DMA-accesible RAM
#endif


#define GetOffsetC(x,y)  offsetof(struct CCalib, x)
#define GetOffsetCC(x,y,z) offsetof(struct CCalib, x[y])

union MultiType
{
    long unsigned ul ;
    long l ;
    short unsigned us[2] ;
    short s[2] ;
    float f;
} ;

union UMultiType
{
    short unsigned us[2] ;
    long unsigned ul ;
    float f ;
    long l ;
    short s[2] ;
};


union ut
{
    float f;
    long  l ;
    unsigned long ul ;
    short s[2] ;
    short unsigned us[2] ;
};

struct CHallsAndStop
{
    int unsigned Halls: 3  ;
    int unsigned Halt : 1  ;
    int unsigned Res  : 12 ;
};


struct CFsiMsg2Slave
{
    float Speed               ; // Encoder counts / sec [0..1]
    short unsigned encoder    ; // Always normalized to 16 bit / rev [2]
    short unsigned OutEncoder ; // Always normalized to 16 bit / rev [3]
    short unsigned FF         ; // [4]
    short unsigned HallsAndStop  ; // struct CHallsAndStop [5]
    short unsigned Bufcounter ; // Buffer counter and total data length [6]
    short unsigned CobidDataLen   ; // COB ID and remain length [7]
    short unsigned data[8]          ; // [8..15]
};

union UFsiMsg2Slave
{
    struct CFsiMsg2Slave  fields ;
    short  unsigned us[16] ;
};


union UFsiCmd2Intfc
{
    short unsigned us ;
    struct
    {
        int unsigned BrakeVolts : 5 ;
        int unsigned BrakeRelease: 1 ;
        int unsigned SwitchWidthSelect: 2  ;
        int unsigned DisableAutoBrake :  1 ;
        int unsigned Reserved : 7 ;
    } bit ;
};

#define EXT_STATUS_MON_MASK    1
#define EXT_STATUS_MREADY_MASK 2


struct CExtStatus
{
    int unsigned MotorOn    : 1 ;
    int unsigned MotorReady : 1 ;
    int unsigned StoEvent   : 1 ; // !< Braking in anticipation for disable by STO
    int unsigned ProfileConverged : 1 ; // !< Indication that profile has converged
    int unsigned MotionConverged : 1 ; // !< Indication that motion tracks with desired precision
    int unsigned MotorFault : 1 ;
    int unsigned QuickStop : 1 ;
    int unsigned BrakesReleaseCmd : 1 ;
    int unsigned PotRefFail : 1 ; // Failure of potentiometer reference voltage
    int unsigned LoopClosureMode : 3 ;
    int unsigned SystemMode : 3 ;
    int unsigned CurrentLimit : 1 ;
    int unsigned NoCalib : 1 ; // Calib failure
    int unsigned GyroNotReady : 1 ; // Gyro still calibrates its offset
    int unsigned RecorderWaitTrigger : 1 ;
    int unsigned RecorderActive : 1 ;
    int unsigned RecorderReady  : 1 ;
    int unsigned RefGenOn  : 1 ;
    int unsigned TRefGenOn  : 1 ;
    int unsigned GyroAbsent : 1 ;
    int unsigned ReferenceMode      : 3 ;
    int unsigned Pdo3IsPotDiff : 1 ;
    int unsigned Configured      : 1 ;
    int unsigned Homed : 1 ;
    int unsigned Din1 : 1 ;
    int unsigned Din2 : 1 ;
};


union UExtStatus
{
    struct CExtStatus  bit ;
    long unsigned all ;
    short unsigned us[2] ;
};


struct CFsiMsgFromSlave
{
    union UExtStatus ExtStatusWord ; // Same format as neck control word
    union UFsiCmd2Intfc Cmd2Intfc  ;
    short iqReport   ;
    short PosReport   ;
    short unsigned ErrorCode  ;
    short unsigned Bufcounter ; // Buffer counter and total data length
    short unsigned CobidDataLen   ; // COB ID and remain length
    short unsigned data[8]          ;
    short unsigned Tag     ;
    short unsigned User     ;
    short unsigned Reserved       ;
} ;

union UFsiMsgFromSlave
{
    struct CFsiMsgFromSlave fields ;
    short  unsigned us[18] ;
};

EXTERN_TAG union UFsiMsgFromSlave FsiMsgFromSlave  ;

struct CFsiRxState
{
    short unsigned FsiRxStat ;
    short unsigned FsiRxFrameInfo ;
    short unsigned FsiRxUserAndTag  ;
    short unsigned ActiveSteeringInFsiMsg ;
    short unsigned AcceptedSteeringInFsiMsg ;
    short unsigned ActiveWheelInFsiMsg ;
    short unsigned AcceptedWheelInFsiMsg ;
};
EXTERN_TAG struct CFsiRxState FsiRxState ;

struct CAxisState
{
    union UMultiType NoFsiMsgCnt ;
    short unsigned FsiMsgReady ;
    union UFsiMsgFromSlave InFsiMsg;
    union UFsiMsg2Slave OutFsiMsg;
    short unsigned WasSync ;
    short unsigned HallKey ;
    short unsigned TagAndUser ;
    short unsigned CanRxCntr  ; // Counts received CAN messages
    short unsigned SlaveId    ; // Slave ID of this axis
    short unsigned ExpectedTag ;
    long unsigned EcapCaptTime ;
    long unsigned EcapNowTime ;
    long unsigned RxCommTime    ;
    struct CCanQueue *pCanOutQueue ;
};

union UPDO2Rx
{
    long unsigned ul[2] ;
    short unsigned us[4] ;
};


struct CMCanSupport
{
    long unsigned  *pFifo0Start ;
    short unsigned Fifo0ElementWidth ;
    short unsigned Fifo0NumElements ; // Must be 2^N
    long unsigned  *pTxBufStart ;
    short unsigned TxBufElementWidth ;
    short unsigned TxNumElements ; // Must be 2^N
    union UPDO2Rx uNMTRx  ;
    long unsigned SyncTrackTime ;
    float MaxInterMessage ;
    float NomInterMessageTime ;
    float MinInterMessage ;
    float LastInterMessageTime ;
    float InterMessageTime ;
    long  Usec4Sync  ;
    long  Usec4ThisMessage ;
    float Usec4ThisMessageDebt ;
    float OneOverActMessageTime ;
    float OneOverNomMessageTime ;
    short unsigned SyncValid ;
    short unsigned PdoDirtyBoardWh ;
    short unsigned PdoDirtyBoardSt ;
    short unsigned NodeStopped  ;
    short unsigned PdoDirtyBoard ;
};


struct CSysTiming
{
    float Ts;
//    long TsInTicks ;
    long UsecTimer ;
    long InterruptCtr ;
    long PwmInterruptCtr ; // Should never count. Only if there is an ECAP miss
    short AxesStopCmdWh  ;
    short AxesStopCmdSt  ;
};


struct COutMsgBuf
{
    short unsigned Msg2SlaveBuf[128] ;
    short unsigned CobIdLength [16]  ;
    short unsigned Msg2SlavePutPtr ;
    short unsigned Msg2SlaveGetPtr ;
};


struct CSysStatus
{
    short unsigned StopCan;
    short unsigned HaltRequest ;
    long  unsigned AbortCnt ;
    long unsigned LongException ;
    short unsigned OverRideBrakeRelease ;
};

#define CBIT_MOTOR_ON_MASK 1
#define CBIT_MOTOR_ON_SHIFTS 0
#define CBIT_MOTOR_READY_MASK 2
#define CBIT_MOTOR_READY_SHIFTS 1
#define CBIT_STO_EVT_MASK 4
#define CBIT_STO_EVT_SHIFTS 2
#define CBIT_PROFILE_CONVERGED_MASK 8
#define CBIT_PROFILE_CONVERGED_SHIFTS 3
#define CBIT_MOTION_CONVERGED_MASK 16
#define CBIT_MOTION_CONVERGED_SHIFTS 4
#define CBIT_MOTION_FAULT_MASK 32
#define CBIT_MOTION_FAULT_SHIFTS 5
#define CBIT_QUICK_STOP_MASK 64
#define CBIT_QUICK_STOP_SHIFTS 6
#define CBIT_BRAKE_RELEASE_MASK 128
#define CBIT_BRAKE_RELEASE_SHIFTS 7
#define CBIT_POT_REF_FAIL_MASK 256
#define CBIT_POT_REF_FAIL_SHIFTS 8
#define CBIT_LOOP_CLOSURE_MASK 0xE00
#define CBIT_LOOP_CLOSURE_SHIFTS 9
#define CBIT_SYSTEM_MODE_MASK 0x7000
#define CBIT_SYSTEM_MODE_SHIFTS 12
#define CBIT_CURRENT_LIMIT_MASK 0x8000
#define CBIT_CURRENT_LIMIT_SHIFTS 15

#define CBIT_NO_CALIB_MASK 0x10000
#define CBIT_NO_CALIB_SHIFTS 16
#define CBIT_GYRO_NOT_READY_MASK 0x20000
#define CBIT_GYRO_NOT_READY_SHIFTS 17
#define CBIT_REC_WAIT_TRIGGER_MASK 0x40000
#define CBIT_REC_WAIT_TRIGGER_SHIFTS 18
#define CBIT_REC_ACTIVE_MASK 0x80000
#define CBIT_REC_ACTIVE_SHIFTS 19
#define CBIT_REC_READY_MASK 0x100000
#define CBIT_REC_READY_SHIFTS 20
#define CBIT_G_REFGEN_ON_MASK 0x200000
#define CBIT_G_REFGEN_ON_SHIFTS 21
#define CBIT_T_REFGEN_ON_MASK 0x400000
#define CBIT_T_REFGEN_ON_SHIFTS 22



struct CCBit
{
    int unsigned MotorOn    : 1 ;
    int unsigned MotorReady : 1 ;
    int unsigned StoEvent   : 1 ; // !< Braking in anticipation for disable by STO
    int unsigned ProfileConverged : 1 ; // !< Indication that profile has converged
    int unsigned MotionConverged : 1 ; // !< Indication that motion tracks with desired precision
    int unsigned MotorFault : 1 ;
    int unsigned QuickStop : 1 ;
    int unsigned BrakesReleaseCmd : 1 ;
    int unsigned PotRefFail : 1 ; // Failure of potentiometer reference voltage
    int unsigned LoopClosureMode : 3 ;
    int unsigned SystemModeMode : 3 ;
    int unsigned CurrentLimit : 1 ;
    int unsigned NoCalib : 1 ; // Calib failure
    int unsigned GyroNotReady : 1 ; // Gyro still calibrates its offset
    int unsigned RecorderWaitTrigger : 1 ;
    int unsigned RecorderActive : 1 ;
    int unsigned RecorderReady  : 1 ;
    int unsigned RefGenOn  : 1 ;
    int unsigned TRefGenOn  : 1 ;
    int unsigned GyroAbsent : 1 ;
    int unsigned Reserved2 : 9 ;
};


union UCBit
{
    struct CCBit  bit ;
    long unsigned all ;
    short unsigned us[2] ;
};



struct CCBit2
{
    int unsigned bAutoBlocked : 1 ;
    int unsigned NodeStopped :  1 ;
    int unsigned bRsvd : 14 ;
};
union UCBit2
{
    struct CCBit2  bit ;
    short unsigned all ;
};


struct CRejectWarning
{
    short IgnoreWarning ;
    short unsigned exp ;
    long Msec ;
};

struct CMot
{
    short unsigned LastException ;
    short unsigned KillingException;
    short unsigned QuickStop ;
    short unsigned SafeFaultCntDown ;
    short unsigned SafeFaultCntDownMax ;
    short unsigned SafeFaultCode ;
    short unsigned ExceptionInit ;
    short unsigned ExceptionCnt ;
    short BrakeRelease ;
    short BrakeControlOverride ;
    short LoopClosureMode ;
    short DisablePeriodicService ;
    long unsigned ExceptionTab[EXCEPTION_TAB_LENGTH] ;
    struct CRejectWarning RejectWarning ;
    float LocalModeBrakeReleaseVolts ;
};

struct CDebug
{
    long SteerPosReport ;
    long WheelPosReport ;
};

struct CSysState
{
    struct CMCanSupport MCanSupport ;
    short ActiveAxis ;
    short MotorOnRequest ;
    struct CAxisState AxisState[2] ;
    struct CAxisState *pAxisRx ; // Points to RX state that receives
    struct CAxisState *pAxisTx ; // Points to RX state that transmits
    struct CSysTiming Timing ;
    struct COutMsgBuf OutMsgBufWh;
    struct COutMsgBuf OutMsgBufSt;
    struct COutMsgBuf * pOutMsgBufTx ;
    union UFsiMsg2Slave  *pMsg2Tx ;
    struct CBlockUpload BlockUpload ;
    struct CBlockDnload BlockDnload ;
    struct CSysStatus Status;
    union UCBit2 CBit2 ;
    struct CMot  Mot ;
    struct CDebug Debug ;
    union UCBit CBit ; // !< Status summary
    union UFsiMsg2Slave Msg2Slave ;
    float fDebug[N_FDEBUG];
    float IdPinVolts ; // !< Volts at the ID pin
    long unsigned SwitchDetectValid ;
    long unsigned RailSwitchStatus ;
//    short  EncoderAtSwitch ;
    short SystemMode ;
    short SwitchRev ;
    short unsigned SwitchWidth ;
    short unsigned WdKickAllow ;
    short unsigned WdKickAllowBg ;
    short bDebugFsi  ;
    short unsigned FreeCanTxQueueSlave ;
    short unsigned FreeCanTxQueueWheel ;
    short unsigned FreeCanTxQueueSteer ;
    short unsigned IsInParamProgramming ;
    short unsigned ParamProgSector ;
    short unsigned SwState ;
    short unsigned SeriousError ;
    long lDebug[N_LDEBUG];
};
EXTERN_TAG struct CSysState SysState ;



struct CFloatParRecord
{
    float * ptr ;
    short unsigned ind;
    float lower ;
    float upper ;
    float dflt ;
} ;




struct CCalibRecord
{
    short unsigned flags ; // !< Define the properties of the number: refer CCmdMode
    long  unsigned ptr ;
    float limit ;
};



EXTERN_TAG union UCalibProg CalibProg;

struct CUartSwBuf
{
    short unsigned buf[UART_SW_INP_BUF_SIZE] ;
    short unsigned nPut ;
    short unsigned nGet ;
};
EXTERN_TAG struct CUartSwBuf UartSwBuf ;

struct CFlashProg
{
    long PassWord ; // !< Must be 0x12345678 to work
    long unsigned AddressInFlash ; // !< Address in flash
    short unsigned InternalBufOffset ;
};
EXTERN_TAG struct CFlashProg  FlashProg ;





EXTERN_TAG union UIdentity IdentityProg;


EXTERN_TAG float FloatParRevision        ;
EXTERN_TAG union UIdentity * pUIdentity ;
EXTERN_TAG union UNVParams * pUNVParams ;
EXTERN_TAG long NVParamsPassWord ;



EXTERN_TAG long unsigned FlashCalib ;

EXTERN_TAG short unsigned RxPutPtr ;
EXTERN_TAG short unsigned TxPutPtr ;
EXTERN_TAG short unsigned RxGetPtr ;
EXTERN_TAG short unsigned TxGetPtr ;


EXTERN_TAG struct CCanQueue CanSlaveInQueue ;
EXTERN_TAG struct CCanQueue CanSlaveOutQueue ;
EXTERN_TAG struct CCanQueue CanWheelOutQueue ;
EXTERN_TAG struct CCanQueue CanSteerOutQueue ;
EXTERN_TAG unsigned long SlaveSdoBuf[SDO_BUF_LEN_LONGS];
EXTERN_TAG struct CSdo SlaveSdo ;
EXTERN_TAG short unsigned CanIdSt ;
EXTERN_TAG short unsigned CanIdWh ;
EXTERN_TAG short unsigned CanIdLocal ;

EXTERN_TAG long unsigned SdoMaxLenLongGlobal ;
EXTERN_TAG struct CSysTimerStr SysTimerStr ;

EXTERN_TAG short unsigned ProjId ;

EXTERN_TAG short unsigned MV8 ;

struct CDBaseConf
{
    short unsigned IsUserConfiguration ;
    short unsigned IsUserHwConfig      ;
    short unsigned IsUserProjId        ;
    short unsigned IsValidIdentity     ;
    short unsigned IsValidDatabase     ;
};

EXTERN_TAG struct CDBaseConf DBaseConf     ;


#ifdef APP_OWNER
const struct CFloatParRecord ParTable [] =
{
#include "ParRecords.h"
    {( float *)0,0xffff,0.0f}
};
const short unsigned N_ParTable = ( sizeof(ParTable) / sizeof(struct CFloatParRecord)  ) ;


const struct CCalibRecord CalibPtrTable [] =
{
#include "CalibDefs.h"
};
const short unsigned N_CALIB_RECS = (sizeof(CalibPtrTable) / sizeof(struct CCalibRecord ) ) ;

/*
 * These parameters must have fixed indices for other SW to identify
 */
const struct CFloatConfigParRecord ConfigTable[] =
{
#include "ConfigPars.h"
};
const short unsigned nConfigPars = sizeof(ConfigTable)/ sizeof(struct CFloatConfigParRecord) ;

const short unsigned crc_ccitt_table[256] = {
    0x0000, 0x1189, 0x2312, 0x329b, 0x4624, 0x57ad, 0x6536, 0x74bf,
    0x8c48, 0x9dc1, 0xaf5a, 0xbed3, 0xca6c, 0xdbe5, 0xe97e, 0xf8f7,
    0x1081, 0x0108, 0x3393, 0x221a, 0x56a5, 0x472c, 0x75b7, 0x643e,
    0x9cc9, 0x8d40, 0xbfdb, 0xae52, 0xdaed, 0xcb64, 0xf9ff, 0xe876,
    0x2102, 0x308b, 0x0210, 0x1399, 0x6726, 0x76af, 0x4434, 0x55bd,
    0xad4a, 0xbcc3, 0x8e58, 0x9fd1, 0xeb6e, 0xfae7, 0xc87c, 0xd9f5,
    0x3183, 0x200a, 0x1291, 0x0318, 0x77a7, 0x662e, 0x54b5, 0x453c,
    0xbdcb, 0xac42, 0x9ed9, 0x8f50, 0xfbef, 0xea66, 0xd8fd, 0xc974,
    0x4204, 0x538d, 0x6116, 0x709f, 0x0420, 0x15a9, 0x2732, 0x36bb,
    0xce4c, 0xdfc5, 0xed5e, 0xfcd7, 0x8868, 0x99e1, 0xab7a, 0xbaf3,
    0x5285, 0x430c, 0x7197, 0x601e, 0x14a1, 0x0528, 0x37b3, 0x263a,
    0xdecd, 0xcf44, 0xfddf, 0xec56, 0x98e9, 0x8960, 0xbbfb, 0xaa72,
    0x6306, 0x728f, 0x4014, 0x519d, 0x2522, 0x34ab, 0x0630, 0x17b9,
    0xef4e, 0xfec7, 0xcc5c, 0xddd5, 0xa96a, 0xb8e3, 0x8a78, 0x9bf1,
    0x7387, 0x620e, 0x5095, 0x411c, 0x35a3, 0x242a, 0x16b1, 0x0738,
    0xffcf, 0xee46, 0xdcdd, 0xcd54, 0xb9eb, 0xa862, 0x9af9, 0x8b70,
    0x8408, 0x9581, 0xa71a, 0xb693, 0xc22c, 0xd3a5, 0xe13e, 0xf0b7,
    0x0840, 0x19c9, 0x2b52, 0x3adb, 0x4e64, 0x5fed, 0x6d76, 0x7cff,
    0x9489, 0x8500, 0xb79b, 0xa612, 0xd2ad, 0xc324, 0xf1bf, 0xe036,
    0x18c1, 0x0948, 0x3bd3, 0x2a5a, 0x5ee5, 0x4f6c, 0x7df7, 0x6c7e,
    0xa50a, 0xb483, 0x8618, 0x9791, 0xe32e, 0xf2a7, 0xc03c, 0xd1b5,
    0x2942, 0x38cb, 0x0a50, 0x1bd9, 0x6f66, 0x7eef, 0x4c74, 0x5dfd,
    0xb58b, 0xa402, 0x9699, 0x8710, 0xf3af, 0xe226, 0xd0bd, 0xc134,
    0x39c3, 0x284a, 0x1ad1, 0x0b58, 0x7fe7, 0x6e6e, 0x5cf5, 0x4d7c,
    0xc60c, 0xd785, 0xe51e, 0xf497, 0x8028, 0x91a1, 0xa33a, 0xb2b3,
    0x4a44, 0x5bcd, 0x6956, 0x78df, 0x0c60, 0x1de9, 0x2f72, 0x3efb,
    0xd68d, 0xc704, 0xf59f, 0xe416, 0x90a9, 0x8120, 0xb3bb, 0xa232,
    0x5ac5, 0x4b4c, 0x79d7, 0x685e, 0x1ce1, 0x0d68, 0x3ff3, 0x2e7a,
    0xe70e, 0xf687, 0xc41c, 0xd595, 0xa12a, 0xb0a3, 0x8238, 0x93b1,
    0x6b46, 0x7acf, 0x4854, 0x59dd, 0x2d62, 0x3ceb, 0x0e70, 0x1ff9,
    0xf78f, 0xe606, 0xd49d, 0xc514, 0xb1ab, 0xa022, 0x92b9, 0x8330,
    0x7bc7, 0x6a4e, 0x58d5, 0x495c, 0x3de3, 0x2c6a, 0x1ef1, 0x0f78
};


#else
extern const struct CFloatParRecord ParTable[] ;
extern const short unsigned N_ParTable ;
extern const short unsigned N_CALIB_RECS;
extern const struct CCalibRecord CalibPtrTable [] ;
extern const struct CFloatConfigParRecord ConfigTable[] ;
extern const short unsigned nConfigPars ;
extern const short unsigned crc_ccitt_table[] ;

#endif
struct CRecorderSig
{
    short unsigned flags ; // !< Define the properties of the number: refer CCmdMode
    long  unsigned * ptr ;
};

#ifdef APP_OWNER

const struct CRecorderSig RecorderSigRaw[] =
{
#include "ProjRecorderSignals.h"
};
const short unsigned NREC_SIG = sizeof(RecorderSigRaw) / sizeof(struct CRecorderSig);
#endif

#include "Functions.h"
#include "..\SharedH\Recorder.h"

inline
short unsigned BlockInts(void)
{
    return (unsigned short) __disable_interrupts( );
}


inline
void RestoreInts(short unsigned d)
{
    __restore_interrupts(d) ;
}

inline
float fSat( float x , float y )
{
    return __fmax(__fmin(x,y),-y);
}


inline
float fSign( float x)
{
    return ( x >= 0 ? 1 : -1 ) ;
}

#define Sat2Side(x,xl,xh)  __fmin(__fmax((x),(xl)),(xh))


inline
long unsigned AxisStatus( short unsigned cnt)
{
    return SysState.AxisState[cnt].InFsiMsg.fields.ExtStatusWord.all ;
}

inline
short unsigned IsMotorOn( short unsigned cnt)
{
    union UExtStatus ExtStatusWord ;
    ExtStatusWord.all = AxisStatus(cnt) ;
    return ( ExtStatusWord.bit.MotorOn & (EXT_STATUS_MON_MASK|EXT_STATUS_MREADY_MASK) ) ? 1 : 0 ;
}


inline unsigned short crc_ccitt_byte(short unsigned _crc, short unsigned c)
{
    return (_crc >> 8) ^ crc_ccitt_table[(_crc ^ c) & 0xff];
}



#endif /* APPLICATION_STRUCTDEF_H_ */
