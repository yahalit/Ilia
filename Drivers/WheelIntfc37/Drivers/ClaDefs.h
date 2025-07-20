/*
 * ClaDefs.h
 *
 *  Created on: Jun 25, 2023
 *      Author: yahal
 */

#ifndef DRIVERS_CLADEFS_H_
#define DRIVERS_CLADEFS_H_


#ifdef CLA_VAR_OWNER
#define EXTERN_CLA
#pragma DATA_SECTION(ClaMailIn, "CpuToCla1MsgRAM");
#pragma DATA_SECTION(ClaMailOut, "Cla1ToCpuMsgRAM");
#pragma DATA_SECTION(ClaState, "cla_shared");
#pragma DATA_SECTION(ClaControlPars, "cla_shared");
#pragma DATA_SECTION(Calib, "cla_shared");

#else
#define EXTERN_CLA extern
#endif

enum E_SysMode
{
    E_SysMotionModeNothing = 1 ,
    E_SysMotionModeManual = 2 ,
    E_SysMotionModeAutomatic  = 3 ,
    E_SysMotionModeFault       = -1,
    E_SysMotionModeSafeFault = -2
};

enum E_LoopClosureMode
{
    E_LC_Voltage_Mode = 0 ,
    E_LC_OpenLoopField_Mode = 1 ,
    E_LC_Torque_Mode = 2 ,
    E_LC_Speed_Mode = 3 ,
    E_LC_Pos_Mode = 4 ,
    E_LC_Dual_Pos_Mode = 5 ,
    E_LC_Dont_Change_Mode = 7
} ;



struct CClaControlPars
{
    float InvEncoderWhMotCountsFullRev ;
    float InvEncoderStCountsFullRev ;
    float InvEncoderWhCountsFullRev ;
    float Pos2RevWhMot ;
    float Pos2RevSt ;
    float Rev2PosWhMot ;
    float Rev2PosSt ;
    float Rev2PosWh ;
    float EncoderWhMotCountsFullRev ;
    float EncoderStCountsFullRev ;
    float EncoderWhCountsFullRev ;
    float SpeedFilterCst ;
    float PotFilterCst;
    float RailSenseFilterCst;
    float MinPotRef ;
    float RailSensorPNPThold ; // !< Threshold for rail sensor detection, Volts, PNP case
    float RailSensorNPNThold ; // !< Threshold for rail sensor detection, Volts, NPN case
    float IsRailSensorPNP ; // !< Non zero if rail sensor is PNP
    float Enc2MeterShelf;// !< Encoder to meter on the shelf
    float MaxSwitchLengthMeter[4] ; // Maximum switch length , meters
    float MinSwitchLengthMeter[4] ; // Minimum switch length , meters
    short unsigned SwitchWidthSelect ;
};
EXTERN_CLA struct CClaControlPars ClaControlPars ;



struct CEncoder
{
    long  Pos ; // Encoder position accumulator
    float MotSpeedHz ;
    float MotSpeedHzFilt ;
    long  unsigned TimeLat   ;
    long  now ;  // WTF
    long  SpeedTime ;
    float EncoderOnZero ;
    float UserPosHere   ;
    float MinMotSpeedHz ;
    float UserSpeed ;
    float MotorPos ; // !< Floating point position in User Units
    float UserPos ; // !< Floating point position in User Units
    float UserPosDelta ;
    float bit2Rev ;
    float rev2Pos ;
    float DeltaT ;
    long  MotorPosCnt ;
    long  Rev2Bit ;
    short Stat ;
    short InvertEncoder ;
};


struct CClaTiming
{
    float Ts ;
    float TsTraj  ; // Sampling time for trajectory calculations
    float OneOverTsTraj  ; // 1/Sampling time for trajectory calculations
    long unsigned UsecTimer ;
    long unsigned IntCntr ;
    short unsigned PwmFrame ;
    float AutoCommandAge ;
    float InvMhz ; // Set to neck
    float TsInTicks ;
};

struct CAnalogs
{
    float PotentiometerRef;
    float Pot1 ;
    float ID ;
    float RailSensor ;
    float BrakeVolts ;
};

struct CPot
{
    float PotRat   ;
    float PotFilt  ;
    float PotUser  ; // User value of potentiometer
    float RefFailCnt ;
};


struct CFilt
{
    float IndSenWL ;
};

struct CClaLimit
{
    long   CaptEncoderH   ; // !< [0] Captured encoder on high transition
    long   CaptEncoderL   ; // !< [2] Captured encoder on low transition
    float PresentValue ; // !< [4] Most recent value
    float RiseMarker ; // !< [5]
    float FallMarker ; // !< [6]
    float DetectWidthRaw ; // !< Switch detection width, raw data
    long  EncoderAtSwitch ;
    float SwitchDir  ;
    float SwitchWidth ;
    float ValuePNP ; // !< [4] Most recent value
    float ValueNPN ; // !< [4] Most recent value
    float DistIntoSwitch ; // Distance traveled inside the switch
    long  unsigned SwitchDetectValid ; //
    short unsigned SwitchDetectMarker; //
    short unsigned SwitchDetectValidUsed ; //
    float SwitchSummary ;
} ;


struct CClaState
{
    struct CEncoder Encoder1 ;
    struct CEncoder Encoder2 ;
    struct CEncoder Encoder3 ;
    struct CClaTiming Timing    ;
    struct CAnalogs Analogs  ;
    struct CClaLimit LLimit ;
    struct CPot Pot ;
    struct CFilt Filt ;
    float fDebug[8] ;
    float lDebug[8] ;
    float DebugStop   ;
} ;

EXTERN_CLA struct CClaState ClaState ;

struct CClaMailIn
{
    float MaxSwitchLengthEffective ;
    float MinSwitchLengthEffective ;
};
EXTERN_CLA struct CClaMailIn ClaMailIn ;

struct CClaMailOut
{
    float PotRefFail ;
    long AbortCounter ;
    long SwUpdateFlag   ; // Inform the CPU that data is updating now
    float  EncoderAtSwitch ;
    float SwitchDir ;
    float SwitchWidth ;
    long unsigned IntCntr ;
    long unsigned SwitchDetectValid ;
    short unsigned AbortReason ;
};
EXTERN_CLA volatile struct CClaMailOut ClaMailOut ;



EXTERN_CLA struct CCalib Calib ;


#endif /* DRIVERS_CLADEFS_H_ */
