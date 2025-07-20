/*
 * ConstDef2.h
 *
 *  Created on: Sep 8, 2023
 *      Author: yahal
 */

#ifndef APPLICATION_CONSTDEF2_H_
#define APPLICATION_CONSTDEF2_H_


#ifdef VARS_OWNER
#define EXTERN_TAG

#else
#define EXTERN_TAG extern
#endif
#define N_DELAY_PROCESS_CANQ 16

#define CAN_ID_EEF 122


#define MV_2_VOLT 0.001f

#define N_CAN_SLAVES 3
#define LOGICAL_PLATE 0
#define LOGICAL_TAPEARM 1
#define LOGICAL_SPACER 2

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
    EGT_InitSpacer = 2 ,
    EGT_WaitSpacer = 3 ,
    EGT_WaitRot = 4 ,
    EGT_WaitLength = 5 ,
    EGT_WaitRetract = 6 ,
    EGT_Done = 7 ,
    EGT_Error = 15
};



#endif /* APPLICATION_CONSTDEF2_H_ */
