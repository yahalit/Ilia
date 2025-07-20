

#ifndef STRUCTDEF_H_DEFINED
#define STRUCTDEF_H_DEFINED

#define CORE2_OWNS_CAN 1
#define WARM_PROG_STOP_USER
#define SEPARATE_BRAKE



#ifdef SEPARATE_BRAKE
#define Default_PinMotorCurrentAmp 0.6f
#define Default_WheelArmLeaderCurPressLimit -3.0f
#else
#define Default_PinMotorCurrentAmp 1.65f
#define Default_WheelArmLeaderCurPressLimit -1.0f
#endif

//#define DFT_AXES

#include "ConstDef.h"

// TODO
// If PDU times out, disable STO
// if conditions are good, release STO
// If 18V is down, revive 18V


#define QID_BASIS 0x2010
#define WID_BASIS 0x8020

#define QID QID_BASIS
#define WID WID_BASIS

#define MANIP2
#define TUNNEL_MSG

#define N_SCRATCH_SCI_TX_BUF 128

#define CAN_ID_EEF 122

#define WARM_WAIT_USER_EXETEND 1
//#define WARM_WAIT_USER_RETRACT 1
// The following defines enable compilation in VC environment 
#ifdef _LPSIM

#include <stdio.h> 
#include <string.h> 


#define COND_CONST
#define __attribute__( )  
#define __interrupt
void AsmCode(char* str); 
//unsigned int ___byte_peripheral_32(long unsigned x); 
#define __asm(x) AsmCode(x) 
#define _asm(x) AsmCode(x) 
#define __cregister
#define NOP    AsmCode(" NOP")
#define  EINT   AsmCode(" clrc INTM")
#define  DINT   AsmCode(" setc INTM")
#define  ERTM   AsmCode(" clrc DBGM")
#define  DRTM   AsmCode(" setc DBGM")
#define  EALLOW AsmCode(" EALLOW")
#define  EDIS   AsmCode(" EDIS")
#define  ESTOP0 __asm(" ESTOP0")
#define IDLE  AsmCode("IDLE")  
//#define __byte_peripheral_32(x) ___byte_peripheral_32(x) 

#else
#define COND_CONST const
#endif


#include "../Drivers/DriverDefs.h"
#include "..\SharedH\SysUtils.h"
#include "TimerArr.h"
#include "CanResponser.h"
#include "CanSlave.h"
#include "TimerArr.h"
#include "BlTimerAlloc.h"
#include "../Drivers/Flash/flash_programming_f2838x_c28x.h"
#include "../Drivers/ClaShared.h"


#include "..\SharedH\SysDef.h"
#include "..\..\..\BhAxes\ErrorCodes.h"

#include "..\SharedH\TrapezeProfiler.h"

#include "..\SharedH\Recorder.h"
#include "..\SharedH\SharedStruct.h"

#include "..\..\..\BHAxes\BhAxes.h"
//#include <DCanStruct.h>
#ifndef _LPSIM
#ifdef VARS_OWNER
#pragma DATA_SECTION(M2S,"MSGRAM_CPU1_TO_CPU2");
#pragma DATA_SECTION(S2M,"MSGRAM_CPU2_TO_CPU1");
#endif
#endif


#include "..\..\..\BHAxes\M2S_S2M.h"

#include <math.h>



#ifdef EXTERN_TAG
#undef EXTERN_TAG
#endif

#ifdef VARS_OWNER
#define EXTERN_TAG

#else
#define EXTERN_TAG extern
#endif




#define PROJ_TYPE 0x8180L // LB main
#define PROJ_TYPE2 0x8580L // LB CPU2










enum E_DifferentialProfiles
{
    E_DiffDriveRunProfileNothing = 0 ,
    E_DiffDriveRunProfileRotateInPlace = 1 ,
    E_DiffDriveRunProfileStraightWheels = 2 ,
    E_DiffDriveForceCurvature =  3 ,
    E_DiffDriveSplineInCrab =  4 ,
    E_DiffDriveHostDirectSpeedControl =  5 ,
    E_DiffDriveDifferentialTarget = 6,
    E_DiffDriveRunProfileAnySteering = 7
} ;


enum EN_CrabRelStates
{
ENR_CommitCrab_Init = 0 ,
ENR_CommitCrab_1p0  = 1 ,
ENR_CommitCrab_1p1 = 2,
ENR_CommitCrab_1p2  = 3 ,
ENR_CommitCrab_1p3 = 4,
ENR_CommitCrab_1p4 = 5,
ENR_CommitCrab_2p0 = 6 ,
ENR_CommitCrab_2p1 = 7 ,
ENR_CommitCrab_3p0 = 8 ,
ENR_CommitCrab_3p1 = 9 ,
ENR_CommitCrab_4p0 = 10 ,
ENR_CommitCrab_4p1 = 11 ,
ENR_CommitCrab_5p0 = 12 ,
ENR_CommitCrab_5p1 = 13 ,
ENR_CommitCrab_6p0 = 14 ,
ENR_CommitCrab_6p1 = 15
} ;


enum EN_UnCrabRelStates
{
ENR_CommitUnCrab_Init = 0 ,
ENR_CommitUnCrab_1p0  = 1 ,
ENR_CommitUnCrab_2p0 = 2 ,
ENR_CommitUnCrab_3p0 = 3 ,
ENR_CommitUnCrab_3p1 = 4 ,
ENR_CommitUnCrab_4p0 = 5 ,
ENR_CommitUnCrab_4p1 = 6 ,
ENR_CommitUnCrab_5p0 = 7 ,
ENR_CommitUnCrab_5p1 = 8
} ;




#define EXP_FATAL (short)(-1)   // Fatal - dead duck
#define EXP_WARN  (short)(-2)   // For warning
#define EXP_ABORT  (short)(-3)  // Abort auto actions
#define EXP_ABORT_PACKON  (short)(-4)  // Abort auto actions, leave pack handling on the work
#define EXP_SAFE_FATAL EXP_FATAL   // Fatal - same

#define exp_bootout_timeout 0x8888
#define exp_sdo_timeout     0x8889
#define exp_sdo_bad_multiplexor 0x888a



#define N_SPI_ERR_LOG_SIZE 16

inline long unsigned SetLBitField ( long unsigned var, short unsigned mask , short unsigned shift , short unsigned value )
{
    return var & (~(((long unsigned) mask ) << shift )) | ((long unsigned)(value & mask)<<shift) ;
}

inline short unsigned GetLBitField ( long unsigned var, short unsigned mask , short unsigned shift)
{
    return ((short unsigned) (var >> shift)) & mask ;
}

// Increment a bit field variable *var , at (mask<<shift)
inline void IncrementLBitField ( long unsigned *var, short unsigned mask , short unsigned shift)
{
    long unsigned um , samp ;
    um = (long unsigned) mask << shift ;
    samp = ( (short unsigned)( *var >> shift ) + 1 ) & mask ;
    *var = (*var & (~um))  | (samp<<shift) ;
}

union UVars
{
    float f ;
    long  l ;
    unsigned long ul ;
    short s[2] ;
    unsigned short us[2];
};

struct CSnap
{
    union UVars SnapBuffer[N_RECS_MAX] ;
    long  UsecTimer ;
    short SnapCmd   ;
};
EXTERN_TAG struct CSnap Snap ;



struct CSpiErrRecord
{
    long  SysTime ;
    short ErrCode ;
    short txcntr ;
}  ;

union USpiErrRecord
{
    struct CSpiErrRecord f ;
    long unsigned ul[2] ;
};

struct CSpiErrorLog
{
    short nPut   ;
    short nGet ;
    short unsigned nExtract ;
    short Algn ;
    union
    {
        long  unsigned ul ;
        short unsigned us[2] ;
    } LastErr;
    union USpiErrRecord Logs[N_SPI_ERR_LOG_SIZE];
};
EXTERN_TAG volatile struct CSpiErrorLog SpiErrorLog ;
EXTERN_TAG volatile short WasSpiError ;


struct CHostHandleStr
{
    //short unsigned NoComCnt     ; //!< Count of consecutive cycles in which no characters are received
    short unsigned IsrLock       ; //!< Lock for preventing ISR preemption
    short unsigned CycleCntr    ; //!< Cycle counter per interrupt slow handling
    //short unsigned AdcAccumCnt  ; //!< Counts the "Small" interrupts before forking to the C interrupt
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
    //short Algn ;
} ;
EXTERN_TAG volatile struct CHostHandleStr   HostHandleStr ;

struct CGyroHandleStr
{
    short unsigned IsrLock       ; //!< Lock for preventing ISR preemption
    short unsigned CycleCntr    ; //!< Cycle counter per interrupt slow handling
    short unsigned Tx2HostCtr ;  //!< Tx counter for message following
    short unsigned RxFromHostCtr ;  //!< Rx counter for message following
    short unsigned OpCode ; // !< Last valid accepted Op code
    short unsigned Algn ;
} ;
EXTERN_TAG volatile struct CGyroHandleStr   GyroHandleStr ;

struct CImuDataItem
{
    short unsigned DataId     ;
    short unsigned DataLen    ;
    long  unsigned Data[4]    ;
};
EXTERN_TAG struct CImuDataItem ImuDataItem[16] ;


EXTERN_TAG struct CCAN_IF CAN_IFRx ;


/**
* \struct periodically sampled timing information
*/
struct CIsrTimer
{
    long RawEcapTimer ;
    long UsecTimer ;
    long UsecTimerAtMsec ;
    long mSecTimer ;
    long mSecTimerAtSec ;
    long SecTimer ;
    long IsrCounter ;
    long UsecTimerOnFork ; //fork means going to a new priority ISR within a low priority code (once in x ISRs) during which a new high priority ISR can be called. UsecTimerOnFork is the high priority timer before the low priority code start runnig.
} ;

EXTERN_TAG struct CIsrTimer IsrTimer;


struct CCanDebug
{
    long  unsigned data0 ;
    long  unsigned data1 ;
    short unsigned nToHost ;     // !< lsb: Number of messages awaiting acceptance msb: first nibble zero if valid, msb is data length
    short unsigned cobId ;
    short unsigned TxCntr ;
    short unsigned Algn ;
};

EXTERN_TAG struct CCanDebug CanDebug;


// Timer block
//////////////////////////////
#include "BlTimerAlloc.h" // App specific

#define EXCEPTION_TAB_LENGTH 8

//#define N_CALIB_RECS 32

#define N_MOTION_REC_IN_USER_Q 64       // Number of actions in the high level queue exposed to the control computer
#define N_MOTION_SEG_IN_SQ      128  // Number of actions in the low level queue, generating from granulating high level commands
#define N_LOG_BUFFER_SIZE 64 // Number of points in route log

#define OLD_SPI_MSG_LEN 31
#define BIGGEST_NAV_CORRECTION_AGE_USEC 500000

#define MODE_OF_OPERATION_PROFILED_POSITION 1
#define MODE_OF_OPERATION_PROFILED_VELOCITY 3
#define MODE_OF_OPERATION_PROFILED_TORQUE 4
#define MODE_OF_OPERATION_HOMING 6
#define MODE_OF_OPERATION_PROFILED_CSP 8
#define MODE_OF_OPERATION_PROFILED_CSV 9


//#define N_SPI_DELAY_ACTION_REC 16

#define PO_VOLTS_NOM 3
#define PotMin 2.85f


#define MAX_GYRO_CALIB_ATTEMPTS 5

#define UNDEFINED_ARC_DISTANCE (-20)

#define DYN_STATE_REBOOT 7
#define DYN_STATE_REBOOT_WAIT 8


#define MOTOR_DIR_RWHEEL 1
#define MOTOR_DIR_LWHEEL 1
#define MOTOR_DIR_RSTEER 1
#define MOTOR_DIR_LSTEER 1
#define MOTOR_DIR_NECK (-1)



#ifdef RecorderOffsetProc
// Not true code, just supply missing defs for offsets calc
struct CManControlWord
{
    short unsigned all ;
};


struct CPdCBit
{
    short unsigned all ;
};



struct CPdCBit2
{
    short unsigned all ;
};


struct CPdCBit3
{
    short unsigned all ;
};


struct CPdBitGen
{
    short unsigned all ;
} ;

struct UCBit
{
    long          bit ;
    long unsigned all ;
};


#endif


enum E_PsWakeStates
{
    SYSSTAT_WAKE_INIT = 0 ,
    SYSSTAT_WAKE_TRY_COMMUNICATE_PD = 1 ,
    SYSSTAT_WAKE_INIT_WM2 = 11 ,
    SYSSTAT_WAKE_INIT_WM3 = 12 ,
    SYSSTAT_WAKE_INIT_W0 = 2 ,
     SYSSTAT_WAKE_WAIT_12V = 4 ,
    SYSSTAT_WAKE_WAIT_24V = 5 ,
    SYSSTAT_WAKE_WAIT_54V = 6 ,
    SYSSTAT_WAKE_WAIT_OPER = 7 ,
    SYSSTAT_WAKE_WAIT_SLEEP = 8 ,
    SYSSTAT_WAKE_FAIL = 31
};

enum E_CommitCrabSubstates
{

    E_CommitCrab_Init = 0 ,
/*  E_CommitCrab_PreAdjustDirection = 2,
    E_CommitCrab_AdjustDirection = 3 ,
    E_CommitCrab_CommitYew = 4 ,
    E_CommitCrab_WaitFinalFix = 5 ,
*/
    E_CommitCrab_AllocStateOffset = 0x20 ,
    E_CommitCrab_FinalArc = 0x26 ,
    E_CommitCrab_WaitSteerCorrect = 0x27 ,
    E_CommitCrab_WaitSteerCorrectFix = 0x28 ,
    E_CommitCrab_WaitSteerCorrect2 = 0x29 ,
    E_CommitCrab_WaitFunellTravel = 0x2a ,
    E_CommitCrab_WaitReady4Funnel = 0x2b ,
    E_CommitCrab_WaitFinalFunnelFix = 0x2c ,
    E_CommitUnCrab_CommitBackToY = 0x2d ,
    E_CommitUnCrab_WaitFirstFix = 0x2e,
    E_CommitUnCrab_CommitSteer = 0x2f,
    E_CommitUnCrab_WaitUncrab = 0x30,
    E_CommitUnCrab_WaitSecondFix = 0x31,
    E_CommitUnCrab_WaitFinalFix = 0x32,
    E_CommitUnCrab_WaitComplete = 0x33,
    E_CommitUnCrab_CommitPerpendicularCorrect = 0x34
};


enum E_CommitCrabSubstatesNew
{
    EN_CommitCrab_Init = 0 ,
    EN_CommitCrab_PreAdjustDirection = 2,
    EN_CommitCrab_AdjustDirection = 3 ,
    EN_CommitCrab_CommitYew = 4 ,
    EN_CommitCrab_WaitFinalFix = 5 ,
    EN_CommitCrab_DecideFinalGo = 6 ,
    EN_CommitCrab_WaitGoAhead = 7 ,
    EN_CommitCrab_FinalArc = 8 ,
    EN_CommitCrab_WaitSteerCorrect = 9 ,
    EN_CommitCrab_WaitSteerCorrectFix = 10 ,
    EN_CommitCrab_WaitSteerCorrect2 = 11 ,
    EN_CommitCrab_WaitFunellTravel = 12 ,
    EN_CommitCrab_WaitReady4Funnel = 13 ,
    EN_CommitCrab_WaitFinalFunnelFix = 14,
    EN_CommitCrab_WaitRecrab = 15
};


enum E_CommitCrabSubstatesRel
{
    ER_CommitCrab_Init = 0 ,
    ER_CommitCrab_PreAdjustDirection = 2,
    ER_CommitCrab_AdjustDirection = 3 ,
    ER_CommitCrab_CommitYew = 4 ,
    ER_CommitCrab_WaitFinalFix = 5 ,
    ER_CommitCrab_DecideFinalGo = 6 ,
    ER_CommitCrab_WaitGoAhead = 7 ,
    ER_CommitCrab_FinalArc = 8 ,
    ER_CommitCrab_WaitSteerCorrect = 9 ,
    ER_CommitCrab_WaitSteerCorrectFix = 10 ,
    ER_CommitCrab_WaitSteerCorrect2 = 11 ,
    ER_CommitCrab_WaitFunellTravel = 12 ,
    ER_CommitCrab_WaitReady4Funnel = 13 ,
    ER_CommitCrab_WaitFinalFunnelFix = 14,
    ER_CommitCrab_WaitRecrab = 15,
    ER_CommitCrab_PrepUnfold = 20,
    ER_CommitCrab_Unfold = 21 ,
    ER_CommitCrab_Uncrab = 22 ,
    ER_CommitCrab_UncrabDone = 23
};


enum E_Chgmode_State
{
    E_ChgmodeState_Init = 0 ,

    E_ChgmodeState_CommitCrab   = 1 ,
    E_ChgmodeState_CommitUnCrab = 2 ,



    E_ChgmodeState_WaitUnclimb = 20,
    E_ChgmodeState_WaitJunction = 25,
    E_ChgmodeState_WaitShelfTravel = 30,
    E_ChgmodeState_WaitShoulderAdjust = 40,


    E_ChgmodeState_Complete = 100
} ;

enum E_ShelfArc_SubMode
{
    E_ShelfArc_SubMode_Nothing = 0 ,
    E_ShelfArc_SubMode_Wait_gyro_rail_detection = 1 ,
    E_ShelfArc_SubMode_Wait_2nd_Sensor = 2 ,
    E_ShelfArc_SubMode_PoleCruise = 3 ,
    E_ShelfArc_SubMode_ShoulderAdjust = 4 ,
    E_ShelfArc_SubMode_PreInterPoleCruise = 5 ,
    E_ShelfArc_SubMode_InterPoleCruise = 6 ,
    E_ShelfArc_SubMode_ClimbDone = 7 ,
    E_ShelfArc_SubMode_ClimbError = 8 ,
    E_ShelfArc_SubMode_TrackWidthAdjust = 9 ,
    E_ShelfArc_SubMode_WaitStam = 10 ,



    E_ShelfArc_SubMode_UnclimbWaitSwitch = 12 ,
    E_ShelfArc_SubMode_UnclimbFinalApproach = 13 ,
    E_ShelfArc_SubMode_UnclimbFinalWait = 14,
    E_ShelfArc_SubMode_RescueDone = 15,
    E_ShelfArc_SubMode_UnclimbWaitSwitch2 = 16 ,

    E_TwistToShelf_WaitCrab = 18 ,
    E_TwistToShelf_WaitWhPosAdjust = 19 ,
    E_TwistToShelf_Done = 20 ,
    E_TwistFromShelf_WaitCrab = 24 ,
    E_TwistFromShelf_WaitWhPosAdjust = 25 ,
    E_TwistFromShelf_Done  = 26
};

enum E_JunctionMode
{
    EJM_JunctionFindSwitch = 0 ,
    EJM_JunctionIgnoreSwitch = 1
} ;

enum  E_WheelArmPinDirection
{
    E_DoNothing = 0  ,
    E_EngagePin = 1  ,
    E_ReleasePin = 2
};

enum E_TrackWidthType
{
    E_TrackWidthNothing = 0 ,
    E_TrackWidthRetract = 1 ,
    E_TrackWidthExtend = 2
};

enum E_ShelfArc_SubMode_TrackWidthAdjust_Substates
{
    E_SubMode_TrackWidthAdjust_Init = 0 ,
    E_SubMode_TrackWidthAdjust_StartPinMotor = 1 ,
    E_SubMode_TrackWidthAdjust_OpenPin_Stretch   = 2 ,
    E_SubMode_TrackWidthAdjust_OpenPin_Compress = 3 ,
    E_SubMode_TrackWidthAdjust_TravelLeader_Release = 4 ,
    E_SubMode_TrackWidthAdjust_TravelLeader_Stop = 5  ,
    E_SubMode_TrackWidthAdjust_TravelLeader_Final = 6 ,
    E_SubMode_TrackWidthAdjust_TravelFollwer2Place = 7 ,
    E_SubMode_TrackWidthAdjust_TravelLatchFix = 8,
    E_SubMode_TrackWidthAdjust_AlmostDone = 9,
    E_SubMode_TrackWidthAdjust_Done = 10,
    E_SubMode_TrackWidthAdjust_Failure = 11
};


enum ESeg_Type
{
    SegType_Straight = 1 ,
    SegType_Circular = 2 ,
    SegType_Clothoid = 3 ,
    SegType_Differential = 4
};

enum ClothoidErrors
{
    E_ClothErr_TurnAngle_Out_range = -1 ,
    E_ClothErr_Curvature_limit_exceeded = -2
} ;

enum Enum_CornerState
{
    E_CornerStateInit = 0 ,
    E_CornerStateCorrectWaitQR1 = 1 ,
    E_CornerStateCorrectWaitSteering = 2 ,
    E_CornerStateCorrectWaitLateralCorrect1 = 3,
    E_CornerStateCorrectAz  = 4,
    E_CornerStateWaitTurnDone = 5 ,
    E_CornerStateWaitQrExit = 6 ,
    E_CornerStateWaitFinalLateral = 7,
    E_CornerStateCorrectJustDoIt1 = 8,
    E_CornerStateCorrectJustDoIt2 = 9,
    E_SukaBlatt = 10
} ;



#define MAN_POWER_RETRY_CYCLES_MAX 4

enum E_MANON_STATE
{
    E_ManonNothing = 0,
    E_ManonInit = 1,        // !< Initialize voltages power down - power up on PD
    E_ManonWaitVoltDown = 2 ,
    E_ManonWaitVoltUp = 3 ,
    E_ManonWaitCommUp = 4 ,
    E_ManRebootInit = 5 , // !< Initialize manipulator reboot
    E_ManonWaitReboot = 6 , // !< Wait PD to complete manipulator reboot process
    E_ManonTestWarm = 7 ,
    E_ManonDone = 8 ,
    E_ManonFail = 15
};



enum E_ManipulatorWellNess
{
    E_ManGood = 1 ,
    E_ManUnknown = 0 ,
    E_ManInitializing = -1 ,
    E_ManNetsOff = -2 ,
    E_ManPowerOff = -3,
    E_ManNoData = -4 ,
    E_EEF_Absent = -5,
    E_ManMissing = -6
};

enum EN_E_PackModeResetManipulatorCmds
{
    E_PackModeNone = 0 ,
    E_PackModeStandby = 1 ,
    E_PackModeRepush = 2 ,
    E_PackModeRetryGet = 3 ,
    E_PackModeApplyLaser = 4 ,
    E_PackModeRebootManipulatorMotors = 7 ,
    E_PackModeResetManipulatorPower = 8 ,
    E_PackModeAlignOnShelf  = 11 ,
    E_PackModeIdle = 12,
    E_PackModeDebugRunPack = 14 ,
    E_PackModeResetManipulatorCmds = 15
};

enum Enum_MissionAbortStat
{
    E_MissionAbortStat_Good = 0,
    E_MissionAbortStat_GeneralReason = 1,
    //E_MissionAbortStat_PushPack_No_Package = 2,
    //E_MissionAbortStat_PushPack_Lost_Pack = 3,
    //E_MissionAbortStat_PushPack_Manipulator_Fail = 4,
    //E_MissionAbortStat_PushPack_EarlyManipulator_Fail = 5,


    //E_MissionAbortStat_GetPack_No_Package = 8,
    //E_MissionAbortStat_GetPack_LostPack = 9,
    //E_MissionAbortStat_GetPack_Manipulator_Fail_NoAceess = 10,
    //E_MissionAbortStat_GetPack_Manipulator_Fail_Midway = 11,
    //E_MissionAbortStat_GetPack_EarlyManipulator_Fail = 12,
    //E_MissionAbortStat_GetPack_AlreadyLoaded = 13,
    //E_MissionAbortStat_General_Manipulator_Fail = 14 ,
    E_MissionAbortStat_manipulator_related = 2, //manipulator related reason, details in Enum_ManipulatorAbortStat
    E_MissionAbortStat_insane_mission = 15

};

enum Enum_ManipulatorAbortStat
{
    E_ManipulatorAbortStat_Good = 0, //if E_MissionAbortStat_Good, this will be correct as well.
    E_ManipulatorAbortStat_PushPack_No_Package = 2,
    E_ManipulatorAbortStat_PushPack_Lost_Pack = 3,
    E_ManipulatorAbortStat_PushPack_Manipulator_Fail = 4,
    E_ManipulatorAbortStat_PushPack_EarlyManipulator_Fail = 5,


    E_ManipulatorAbortStat_GetPack_No_Package = 8,
    E_ManipulatorAbortStat_GetPack_LostPack = 9,
    E_ManipulatorAbortStat_GetPack_Manipulator_Fail_NoAceess = 10,
    E_ManipulatorAbortStat_GetPack_Manipulator_Fail_Midway = 11,
    E_ManipulatorAbortStat_GetPack_EarlyManipulator_Fail = 12,
    E_ManipulatorAbortStat_GetPack_AlreadyLoaded = 13,
    E_ManipulatorAbortStat_General_Manipulator_Fail = 14

};

enum Enum_MissionStat
{
    E_MissionStat_IdleNoNav = 0,
    E_MissionStat_IdleReady4Auto = 1,
    E_MissionStat_NullQueue = 2,
    E_MissionStat_RunMotionQueue = 3,
    E_MissionStat_AbortMaybeOperable = 4,
    E_MissionStat_Asleep = 5 ,
    E_MissionStat_Initializing  = 6 ,
    E_MissionStat_AbortFatal = 7,
    E_MissionStat_Manipulator_reset = 8,
    E_MissionStat_EmcyPackHandling = 9 ,
    E_MissionStat_Rescue = 10
};

// NEVER change the assignments of this enum
enum E_WheelArmState
{
    E_GroundGood2Go = 0 ,
    E_RExtendGood2Go = 1 ,
    E_LExtendGood2Go = 2 ,
    E_RExtendActive = 3 ,
    E_LExtendActive = 4 ,
    E_BothExtendActiveError = 5
};

enum E_WheelArmPinState
{
    E_WAPinUndetermined = 0  ,
    E_WAPinEngaged = 1 ,
    E_WAPinDisengaged = 2
};

// Struct for controlling the track width
struct CTrackWidthCtl
{
    float TrackWidth   ;
    float TrackTilt ;
    float RodAngle[2] ;
    //float RockingBias ;
    //float RockingAmplitude ;
    float FollowerTarget ;
    float MaxStretch ;
    float GlideDistance ;     // !< Distance left for low speed final approach
    float GlideSpeed ;        // !< Speed for final approach
    float ExtraGlide4Latch ;  // !< Added distance to assure positive latch
    //float PreStopDistance  ; // Preliminary distance to stop before shelf for width adaption
    float GlideMaxOverShoot ;
     //float RockingPhaseIncrement ;
    //float RockingPhase ;
    //float NoElbowPinPosition[2] ;
    long  StartWheelPosition[2] ;
    long  LeaderTarget ;
    float RetractedWidth ;
    float ExtendedWidth ;
    float ExtremePoint  ;
    float LineSpeed ;
    long  tOutCnt ;
    long WheelEncoderOnLatch ;
    //long  tOutCnt2 ;
    long  FollowerEncoderOnSubSubStart ; // !< Encode on subsub state start
    long  StuckTime ;
    long  StuckPos  ;
    //short MotorOnPin ;
    enum E_WheelArmPinState bPinState[2] ;
    short LastPinState[2] ;
    short NextMode ;
    short ActivePinMotor ;
    short bActive ;
    short IsReleased ;
    short IBitState ;
    short StuckPosSet ;
    enum E_TrackWidthType Target;
    enum E_LogicalAxe Axis ;
    enum E_LogicalAxe OtherAxis ;
    enum  E_WheelArmPinDirection ActivePinDirection ;
    enum E_WheelArmState WheelArmState ;
};

struct CQueueProcException
{
    short Code ;
    short unsigned SegType ;
    short unsigned SegIndex ;
} ;

EXTERN_TAG struct CQueueProcException QueueProcException ;


struct CCorrectByLine
{
    float dx ; // !< X Robot x deviation
    float dy ; // !< Y Robot y deviation
    long Statistics1 ;
    long Statistics2 ;
};
EXTERN_TAG volatile struct CCorrectByLine CorrectByLine ;


/**
 * \struct Descriptor for motion queue item
 */
struct CMotionItem
{
    long x ;        // !< X of waypoint or init
    long y ;        // !< Y of waypoint or init
    long z_or_lModeData  ;      // !< Z of waypoint or init or integer parameter for other modes
    float cx ;      // !< cosine angle to X of waypoint or init
    float cy ;      // !< cosine angle to Y of waypoint or init
    float cz_or_fModeData ;     // !< cosine angle to Z of waypoint or float  parameter for other modes
    short OpCode ;  // !< Op code: see ICD
    short unsigned MotionItemMode   ;  // !< Usage: Bit .0: Used , .1....5 : Reserved , .6 ...16 place in original queue
    short unsigned TrackWidthType       ;  // !< Track width type
    short unsigned JunctionMode      ;
};


// A motion plan queue
/*
struct CInternalMotionQueue
{
    short nGet ;
    short nPut ;
    struct CMotionItem Item[N_MOTION_REC_IN_INTERNAL_Q] ;
};
*/

struct CUserMotionQueue
{
    short nGet ;
    short nPut ;
    struct CMotionItem Item[N_MOTION_REC_IN_USER_Q] ;
};


#include "ItNav.h"


#ifdef EXTERN_TAG
#undef EXTERN_TAG
#endif

#ifdef VARS_OWNER
#define EXTERN_TAG
#else
#define EXTERN_TAG extern
#endif




//#define SPI_MSG_LEN 31    // Length of message over the SPI lines
//#define SPI_PREAMBLE_LEN 5


#define M_2_LONG_FAC 10000.0F
#define LONG_2_M_FAC  (1.0F/M_2_LONG_FAC)  //receive lengths in 0.1mm units, convert to [m].

enum E_PackState
{
    EPackState_Init = 0 ,
    EPackState_WaitTailIncidence = 1 ,
    EPackState_ManipulatorAction = 2 ,
    EPackState_ManipulatorWaitMon = 3 ,
    EPackState_Success = 4 ,
    EPackState_WaitTailIncidenceRetract = 5 ,
    EPackState_Failure = -1,
    EPackState_MayUnclimb_Failure = -2
};

enum E_QueueEntryType
{
    QE_ENTRY_UNUSED = 0 ,
    QE_ENTRY_PATH_PT = 1 ,
    QE_ENTRY_SPECIALS = 2 ,
    QE_ENTRY_CHANGE_MODE = 3 ,
    QE_ENTRY_HANDLE_PACK = 4 ,
    QE_ENTRY_WAIT = 5,
    QE_ENTRY_NOTHING = 6
};


enum E_OPCodes
{
    OpCodeAcknowledge = 0 ,
    OpCodeClearQueue = 1 ,
    OpCodeSetQueueEntry = 2 ,
    OpCodeSetExecPtr = 3 ,
    OpCodeSetEmcyStop = 7,
    OpCodeHandlePackage = 8 ,
    OpCodeDeviationReport = 10 ,
    OpCodePositionReport = 11 ,
    OpCodeSetParameter = 12 ,
    OpCodeSetConfig = 14
};


enum E_CAN_WAKEUP_STATE
{
    E_CAN_WAKEUP_INIT = 0 ,
    E_CAN_WAKEUP_SEND_NMT_RESET = 1,
    E_CAN_WAKEUP_SEND_CONFIG_SDO = 2 ,
    E_CAN_WAKEUP_SEND_NMT_OPER = 3 ,
    E_CAN_WAKEUP_PROG_SPECIFIC_SDO = 4 ,
    E_CAN_WAKEUP_PRE_OPERATIONAL = 5 ,
    E_CAN_WAKEUP_OPERATIONAL = 6,
    E_CAN_WAKEUP_SLEEP = 7 ,
    E_CAN_WAKEUP_FAILURE = 15
};




#define N_MOTION_Q 1


#define RB_OP_CODE_DO_NOTHING 0
#define RB_OP_CODE_CLEAR_QUEUE 1
#define RB_OP_CODE_SET_QUEUE_ENTRY 2
#define RB_OP_CODE_SET_QUEUE_EXEC_PTR 3
#define RB_OP_CODE_GET_DEVIATION_RPT 10
#define RB_OP_CODE_GET_POS_RPT 11


// Conversion factors for the axis
struct CAxisPars
{
    float GainCurFrac2Cur           ; // Multiplier: From reported current fraction to actual current
    float GainSpeedRpt2Speed        ; // Gain from speed report to road speed
    float GainSpeedRpt2SpeedOnRail  ; // Gain from speed report to road speed on rail (wheel only)
};


struct CAxisState
{
    short CurrentFraction ; // Current fraction, reported as CAN object
    short Align           ;
    long  SpeedCntSec     ; // Speed as reported
    //short CANStatusWord   ; // CAN status word
    float CurrentActual   ; // Actual current
    float SpeedActual     ; // Actual speed
    char  *CmdBuffer      ; // Command for text commands by interpreter
    char  *RptBuffer      ; // Axis report by interpreter
    struct CAxisPars *pPars ;
};


EXTERN_TAG struct CCAN_IF CAN_IFRx ;

struct TVFilterState
{
    float a[3] ;
    float b[3] ;
    float ymem[3] ;
    float value ;
    float rate  ;
} ;

enum  MessageType
{
    //MSG DIRECTION: commands sent to motion control
    CMD_NULL = 0,
    CMD_CLEAR_QUEUE = 1,
    CMD_SET_Q_ENTRY = 2,
    CMD_SET_QUEUE_EXECUTION_POINTER = 3,
    RPT_DEVIATION = 10,
    RPT_POSITION = 11
};



struct CHostMessageStr
{
    unsigned short  Counters ; //
    unsigned short  Opcode;
    unsigned short  TimeTag_L;
    unsigned short  TimeTag_H;
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
    short unsigned OdometryMessagePeriod ;
    short unsigned PcBitMessagePeriod ;
    short unsigned StatusMessageCntr ;
    short unsigned BITMessageCntr    ;
    short unsigned TravelInfoMessageCntr;
    short unsigned ManipulatorStatusMessageCntr;
    short unsigned TrayStatusMessageCntr ;
    short unsigned RawSensorsStatusMessageCntr ;
    short unsigned OdometryMessageCntr ;
    short unsigned PcBitMessageCntr ;
    short unsigned StatusMessageTrigger ;
    short unsigned BITMessageTrigger    ;
    short unsigned TravelInfoMessageTrigger;
    short unsigned ManipulatorStatusMessageTrigger ;
    short unsigned TrayStatusMessageTrigger ;
    short unsigned RawSensorsStatusMessageTrigger ;
    short unsigned OdometryMessageTrigger ;
    short unsigned PcBitMessageTrigger ;
    short unsigned bConfigurationReceived ;
    long  unsigned RcVersion  ; // Version of robot controller
    long  unsigned RcProtocolVersion  ; // Version of RC protocol
    long  unsigned RxCharCounter ; // Accepted character counter
    long  unsigned TxCharCounter ; // Tx character counter
    long  unsigned TxMsgCounter ; // Tx message counter
    long  unsigned RxMsgCounter ; // Rx message counter
    long  unsigned PlaceInTxBuf ;
    short unsigned msgBuffer [HOST_SINGLE_MESSAGE_MAX_LEN]; // Placement after a long assures alignment
    float ShelfToothPitch ;
    short unsigned HostMessageList[32];
    short unsigned Permission ;
    short unsigned HostMessageListPutPtr ;
    short unsigned HostMessageListFetchPtr ;
};
EXTERN_TAG volatile struct CHostMessageStr HostMessageStr  ;

EXTERN_TAG void (*FastSciRxHandlerFunc) (short unsigned c ) ;

struct COdometryReportVars
{
    long  REnc ;
    long  LEnc ;
    long  usec ;
};
EXTERN_TAG struct COdometryReportVars OdometryReportVars ;




struct CGeomCalc{
    float Rad2WheelCnt ;
    float Meter2WheelEncoderShelfHoriz  ;
    float Meter2WheelEncoderGnd  ;
    float WheelEncoder2MeterShelfHoriz ;
    float WheelEncoder2MeterShelfVert ;
    float Meter2WheelEncoderShelfVert ;
    float WheelEncoder2MeterGnd ;
    float WheelEncoder2MotEncoder ;// This ratio is FIXED regardless of travel conditions
    float MotEncoder2WheelEncoder ;// This ratio is FIXED regardless of travel conditions
    float Meter2MotEncoderShelf ;
    float MotEncoder2MeterShelf ;
    float Meter2MotEncoderGnd ;
    float MotEncoder2MeterGnd ;
    float RSteerMotCnt2Rad ;
    float LSteerMotCnt2Rad ;
    float NeckEnc2Rad ;
    float rrail             ; // !< Wheel radi when contacting rail
    float SteeringColumnDistRatio ; //  Ratio Distance of steering column from centre of ground wheel / wheel radi
    float ReverseSteeringColumnDistRatio ; //  Ratio Distance of steering column from centre of ground wheel / wheel radi, reverse direction
};


/**
 * \struct Robot geometry an dimensional data
 */
struct CRobotGeom
{
    float DefaultqImu2ZeroENUPos[4]  ; // !< Transformation in BODY for the position where the gyro chip is aligned with ENU (artificial north is ahead)
    float rg                ; // !< Wheel radi when contacting ground
    float rrailnom          ; // !< Wheel radi when contacting rail, nominal rail (early BH office)
    float WheelMotCntRadGnd    ; // !< Wheel motor encoder - counts per radian on the ground
    float WheelCntRad    ; // !< Wheel encoder - counts per radian
    float RSteerMotCntRad    ; // !< Steer motor encoder - counts per radian
    float LSteerMotCntRad    ; // !< Steer motor encoder - counts per radian
    float NeckMotCntRad     ; // !< Neck motor encoder - counts per radian
    float SteerFinalRatRev  ; // !< Steering "load" potentiometer ratio/rev
    float SteerFinalRatCenter ; // !< Steering center of potentiometer
    float Neck1RatCenter ; // !< Neck potentiometer 1 center
    float Neck2RatCenter ; // !< Neck potentiometer 2 center
    float Neck1RatRad    ; // !< Neck pot 1 conversion factor from ratio to radian
    float Neck2RatRad    ; // !< Neck pot 2 conversion factor from ratio to radian
    float Center2WheelDist  ; // !< Distance from wheeling center to the wheel
    float Center2WheelDist4Diff ; // !< Effective center-wheel distance for differential drive, nominally  Center2WheelDist+SteerColumn2WheelDist
    float SteerColumn2WheelDist ; // !< Distance from steering column to wheel center
    float AlarmWheelUnbalance ; // !< Exaggerated un-balance between wheel currents
    float WheelArmPotGain   ; // !< Potentiometer gain for wheel arm angle
    float RWheelArmPotOffset  ; // !< Potentiometer offset for wheel arm angle, right
    float LWheelArmPotOffset  ; // !< Potentiometer offset for wheel arm angle, left
    float WheelBase ; //
    float MaxCurvature ; //
    float LeaderMeetsSwitchM    ; // !< Max distance since arc start until leader should meet inductive switch
    float ArcDist4SecondSwitchM;    // !< Max distance (at the leader) since leader meet inductive switch until the follower meets the switch
    float Error4LeaderTwistPosControlM; // !< Distance to final target where control should switch to active position
    float StopAfterLeaderEncountersSwM; // !< Distance since leader reverts through switch and until un-climb  is over
    float NeckRoofAngle; // !< The angle of the neck roof, relating shoulder distance to pot reports
    float MaxPosErrorToRotateJunc ; // !< Maximum position error for which it will still be possible to rotate junction
    float VerticalSlipFactor ; // !< Vertical travel correction for vertical wheel slip
    //float WheelPostHeight; // !< Height of wheel post
    //float PostSwitchHeightAboveGnd; //!< Height of column switch above witch above arc end
    float DistanceFromShoulderJoint2Slidewheel; // !< Distance from the shoulder joint to the side wheel which enters the groove in the rail
    float ClimbArcRadi ; // !< Radius of climbing arc
    float ClimbArcOverFloor ; // !< Height of arc rail over the floor
    float LimitSwitchDistFromJuncPole  ; // Limit switch distance from the junction, pole side
    float LimitSwitchDistFromJuncShelf  ; // Limit switch distance from the junction, shelf side
    float LeaderMeetsZeroSwitchM ; // !< Max distance until arc entry switch
    float Leader2ArcDistWhenClimbStarts; // !< The distance between the leader to the arc when climb is ordered
    float LimitSw2DistPosOnArc; // !< Limit switch 2 position with respect to arc start
    float LimitSw2DistPosOnArcDn; // !< Limit switch 2 position with respect to arc start down position
    float MaxIncidence4Package; //  !< Maximum ramp incidence for package loading
    float WheelArmRodLength4Pin ;  // Rod length for pin setting
    float WheelArmAngleExtend ;// Wheel arm angle when extended
    float WheelArmAngleExtend24 ;// Wheel arm angle when extended, 24 in shelf
    float WheelArmAngleExtend28 ;// Wheel arm angle when extended, 28 in shelf
    float WheelArmAngleExtend30 ;// Wheel arm angle when extended, 30 in shelf
    float WheelArmAngleExtend32 ;// Wheel arm angle when extended, 32 in shelf
    float WheelArmAngleRetract ;  // Angle when wheel arm retracted
    float WheelArmAngleTolerance ;// Wheel arm angle tolerance
    float WheelArmJointDist; // Shoulder joint distance wheel arm
    float PinMotorCurrentAmp ;  // Current for wheel arm motors
    float PinMotorCurrentAmpIbit ;  // Current for wheel arm motors, Ibit only
    float ArcEntryLength ; // Arc entry length,(arc width+robot/2) deduced from the run-to-pole distance
    float ArcEntryPoleHomingPlateDist; // Location of homing plate relative to the climb position (positive is outside)
    float LimitSwWidth ; // Limit switch width for trajectory planning consideration
    float HalfDistBetweenWheelAxes; //Robot Center to Wagon Tip
    float DistWheelAxis2WagonTip; //Robot Distance Between Wheel Axes
    float TerminalClimbClearance; //Terminal Climb Clearance
    struct CGeomCalc Calc ;//

} ;
 //   struct CRobotCfg RobotCfg ;//


struct CClimbMgr {
    float xout ;
    float yout ;
    float tht90 ;
    float tht90nom ;
    float tht90targ ;
    short BackDir ;
};
EXTERN_TAG struct CClimbMgr ClimbMgr ;


/**
* \struct History record of navigation data for delayed Kalman insertions
*/
struct CGyroQuatListItem
{
    long unsigned Time ; // !< Low DWORD of time counter
    long iPos[3]  ; // !< Integer position: 0.1 mm units (from space origin)
    float Quat[4] ; // !< Quaternion evolution sample
    float YawSample ;
    float AzSample ;
    long  AzSampleTime ;
    //float Yaw       ; // !< The recorded yew
    //float s         ; // !< Line length variable
    //float SegIndex; // !< The line segment with respect to which s was taken
} ;

#define N_GYRO_LIST 16
/**
* \struct Data for integration of navigation data
*/
struct CGyroInt
{
    long unsigned Time ; // !< Last algorithm access time
    float deltaT ; // !< Interval of integration
    float TimeOut ;      // !< Time out for gyro based calculation
    float Wbody[3]   ; // !< 3D body angular speed, after posture corrections
    float BodyQuat[4] ; // !< Estimated position of body quaternion
    float GyroQuat[4]  ; // !< Gyro free running quaternion, integrated till now
    float YawComp ;
    short unsigned GyroQuatInterTime ; // !< Time book keeping between 131.0720msec registers
    short unsigned GyroQuatListReady ; // !< Mark that gyro integration is ready for usage start
    short unsigned bEnableGyroOffsetEst ; // Enable gyro offset estimator
    short unsigned nGyroQuatListPut ; // !< The position in he history list where new measurements should be put
    struct CGyroQuatListItem GyroQuatList[N_GYRO_LIST] ; // !< History of navigation data for delayed Kalman insertions
    float kKalmanLineOpticalCorrect ; // !< Kalman filter correction gain for robot position w.r.t line in line direction reports
    float kKalmanLineOpticalCorrectAngle ; // !< Kalman filter correction gain for robot direction line direction reports
    float kKalmanAcc ; // !< Kalman filter correction gain for accelerometer (gravity sense)
    float kKalmanOffsetCorrect ; // !< Kalman gain for gyro offset correction
    float WThold4GyroOffsetCorrect ; // !< Above this raw data of angular speed, offset corrections are not made
    float WThold4GyroOffsetDiff ; // !< Limit for difference between two consecutive gyro calib results
    //float WheelGyroStabilizaGain ;// ! Correction gain from integrated angle to differential wheel correction
    //float AccOffsetGain ; // !< Gain for offset correction of accelerometer
    float OldYew ;
    float OdometryDvGain ; // !< Gain for odometry speed difference
    float gNom[3] ; // !< Nominal gravity vector
    float Vertical[3] ; // !< Vertical to robot
    //float GyroOffset[3] ; // !< Gyro offset
    float AccOffset[3] ; // !< Accelerometer offset
    float XSensTime ; // ! Time from X sense
    //float XSensW[3] ; // !< Gyro from X Sense
    //float XSenseQ[4] ; // !< Quaternion from X sense
    long  XSenseTimeCnt ; // !< Time counter for info
    short unsigned  XSenseTimeOutCntr ; // !< Time counter for info for CBIT detection of gyro TOUT
    float  XSenseTimeDelta ; // !< Time counter for info
    short ListProtect ; // !< Mark that history list is allocated to user, thus update need be delayed
    short MustWait4Stop ; // Flag that gyro bias estimate must wait a stop
    short bHardwareTestMode ; // !< Hardware test mode flag (no installation transformation)
} ;
EXTERN_TAG struct CGyroInt  GyroInt ;



struct CAnalogs
{
    float UsSamp1; // !< Laser distance
    float UsSamp2; // !< Potentiometer of tape arm plate
    float OverLoadkRWh1 ; // !< Overload resistor for wheel #1 motor
    float OverLoadkRWh2 ;// !< Overload resistor for wheel #2 motor
    float OverLoadkRNk; // !< Overload resistor for neck motor
};
EXTERN_TAG struct CAnalogs Analogs ;

/*
struct CSpiParDelayActRecord
{
    struct CObjDictionaryItem *pObject ;
    long unsigned Payload ;
    short unsigned SubIndex ;
    short unsigned MsgId    ;
};


struct CSpiParDelayAction
{
    struct CSpiParDelayActRecord Rec[N_SPI_DELAY_ACTION_REC] ;
    short  unsigned nPut ;
    short  unsigned nGet ;
    long   FaultCode ;
    short  FaultID ; // ID of message that generated the problem
};

EXTERN_TAG struct CSpiParDelayAction  SpiParDelayAction ;
*/
EXTERN_TAG long unsigned TimingOfIdleLoop[16] ;
EXTERN_TAG long unsigned TimingDiffOfIdleLoop[16] ;

EXTERN_TAG short unsigned LedBrightness ;
//EXTERN_TAG long unsigned MalinkiLedSet ;
EXTERN_TAG short unsigned PwmValuesTlc[16] ;

EXTERN_TAG short unsigned ScratchSciTxBuf[N_SCRATCH_SCI_TX_BUF] ;


EXTERN_TAG long unsigned PotSum ; // Potentiometer sampled sum

EXTERN_TAG short unsigned SpiAccumFault ;
EXTERN_TAG short unsigned SpiPreambleFault ;
EXTERN_TAG short unsigned SpiCSumFault ;
EXTERN_TAG float SimLaser ;

EXTERN_TAG float GyroAccumBufRt[3] ;
EXTERN_TAG float GyroDeltaAngle[3] ;
EXTERN_TAG float AccelRsltRtBuf[6] ;
EXTERN_TAG float AccelRsltRtBufRt[6] ; //DV[x],a[x],DV[y],a[y],DV[z],a[z]

EXTERN_TAG float LinkMedianStoreX[5] ;
EXTERN_TAG float LinkMedianStoreY[5] ;
EXTERN_TAG float LinkMedianStoreZ[5] ;

EXTERN_TAG float LNeckOuterPos ;
EXTERN_TAG float RNeckOuterPos ;

EXTERN_TAG short unsigned PdSlaveObjectMap[6] ;

EXTERN_TAG struct CProfiler WheelProfiler[2] ;
EXTERN_TAG struct CProfiler CrabProfiler ;
EXTERN_TAG struct CProfiler DiffProfiler ;
EXTERN_TAG struct CProfiler YawProfiler ; // Profiler for crabbing motions


EXTERN_TAG struct CManipControlWord DbgManipControlWord ; // Package handler control word



struct CSwitchDescriptor
{
    long Encoder ;
    short dir    ;
    short algn    ;
};



struct CLpsimDbg
{
    long LimitSwStatus;
};
#ifdef _LPSIM
EXTERN_TAG struct CLpsimDbg LpSimDbg;
#endif
struct CEncoder
{
    float SpeedUnused ;
    long  Position ; // !< Continuously integrated position
    short unsigned Init ;
};
EXTERN_TAG struct CEncoder WheelEncR ;
EXTERN_TAG struct CEncoder WheelEncL ;


// Jump command waiting execution
struct CJumpCmd
{
    short unsigned qIndex;   //!< The target queue
    short unsigned IndexInQ; //!< Index in the target queue
    short unsigned mode ;    //!< mode (0: complete then jump, 1: jump immediate)
    short unsigned CmdCntr ; //!< Running command counter
};


struct CDeviation
{
    long  TStamp ; // !< Usec counter, in own timer
    long Age ; // Age of measurement
    union
    {
        short unsigned us[2] ;
        long  unsigned ul ;
    }MsgCntr;
    float FOffset ;
    float FAzimuthDev ;
    short unsigned CmdCntr ;
    short Offset ;
    short AzimuthDev ;
    short Algn ;
};

struct CPosReport
{
    long  X[3] ; //Robot global coordinates: X is north, Y is East, Z is down. (0 - north, 90deg - east).
    long  TStamp ;
    short Azimuth ;
    short unsigned CmdCntr ;
    short unsigned Mode ; // !< Mode of command: 0: Normal , 1: Init , 2: Init on shelf , 3: Shelf base point , 4: force
    short unsigned MsgCntr ;
};

struct CRelPosReport
{
    //float qRaw[4] ;
    float xRaw ;
    float yRaw ;
    float x ; // Terminal tip (QR code) center X coordinate in robot coordinates  // was Terminal base (QR code) center X coordinate in robot coordinates
    float y ; // Terminal tip (QR code) center Y coordinate in robot coordinates  // was Terminal base (QR code) center Y coordinate in robot coordinates
    float Azimuth ; //Terminal base (QR code) azimuth relative to the robot. positive CW both for right and left climb (for left climb, positive Azimuth is towards the termianl).
    short unsigned Side ; // 1: Robot left side , 2: Robot right side
    short unsigned TerminalType;
    short unsigned CmdCntr ;
    short unsigned MsgCntr ;
    short unsigned Algn ;
    long long unsigned RelevanceTime ; // Time of message, in local time coordinated
    volatile struct  CNavInfo  * volatile pNavBufferOnRelMsg  ;
};


enum E_SysMotionMode
{
    E_SysMotionModeSafeFault = -2 , // Safe Fault
    E_SysMotionModeFault = -1 , // Fault
    E_SysMotionModeMotorOff = 0 ,   // Motors should be off
    E_SysMotionModeStay = 2 ,   // Stay in place
    E_SysMotionModePerAxis = 3 ,  // Drive commands per axis , for yew changes and for junction rotation. Also for testing
    E_SysMotionModeManualTravel = 4 ,  // Ground travel by route specification with auto calculations
    E_SysMotionModeTestPack = 5 , // Test package handling
    E_SysMotionModeHostSpeedControl = 6 , // Speed control by host
    E_SysMotionModeHostFinePosition = 7 , // Fine position by host
    E_SysMotionModeAutomaticIdle = 9 ,  // !< Auto mode, set to idle between missions
    E_SysMotionModeAutomatic = 10  // !< Auto mode
};


enum E_ManipSysMotionMode
{
    E_ManipSysMotionModeSafeFault = -2 , // Safe Fault
    E_ManipSysMotionModeFault = -1 , // Fault
    E_ManipSysMotionModeMotorOff = 0 ,   // Motors should be off
    E_ManipSysMotionModeStay = 2 ,   // Stay in place, may be with motors off
    E_ManipSysMotionModeIndividual = 3 ,  // Drive commands per axis , for yew changes and for junction rotation. Also for testing
    E_ManipSysMotionHoming = 4 ,  // homing by idle loop
    E_ManipUNUSED2 = 5 , // Test package handling
    E_ManipUNUSED3 = 6 , // Speed control by host
    E_ManipSysMotionModeAutomaticIdle = 9 ,  // !< Auto mode, set to idle between missions, ready to get new missions
    E_ManipSysMotionModeAutomatic = 10  // !< Auto mode, during mission (standby, homing, deal package)
};


enum E_NeckMode
{
    E_NeckModeEncCmd = 0 , // Command as direct encoder value
    E_NeckModeStabilize = 1 ,// Command for gyro stabilization
    E_NeckShelfAuto = 2 , // Command automatically by shelf position
    E_NeckModeCompRailAngle = 3 , // Set the inverse of the rail angle, to keep the tray level
    E_RemoteControlCore2 = 4 ,    // Package handling, remotely controlled by core 2
    E_TestPT = 5
};

// Enumerate the on-the-shelf modes
enum E_ShelfMode
{
    E_Shelf_Nothing = 0 , // !< Not on shelf
    E_ShelfArc = 1 ,      // !< Input arc climb
    E_TwistToShelf = 2 ,    // !< On the pole (not used)
    E_TwistFromShelf = 3 , // !< Twisting the junction
    E_ShelfRun_Rescue = 4 , // !< Rescue Horizontally on shelf
    E_ShelfRun_Auto = 5 ,// !< Horizontally on shelf
    E_DealPack = 10 , // !<handeling a package
    E_ShelfFailure = -1
//  E_ShelfFailureInductiveMissing = -1001
} ;


// Struct for management of change mode process
struct CChgMode
{
    short State ; // !< Process state
    short SubState ; //
} ;


struct CMotionBreak
{
    short OldState ;
    short NextState ;
    short BreakNow  ;
    short BreakCrab ;
};
EXTERN_TAG struct  CMotionBreak MotionBreak ;


struct CRejectWarning
{
    short unsigned ID ;
    short IgnoreWarning ;
    long unsigned exp ;
    long Msec ;
};


struct CNeckControl
{
    short NeckMode    ; // Mode of neck work (gyro stabilized or directly commanded)
    short NeckBupMode ;
};


struct CMotion
{
    short mode ; // enum E_SysMotionMode
    short SegmentType ;
    struct CNeckControl NeckControl ;
    short unsigned SafeFaultCntDown ;         // !< Counter for servo shut down following a fault, giving time to brake
    short unsigned bRptQueueEntry ; // !< LSB: Executing index in queue, MSB last valid in queue
    //short unsigned BgSegQueue ; // !< The index of the queue that is available for bacground processing
    //short unsigned GndNavInitialized ; // !< Ground navigation initialized
    short unsigned InGroundNav ; // !< Flag now in ground navigation
    short ShelfSubMode ; // !< Submode of arc climb
    short unsigned QuickStop  ; // !< Flag a quick stop is in process
    short unsigned ExecutingQueue ; // !< The index of queue now in execution
    short RunType ; // !< Run type: -1: error , 0: rot on place, 1: straight, 2: Curve
    short AutoInWait ; // !< Automatic mode is in wait state, so all should stop
    short SleepBupMode ; // !< Mode backup while asleep
    float XJustBeforeClimb ; // !< X coordinate just before the climb
    float YJustBeforeClimb ; // !< Y coordinate just before the climb
    float cXJustBeforeClimb ; // !< X direction cosine just before the climb
    float cYJustBeforeClimb ; // !< Y direction cosine just before the climb
    float ZJustBeforeClimb ; // !< Z coordinate just before the climb
    struct CJumpCmd JumpCmd     ; // !< A jump command
    struct CDeviation Deviation; // !< Deviation report from master
    struct CRelPosReport RelativePosReport ; // !< Position report from master
    struct CPosReport PosReport ; // !< Position report from master
    struct CRelPosReport BgRelativePosReport ; // !< Position report from master, copied for idle processing
    struct CPosReport BgPosReport ; // !< Position report from master, copied for idle processing
    struct CMotionItem LastPositionItem ; // !< The last position captured before the motion
    struct CChgMode  ChgMode ; // !< Mode change management
    long   ScdIsrCnt    ; // Counter for managing scheduler calls
    long   LastCallTime ; // !< Last call time
    long   TotalMsgCounter ; //
    float DeltaT ; // !< Time between consecutive calls
    unsigned long  MotLog ;
    unsigned long  MotLog2 ;
    long  long unsigned ExceptionTab[EXCEPTION_TAB_LENGTH] ; // !< The exception that blew motion off
    struct CRejectWarning RejectWarning ;
    float  AzError ; // Azimuth error
    float  DistError ; // Distance error
    struct
    {
        float SpeedShadow ;
        float OmegaShadow ;
        float Speed ;
        float Omega ;
        short Dirty ;
        short bBypassTout ;
        short OldMotionMode ;
    } BodyCmd ;
    short unsigned ModeBeforeFineMotion ;
    short unsigned LastException ;
    short unsigned ExceptionCnt ;
    short unsigned ExceptionInit ;
    short unsigned Warning   ; // !< The warning that possibly hamper motion
    short unsigned SmallCorrect ;
    short unsigned bPauseFlag ; // Flag for pause
    short unsigned ResetShelfBase ;
    short unsigned bBrakeWheel[2] ;
    short unsigned UsePoleDocking;
};


struct CIMU
{
    float Omega[3]  ;
    //float LinAccRaw[3] ; // !< Readout of accelerometers, before offset correction
    //float LinDvRaw[3] ; // // !< Raw DV integration
    //float LinAccCorrect[3] ; // !< Readout of accelerometers, with offset correction
    //float LinAccFiltered[3] ; // !< Readout of accelerometers, with offset correction, filtered
    //float Temperature ;
    float HeadRollFilt ; // !< Filtered head roll
    //float GyroXAccFilt ; // !< Filtered roll acceleration
    float GyroXFilt ; // !< Filtered roll rate
    short unsigned status ;
    short unsigned ID ;
    //struct TVFilterState CmdSpeedFilt ;
    //struct TVFilterState CmdOmegaFilt ;
};


struct CRobotNav
{
    long  RWheelEnc ; // !< Actual angle of right wheel
    long  LWheelEnc ; // !< Actual angle of left wheel
    float RSteer ; // !< Actual angle of right steer
    float LSteer ; // !< Actual angle of left steer
    float CenterFrac[3] ; // !< Floating point fraction over integer 1/10mm integer
//  float WheelLine[3] ; // !<  Wheel line , R - L
    float OdoSpeed[3] ; // !< Speed derived by direct odometry
//  float CorrectedOdoSpeed[3] ;// !< Odometry speed corrected by accelerometer
    float xc[3]; // !< Center of robot coordinates (world)
    float WheelLineDeviationAngle ; // !< Deviation of the line connecting wheel touches from the robot local Y
    float WheelTouchDist ; // !< Distance between the touch points of the wheels
    float Direction; // !< Direction of fuselage axis (world)
//  long  IsrCount ; // !< Isr counter sampled
    float RouteLocation[2] ; // !< Location of nearest route point in the plane of advance
    float RouteTangent ; // !< Tangent direction of nearest route point, projected to plane of advance
    float CurveCorrection ; // !< Curvature correction request
    float CurveCorrectionF ; // !< Filtered curvature correction request
    float TangentialDeviation ; //
    float RawSEst ; // !< Raw estimate of curve parameter
    float OdoDt ; // !< Time interval of integration for Odometry
    short RouteValid ; // !< 1 for running a valid route
    short RouteType ;// !< Type of route segment currently on the run
    struct CMotSegment * pSeg ; // !< if RouteValid , then the present segment pointer
} ;


struct CRouteLogItem
{
    float RouteLocation[2]; // !< Location of nearest route point in the plane of advance
    float RouteTangent; // !< Tangent direction of nearest route point, projected to plane of advance
    long  RouteTime; // !< Validity time of route
    short RouteValid; // !< 1 for running a valid route
    short RouteType;// !< Type of route segment currently on the run
};

struct CRouteLog
{
    short InterLogCounter; // Counts cycles between consecutive logs
    short PutCounter;      // Place to put next sample in buffer
    short FetchCounter;    // Oldest item in buffer that is logged (unless equal to fetch buffer, then log is empty)
    short Algn;            // Just DWORD alignment
    struct CRouteLogItem Buf[N_LOG_BUFFER_SIZE]; // Route records buffer
};


struct CShelfNav
{
    long EncoderOnJuncSensor ;
    long EncoderOnJunction   ;
} ;



struct CNavigation
{
    long iPos[3] ;
//  long iPosUncorrected [3] ; // Uncorrected odometry position
    struct CIMU Imu ;
    float  roll ;
    float  pitch ;
    float  yaw ;
    float  RawYaw  ;
    float  dyaw ;
    float FiltLineSpeed[3] ;
//    long VirtualWheelEncoder[2] ;
//    float VirtualWheelEncoderDebt[2] ;
    long  UsecOfiPos ;
    struct CRobotNav Robot ;  // !< Robot variables
    struct CRouteLog RouteLog; // !< In route navigation, cyclic logs of the route location to which the robot corresponds
    struct CShelfNav  ShelfNav ;
//  struct COdometryBuf OdoBuf ;
    short IgnoreQrCodes ; // Flag to ignore QR codes
    short IgnoreLineDev ; // Flag to ignore Line deviation
    short IgnoreWhereAmI; // Ignore in-profile position correction
    short WheelsStopped ; // 1 if wheels are stopped
    float QRcu2LpW_StartPostShare[4] ;
    //float QVru2LpW_StartPostShare[4] ;
    float QRcu2Lp[4] ;
    //float QPreImu[4] ;
    float qChip2Body[4] ;
    float RawQuat[4]  ;
    float RawW[3]  ;
    float AzInt   ;
    float AzInt0   ;
    float yaw0 ;
    float GyroZOffsetEst   ;
    short OldestNavUpdIndex ;
    short NavBufferIndex  ;
    short DontIntegrateYaw ;
    long  UsecOfGyroDriftDisable  ;
    short bGyroDriftDisable ;
    short bGyroOffsetDone ;
};



struct CManOnState
{
    short unsigned PdoAcceptMask ;
    short WellnessStatus ; // Recorded status of manipulator wellness
    short RetryCounter ;
    short FailureCode  ;
    short State ;
};

struct CPackSim
{
    short OldMotMode ;
    short OldNeckMode;
    float OldPosTarget ;
};

struct COldAbortStats
{
    short OldMissionStat ;
    short OldMissionAbortedStat;
    short OldManupilatorAbortedStat;
    short OldActiveQ;
    short OldQindex;
};

struct CLpPackage
{
//  short unsigned Active      ; //!< Flag: 1 if package handling is active
//  short unsigned LoadInto    ; //!< 1 to load into , 0 to unload
    short State        ; //!< Package delivery state
    short unsigned SubState        ; //!< Package delivery sub state
    //short unsigned iDistanceTo ; //!< Distance to package, 1mm units
    //short unsigned LaserDist0p1mm ; // Laser distance in 0.1 mm
    short unsigned ManState ; // !< Report of state from manipulator package handling state machine
    short unsigned ManStateMachine ; // !< Report of state from manipulator package handling state machine
    short unsigned Side     ; // !< Package side
    short unsigned Get      ; // !< 1 Get , 0 Set
    short unsigned LastFault ; // !< Last fault capture
    short unsigned IsFaultRecoverable ; // !< If there is a fault, 1 if recoverable
    short unsigned PendingException ; // !< Pending exception: allow completing a motion before error applies quickstop
    short unsigned ExceptionType    ; // !< Type of exception
    short unsigned StandbyAction ; // !< Standby action flag
    short Mode; // !< Mode of package action (for emergency handling)
    short ManHolds ; //
    short ManStopErr ; // !< Error that stopped the manipulator
    short unsigned KnowWhereAmI  ; // !< Bit field - robot knows where the manipulator is .0 is shoulder, .1 is elbow, .2 is wrist .3 is R door , .4 is L door
    long  unsigned Summary ;
    struct CManipControlWord ManipControlWord ; // Package handler control word
    struct CPdCBit  ManCBit1 ; // !< Manipulator basic CBIT1
    struct CPdCBit2 ManCBit2 ; // !< Manipulator basic CBIT2
    struct CPdCBit3 ManCBit3 ; // !< Manipulator CBIT 3
    float IncidenceAngle     ; // !< Tail incidence with respect to nominal robot position: 0 on ground, +/-90 on shelves
    float PackageX ;
    float PackageY ;
    float XPosition ;
    float YPosition ;
    float YPosition2 ;
    float ManipulatorMinLimit  ; // Most negative (left) protrusion of actuator from robot fuselage axis
    float ManipulatorMaxLimit  ; // Most positive (right) protrusion of actuator from robot fuselage axis
    float ShoulderAngle  ;
    float ElbowAngle   ;
    float WristAngle   ;
    float ThtPosition ;
    float LeftStopPosition ;
    float RightStopPosition ;
    float ImuRoll ;

    struct CManOnState ManOnState ;
    struct CPackSim  PackSim ; // Backup for state before neck simulation
    short  ComNetState    [2] ;
    short  AxisFailStatus [5] ;
    //short  ManipulatorAxesReboot ; // !< Request for manipulator reboot
    // short  OverRideLaserPS ; //
    short  OverRidePumpsOn ; //
    short TapeArmPalletAngle ;

};

struct CShelfRun
{
    long  EncOnProfileStart[2] ;
    long  JuncWheelEncoderCapture[2] ;
    long  EncoderPosTarget[2] ; // !< Encoder coordinates of end game
    long  EncoderPosAtSw [2] ; // !< Encoder coordinates on switch encounter
    short CrabCrawl ; // !< Flag to command a crab crawl 1: right, 0: yew , -1: left
    enum E_TrackWidthType ShelfWidthTarget ;
    short ShelfSubMode ; // !< Submode of motion
    short ModeEndState ; // !< Substate of mode for mode ending
    short bProfileStart ; // Flag a new started profile
    short NextStationIsPole ; // Indicate that the next station is a junction for a pole
    short RunDirection ; // The direction of the present shelf run
    short PitchAlignDirection ;
    short PitchAlignState ;
    short bEndGame ; // Flag to signal the end of the game stabilization
};




struct CStatus
{
    short WakeUp ; // !< Wake up status
    short WakeUpSubState ; // !< Wake up sub-state
    short PdInTest ; // !< 1 for PD in test,so Matlab communicates with it
    short PdInDload ; // !< PD in download, so don't send PDO
    short MasterBlaster ;
    short OverRideBrakeRelease ; // !< 1 to release brakes
    short OverRideNeckBrakeRelease ; // !< 1 to release brakes on neck
    //short unsigned PdControlWordMask ; // !< Bits marked as one will be taken from PdControlWordSubs instead of the internal automata
    //short unsigned PdControlWordSubs ; // !< Use this to set PD control word externally

    short FailCount ; // !< PS wake-up failure counter
    short LocalPduComCounter ; // Locally counts communications with PDU
//Bimkom
    union
    {
        short unsigned  all; // !< Indicate that failure occur
        struct {
                int unsigned MotionFatal : 1 ; // !< Fatal motion error
                int unsigned PackHandleFail : 1 ; // !< Failure in package handling
                int unsigned PDAbsent : 1 ; // !< PD does not respond communication
                int unsigned OverNeckStretch : 1 ; // !< Neck over stretched
                int unsigned OnDebugWait     : 8 ;
                int unsigned DebugHoldEnabled : 1 ;
                int unsigned IsWakeStateFault  : 1 ;
                int unsigned SerialFlashFault : 1 ; // !< Fault of serial flash
                int unsigned Reserved : 1 ;
                } bit ;
    }Failure;
//SimSham short unsigned Failure ;
    short unsigned Align ;
    long  FaultSummary ;
    long unsigned ComFaultSummary ;
    float V12 ;
    float V24 ;
    float V36 ;
    float V54 ;
    float VBat1In;
    float VBat2In;
    float Cur24V;
    float Cur18V;
    float Cur12V;
    float Cur5V;
    float InputCur;
    float V5 ;
    float V18 ;
    float Power18;
    float Energy18;
    float Power54;
    float Energy54;
    float Power12 ;
    float Energy12;
    float Power24 ;
    float Energy24;
    float FZero ;
    float V18Or36 ;
    short ShortBatVoltsDeviation  ;
    short ShortModeInfo  ;
} ;
//  short  ManipulatorOperational ; // !< Flag that the manipulator boot is complete
struct CCBit
{
//Bimkom
    int unsigned MotorReady : 5 ;
    int unsigned NavInitialized: 1 ; // !< If navigation position is  initialized
    int unsigned MotorFault : 6 ;
    int unsigned NoConfig : 1 ;
    int unsigned InPause  : 1 ; // Mission paused for obstacle avoidance
    int unsigned QuickStop : 1 ;
    int unsigned BrakesReleaseCmd : 1 ;
    int unsigned PotRefFail : 1 ; // Failure of potentiometer reference voltage
    int unsigned NoImu   : 1 ; // Failure of IMU
    int unsigned NoCalib : 1 ; // Calib failure
    int unsigned NoPdData : 1 ; // PD data RX failure
    int unsigned GyroOffsetCalibrating : 1 ; // Gyro still calibrates its offset
    int unsigned QueueAborted: 1 ; // Queue aborted
    int unsigned CompromiseNavInit: 1 ; // Command to compromise navigation init on queue processing
    int unsigned OnRescueMission : 1 ; // If in rescue mission (pole down terminates mission)
    int unsigned GyroQuatListReady: 1;
    int unsigned QueueIsSane: 1 ;
    int unsigned SleepRequest: 3 ;
    int unsigned ObsoletePumpRequest: 1 ;
    int unsigned ForcedWheelBrake: 2 ;
//SimSham short unsigned CBIT ;
};

struct CCBit_RBPi
{
//for transmition to RBPi
    int unsigned MotorReady_RBPi : 5 ;
    int unsigned NavInitialized_RBPi: 1 ; // !< If navigation position is  initialized
    int unsigned MotorFault_RBPi : 5 ; //changed from original
    int unsigned QuickStop_RBPi : 1 ;
    int unsigned BrakesReleaseCmd_RBPi : 1 ;
    int unsigned PotRefFail_RBPi : 1 ; // Failure of potentiometer reference voltage
    int unsigned NoImu_RBPi   : 1 ; // Failure of IMU
    int unsigned NoCalib_RBPi : 1 ; // Calib failure
    int unsigned NoPdData_RBPi : 1 ; // PD data RX failure
    int unsigned GyroOffsetCalibrating_RBPi : 1 ; // Gyro still calibrates its offset
    int unsigned QueueAborted_RBPi: 1 ; // Queue aborted
    int unsigned CompromiseNavInit_RBPi: 1 ; // Command to compromise navigation init on queue processing
    int unsigned OnRescueMission_RBPi : 1 ; // If in rescue mission (pole down terminates mission)
    int unsigned GyroQuatListReady_RBPi;
    int unsigned QueueIsSane_RBPi: 1 ;
    int unsigned SleepRequest_RBPi: 3 ;
    int unsigned Res2_RBPi    : 6 ;
//SimSham short unsigned CBIT ;
};

struct CRawStatusFailures
{
    int unsigned NoImu : 1 ; //IMU fail, SysState.CBit.bit.NoImu
    int unsigned PotRefFail: 1 ; //potentiometer's fail, SysState.CBit.bit.PotRefFail
    int unsigned SrevoAxesFailure : 1; //: servo axis failure: SysState.Package.KnowWhereAmI (failure of at least one of the axes)...
                                       //at KnowWhereAmI : 1 if position is known.
                                        //((SysState.Package.KnowWhereAmI & 31) > 0 ) ? 1 : 0
    int unsigned CalibPresent: 1 ;//calibration present: not(SysState.CBit.bit.NoCalib) == SysState.CBit.bit.NoCalib ^ 1
};

union URawStatusFailures
{
    struct CRawStatusFailures bit ;
    short unsigned all ;
};

union UBit_RBPi
{
    struct CCBit_RBPi  bit ;
    long unsigned all ;
};

struct CManCBIT1_CBIT2_RBPi
{
    int unsigned V24Fail : 1 ; //!< Failure of the 24V voltage
    int unsigned V12Fail : 1 ; //!< Failure of the 12V voltage
    int unsigned MushroomDepressed : 1 ; // !< Mushrum is depressed
    int unsigned ShuntFail : 1 ; // !< 1 if shunt fails to stabilize voltages (too hot) 0x8
    int unsigned GripFail : 1 ; // !< 1 if grip of package failed 0x10
    int unsigned ManFail: 3 ; // !< Dynamixel errors: Shoulder , elbow , wrist 0x20,0x40,0x80
    int unsigned StopFail: 2 ; // !< Dynamixel errors:   left . right  0x100 0x200
    int unsigned V54Fail : 1 ; // !< 54V failure 0x400
    int unsigned NoSuck1 : 1 ; // !< No sucking in sucker pump 1 0x800
    int unsigned NoSuck2Unused : 1 ; // !< No sucking in sucker pump 2 0x1000
    //int unsigned Reserved : 3 ; //!< Reserved
    int unsigned Active12V : 1 ;
    int unsigned FailCode12V : 3 ;
    int unsigned Active24V : 1 ;
    int unsigned FailCode24V : 3 ;
    int unsigned Active54V : 1 ;
    int unsigned FailCode54V : 3 ;
};

union UManCBIT1_CBIT2_RBPi
{
    struct CManCBIT1_CBIT2_RBPi  bit ;
    long unsigned all ;
};


struct CManCBit
{
    int unsigned GripFail : 1 ; // !< 1 if grip of package failed 0x10
    int unsigned ManFail: 3 ; // !< Dynamixel errors: Shoulder , elbow , wrist 0x20,0x40,0x80
    int unsigned StopFail: 2 ; // !< Dynamixel errors:   left . right  0x100 0x200
    int unsigned NoSuck1 : 1 ; // !< No sucking in sucker pump 1 0x800
    int unsigned Dyn12NetOn : 1 ;
    int unsigned Dyn12InitDone : 1 ;
    int unsigned Dyn24NetOn : 1 ;
    int unsigned Dyn24InitDone : 1 ;
    int unsigned MotorOnMan : 3 ;
    int unsigned MotorOnStop : 2 ;
};

struct CManCBitH
{
    int unsigned PbitDone : 1 ; //unused
    int unsigned IndividualAxControl : 1 ; // !< Manipulator axes controlled manually and individually. unused
    int unsigned MotorOnPin  : 2;
    int unsigned PinMotorIndex : 4  ;
    short unsigned reserved : 8;
};
EXTERN_TAG struct CManCBit  ManCBit ;
EXTERN_TAG struct CManCBitH  ManCBitH ;


//Bimkom
union UCBit
{
    struct CCBit  bit ;
    long unsigned all ;
};


struct CManRouteState
{
    float Curvature ; // Curvature of turn
    float LineSpeed ; // Speed of line following
    float AngularSpeed ; // Angular Speed
    float LeaderError ;
    short unsigned NewCrabFlag ;
    short OldCrabValue ; // !< Crab mode backup
    short unsigned ClimbLeader ; // !< Index of leading drive (0 or 1)
    short bTargetWidthMismatch ; // !< Flag that wheel arm need be changed at the next stop
    //short ClimbDir ; // Climb direction , may be +1 or -1 ;
    short unsigned InterPoleTravel ; // !< 1 if travel initiates and terminates within pole
    short Algn  ;
    long  WheelEncoderCapture[2] ; // !< Capture value for wheel encoders
    long  WheelEncoderInitCapture[2] ; // !< Initial Capture value for wheel encoders
    long  WheelEncoderLastCycleDist[2] ; // !< Distance traveled in last cycle for wheel encoders
    long  WheelEncoderNow[2] ; // !< Now value for wheel encoders
    long  DinCapture[2] ; // !< Encoder captured value on digital input
    long  GyroSwCapture ; //!Estimated encoder count at start of terminal
    float ArcDistance[2] ; // !< The distance traveled on the arc (m)
    float ArcTilt ; // !< Estimated support tilt (to get the robot tilt you also need the wheel arm position), apply as open loop setting to the tail
    float dArcTilt ; //!< Estimated way derivative of robot tilt, apply as open loop setting to the tail
    long  WheelEncoderTarget[2] ; // !< Target for wheel encoders
    long  WheelEncoderTargetCand[2]; // !< Target candidates for wheel encoders, sa found by switches, but before applying them
    long  WheelEncoderOnTwistStart[2]; // !< Sampled wheel encoder on twist start (for exception trapping)
    long  MotEncoderOnTwistStart[2]; // !< Sampled motor encoder on twist start (for exception trapping)
    long errPos[2] ; // Error of position control (wheel encoder units )
    short unsigned SwCounter[2] ; // Switch encounter counter
    float DeltaM ;
    float ShelfPosErrM  ; // Error position on the shelf
    long  ShelfPosRef   ; // Reference position on shelf
    unsigned long WaitPosTime ; // First time for next image to analyze correctly
    float NomRouteTangent;
    float NomRouteLocation[2]; // !< For pole entry, a yew is followed by this path point
    float Destination[3] ; // !< Next destination
    float ProfileTravel ;
    float YewCommand ; // Commanded robot yew
    float LeaderSpeedWhCntSec ;
    float FollowerSpeedWhCntSec ;
    float NavAz ; // Azimuth copied from position estimate
    float NavX ;
    float NavY ;
    float RelNavAz ; // !< Relative Azimuth copied from position estimate
    float RelNavX ;
    float RelNavY ;
    float CountPerTurn ;
    long  WheelOnStart[2] ;
    float TotalRollByArc ; // Total rolling of robot by climbing the terminal
    float UnfoldTravel ; // !< Travel from post to path unfolding
    float ShoulderRollInit ;
    float ArcCoverAngleEst ; // Estimate of the arc angle covered, based on gyro angle
    short TurnGoesOnGyro ;
    short WaitPosReport ; // !< Flag waiting position report (-1: ignore reports)
    short WaitRelativePosReport ;  // !< Flag waiting relative position report (-1: ignore reports)
    short PendingCrab; // !< Pending crab direction (normally until QR detection)
    short DifferenceDrive ;
    short GoDirection ;
    long  WaitRelPosReport ; // !< Flag waiting relative position report (-1: ignore reports)
};




struct CSimPars
{
   float SimAnalogEnableThold ;
};


EXTERN_TAG struct CSimPars SimPars;

struct CCommPars
{
    float StandardSdoWaitToutSec;
    long  PdSdoTxCnt ;
    long  PdSdoRxCnt ;
    long  Tx2PdCnt  ;
};
EXTERN_TAG struct CCommPars CommPars ;


struct CSpline
{
    float a ;
    float b ;
    float c ;
    short ManualCurvature ; //!< Flag: 1 for initial manual curvature setting
    short Align ;
};


struct CPoleRun
{
    short TargetArmDone  ;// Flag that limit switches are armed towards junction detection (.0 : 1 if looking for sw, .1: Leader detected .2: follower detected)
    short TargetArmRequirement  ;// Flag that limit switches are armed towards junction detection (.0 : 1 if looking for sw, .1: Leader detected .2: follower detected)
    long  JuncDinCapture[2] ; // Digital in capture for final junction stabilization
    long  EncOnModeStart[2] ; // Encoder value on mode start
    float  ArcDistanceOnModeStart[2]; // Arc distance value on mode start
};


struct CBlockDnload
{
    short unsigned InBlockDload ;
    short unsigned crc ;
    short unsigned cv[7] ;
    long BlockDloadLen ;
    short unsigned seqno ;
    short unsigned bSendEndOfBlock ;
    short unsigned bEndOfBlockTransmission ;
    short unsigned blockdatano ;
    long unsigned nextBlockLong ;
    short unsigned inlongcnt  ;
    long  unsigned longcnt  ;
    long unsigned emcy ;
};



struct CBlockUpload
{
    short unsigned InBlockUload ;
    short unsigned nBytes       ;
    short unsigned SeqNo  ;
    short unsigned BytesTransmitted  ;
    short unsigned crc ;
    short unsigned BytesEmptyAtEnd ;
    long  unsigned *pBuf ;
    long  emcy ;
    struct CCanMsg StartBlockMsg ;
    struct CCanMsg InBlockMsg;
    struct CCanMsg EndBlockMsg;
    struct CCanMsg AbortBlockMsg ;
};

struct CPTTest
{
    short unsigned Init ;
    float F ;
    float A ;
    float Phase ;
    float dPhase ;
    float P0 ;
};

struct CDebugState
{
     long  unsigned MoreInfo  ;
     short unsigned bDisableLineDevCorrection ;
     short unsigned bRecorder4LimitSwitches    ;
     short unsigned bRecorder4ShelfRun     ;
     short unsigned bRecorder4QrUpdate     ;
     short unsigned bRecorder4WheelArm      ;
     short unsigned bBypassSetDiscretes ;
     short unsigned bAllowUnclimbWithNoSequel  ;
     short unsigned TestHostCom ;
     short unsigned HostTestChar ;
     short unsigned PermissionForce ; // Force permission for auto travel without manipulator
     short unsigned bDebugWheelArm  ;
     short unsigned bAllowManualWheelArm  ;
     short unsigned ActivePinMotor ;
     short unsigned UserWaitKey ;
     short unsigned bAllowMotionUndeterminedWheelArm ;
     short unsigned bWaitUser ;
     short unsigned bWaitUserEnable ;
     unsigned short bManipLockEnable ;
     short unsigned GpDebug ;
     short unsigned bCheatRSteerPot ;
     short unsigned bCheatLSteerPot ;
     short unsigned bCheatNeckPot ;
     short unsigned bDisableOverloadDetection ;
     short unsigned bManualBrakeControl ;
     short unsigned bManualBrakeControlReleaseRW ;
     short unsigned bManualBrakeControlReleaseLW ;
     short unsigned bManualBrakeControlReleaseNK ;
     short unsigned bManualBrakeControlReleaseROT ;
     short unsigned bManualBrakeControlReleaseTARM ;
     short unsigned RecordOnLineDeviation ;
	 short unsigned StoTestOverride ;
	 short unsigned bRecorder4GyroClimb ;
	 short unsigned ForceWheelTracksSteering ;
     short unsigned ForceNeckControlByCore2 ; // 1 to force enslaving the neck to core 2, regardless of package logics
     short unsigned bDisableNeckStretchAlarm  ;
     short unsigned bBalanceWheelLoadsOnManual  ; //
     enum  E_WheelArmPinDirection ActivePinDirection ;
     struct CPTTest  PTTest ;
     float PinMotorCurrentAmp ;
};

struct CStationaryTest
{
    short unsigned bStationary ;
    long  Wheels[2] ;
};

struct CWheelArm
{
    float RWheelArmGain ;
    float LWheelArmGain ;
    float RWheelArmOffset ;
    float LWheelArmOffset ;
    float WheelArmRZeroCnt ;
    float WheelArmLZeroCnt ;
    float RWheelArmLatchTravel;
    float LWheelArmLatchTravel;
};

struct CEEF
{
    float VBit12  ;
    short unsigned bUse   ;
    short unsigned Status ;
    short unsigned bIssueMsg2EEF ;
    short unsigned ControlWord ;
    short unsigned PumpStaggerCnt ;
    short WasEvent  ;
};

struct CRelCrabState
{
    float x ;
    float y ;
    float Azimuth ;
    float AzError ;
    float XError ;
    float yTarget ;
    struct CRelPosReport PosReport ; //median results of position report
    //float XTolLongDist  ;// X tolerance after crab process for active pole homing (long distance from terminal)
    float XTolShortDist  ;// X tolerance after crab process for active pole homing  (short distance from terminal)
    float AzTolShortDist ;// Azimuth tolerance before crab process for active pole homing (short distance from terminal)
    float XTolFinal ;// Final x tolerance for active pole homing
    float AzTolFinal ;// Final azimuth tolerance for active pole homing
    float MinY; // Min distance from robot center to active pole homing target
    float MaxY;// Max distance from robot center to active pole homing target
    short WaitPosReport ;
    short Direction ; // 1: right climb ;  -1: left climb
    short LoopCnt ;
    short LoopCntMax ;
    short CameraBeingCalibrated; //0 - none, 1 right, 2 left
    long CameraDelayCounter; //counts delays above 4 sec
    short CamDelayRegistered;
    float XCalibShiftResultTemp;
    float YCalibShiftResultTemp;
    float AzCalibShiftResultTemp;
    float CalibCorrectionX;
    float CalibCorrectionY;
    float CalibCorrectionAz;
    float CalibCorrectedPosX; //calibrated corrected Terminal tip (QR code) center X coordinate in robot coordinates
    float CalibCorrectedPosY; //calibrated corrected Terminal tip (QR code) center Y coordinate in robot coordinates
    float CalibCorrectedPosAz; //calibrated corrected Azimuth, positive CW both for right and left climb (for left climb, positive Azimuth is towards the termianl).
    short DriveDirection;
    float ForwardDriveLength;
    short Travel2SideDirection;
    float CalibCorrectedPosXBeforeCrab; //for debug
    float CalibCorrectedPosXAfterCrab;  //for debug
    short TerminalType; //based on ICD 1 is old type 320mm from teeth base to tip. 2 will be short 190mm from teeth base to tip
};


#define N_LDEBUG 8
#define N_FDEBUG 24

union UMultiVal
{
    long l ;
    long unsigned ul ;
    short s[2] ;
    short unsigned us[2]  ;
};

struct CSysState
{
    //short AxesActive ; //!< 1 if 54V is stable, and axes are supposed to respond
    short  WakeupState ; //!< State of the wake-up process
    short  WakeupSubState ; //!< Sub State of the wake-up process
    short  Operational ; // !< Flag that the servo boot is complete, and periodic PDO activity is permitted
    //short  ToOperWakeUp ; //
    //short  ToOperWakeUpBig ; //
    short unsigned SdoCounter ; //!< Counts the SDO transmitted in the wake-up proc
    short unsigned CanRxEnable ; //!<Enable the reception of CAN messages from RB
    short unsigned PdCmd2 ; // Command 2 to PD (see CPdCmd2)
    short unsigned ProcCtr      ; // !< Counts 2msec interrupts between a processing event
    short unsigned ProcCtrMax   ; // !< Number of 2msec ticks between major proc
    //short unsigned PdProcCtr      ; // !< Counts 2msec interrupts between a processing event
    short EmcyStopCsp   ; // !< Emergency stop CSP (don't transmit commands, it will stop)
    short unsigned LastErrorCode ;// !< Last recorded error code
    short PdCmd2EnterCtr ;
    short EnableByAnalog;
    short MissionStat ; // Mission status as reported to SPI host
    short MissionAbortedStat ;  // If the mission status is Abort, this is the detail
    short ManupilatorAbortedStat ; // If the manipulator status is Abort, this is the detail
    short SleepRequest ; // Sleep request bit field: .0: Active request .1: Robot stopped .2: Request honored
    struct CCanAxis CanAxis[N_CAN_SLAVES+1] ; //!< CAN axis entities, for all the regular CAN slaves + 1 for the manipulator
    float WheelFiltAbsTorqueDiff ; // !< Filtered absolute Read difference between the two wheels
    float TorqueCorrection ; // !< Torque correction for equalizing motor currents on the climb
    float ShoulderRoll ; // Roll of robot shoulders, as a difference between head roll and neck angle
    float ShoulderRollBuff4FallDetect[32]  ; // Buffer for Roll of robot shoulders for fall detection
    float AddRoll ; // Roll addition to neck
    float NeckSpeedFilt ; // Filtered neck speed
    float StabilizationPosError ;
    float WheelRawTorqueDiff ; // Raw difference between wheel torques
    long unsigned GMalinkiLedSet ;
//Bimkom
    union UCBit CBit ; // !< Status summary
//SimSham struct UCBit CBit ; // !< Status summary
    struct CStatus Status ;     // !< Status detail
    struct CNavigation  Nav ;  //!< Navigation struct
    struct CMotion      Mot ;  //!< Motion management struct
    struct CLpPackage   Package ;  //!< Package handling struct
    struct CShelfRun  ShelfRun ;
    struct CPoleRun PoleRun;
    struct CPdBitGen  PdBitGen ;
    struct CManRouteState ManRouteState ; // !< State of manual routing
    struct CRelCrabState RelCrabState ;
    //struct CManRouteState ManRouteStateDbg ; // !< State of manual routing
    struct CSpline Spline ;

    long unsigned InterfaceVersion[2] ;
    union UMultiVal  SwitchStatus;
    float fDebug[N_FDEBUG];
    long unsigned PdRawData[10];

    struct COldAbortStats OldAbortStats ; //11-07-2021
    struct CBlockUpload BlockUpload ;
    struct CBlockDnload BlockDnload ;
    struct CDebugState Debug ;
    struct CStationaryTest StationaryTest ;
    struct CTrackWidthCtl TrackWidthCtl ;
    struct CWheelArm WheelArm ;
    struct CEEF EEF ;
    short unsigned PdFaultStackCtr ;
    short NextSubMode ;
    short CalibVarsFine ; //flag to enable calibration save to flash
    short BlockServoComm ; // Flag to block servo communication
    short bInRescue ; // In rescue process if true
    short bPeriodicProcRunning ; // !< Flag that interrupt are enabled
    short unsigned ShoulderRollBufCnt   ; // !< Update counter for shoulder roll buffer
    short unsigned bMalinkiMsgRdy ;
    short unsigned DataFromPdCntr ;
    short unsigned CorrectedAfterCrab;
    short AllowConfig  ;
    short YDebug[10] ;
};
EXTERN_TAG struct CSysState SysState;


EXTERN_TAG long lDebug[N_LDEBUG] ; // Debug variables

struct CClimbLog
{
    float LeaderScale;
    float FollowerScale;
    float SpeedRatio ;
    long  ClimbStatus; // Direction and zone
} ;
EXTERN_TAG struct CClimbLog ClimbLog;

struct CImuPars
{
    float GyroGain[3] ; // !< From IMU report to rad/sec
    float AccThold ; // !< Acceleration threshold
    float RotThold ; // !< Rotation threshold
};

EXTERN_TAG float ImuAccGain[3] ; // !< IMacc gain , -sec/usec , acc filter gain


struct CNavPars
{
    float SegPosCorrectionFac; // Filter constant, correcting on-route position by odometry
};

struct CSysPars
{
    struct CImuPars Imu ;
    struct CNavPars Nav;

};
EXTERN_TAG struct CSysPars SysPars ;


struct CManipulator
{
    float x2 ;
    float y2 ;
    float tht1 ;
    float tht2 ;
    float tht3 ;
    //float pi;
    float rr1 ; // !< first arm length
    float rr2 ; // !< 2nd arm length
} ;
EXTERN_TAG struct CManipulator Man ;

EXTERN_TAG struct CRobotGeom Geom ;


struct CCalib
{
    long  PassWord ; // A password replica
    float RSteerPotCenter ; // Add this to the right steer pot for calibration
    float LSteerPotCenter ; // Add this to the left steer pot for calibration
    float RSteerPotGainFac ; // Add this to the right steer pot gain for calibration
    float LSteerPotGainFac ; // Add this to the left steer pot gain for calibration
    float RNeckPotCenter ; // Add this to the right neck pot for calibration
    float LNeckPotCenter ; // Add this to the left neck pot for calibration
    float RNeckPotGainFac ; // Add this to the right neck pot gain for calibration
    float LNeckPotGainFac ; // Add this to the left neck pot gain for calibration
    float AccOffsetX ;
    float AccOffsetY ;
    float AccOffsetZ ;
    float GyroOffsetX ;
    float RWheelArmLatchTravel ;
    float LWheelArmLatchTravel ;
    float qImu2ZeroENUPos[4];  // The transformation in Body q Bottom to top if the IMU is brought to zero ENU rotation position (flat, Z up, X to right, y ahead)
    float ObsoleteLaserGainCorrection ;
    float ObsoleteLaserOffsetCorrection ;
    float ObsoleteLaserMinimumVolts ;
    float WheelArmRZeroCnt ;
    float WheelArmLZeroCnt ;
    float ObsoleteNeckGainAddFac  ; // Neck gain factor (multiplier added to GainFac=(1+NeckGainAddFac), so the value of -0.5 reduces by half, 1 multiplies)
    float RWheelArmGain  ; // Gain for right wheel arm
    float LWheelArmGain ; // Gain for left wheel arm
    float RWheelArmOffset  ; // Offset for right wheel arm
    float LWheelArmOffset  ; // Offset for left wheel arm
    long  RobotConfigObsolete     ; // !< Robot configuration
    long  CalibDate       ; // !< Calibration revision date
    long  CalibData       ; // !< Calibration additional revision data
    float WheelRadiCorrection; // Correction to the wheel radius
    float XCalibShiftR; //Positive x shift to apply to right side camera
    float XCalibShiftL; //Positive X shift to apply to left side camera
    float YCalibShiftR; //Positive Y shift to apply to right side camera
    float YCalibShiftL; //Positive Y shift to apply to left side camera
    float AzCalibShiftR; //Positive azimuth shift to apply to right side camera
    float AzCalibShiftL; //Positive azimuth shift to apply to left side camera
    float CalibSpareFloat[9] ;
    float CalibSpareLong[8]   ;
    long  Password0x12345678 ; // !< Must be 0x12345678
    long  cs ; // !< Long checksum
};




EXTERN_TAG struct CCalib Calib ;


struct CConfig
{
    long  PassWord ; // A password replica
    short ManipConfig    ;
    short WheelArmType   ; //1:28,  2:24, 0: rigid
    short RailPitchType  ;
    short SpareConfigPar ;
    long  Spare[12] ;
    long Password0x12345678;
    short unsigned  cs ; // !< Long checksum
    short unsigned Algn ;
};
EXTERN_TAG struct CConfig  Config ;

struct CCalibProg
{
    unsigned long PassWord ;
    struct CCalib Calib ;
};
EXTERN_TAG struct CCalibProg CalibProg;

EXTERN_TAG long unsigned FlashCalib ;
EXTERN_TAG long unsigned FlashConfig ;


struct CClothoid
{
    float x ; // First arc junction
    float y ; // First arc junction
    float ClothAngle ; // Angle covered by clothoid action
    float arcendx ; // 2nd Arc junction, reflection of x
    float arcendy ; // 2nd Arc junction, reflection y
    float radarc ; // Arc radius
    float L ; // Clothoid segment path length
    float c0 ; // Curvature gradient
    float Curvature ; //
    float ArcAngle ; // Angle covered by arc part
    float centerx ; // Center of arc, x
    float centery ; // Center of arc, y
};
EXTERN_TAG struct CClothoid Cloth ;



struct CControlPars
{
    float NeckStretchGain   ; // !< Gain for neck stretch correction when climbing an arc
    float NeckStretchGainPole   ; // !< Gain for neck stretch correction when vertical on pole
    float TorqueGainPole  ; // !< Gain for motor speed equalization when vertical on pole
    float TorqueGainPoleManual ; // !< Gain for motor speed equalization when vertical on pole in the manual mode
    float WheelPosOnRailGain ; // !< Gain for correcting relative wheel position on rail
    float WheelPosOnPoleGain ; // !< Gain for correcting relative wheel position on climb
    float NeckAccSlaveGain  ; // Neck roll enslaving gain
    float NeckGyroSlaveMaxRate ; // Maximum rate for gyro enslaving of neck
//    float NeckPosGain ; // !< Neck position gain, for un-stabilized work
    float NeckPosAlpha ; // !< Neck acceleration, for un-stabilized work
    float NeckSpeedMaxNoStab ; // !< Neck max speed on non stabilized motions
    float NeckSpeedFiltGain ; // !< Gain for filtering the neck speed
    float RouteLookAheadDist ; // Route look ahead distance
    float CurvatureCorrectGain ; // Curvature correction gain
    float SlipFactor ; // !< Assumed factor for wheel sleepage
    float GyroXFiltBwRadSec ; // !< Time constant for scaling gyro and accelerometer for roll estimate
    float GyroAccCorrectionIntoVert ; // !< Gyro acceleration correction into roll estimate , as accelerometer is not placed on rotation center
    float PoleSmoothAcc;
    float YawCrabSpeed ; // Crab turn speed
    float LateralPoleAccessTol;// Max tolerance for lateral access of pole
    float AngularPoleAccessTol;// Max tolerance to angular access of pole
    float NeckDiffSetPoint ; // !< Set point for neck difference while climb, opitimize load sharing between the motors
    float NeckDiffSetPointDown; // !< Set point for steering offset for pole compliance compensation, on the down way
    float NeckGainReductionFacOnDown ; // !< Reduction of gain , [0..1] , for the neck opening in the down direction w.r.t. up direction
    float PoleYewOffset ; // !< Steering angle Offset for pole climb, to compensate for rail and robot flexibility
    float PreArcFollowerYewOffset ; // !< Angle offset to add to the steering for follower before it really meets the arc (rad)
    float PreArcLeaderYewOffset ;  // !< Angle offset to add to the steering for leader before follower meets the arc (rad)
    float PauseDeceleration ; // Deceleration when accepting mission pause
    float HorizontalRailYewOffset ; // !< Steering angle Offset for horizontal shelf, to compensate for rail and robot flexibility
    float DeltaWheelPos4ShelfRun ; // !< Position of leading wheel on the shelf relative to follower wheel
    float ShelfAcceleration ;  // !< Acceleration on the shelf
    float DownTolForArcSwitchLoc; // !< Tolerance for deviation of start-of-arc switch from its expected position
    float ShelfRescueSpeed; // !< Shelf speed for automatic rescue
    float InitClimbFollowerOverLeader; // !< Speed ratio between follower and leader on climb start
    //float WheelArmPinReleaseRockingStretch ; // !< Rocking amplitude for releasing/setting no-elbow lock pin
    float WheelArmPinReleaseRockingSpeed   ; // !< Rocking frequency for releasing/setting no-elbow lock pin
    float WheelArmPinReleaseCurrentTarget ; // The current goal for the leader motor while release of wheelarm pin
    float Tilt4ArcEntry ; // Body tilt to infer arc entry in the lack of optical switch
    float MinArcDist4FollowerPush ; // Arc distance where follower has full grip and can push
    float NeckDiffSetPointStartArc ;// Neck difference before follower has full grip and can push
    float FollowerStoppyBeforeArcDistance; //  Distance of body center before arc when stoppy action starts on climb
    float RollThereshold4FallDetection ; // Abrupt roll change threshold for fall detection
    float AngularMotionLimitForStraightLine ; // Limit for angular motion on straight line
    float TimeLimitForArrivalTillQrCode ; // Limit for time since arrival at QR position until detection
    float WheelArmPinLockPosStretch ; // Wheel arm stretch to secure shoulder pin to place
};

EXTERN_TAG struct CControlPars ControlPars;


struct CShortDataItem
{
    short * pShortData  ;
    short   dmin ;
    short   dmax ;
    short   LimiType ;
};



struct CCalibRecord
{
    short unsigned flags ; // !< Define the properties of the number: refer CCmdMode
    long  unsigned ptr ;
    float limit ;
};

struct ResetLog
{
    short Reason   ;
    short unsigned NmiStatus     ;
    short unsigned AccessStatus  ;
    short MemErrStat    ;
    long unsigned  MemErrAddress ;  // Block aligned address
    long unsigned  NMIReturnAddress ;
    long  OldMissionMsec ;
    long  ResetCause ;
};

EXTERN_TAG float qImu2BodyBuf[4] ; // Temporary buffer for IMU calibration

struct CFlashProg
{
    long PassWord ; // !< Must be 0x12345678 to work
    long unsigned AddressInFlash ; // !< Address in flash
    short unsigned InternalBufOffset ;
};
EXTERN_TAG struct CFlashProg  FlashProg ;


//EXTERN_TAG long unsigned PosFlagStat;

EXTERN_TAG struct CUserMotionQueue MotionQueue[N_MOTION_Q]; // Queues exposed for external programming
EXTERN_TAG struct CUserMotionQueue MQ ; // Now executing queue


union ULongTimer
{
    long unsigned ul[2] ;
    struct
    {
        long unsigned ul ;
        long l ;
    } uls ;
    long long unsigned ull ;
    long long ll ;
};

struct CHostTime
{
    union ULongTimer uTimer   ; // Host time in usec, as extended to 64bit from host message
    long long DsysTime  ; // Estimate of difference between (host time - local time), in usec
    short init ; // 1 if difference calculation is initialized
};

EXTERN_TAG struct CHostTime HostTimer ;




#ifdef VARS_OWNER


const short unsigned InstalledAxisTab[N_CAN_SLAVES] = {1,1,1,1,1}  ;
const short unsigned RequiresPotHomingTab[N_CAN_SLAVES] = {0,0,1,1,1}  ;
const short unsigned IsPositionTab[N_CAN_SLAVES] = {0,0,1,1,1}  ;

const short unsigned SlaveIdTab[N_CAN_SLAVES] = {ID_WH_RIGHT,ID_WH_LEFT,ID_STEER_RIGHT,ID_STEER_LEFT,ID_NECK}  ;
const short unsigned SlaveProjTab[N_CAN_SLAVES] = {0x9400,0x9400,0x9400,0x9400,0x9300 }  ;
const short unsigned SlaveRoleTab[N_CAN_SLAVES] = {PROJ_TYPE_WHEEL_R,PROJ_TYPE_WHEEL_L,PROJ_TYPE_STEERING_R,PROJ_TYPE_STEERING_L,PROJ_TYPE_NECK}  ;
const short SlaveDirectionTab[N_CAN_SLAVES] = {1,-1,1,1, 1}  ;
const short unsigned MaximumClosureMode[N_CAN_SLAVES] = {3,3,5,5,5 }  ;
const short unsigned PDO3ReportStyleTab[N_CAN_SLAVES] = {PDO3_CONFIG_WHEEL,PDO3_CONFIG_WHEEL,PDO3_CONFIG_STEERING,PDO3_CONFIG_STEERING,PDO3_CONFIG_NECK}  ;



#ifndef _LPSIM
#pragma DATA_SECTION(BurnPass,".SectN");
const long unsigned BurnPass[] = { 0x90abcdef , 0 , 2 , 3} ;
#else
const long unsigned BurnPass[] = { 0x90abcdef , 0 , 2 , 3 };
#endif

const struct CFloatParRecord ParTable [] =
{
#include "ParRecords.h"
    {( float *)0,0xffff,0.0f}
};


#ifndef _LPSIM
#define GetOffsetC(x,y)  ((long unsigned)((long)  &Calib.x - (long ) &Calib))
#define GetOffsetCC(x,y,z)  ((long unsigned)((long)  &Calib.x[y] - (long ) &Calib))
#else
#define GetOffsetC(x,y)  0 // ( (char*)&Calib.x - (char*) &Calib )
#define GetOffsetCC(x,y,z) 0//  ( (char*)&Calib.x[y] - (char*) &Calib )
#endif

const struct CCalibRecord CalibPtrTable [] =
{
#include "CalibDefs.h"
};
const short unsigned N_CALIB_RECS = (sizeof(CalibPtrTable) / sizeof(struct CCalibRecord ) ) ;

const short unsigned N_ParTable = ( sizeof(ParTable) / sizeof(struct CFloatParRecord)  ) ;

// Tables for Fresnel integrals
const float FresnelCn[] = { 1.000000000000000f  , -0.246740110027234f ,  0.028185500877894f , -0.001604883135643f  , 0.000054074133814f ,
                    -0.000001200097256f ,  0.000000018843499f , -0.000000000220228f ,  0.000000000001990f , -0.000000000000014f ,
                    0.000000000000000f } ;

const float FresnelSn[] = { 0.523598775598299f , -0.092280585358035f  , 0.007244784204197f , -0.000312116942355f  , 0.000008444272884f
          -0.000000156471445f ,  0.000000002108212f , -0.000000000021574f  , 0.000000000000173f , -0.000000000000001f ,  0.000000000000000f} ;

/*
const float ClothDr[] = { -0.707103960262412f, -0.275719625188054f, -0.110402313029128f, -0.053713681640679f, -0.030870824786553f,
 -0.019927198115976f , -0.013851549563429f  ,-0.010201065897939f , -0.007822533222170f };
const float ClothDDr[] = { 0.564185365092840f, 0.271815099007882f, 0.090623097027221f, 0.033744396166797f, 0.015066975444967f ,
    0.007841366445693f ,  0.004240080509256f  , 0.002433470092192f , 0.002532626796693f } ;
*/

/* Auxiliary function coefficients */
const float Fresnelfn[] = {0.318309844f, 9.34636e-8f, -0.09676631f, 0.000606222f,
                                0.325539361f, 0.325206461f, -7.450551455f, 32.20380908f,
                                -78.8035274f, 118.5343352f, -102.4339798f, 39.06207702f};
const float Fresnelgn[] = {0, 0.101321519f, -4.07292e-5f, -0.152068115f,
                                -0.046292605f, 1.622793598f, -5.199186089f, 7.477942354f,
                                -0.695291507f, -15.10996796f, 22.28401942f, -10.89968491f};


const short unsigned DefaultAxisMode[N_CAN_SLAVES] =  {MODE_OF_OPERATION_PROFILED_CSV,MODE_OF_OPERATION_PROFILED_CSV ,
                                      MODE_OF_OPERATION_PROFILED_CSP, MODE_OF_OPERATION_PROFILED_CSP , MODE_OF_OPERATION_PROFILED_CSV } ;

//const struct CRecorderSig RecorderSigRaw[] =
//{
//#include "..\Application\ProjRecorderSignals.h"
//};
//const short unsigned NREC_SIG = sizeof(RecorderSigRaw) / sizeof(struct CRecorderSig);




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


#ifdef _LPSIM
unsigned long volatile WakeCounter; //<! Recorder buffer
struct ResetLog  volatile ResetReasonLog[8]; //<! Recorder buffer
#else
    __attribute__((far)) unsigned long volatile WakeCounter; //<! Recorder buffer
    #pragma DATA_SECTION(WakeCounter,".farbssS");

    __attribute__((far)) struct ResetLog  volatile ResetReasonLog[8]; //<! Recorder buffer
    #pragma DATA_SECTION(ResetReasonLog,".farbssS");
#endif 

#else
    extern const short unsigned RequiresPotHomingTab[];
    extern const short unsigned IsPositionTab[];
    extern const short unsigned SlaveIdTab  [] ;
    extern const short unsigned SlaveProjTab[] ;
    extern const short unsigned SlaveRoleTab[] ;
    extern const short SlaveDirectionTab[] ;
    extern const short unsigned InstalledAxisTab[]  ;
    extern const short unsigned PDO3ReportStyleTab[] ;
    extern const short unsigned MaximumClosureMode[]  ;


    extern const float FresnelCn[];
    extern const float FresnelSn[];
    extern const float Fresnelfn[];
    extern const float Fresnelgn[];

    extern const struct CFloatParRecord ParTable[] ;
    extern const struct CFloatParRecord CalibTable [] ;
    extern const short unsigned DefaultAxisMode[] ;

    extern const short unsigned N_ParTable ;
    extern const struct CCalibRecord CalibPtrTable [] ;
    extern const short unsigned crc_ccitt_table[256] ;
#ifdef _LPSIM 
    extern  unsigned long volatile WakeCounter; //<! Recorder buffer
    extern  struct ResetLog  volatile ResetReasonLog[8]; //<! Recorder buffer
#else
    extern __attribute__((far)) unsigned long volatile WakeCounter; //<! Recorder buffer
    extern __attribute__((far)) struct ResetLog  volatile ResetReasonLog[8]; //<! Recorder buffer
#endif 

    extern const short unsigned N_CALIB_RECS ;
    /*
    extern const float ClothDr[];
    extern const float ClothDDr[];
*/
#endif



EXTERN_TAG struct CCanQueue CanSlavePdInQueue ;
EXTERN_TAG struct CCanQueue CanSlaveInQueue ;
EXTERN_TAG struct CCanQueue CanSlaveManipQueue ;
EXTERN_TAG struct CCanQueue CanSlaveOutQueue ;
//EXTERN_TAG struct CCanQueue ExtWorldQueue ;
//EXTERN_TAG struct CCanQueue CanSlaveSpiHostQueue ;
EXTERN_TAG struct CCanQueue CanSlavePdOutQueue ;
EXTERN_TAG struct CCanMsg MalinkiInMsg ;
EXTERN_TAG struct CCanMsg TempPdMsg ;



EXTERN_TAG long goodcnt ;
EXTERN_TAG long badcnt ;

EXTERN_TAG long AdcAccumRegs[16] ; //!< High speed over-sampling accumulators for ADC
EXTERN_TAG long AdcSampleRegs[16] ; //!< Sampled ADC accumulations presented to the C routine
EXTERN_TAG short unsigned AdcNormalizationCnt ; //!< Number of ADC samples in a single accumulation


EXTERN_TAG struct CCanMsg SyncMsg ;


EXTERN_TAG short unsigned InhibitAutoTlc ;


EXTERN_TAG long unsigned TxRdyGlobal ;
EXTERN_TAG long unsigned ManTxRdyGlobal ;

EXTERN_TAG float rawroll;
EXTERN_TAG long unsigned ProtocolRev ;


EXTERN_TAG struct CSdo SlaveSdo ;

EXTERN_TAG struct CSdo DummySdoFromSpi ; // Dummy SDO, for accepting parameters from SPI as SDO
EXTERN_TAG long unsigned DummySdoFromSpiBuf[2] ; // Data buffer for DummySdoFromSpi

EXTERN_TAG struct CBitCountStr ManRxPdoBitStr ;
EXTERN_TAG struct CBitCountStr RxPdoBitStr ;
EXTERN_TAG struct CBitCountStr TxPdoBitStr ;
EXTERN_TAG struct CBitCountStr ManTxPdoBitStr ;
EXTERN_TAG struct CBitCountStr ImuBitStr ;

EXTERN_TAG struct CSysTimerStr SysTimerStr ;
EXTERN_TAG struct CMotionItem SimPackageItem;


EXTERN_TAG float DebugAddRoute ;

EXTERN_TAG short GlobalDebug ;
EXTERN_TAG short GlobalDebugCtr[8] ;

EXTERN_TAG long IntReturnStack[2] ;

EXTERN_TAG long unsigned Pdo1TxScoreBoard ;
EXTERN_TAG long unsigned Pdo1TxScoreBoardSample ;

//EXTERN_TAG short TrackWidthAdjustDir ;

struct CGyrosMessageStr
{
    unsigned short  Counters ; //
    unsigned short  Opcode;
    unsigned short  TimeTag_L;
    unsigned short  TimeTag_H;
    short unsigned  msgBuffer [GYRO_SINGLE_MESSAGE_MAX_LEN];
    //short unsigned *msgBody ;
    short unsigned DataFromDeviceValid     ;
    short unsigned cs ;
    short unsigned State ;
    short unsigned ErrorSignal ;
    short unsigned SubState    ;
    short unsigned MessageLength  ;
    short unsigned InbufCnt ;
    long  unsigned RxCharCounter ; // Accepted character counter
    long  unsigned TxCharCounter ; // Tx character counter
    long  unsigned TxMsgCounter ; // Tx message counter
    long  unsigned RxMsgCounter ; // Rx message counter
    long  unsigned PlaceInTxBuf ;
    short unsigned ByteCnt   ;
    union
    {
        unsigned short all   ;
        struct CGyroStatusByte // pp 53
        {
            int unsigned SelfTestPassed : 1 ;
            int unsigned FilterVaild : 1 ;
            int unsigned GnssFix : 1 ;
            int unsigned NoRotationStatus : 2 ;
            int unsigned RepMo : 1 ;
            int unsigned ClockBiasEst : 1 ;
            int unsigned Nothing : 9  ;
        }bit ;
    }GyroStatus;
    short unsigned MessageFromDeviceReady ;
    short unsigned BlockMessageNotReady ;
    short unsigned TxBufPutPtr  ;
    short unsigned TxBufFetchPtr  ;
    short unsigned RxBufPutPtr  ;
    short unsigned RxBufFetchPtr  ;
    short unsigned StartSciRxValid ;
    short unsigned OpCodeCand  ;
    short unsigned MessageLengthCand  ;
    short unsigned WakeUpAck ;
    short unsigned ConfigStateAck  ;
    short unsigned SetOutputAck   ;
    short unsigned MeasurementStateAck ;
    short unsigned OptionFlagsAck ;
    short unsigned OptionFlagsGetAck ;
    unsigned long  OptionFlagsRead ;
    struct CImuDataItem *pData ;
};
EXTERN_TAG volatile struct CGyrosMessageStr GyroMessageStr  ;


EXTERN_TAG void (*FastSciRxHandlerFunc) (short unsigned c ) ;
EXTERN_TAG void (*FastGyroSciRxHandlerFunc) (short unsigned c ) ;

struct CImuStartMgr
{
    short State ;
    short IterCnt ;
    short Done  ;
    short Good  ;
    short New   ;
    short unsigned  agecnt   ;
};
EXTERN_TAG struct CImuStartMgr  ImuStartMgr ;


EXTERN_TAG struct CSysTimerStr SysTimerStr ;


struct CDiffDrive
{
    float MaxSpeed ;
    float MaxAcc   ;
    long  RWheelPosTarget ;
    long  LWheelPosTarget ;
    long  RWheelSteerTarget ;
    long  LWheelSteerTarget ;
};
EXTERN_TAG struct CDiffDrive DiffDrive ;





//EXTERN_TAG short unsigned HostSpiNextRxBuf[SPI_MSG_LEN+1]; // !< SPI temporary buffer
//EXTERN_TAG short unsigned HostSpiReadyRxBuf[SPI_MSG_LEN+1];// !< SPI temporary buffer
#define HOST_RX_MOD 511
#define HOST_TX_MOD 511
#define GYRO_RX_MOD 127
#define GYRO_TX_MOD 127
#define US_RX_MOD 127
#define US_TX_MOD 127

EXTERN_TAG short unsigned HostTxBuf[HOST_TX_MOD+1]; // !< SPI temporary buffer
EXTERN_TAG short unsigned HostTxBufPutPtr  ;
EXTERN_TAG short unsigned HostTxBufFetchPtr  ;
EXTERN_TAG long unsigned HostTxStatistic ;

EXTERN_TAG short unsigned GyroTxBuf[GYRO_TX_MOD+1]; // !< SPI temporary buffer
EXTERN_TAG short unsigned GyroTxBufPutPtr  ;
EXTERN_TAG short unsigned GyroTxBufFetchPtr  ;


EXTERN_TAG short unsigned US1TxBuf[US_TX_MOD+1]; // !< SPI temporary buffer

EXTERN_TAG short unsigned US2TxBuf[US_TX_MOD+1]; // !< SPI temporary buffer

EXTERN_TAG short unsigned HostRxBuf[HOST_RX_MOD+1]; // !< SPI temporary buffer
EXTERN_TAG short unsigned HostRxBufPutPtr  ;
EXTERN_TAG short unsigned HostRxBufFetchPtr  ;

EXTERN_TAG short unsigned GyroRxBuf[GYRO_RX_MOD+1]; // !< SPI temporary buffer
EXTERN_TAG short unsigned GyroRxBufPutPtr  ;
EXTERN_TAG short unsigned GyroRxBufFetchPtr  ;


EXTERN_TAG short unsigned US1RxBuf[US_RX_MOD+1]; // !< SPI temporary buffer
EXTERN_TAG short unsigned US1RxBufPutPtr  ;
EXTERN_TAG short unsigned US1RxBufFetchPtr  ;
EXTERN_TAG short unsigned US1TxBufPutPtr  ;
EXTERN_TAG short unsigned US1TxBufFetchPtr  ;

EXTERN_TAG short unsigned US2RxBuf[US_RX_MOD+1]; // !< SPI temporary buffer
EXTERN_TAG short unsigned US2RxBufPutPtr  ;
EXTERN_TAG short unsigned US2RxBufFetchPtr  ;
EXTERN_TAG short unsigned US2TxBufPutPtr  ;
EXTERN_TAG short unsigned US2TxBufFetchPtr  ;



EXTERN_TAG short unsigned StartSciRxValid;
EXTERN_TAG short unsigned FastMessageLength;
EXTERN_TAG short unsigned FastInbufCnt;


EXTERN_TAG struct CCanQueue CanSlaveInQueue ;
EXTERN_TAG struct CCanQueue CanSlaveOutQueue ;
EXTERN_TAG struct CCanQueue CanSlaveInQueueB ;
EXTERN_TAG struct CCanQueue CanSlaveOutQueueB ;
EXTERN_TAG struct CCanQueue CanPDInMsgQueue ;
EXTERN_TAG struct CCanQueue CanSrvInMsgQueue ;

EXTERN_TAG short unsigned SrvTransmitRxPdoSlaveRequest;
//EXTERN_TAG short unsigned SrvHeartBeatRequest;
EXTERN_TAG short PdoTxErr ;
EXTERN_TAG short PdPdoTxErr ;


EXTERN_TAG long unsigned CanInMsgCntr ;

EXTERN_TAG long unsigned DebugVec[8] ;

EXTERN_TAG unsigned long SlaveSdoBuf[SDO_BUF_LEN_LONGS];

EXTERN_TAG long unsigned TxRdyGlobal ;
EXTERN_TAG long unsigned ManTxRdyGlobal ;

EXTERN_TAG struct CSdo SlaveSdo ;
//EXTERN_TAG struct CSdo SlaveSdo ;
EXTERN_TAG struct CSdo TunnelSdo ;
EXTERN_TAG long ManipSdoSlaveBuf[4] ;

EXTERN_TAG short unsigned PROJ_CAN_ID;

EXTERN_TAG short unsigned ProgramBufferLength ;

EXTERN_TAG struct CCanStat CanStatA;
EXTERN_TAG struct CCanStat CanStatB;

EXTERN_TAG short unsigned MV8 ;

//EXTERN_TAG short unsigned bIssueSync2PD ;
EXTERN_TAG short unsigned bIssuePdo2PD  ;
EXTERN_TAG short unsigned bIssueMsg2Malinki;


EXTERN_TAG struct CBHLimitSw *pSw[2] ;

EXTERN_TAG float DistFromStart[2] ;
EXTERN_TAG float Dist2End [2];

EXTERN_TAG short SpiFlashFail ;



union Udatabuf
{
    long  l ;
    unsigned long ul;
    float f ;
    short s ;
    unsigned short us ;
    double d ;
    long long ll ;
    unsigned long long ull ;
}  ;



EXTERN_TAG struct CSdo ManipSdo ;
EXTERN_TAG struct CSdo TunnelSdo ;
EXTERN_TAG unsigned long BitTunnelBuf[128] ;
EXTERN_TAG short unsigned BitRportCnt ;
EXTERN_TAG unsigned long TunnelHostIPAddress ;
EXTERN_TAG short unsigned TunnelHostPort  ;
EXTERN_TAG long unsigned SdoMaxLenLongGlobal ;

EXTERN_TAG float TERMINAL_LENGTH_THEETH_BASE_2_TIP[NUMBER_OF_TERMINAL_TYPES]; //m, from base of PU teeth to terminal tip, for type1, type2



#ifdef _LPSIM
#include "..\LpSim\LpSim\SimHardware.h" 
#endif


#ifdef VARS_OWNER

const struct CRecorderSig RecorderSigRaw[] =
{
#include "..\Application\ProjRecorderSignals.h"
};
const short unsigned NREC_SIG = sizeof(RecorderSigRaw) / sizeof(struct CRecorderSig);
#endif


//EXTERN_TAG short TempSpiBuf[SPI_MSG_LEN] ;

#include "Functions.h"
#include "gyro.h"

#include "DFT_BH.h"

inline
unsigned short crc_ccitt_byte(short unsigned _crc, short unsigned c)
{
    return (_crc >> 8) ^ crc_ccitt_table[(_crc ^ c) & 0xff];
}




inline
short IsGen3(void)
{
    return (S2M.Items.ActStatus.stat.CoreId.bit.RobotType == ROBOT_GEN3 ) ? 1 : 0 ;
}


inline
void EnableSTO(void)
{
    GpioDataRegs.GPESET.bit.GPIO137 = 1 ;
    M2S.Items.ActCmd.cmd.ModeWord.bit.StoEnabled = 1 ;
}

inline
void DisableSTO(void)
{
    GpioDataRegs.GPECLEAR.bit.GPIO137 = 1 ;
    M2S.Items.ActCmd.cmd.ModeWord.bit.StoEnabled = 0 ;
}




#endif
