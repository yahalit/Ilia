

#ifndef STRUCTDEF_H_DEFINED
#define STRUCTDEF_H_DEFINED

#include "../Drivers/DriverDefs.h"
#include "CanResponser2.h"
#include "CanSlave.h"
#include "BlTimerAlloc.h"
#include "../Drivers/Flash/flash_programming_f2838x_c28x.h"
#include "CanResponser2.h"
#include "BootConstDef2.h"

#ifdef EXTERN_TAG
#undef EXTERN_TAG
#endif

#ifdef VARS_OWNER
#define EXTERN_TAG
#else
#define EXTERN_TAG extern
#endif



EXTERN_TAG unsigned long RecorderBuffer[REC_BUF_LEN]; //<! Recorder buffer


#ifndef NULL
#define NULL 0
#endif


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


struct CMasterMsg
{
    short unsigned Index ;
    short unsigned SubIndex ;
    union Udatabuf data ;
};

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
    long unsigned MasterMsgCnt ;
    struct CMasterMsg Msg ;
};
EXTERN_TAG struct CSysState SysState;



//EXTERN_TAG short unsigned HostSpiNextRxBuf[SPI_MSG_LEN+1]; // !< SPI temporary buffer
//EXTERN_TAG short unsigned HostSpiReadyRxBuf[SPI_MSG_LEN+1];// !< SPI temporary buffer
EXTERN_TAG long unsigned DebugVec[8] ;


EXTERN_TAG unsigned long SlaveSdoBuf[SDO_BUF_LEN_LONGS];

EXTERN_TAG struct CSdo SlaveSdo ;

EXTERN_TAG short unsigned PROJ_CAN_ID;

EXTERN_TAG short unsigned ProgramBufferLength ;


#ifdef VARS_OWNER
#pragma DATA_SECTION(M2S,"MSGRAM_CPU1_TO_CPU2");
#pragma DATA_SECTION(S2M,"MSGRAM_CPU2_TO_CPU1");
#endif

union UModeWord
{
    short unsigned us  ;
    struct
    {
        int unsigned rsvd2 : 7 ;
        int unsigned LeftPinCmd : 2 ;
        int unsigned RightPinCmd : 2 ;
        int unsigned CommRestart : 1 ;
        int unsigned LaserPsOn : 1 ;
        int unsigned RecorderTimeBasis : 1 ;
        int unsigned testRs485 : 2 ;
    } bit ;
};

struct CSlaveStatus
{
    unsigned int  InPackage: 1 ; //if in package handling process,
    unsigned int NeckMotorOn: 1 ;
    unsigned int NeckFault: 1 ;
    unsigned int NeckProfileConverged: 1 ;
    unsigned int NeckMotionConverged: 1 ;
};

union USlaveStatus
{
    struct CSlaveStatus Status;
    short unsigned us ;
};


union UPsCmd
{
    struct
    {
        int unsigned Unused : 1 ;
        int unsigned RebootPsCntr : 4 ;
        int unsigned ManipulatorAxesReboot: 3 ;
        int unsigned Rsvd : 8 ;
    } items ;
    short unsigned us ;
};


union UConfigWord
{
    short unsigned us  ;
    struct
    {
        int unsigned rsvd :      9 ;
        int unsigned WheelArmExist : 1 ;
        int unsigned ManipType:  6 ;
    } bit ;
 };


union UIPCMaster2Slave
{
    long lbuf[512] ;
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
                short unsigned ObsoletePumpsOn    ; //!< 1 to activate pump (only useful for SCARA and manual action)
                short unsigned StateResetCnt ;
                short unsigned PackDir ;
                short unsigned ControlWord ; // Actually struct CManipControlWord
                short unsigned ResetMotors;
                float ObsoleteLaserDistMeter ;
                float PinMotorCurrentAmp ;
                short PalletAngle ;
                short Flexmm ;
                short unsigned DoorAngle ;
                short GoToCntr  ;
                union UPsCmd  PsCmd  ;
                short unsigned FlashPumpRequest ; // Request control og flash memory charge pump, enabling burning of core flash memory
                short unsigned bSerialFlashOwner ; // Mark that core #1 is owner of the serial flash
                short unsigned bSerialFlashRequest ; // Request ownership of the serial flash from core #2
                long  MalinkiSetCmd ;
                long unsigned ObsoletePdCommandPdo[2] ;
                float AssumedPackagePositionX ; // X position of assumed package location, measured from robot center (negative)
                float AssumedPackagePositionY ; // Y position of assumed package location, measured from robot center to the right
                short bGrantNeckControl   ; // 1 to grant neck control
                short bGrantWheelControl  ; // 1 to grant wheel control
                float NeckAngle  ; // Neck angle in radians
                float PlatRoll   ; // Platform roll in radians
                float PlatPitch   ; // Platform pitch in radians
                float RobotPositionM[2] ; // Robot position coordinates
                float NeckIncidenceAngle ; // Reflection of host command for tray incidence angle while handling package
                float WheelArmTiltCompensation ; // Neck compensation for tilt induced by wheel-arm asymmetry
                short PackageSide ; // 1 for left 0 for ground 2 for right
                union USlaveStatus SlaveStatus  ; // Bit field: .0 if in package handling process,
                long  rsvd[5] ;
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



struct CPsStatus1
{
    int unsigned RsvdSleepState : 3 ;
    int unsigned PsWakeState : 5 ;
    int unsigned ManOnState : 4 ;
    int unsigned R2x : 4 ; // Was R2 , but this field name is forbidden by assembler
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


struct CRemoteCommand
{
    short RemoteCommandRequest  ; // 1 if core 2 request permission to control the robot
    short NeckCommandValid ;    // Take neck control from core 2
    short ReservedWheelsCommandValid ;  // Take wheels control from core 2
    float NeckCommandRad   ;    // Neck control command to use when CPU1 granted neck control if NeckCommandValid
    float ReservedWheelPosCommand ;   // Reserved for wheel control command to use when CPU1 granted neck control if WheelsCommandValid
}  ;

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
                union UPsStatus PsStatus  ;
                union UCoreId CoreId ;
                float LaserDistance ;  // Measured distance of package from EEF
                float ManipulatorX  ;  // X coordinate of EEF, measured from robot center (mid shoulders), always negative
                float ManipulatorY ; // Y coordinate of EEF, measured from robot center line. Positive to the right
                float ManipulatorAngleRad ; // Manipulator angle, zero when manipulator is aligned with robot, measured clockwise when looking from above.
                long  Rsvd[1] ;
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
                short RPinPos ;
                union UWheelArmStat LStatus  ;
                short LPinPos  ;
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
            struct CRemoteCommand RemoteCommand ;
            long buf[8];
        } RobotControl ;
        union
        {
            long buf[160];
        } Spare ;
        union
        {
            long buf[256] ;
        }DataBlock ;
    } Items ;
};

EXTERN_TAG union UIPCSlave2Master S2M ;


#include "Functions.h"


#endif
