

#ifndef STRUCTDEF_H_DEFINED
#define STRUCTDEF_H_DEFINED

#define VOLATILE

#ifdef WINSIM 
#ifdef VARS_OWNER
#define VCSIM_OWNER
#endif
#include "..\Sim2\CompilerIntrinsic.c"
#include "..\LpSimCpu2\LpSim\VCSim2.h"
#endif

/*
ToDo:
Unsleep does not work
Sleep does not shut 54V
Activation buttons of PS from BIT
*/

/*
 * Version history
 * 30-4-22 First Beta release of CPU#2 with manipulator capabilities
 *
 */
#define CORE2_OWNS_CAN 1


#define FIRM_YR 2023
#define FIRM_MONTH 9
#define FIRM_DAY 10
#define FIRM_SUBVER 1


#define LP_VER 16
#define LP_SUBVER 0
#define LP_PATCH 0
#define LP_XX 0

#define MANIP2

#define SP_SER_FLASH




#define PROJ_TYPE 0x8580L // LB CPU2

#define SER_FLASH_ADD_CALIB_MANIP 8192

enum E_ManipulatorType
{
    None_Manipulator = 0 ,
    SCARA_Manipulator = 1,
    Flex_Manipulator = 2
};


#define TARGET_TYPE_ANY 0x7fff
#define TARGET_TYPE_HP  2010
#define TARGET_TYPE_LP  38152
#define TARGET_TYPE_XM430   1020
#define TARGET_TYPE_XM540 1130


#include "ConstDef2.h"
#include "..\Drivers\DriverDefs.h"
#include "SysUtils2.h"
#include "..\SharedH\Recorder2.h"


#include "TimerArr2.h"
#include "BlTimerAlloc2.h"
#include "..\Drivers\Flash\flash_programming_f2838x_c28x.h"
#include "..\Drivers\ClaShared2.h"
#include "..\Drivers\DCanStruct2.h"

#include "TimerArr2.h"
#include "SysDef2.h"
#include "..\..\BolshoyMain\CcsPrj\SharedH\ErrorCodes.h"

#include "TrapezeProfiler2.h"

#include "SharedStruct2.h"
#include "Dynamixel.h"
#include "ManState.h"
#include "..\..\BHAxes\BhAxes.h"

#include "CanResponser2.h"


//#include <DCanStruct.h>

#include <math.h>


#ifdef EXTERN_TAG
#undef EXTERN_TAG
#endif

#ifdef VARS_OWNER
#define EXTERN_TAG

#else
#define EXTERN_TAG extern
#endif




// #define MANIP_RECOVERT_MANAGEMENT


#define LP_CAN_ID 124
#define PD_CAN_ID 126

#define HOST_SINGLE_MESSAGE_MAX_LEN 128

#define SciDyn24 ScicRegs
#define SciDyn12 ScidRegs


#define PWM_CLK_MHZ (CPU_CLK_MHZ/2)  // PWM frequency MHz
#define FCPU_CLK ((float)CPU_CLK_MHZ*1.0e6F)    // CPU frequency MHz
#define FAST_INTS_IN_C 16
#define SPI_CYC_IN_C FAST_INTS_IN_C // Number of fast cycle within a long one
#define FAST_TS_USEC 256 // Length of short cycle
#define C_TS_CLOCKS ((long)CPU_CLK_MHZ*(long)SPI_CYC_IN_C*(long)FAST_TS_USEC) // Clocks in full proc interrupt
#define F_TS  (FCPU_CLK / (float)C_TS_CLOCKS);
#define C_TS ( FAST_TS_USEC * FAST_INTS_IN_C)
#define CONTROL_TS_USEC ( FAST_TS_USEC * FAST_INTS_IN_C * 2 )
#define ROUTE_LOG_TS_USEC ((long)CONTROL_TS_USEC*4)
#define CONTROL_TS_F ( CONTROL_TS_USEC * 1e-6f )
#define TS_DIFF_FAC (1.0e6f / C_TS )
#define TS_FAC (1.0e-6f  *  C_TS  )

#define FLEX_DYN_SPEED_LIMIT 20000
#define FLEX_DYN_SPEED_CMD_LIMIT 1900

#define FIRM_VER (( (long unsigned)FIRM_YR << 20 ) + ((long unsigned)FIRM_MONTH<<16) + ((long unsigned)FIRM_DAY <<8) + (long unsigned) FIRM_SUBVER )
#define LpVerSubverPatch (( (long unsigned)LP_VER << 24 ) + ((long unsigned)LP_SUBVER<<16) + ((long unsigned)LP_PATCH <<8) + (long unsigned) LP_XX )

#define PI (3.141592653589793f)

#define POS_UNIT_2_M 0.0001F

#define HOST_SINGLE_MESSAGE_MAX_LEN 128
#define US_SINGLE_MESSAGE_MAX_LEN 128


#define DYN24_BAUD_RATE 115200
#define DYN12_BAUD_RATE 57600

//must be equivalent to what is programmed in System.c, currently 20000 cnt/sec taking 1000cnt=1deg
#define MAN_DEFAULT_MAX_SPEED_CMD 0.350F
//currently 80000 in System.c, max value is 1.396264
#define MAN_DEFAULT_ACC_TIME 0.5f


//EXTERN_TAG unsigned long RecorderBuffer[REC_BUF_LEN]; //<! Recorder buffer


#define SDO_BUF_LEN_LONGS 512


#define M_2_LONG_FAC 10000.0F
#define LONG_2_M_FAC (1.0F/M_2_LONG_FAC)



#ifndef NULL
#define NULL 0
#endif



#define EXP_FATAL (short)(-1)   // Fatal - dead duck
#define EXP_WARN  (short)(-2)   // For warning
#define EXP_ABORT  (short)(-3)  // Abort auto actions
#define EXP_ABORT_PACKON  (short)(-4)  // Abort auto actions, leave pack handling on the work

#define exp_bootout_timeout 0x8888
#define exp_sdo_timeout     0x8889


#define TIME_FROM_NMT_RESET_TO_ACKNOWLEDGE 0.01f


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
    E_SysMotionModeAutomaticIdle = 9 ,  // !< Auto mode, set to idle between missions
    E_SysMotionModeAutomatic = 10  // !< Auto mode
};


enum  E_WheelArmPinDirection
{
    E_DoNothing = 0  ,
    E_EngagePin = 1  ,
    E_ReleasePin = 2
};



EXTERN_TAG struct CManCBit ManCBit ;
EXTERN_TAG struct CManCBitH ManCBitH ;

union Udatabuf
{
    long  l ;
    unsigned long ul ;
    float f ;
    short s ;
    unsigned short us ;
    double d ;
    long long ll ;
    unsigned long long ull ;
}  ;

#ifdef VARS_OWNER
#ifndef WINSIM
#pragma DATA_SECTION(M2S,"MSGRAM_CPU1_TO_CPU2");
#pragma DATA_SECTION(S2M,"MSGRAM_CPU2_TO_CPU1");
#else
#define HARDSIMSIM_OWNER 
#endif

#endif

#ifdef WINSIM
#include "..\LpSimCpu2\LpSim\SimHardware2.h"
#endif

union UModeWord
{
    short unsigned us  ;
    struct
    {
        int unsigned rsvd2 : 5 ;
        int unsigned StoEnabled : 1 ; // Flag that STO is enabled
        int unsigned StopCan : 1 ; // Command that all the CAN communication be stopped
        int unsigned LeftPinCmd : 2 ;
        int unsigned RightPinCmd : 2 ;
        int unsigned CommRestart : 1 ;
        int unsigned LaserPsOn : 1 ;
        int unsigned RecorderTimeBasis : 1 ;
        int unsigned testRs485 : 2 ;
    } bit ;
};

union UConfigWord
{
    short unsigned us  ;
    struct
    {
        int unsigned rsvd :      9 ;
        int unsigned NoElbowExist : 1 ;
        int unsigned ManipType:  6 ;
    } bit ;
 };

union UPsCmd
{
    struct
    {
        int unsigned UnusedSleepRequest : 1 ;
        int unsigned RebootPsCntr : 4 ;
        int unsigned ManipulatorAxesReboot: 3 ;
        int unsigned Rsvd : 8 ;
    } items ;
    short unsigned us ;
};


union UIPCMaster2Slave
{
    long lbuf[1024] ;
    struct {
        union
        {
            struct
            {
                short unsigned index ;
                short unsigned subindex ;
                short unsigned data_type ;
                short data_len ;
                short isset      ;
                short unused ;
                long unsigned counter  ;
                long unsigned errcode  ;
                //union Udatabuf data ;
            }msg;
            long buf[8] ;
        }USlaveObject ;
        union
        {
            struct{
                    short AxesActive ; //!< 1 if 24v & 12v is stable, and axes are supposed to respond
                    short unsigned PumpsOn    ; //!< 1 if pumps are active
                    short unsigned StateResetCnt ;
                    short unsigned PackDir ;
                    short unsigned ControlWord ;
                    short unsigned ResetMotors;
                    float LaserDistMeter ;
                    float PinMotorCurrentAmp ;
                    short PalletAngle ;
                    short Flexmm ;
                    short unsigned DoorAngle ;
                    short GoToCntr  ;  // Unused
                    union UPsCmd PsCmd  ;
                    short unsigned FlashPumpRequest ;
                    short unsigned bSerialFlashOwner ;
                    short unsigned bSerialFlashRequest ;
                    long  MalinkiSetCmd ;
                    long unsigned PdCommandPdo[2] ;
                    long rsvd[16] ;
                    union UModeWord ModeWord ;
                    union UConfigWord ConfigWord ;
                    long unsigned  Checksum ;
                    short unsigned InternalBufOffset ;
                    short unsigned InterBufCnt      ;
                } cmd ;

            long buf[32] ;
        }ActCmd;
        union
        {
            long buf[216] ;
        } Spare ;
        union
        {
            long buf[256] ;
        }DataBlock ;
    } Items ;
};

EXTERN_TAG union UIPCMaster2Slave M2S ;

union USlaveModeWord
{
    long unsigned ul  ;
    struct
    {
        short unsigned lo ;
        struct
        {
            int unsigned RecorderUpdating : 1 ;
            int unsigned ManipType : 6 ;
            int unsigned Homed: 1 ;
            int unsigned Individual: 1 ;
            int unsigned FlexArmHomed: 1 ;
            int unsigned SpacerHomed: 1 ;
            int unsigned rsvd : 5 ;
        } hi ;
    } bit ;
};

struct CWheelArmStat
{
    int unsigned MotorOn : 1 ;
    int unsigned MotorFault: 1 ;
    int unsigned KnowWhereAmI : 1  ;
    int unsigned Reserved : 5 ;
    int unsigned ErrCode  : 8 ;
};

union UWheelArmStat
{
    struct CWheelArmStat bit;
    short unsigned all ;
} ;

struct CPsStatus1
{
    int unsigned SleepState : 3 ;
    int unsigned PsWakeState : 5 ;
    int unsigned ManOnState : 4 ;
    int unsigned R2 : 4 ;
    int unsigned R01 : 3 ;
    int unsigned R11 : 5 ;
    int unsigned R21 : 8 ;
};

union UPsStatus
{
    struct CPsStatus1 bit ;
    short unsigned    us[2] ;
    long  unsigned ul ;
};


struct CCoreId
{
    short unsigned RobotType : 4  ;
    short unsigned PDInBoot  : 1  ;
    short unsigned Reserved  : 11 ;
};

union UCoreId
{
    struct CCoreId bit ;
    short unsigned    us[2] ;
    long  unsigned ul ;
};


union UIPCSlave2Master
{
    long lbuf[512] ;
    struct {
        struct
        {
            struct
            {
                short unsigned index ;
                short unsigned subindex ;
                short data_type ;
                short data_len ;
                short isset      ;
                short unused ;
                long unsigned counter  ;
                long unsigned errcode  ;
                //union Udatabuf data ;
            }msg;
            long buf[8] ;
        }USlaveObject ;
        union
        {
            struct
            {
                short PumpCmd ;
                short LaserCmd ;
                union UPsStatus PsStatus ;
                union UCoreId CoreId ;
                float LaserVolts ;
                long  Rsvd[4] ;
                float AxisReadout[10] ;
                long  ManipData1_L ;
                long  ManipData1_H ;
                long  ManipData1_HH ;
                long  ManipData2_L ;
                long  ManipData2_H ;
                long  ManipData3_L ;
                long  ManipData3_H ;
                long  ManipData4_L ;
                long  ManipData4_H ;
                long  ManipData5_L ;
                long  ManipData5_H ;

                union USlaveModeWord SlaveStat ;
                short IsOperational ;
                short RecorderTrigger  ;
                short unsigned FlashPumpRequest   ;
            }stat ;
            long buf[32] ;
        }ActStatus;
        struct
        {
            long unsigned buf[16];
            short unsigned flags[16] ;
        } Records ;
        union
        {
            long buf[8];
            struct
            {
                union UWheelArmStat RStatus ;
                short RightPinPos ;
                union UWheelArmStat LStatus  ;
                short LeftPinPos  ;
            } stat ;
        } WheelArm ;

        union
        {
            long buf[2] ;
            struct
            {
                short unsigned bUnusedSerialFlashOwner ;
                short unsigned bSerialFlashRequest ;
            } item  ;
        } UFlashToken ;
        union
        {
            long buf[6] ;
            struct
            {
                long unsigned DataFromPd[4] ;
                long Rsvd ;
                short DataFromPdCtr ;
                short ScoreBoard    ;
            } item ;
        } DataFromPd ;
        union
        {
            long buf[8] ;
            struct
            {
                long  unsigned  PdVerSubverPatch;
                long  unsigned MalinkiVerSubverPatch;
                long  unsigned EEFVer ;
                long  RotaryDriverVer ;
                long  TrayRev[4] ;
            } item ;
        } SlaveRevisions ;
        union
        {
            long buf[168];
        } Spare ;

        union
        {
            long buf[256] ;
        }DataBlock ;
    } Items ;
};

EXTERN_TAG union UIPCSlave2Master S2M ;

EXTERN_TAG const struct CDynControlTableLine *pDyn24Setup ;
EXTERN_TAG const struct CDynControlTableLine *pDyn12Setup ;


struct CPBit
{
    short unsigned DynRebootRequest  ;
    short unsigned State ;
    //short unsigned Dynamixel12On ;
    //short unsigned Dynamixel24On ;
};
EXTERN_TAG struct CPBit PBit ;


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


struct CFlashProg
{
    long PassWord ; // !< Must be 0x12345678 to work
    long FlashReady ; // !< Must be 0x12345678 to work
    long unsigned AddressInFlash ; // !< Address in flash
    short unsigned InternalBufOffset ;
};
EXTERN_TAG struct CFlashProg FlashProgPD;



EXTERN_TAG volatile short WasSpiError ;

EXTERN_TAG short unsigned SevereBug ;
EXTERN_TAG struct CSdo SlaveSdo ;
EXTERN_TAG unsigned long SlaveSdoBuf[8];
//EXTERN_TAG unsigned short NUM_MAN_AXES ;
EXTERN_TAG unsigned short NUM_24V_AXES ;
EXTERN_TAG unsigned short NUM_12V_MANIP_AXES ;
EXTERN_TAG unsigned short NUM_12V_WHEELARM_AXES ;
EXTERN_TAG unsigned short NUM_24V_GEOM_AXES ;
EXTERN_TAG unsigned short NUM_12V_AXES_TOTAL ;



EXTERN_TAG float FlexDynSpeedCmdLimit ;


/**
* \struct periodically sampled timing information
*/
struct CIsrTimer
{
    long IsrCounter ;
} ;

EXTERN_TAG struct CIsrTimer IsrTimer;


// Timer block
//////////////////////////////
#include "BlTimerAlloc2.h" // App specific

#define EXCEPTION_TAB_LENGTH 8



#define N_LOG_BUFFER_SIZE 64 // Number of points in route log


#define MODE_OF_OPERATION_PROFILED_POSITION 1
#define MODE_OF_OPERATION_PROFILED_VELOCITY 3
#define MODE_OF_OPERATION_PROFILED_TORQUE 4
#define MODE_OF_OPERATION_HOMING 6
#define MODE_OF_OPERATION_PROFILED_CSP 8
#define MODE_OF_OPERATION_PROFILED_CSV 9


//#define N_SPI_DELAY_ACTION_REC 16

#define PO_VOLTS_NOM 3
#define PotMin 2.85f



#define DYN_STATE_REBOOT 7
#define DYN_STATE_REBOOT_WAIT 8


#ifdef _LPSIM
#define COND_CONST
#else
#define COND_CONST const
#endif


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


#ifdef EXTERN_TAG
#undef EXTERN_TAG
#endif

#ifdef VARS_OWNER
#define EXTERN_TAG
#else
#define EXTERN_TAG extern
#endif



// Conversion factors for the axis
struct CAxisPars
{
    float GainCurFrac2Cur           ; // Multiplier: From reported current fraction to actual current
    float GainSpeedRpt2Speed        ; // Gain from speed report to road speed
    float GainSpeedRpt2SpeedOnRail  ; // Gain from speed report to road speed on rail (wheel only)
};


struct TVFilterState
{
    float a[3] ;
    float b[3] ;
    float ymem[3] ;
    float value ;
    float rate  ;
} ;



EXTERN_TAG long unsigned TimingOfIdleLoop[16] ;
EXTERN_TAG long unsigned TimingDiffOfIdleLoop[16] ;




struct CRejectWarning
{
    short unsigned ID ;
    short IgnoreWarning ;
    long unsigned exp ;
};


struct CRawStatusFailures
{
    int unsigned SrevoAxesFailure : 1; //: servo axis failure: SysState.Package.KnowWhereAmI (failure of at least one of the axes)...
                                       //at KnowWhereAmI : 1 if position is known.
                                        //((e.Package.KnowWhereAmI & 31) > 0 ) ? 1 : 0
    int unsigned CalibPresent: 1 ;//calibration present: not(SysState.CBit.bit.NoCalib) == SysState.CBit.bit.NoCalib ^ 1
};

union URawStatusFailures
{
    struct CRawStatusFailures bit ;
    short unsigned all ;
};



struct CMasterMsg
{
    short unsigned Index ;
    short unsigned SubIndex ;
    union Udatabuf data ;
};


struct CMotion
{
    long  long unsigned ExceptionTab[EXCEPTION_TAB_LENGTH] ; // !< The exception that blew motion off
    short unsigned ExceptionCnt ;
    short unsigned ExceptionInit ;
    short mode ;
    short QuickStop ;
    short QuickStopRespected ;
    short SleepBupMode ;
    short PlcInSw[2] ;
    struct CRejectWarning RejectWarning ;
 };



struct CCBit
{
//Bimkom
    int unsigned MotorReady : 5 ;
    int unsigned MotorFault : 6 ;
    int unsigned QuickStop : 1 ;
    int unsigned NoCalib : 1 ; // Calib failure
    int unsigned PumpRequest: 1 ;
    int unsigned NoPdData  : 1;
    int unsigned Rsvd : 1 ;
//SimSham short unsigned CBIT ;
};
union UCBit
{
    struct CCBit  bit ;
    long unsigned all ;
};

struct CPump
{
    long  unsigned On ; // !< 1 if sucker pumps are on
    long  unsigned IsDepleted ; // !< Enough time off, so sucker should be depleted
    long  unsigned IsHolding  ; // !< Enough time in firm hold, so sucker may be assumed holding
};


struct CManOnState
{
    short unsigned PdoAcceptMask ;
    short WellnessStatus ; // Recorded status of manipulator wellness
    short RetryCounter ;
    short FailureCode  ;
};



struct CPdPackage
{
//  short unsigned Active      ; //!< Flag: 1 if package handling is active
//  short unsigned LoadInto    ; //!< 1 to load into , 0 to unload
    short State        ; //!< Package delivery state
    short unsigned SubState        ; //!< Package delivery sub state
    short unsigned iDistanceTo ; //!< Distance to package, 1mm units
    short unsigned LaserDist0p1mm ; // Laser distance in 0.1 mm
    long  unsigned LaserMedianValid; // Indicate that a valid median exists for the distance laser measurements
    long unsigned LaserDistValid ; // !< Boolean: 1 if laser distance is valid
    float LaserDist ; //!< Distance as measured by laser sensor
    float LaserDistMedianBuf[5] ; //!< Distance as measured by laser sensor
    float LaserDistMedian ;
    short unsigned LaserMedianCnt  ;
    short unsigned ManState ; // !< Report of state from manipulator state machine
    short unsigned Side     ; // !< Package side
    short unsigned Get      ; // !< 1 Get , 0 Set
    short unsigned LastFault ; // !< Last fault capture
    short unsigned IsFaultRecoverable ; // !< If there is a fault, 1 if recoverable
    short unsigned PendingException ; // !< Pending exception: allow completing a motion before error applies quickstop
    short unsigned ExceptionType    ; // !< Type of exception
    short unsigned StandbyAction ; // !< Standby action flag
    short Mode; // !< Mode of package action (for emergency handling)
    short unsigned ManHolds      ; // !< Manipulator holding state (0: Reset, .0: Manipulator active 1: Suspect contact  2: Suspect contact with pump 3:  Sticky Suspect contact
    short LaserRequest; // !< 0: off, 1: on
    short ManStopErr ; // !< Error that stopped the manipulator
    short unsigned KnowWhereAmI  ; // !< Bit field - robot knows where the manipulator is .0 is shoulder, .1 is elbow, .2 is wrist .3 is R door , .4 is L door
    long  unsigned Summary ;
    struct CManipControlWord ManipControlWord ; // Package handler control word
    struct CPDControlWord PDControlWord ; // Package handler control word
    struct CPdCBit  ManCBit1 ; // !< Manipulator basic CBIT1
    struct CPdCBit2 ManCBit2 ; // !< Manipulator basic CBIT2
    struct CPdCBit3 ManCBit3 ; // !< Manipulator CBIT 3
    float IncidenceAngle     ; // !< Tail incidence with respect to shelf
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
    short  ComNetState    [2] ;
    short  AxisFailStatus [5] ;
    short  ManipulatorAxesReboot ; // !< Request for manipulator reboot
    short  OverRideLaserPS ; //
    short  OverRidePumpsOn ; //
    union USuckRequest SuckRequest ; // Suction request, see bit definitions in union definitions
    union USuckRequest  SuckCmd     ; // Previous accepted SuckRequest


};

struct CEEF
{
    float LaserVolts ;
    float VBit12  ;
    short unsigned bUse   ;
    short unsigned Status ;
    short unsigned bIssueMsg2EEF ;
    short unsigned ControlWord ;
    short unsigned PumpStaggerCnt ;
    short WasEvent  ;
};


struct CStatus
{
//    short WakeUp ; // !< Wake up status
    short WakeUpSubState ; // !< Wake up sub-state
    short PdInTest ; // !< 1 for PD in test,so Matlab communicates with it
    //short PdInDload ; // !< PD in download, so don't send PDO
    short MasterBlaster2 ;
    short OverRideBrakeRelease ; // !< 1 to release brakes
    //short unsigned PdControlWordMask ; // !< Bits marked as one will be taken from PdControlWordSubs instead of the internal automata
    //short unsigned PdControlWordSubs ; // !< Use this to set PD control word externally

    short FailCount ; // !< PS wake-up failure counter
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
    long  ComFaultSummary ;
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
    short ShortBatVoltsDeviation  ;
    short ShortModeInfo  ;
} ;




struct CSDebug
{
    short unsigned MoreInfo ;
    short unsigned BypassShifterHoming ;
    short unsigned BypassTapeHoming ;
};




struct CSysState
{
    long unsigned MasterMsgCnt ;
    struct CMasterMsg Msg ;
    struct CMotion Mot ;
    union UCBit CBit ;
    struct CPump Pump ;
    struct CPdPackage Package ;
    struct CEEF EEF ;
    short unsigned DisablePdoProc ;
    short ManResetCounter ;
    long  unsigned PdRawData[8] ;
    long  unsigned PdFaultStack[40];
    float fDebug[24];

    short unsigned PdFaultStackCtr ;
    short unsigned PdProcCtr      ; // !< Counts 2msec interrupts between a processing event
    //short unsigned PdProcCtrMax   ; // !< Number of 2msec ticks between major proc
    short unsigned PdCmd2EnterCtr ;
    short unsigned WakeupState ;
    short unsigned WakeupSubState ;
    short unsigned SleepRequest ;
    short unsigned Operational ;
    short EmcyStopCsp ;
    short SdoCounter ;
    short unsigned bMalinkiMsgRdy ;
    short unsigned bIssueMsg2Malinki ;
    short unsigned bIssueMsg2Manip   ;
    short  unsigned nDelayProcessPut ;
    short  unsigned nDelayProcessGet ;
    short  unsigned RebootPsCntr ;
    short unsigned PsActive ;
    short unsigned WaitValidCanCtr ; // Counter to ensure that the command is already accepted by servo units
    short unsigned RtAlgorRunning ;
    struct CSDebug Debug ;
    struct CStatus Status ;
    struct CPdBitGen  PdBitGen ;
    struct CPdCmd2 PdCmd2 ;
    VOLATILE struct CCanAxis CanAxis[N_CAN_SLAVES_DEF] ; //!< CAN axis entities, for all the regular CAN slaves + 1 for the manipulator
};
EXTERN_TAG struct CSysState SysState;

#if N_CAN_SLAVES_DEF <= N_CAN_SLAVES
#error "You need to enlarge the CanAxis array"
#endif

EXTERN_TAG long lDebug[8] ; // Debug variables


//#define CALIB_WORDS ((PD_N_CALIB_PARS+4)*2)
struct CCalib
{
    long  PassWord ; // A password replica
    float RDoorCenter ;
    float RDoorGainFac ;
    float LDoorCenter ;
    float LDoorGainFac;
    float ShoulderCenter ;
    float ElbowCenter ;
    float WristCenter ;
    long  FlexRDoorCenter ;
    float FlexLDoorCenter ;
    float FlexRDoorGainFac ;
    float FlexLDoorGainFac ;
    long  FlexDoorTopEndTravel  ; // Flex door top end of travel. Note it is not the top because direction reversed
    long  FlexDoorBotEndTravel ;  // Flex door bottom end of travel.
    float ParArr[15] ; // Add this to the right steer pot for calibration
    long  RobotConfig     ; // !< Robot configuration
    long  CalibDate       ; // !< Calibration revision date
    long  CalibData       ; // !< Calibration additional revision data
    float CalibSpareFloat[16] ;
    float CalibSpareLong[8]   ;
    long  Password0x12345678 ; // !< Must be 0x12345678
    long  cs ; // !< Long checksum
};


struct CCalibProg
{
    unsigned long PassWord ;
    struct CCalib Calib ;
};
EXTERN_TAG struct CCalibProg ManipCalibProg ;


struct CCalibRecord
{
    short unsigned flags ; // !< Define the properties of the number: refer CCmdMode
    long  unsigned ptr ;
    float limit ;
};



/*
struct CRecTest
{
long l ;
float f ;
unsigned short u ;
};
EXTERN_TAG struct CRecTest RecTest ;
*/


//EXTERN_TAG struct CCalibProg CalibProgPD;

EXTERN_TAG long unsigned FlashCalibPD ;
//EXTERN_TAG struct CCalib * FlashCalibManipPD ;

EXTERN_TAG struct CCalib ManCalibArr ;

//EXTERN_TAG short unsigned PdoManTxScoreBoard ;
EXTERN_TAG short unsigned EEFPdoTxScoreBoard  ;
EXTERN_TAG short unsigned PduPdoTxScoreBoard  ;

#define MAN_DEFAULT_KP 1.2f
#define FLEX24_DEFAULT_KP 3.0f


#ifdef VARS_OWNER

#ifndef WINSIM
#pragma DATA_SECTION(BurnPass,".SectN"); 
#endif
const long unsigned BurnPass[] = { 0x90abcdef , 0 , 2 , 3} ;

//const struct CCalib const *FlashCalib = (struct CCalib *) 0x0BC000; // Sector M
//#pragma DATA_SECTION(FlashCalib,".SectM");

//struct CFloatParRecord { float * ptr ; short unsigned ind; float lower ; float upper ; float dflt ;} ;

const struct CFloatParRecord ParTable [] =
{
#include "ParRecords2.h"
    {( float *)0,0xffff,0.0f}
};


#ifndef _LPSIM
#define GetOffsetC(x,y)  ((long unsigned)((long)  &ManCalibArr.x - (long ) &ManCalibArr))
#define GetOffsetCC(x,y,z)  ((long unsigned)((long)  &ManCalibArr.x[y] - (long ) &ManCalibArr))
#else
#define GetOffsetC(x,y)  0 // ( (char*)&Calib.x - (char*) &Calib )
#define GetOffsetCC(x,y,z) 0//  ( (char*)&Calib.x[y] - (char*) &Calib )
#endif


const short unsigned N_ParTable = ( sizeof(ParTable) / sizeof(struct CFloatParRecord)  ) ;

const struct CCalibRecord CalibPtrTable [] =
{
#include "CalibDefs2.h"
};
const short unsigned N_CALIB_RECS = (sizeof(CalibPtrTable) / sizeof(struct CCalibRecord ) ) ;


#include "DynamixelProgTables.h"

//const struct CRecorderSig RecorderSigRaw[] =
//{
//#include "..\Application\ProjRecorderSignals.h"
//};
//const short unsigned NREC_SIG = sizeof(RecorderSigRaw) / sizeof(struct CRecorderSig);

#else
    extern const struct CFloatParRecord ParTable[] ;
    extern const struct CFloatParRecord CalibTable [] ;
    extern const short unsigned DefaultAxisMode[] ;

    extern const short signed DirectionOfMotors [] ;

    extern const float CalibLimitLo[];
    extern const float CalibLimitHi[];
    extern const short unsigned N_ParTable ;
    extern const struct CDynControlTableLine *Dyn24SetupSCARA;
    extern const struct CDynControlTableLine *Dyn24SetupFlex;
    extern const struct CDynControlTableLine *Dyn12SetupSCARA;
    extern const struct CDynControlTableLine *Dyn12SetupFlex;
    extern const struct CDynControlTableLine *Dyn12SetupWheelArm ;

    extern const struct CDynControlTableLine Dyn12SetupDoorTrq[] ;
    extern const struct CDynControlTableLine Dyn12SetupDoorPos[] ;

    extern const long unsigned BurnPass[];
    extern const struct CCalibRecord CalibPtrTable[]  ;
    extern const short unsigned N_CALIB_RECS ;
    /*
    extern const float ClothDr[];
    extern const float ClothDDr[];
*/
#endif


EXTERN_TAG long goodcnt ;
EXTERN_TAG long badcnt ;


EXTERN_TAG long unsigned TxRdyGlobal ;
EXTERN_TAG long unsigned ManTxRdyGlobal ;
//EXTERN_TAG long unsigned MalinkiLedSet ;

//EXTERN_TAG long unsigned  PdVersion ;
EXTERN_TAG float rawroll;


EXTERN_TAG struct CBitCountStr PduRxPdoBitStr ;
EXTERN_TAG struct CBitCountStr EEFRxPdoBitStr ;
EXTERN_TAG struct CBitCountStr TxPdoBitStr ;
EXTERN_TAG struct CBitCountStr ManTxPdoBitStr ;

EXTERN_TAG struct CSysTimerStr SysTimerStr ;


EXTERN_TAG float DebugAddRoute ;

EXTERN_TAG short GlobalDebug ;
EXTERN_TAG short GlobalDebugCtr[8] ;

struct CUsMessageStr
{
    unsigned short  Counters ; //
    unsigned short  Opcode;
    unsigned short  TimeTag_L;
    unsigned short  TimeTag_H;
    short unsigned  msgBuffer [US_SINGLE_MESSAGE_MAX_LEN];
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
    short unsigned MessageListPutPtr ;
    short unsigned MessageListFetchPtr ;
    short unsigned TxBufPutPtr  ;
    short unsigned TxBufFetchPtr  ;
    short unsigned RxBufPutPtr  ;
    short unsigned RxBufFetchPtr  ;
    short unsigned WaitCntr       ;
    //short unsigned bHardwareTestMode       ;
};
EXTERN_TAG volatile struct CUsMessageStr US1MessageStr  ;
EXTERN_TAG volatile struct CUsMessageStr US2MessageStr  ;

EXTERN_TAG struct CSysTimerStr SysTimerStr ;


//EXTERN_TAG short unsigned HostSpiNextRxBuf[SPI_MSG_LEN+1]; // !< SPI temporary buffer
//EXTERN_TAG short unsigned HostSpiReadyRxBuf[SPI_MSG_LEN+1];// !< SPI temporary buffer
#define HOST_RX_MOD 511
#define HOST_TX_MOD 511
#define GYRO_RX_MOD 127
#define GYRO_TX_MOD 127
#define US_RX_MOD 127
#define US_TX_MOD 127


EXTERN_TAG short unsigned US1TxBuf[US_TX_MOD+1]; // !< SPI temporary buffer

EXTERN_TAG short unsigned US2TxBuf[US_TX_MOD+1]; // !< SPI temporary buffer



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
EXTERN_TAG  long unsigned ManStatistics ;


EXTERN_TAG long unsigned CanInMsgCntr ;

EXTERN_TAG long unsigned DebugVec[8] ;

EXTERN_TAG short unsigned ManipulatorType ;
EXTERN_TAG short unsigned WheelArmExists   ;

EXTERN_TAG long unsigned TxRdyGlobal ;
EXTERN_TAG long unsigned ManTxRdyGlobal ;

EXTERN_TAG struct CSdo SlaveSdo ;




EXTERN_TAG short unsigned MV8 ;

EXTERN_TAG long CommStatistics12[DEF_NUM_MAX_12V_AXES] ;
EXTERN_TAG long CommStatistics24[DEF_NUM_MAX_24V_AXES] ;
EXTERN_TAG struct CBitCountStr Dx24AxisComCbit[DEF_NUM_MAX_24V_AXES ] ;
EXTERN_TAG struct CBitCountStr Dx12AxisComCbit[DEF_NUM_MAX_12V_AXES] ;
EXTERN_TAG struct CBitCountStr ManControlCbitCntr [DEF_NUM_MAX_24V_AXES ] ;
EXTERN_TAG short OverRideSwitches ;
//EXTERN_TAG short Tx12_24_ForCardTest ;

EXTERN_TAG short unsigned KnowWhereIAmCAN[N_CAN_SLAVES_DEF];
EXTERN_TAG short unsigned KnowWhereIAm24[DEF_NUM_MAX_24V_AXES];
EXTERN_TAG short unsigned KnowWhereIAm12[DEF_NUM_MAX_12V_AXES];

EXTERN_TAG long unsigned UnexpectedID ;
EXTERN_TAG struct CPDControlWord DbgPDControlWord ; // Package handler control word
EXTERN_TAG short unsigned bIssuePdo2PD ;
EXTERN_TAG short unsigned  bIssueSync2PD ;
EXTERN_TAG short unsigned bEnableSync ;
EXTERN_TAG struct CCanMsg SyncMsg ;


EXTERN_TAG short unsigned PdSlaveObjectMap[6] ;

struct CStructManipDbg
{
    float BigErr ;
    float BigfErr ;
    long  stat ;
};
EXTERN_TAG struct CStructManipDbg StructManipDbg ;


EXTERN_TAG float vvec[520];
EXTERN_TAG float avec[520];

EXTERN_TAG struct CCalib ManCalibTmp ;

struct CXYTraj
{
    float rho ;
    float rho1 ;
    float nRho ; // !< Number of segments in trajectory
    float dRho ; // !< 1 / nRho
    float tTraj ;
    short n ;    // !< Segment counter
    short nVec ; // !< Number of descriptor points (1 + number of segments)
    float Ts ;
    float TsInv ;
    float vec[DEF_NUM_24V_GEOM_AXES] ;
    float x1,x2, y1 , y2 , ThetaTarget;
};
EXTERN_TAG struct CXYTraj XYTraj ;

struct CCommPars
{
    float StandardSdoWaitToutSec;
    long  PdSdoTxCnt ;
    long  PdSdoRxCnt ;
    long  Tx2PdCnt  ;
};
EXTERN_TAG struct CCommPars CommPars ;

struct CCanNet
{
    short State ;
    short SubState ;
    short MotorTransitionCnt[N_CAN_SLAVES]; // Tracks motor On/Off transitions
    short ManOnRequestFlag  ;
};

EXTERN_TAG struct CCanNet CanNet ;



EXTERN_TAG struct CDynamixelMsg BootMsg ;
EXTERN_TAG short unsigned BootPayload[4] ;


#ifdef VARS_OWNER

const struct CRecorderSig RecorderSigRaw[] =
{
#include "ProjRecorderSignals2.h"
};
const short unsigned NREC_SIG = sizeof(RecorderSigRaw) / sizeof(struct CRecorderSig);

#else
extern const struct CRecorderSig RecorderSigRaw[] ;
extern const short unsigned NREC_SIG ;
#endif

EXTERN_TAG struct CCanQueue CanPDInMsgQueue ;
EXTERN_TAG struct CCanQueue CanSlavePdOutQueue ;
EXTERN_TAG struct CCanQueue CanSrvInMsgQueue ;

EXTERN_TAG struct CCanStat CanStatB;
EXTERN_TAG short unsigned bMalinkiMsgRdy ;

EXTERN_TAG struct CCanMsg MalinkiInMsg ;
EXTERN_TAG struct CCanMsg TempPdMsg ;
EXTERN_TAG struct CCanMsg OutMalinkiMsg ;
EXTERN_TAG struct CCanMsg OutEEFMsg ;
EXTERN_TAG struct CCanMsg DelayProcessQueue[N_DELAY_PROCESS_CANQ] ;


EXTERN_TAG short WakeupFailReason ;
EXTERN_TAG short WakeupFatalFailReason ;



//EXTERN_TAG short TempSpiBuf[SPI_MSG_LEN] ;
#include "AxisSdoInitList2.h"
#include "CanResponser2.h"
#include "Functions2.h"


inline
void SetMotorOff(struct CCanAxis *pAxis)
{
    pAxis->BH.BhCw.bit.MotorOnCmd = 0 ;
}

inline
void SetMotorOn(struct CCanAxis *pAxis)
{
    pAxis->BH.BhCw.bit.MotorOnCmd = 1 ;
}


inline
short IsGen3(void)
{
    return (S2M.Items.ActStatus.stat.CoreId.bit.RobotType == ROBOT_GEN3 ) ? 1 : 0 ;
}

inline
short IsPsActive(void)
{
    return SysState.PsActive ;
}

// Instruct an immediate un-suction, without time out monitoring
inline
void StopSuctionImmediate()
{
    SysState.Package.SuckRequest.ul = 0 ;
    SysState.Package.SuckRequest.items.DoNotTestSuction = 1 ;
}

// Instruct un-suction, with time out monitoring
inline
void StopSuctionMonitor()
{
    SysState.Package.SuckRequest.ul = 0 ;
}


// Instruct an immediate suction, with time out monitoring
inline
void InitSuctionMonitor()
{
    SysState.Package.SuckRequest.ul = 0 ;
    SysState.Package.SuckRequest.items.DoSuck  = 1 ;
}

// Instruct an immediate suction, with NO time out monitoring
inline
void InitSuctionImmediate()
{
    SysState.Package.SuckRequest.items.DoNotTestSuction = 1 ;
    SysState.Package.SuckRequest.items.DoSuck  = 1 ;
}


#endif
