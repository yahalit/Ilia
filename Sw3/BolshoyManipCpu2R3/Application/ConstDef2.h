/*
 * ConstDef2.h
 *
 *  Created on: Sep 8, 2023
 *      Author: yahal
 */

#ifndef APPLICATION_CONSTDEF2_H_
#define APPLICATION_CONSTDEF2_H_

#define LP2_FIRM_YR 2024UL
#define LP2_FIRM_MONTH 10UL
#define LP2_FIRM_DAY 27UL

#define LP2_FIRM_VER 16UL
#define LP2_FIRM_SUBVER 3UL
#define LP2_FIRM_PATCH 0UL
#define LP2_XX 0

#define ConciseSubverPatch ( ((LP2_FIRM_YR-2000) << 24 ) + (LP2_FIRM_MONTH<<20) + (LP2_FIRM_DAY <<15)  +(LP2_FIRM_VER << 8) + (LP2_FIRM_SUBVER<<4) + LP2_FIRM_PATCH )

#ifdef VARS_OWNER
#define EXTERN_TAG

#else
#define EXTERN_TAG extern
#endif
#define N_DELAY_PROCESS_CANQ 16

#define CAN_ID_EEF 122 //0x7A
#define CAN_ID_PDU 100


#define MV_2_VOLT 0.001f
#define HalfPi 1.570796326794897f
#define Pi 3.14159265359f
#define deg2rad 0.01745329251f // /180*pi

#define ROTATION_ALLOWED_SHIFT 0.01f
#define MAX_SPACER_SHIFT 0.139f
#define SHIFT_ALLOWING_ANGLE_DEG 70.0f
#define SYNC_ANGLE1_DEG 32.0f
#define SYNC_ANGLE2_DEG 68.0f
#define SYNC_POS1_M 0.015f
#define SYNC_POS2_M 0.09f //0.10f
#define SYNC_POS3_M 0.138f
#define STAND_BY_EXT 0.01f
#define STAND_BY_SHIFT 0.03f
#define TAPE_ARM_THRESHOLD_FOR_HOMING_INSTEAD_OF_GOTO 0.02f
#define TAPE_ARM_DEFAULT_CURRENT_USE_RATIO 0.5f

#define MAX_NECK_INCIDENCE_PACKAGE_HANDLING 0.2618f //15deg

#define TimeAllowedPosturefix 5.0f //based on ProjControlPars.h MotionConvergeWindow = 0.005f
#define TimeAllowedGoToPostureSlow 40.0f
#define TimeAllowedGoToPosture 20.0f
#define TimeAllowedGoToAxisSlow 20.0f
#define TimeAllowedGoToAxis 15.0f //TODO: check to speed displacement based calculation for allowed time.

#define AxisTolerancePlate 0.005f //based on ProjControlPars.h MotionConvergeWindow = 0.005f
#define AxisToleranceTape 0.003f //based on ProjControlPars.h MotionConvergeWindow = 0.003f
#define AxisToleranceShifter 0.001f //based on ProjControlPars.h MotionConvergeWindow = 0.001f
#define AxisToleranceNeck 0.01f //0.5deg - need to be more than real axis allowed error, just for verification

#define IntervalSize 0.010f //m
#define MinimumAllowedSegmentLength 0.010f //m
#define MinimumAllowedSegmentChange 0.010f // [rad/ m] minimum that is not 0 angle cahnge

#define NominalLinearAxesAcc 1.0f //was 10
#define NominalAngularAxesAcc 1.0f // was 5
#define AxesTau 0.0f

#define LinearHomigPositionFWConst 0.167f
#define LinearHomigPositionRevConst 0

#define N_CAN_SLAVES 3
#define LOGICAL_PLATE 0 //rotating axis
#define LOGICAL_TAPEARM 1 //tape arm axis
#define LOGICAL_SPACER 2 //linear axis

#define LOGICAL_PDU 3
#define LOGICAL_EEF 4

#define ID_PLATE 34
#define ID_TAPEARM 35
#define ID_SPACER 36



#define PO_VOLTS_NOM 3
#define PotMin 2.85f

#define OuterPosInit_Max 32

#define UNSIGNED_MINUS1 0xffffffff
#define UNSIGNED_MINUS1_S 0xffff

#define N_CAN_SLAVES_DEF 5 // Max number of CAN axes


#define MAN_POWER_RETRY_CYCLES_MAX 4

#define NECK_TYPE 0x9300
#define WHEEL_TYPE 0x9400
#define PD_TYPE 0x9200

#define PROJ_TYPE_WHEEL_R 1
#define PROJ_TYPE_STEERING_R 2
#define PROJ_TYPE_WHEEL_L 3
#define PROJ_TYPE_STEERING_L 4
#define PROJ_TYPE_NECK 5
#define PROJ_TYPE_NECK2 6
#define PROJ_TYPE_NECK3 7
#define PROJ_TYPE_TRAY_ROTATOR 8
#define PROJ_TYPE_TRAY_SHIFTER 9
#define PROJ_TYPE_TAPE_MOTOR 10
#define PROJ_TYPE_LAST 11 // Must be 1 over the biggest


enum E_Robot_Generation
{
    ROBOT_GEN_BAD = 0,
    ROBOT_GEN2 = 2 ,
    ROBOT_GEN3 = 3
};


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
    E_ManonRecoverFail = 9,
    E_ManonNonRecoverFail = 15
};



enum E_ManipulatorWellNess
{
    E_ManGood = 1 ,
    E_ManUnknown = 0 ,
    E_ManInitializing = -1 ,
    E_ManNetsOff = -2 ,
    E_ManPowerOff = -3,
    E_ManNoData = -4 ,
    E_EEF_Absent = -5
};


// Posture management states
enum EGT_Goto
{
    EGT_GoToInit = 0 ,
    EGT_WaitInitRetract = 1 ,
    EGT_SetTrayStep = 2,
    EGT_WaitTrayMoveStep = 3 ,
    EGT_WaitLastTrayStep = 4,
    EGT_WaitLength = 5 ,
    EGT_WaitSuctionOff = 6 ,
    EGT_Done = 7 ,
    EGT_Error = 15
};



#endif /* APPLICATION_CONSTDEF2_H_ */
