/*
 * SysDef.h
 *
 *  Created on: Aug 21, 2021
 *      Author: Yahali
 */

#ifndef SHAREDH_SYSDEF_H_
#define SHAREDH_SYSDEF_H_


#define NMT_CODE_START_NODE 1

// Manipulator states
enum
{
    MAN_ST_INIT = 0 , // !< ready for new standBy/ deal package command
    MAN_ST_WAIT_STOP_1 = 1 ,    // !< Wait complete stop after initialization
    MAN_ST_WAIT_NECK_CONTROL = 2,
    MAN_ST_WAIT_NECK_INCIDENCE = 3 ,
    MAN_ST_GO_ROUGH_POSITION = 4 , // !< Go each axis independently to fetch start position
    MAN_ST_GO_FINE_POSITION = 5 ,
    MAN_ST_WAIT_LASER_POS = 6 , // !< Wait until laser acquires package
    MAN_ST_GO_PRECISE_POSITION = 7 , // !< Final approach to the target, aided by laser aiming (if GET package)
    MAN_ST_DO_SUCTION = 8 , // !< Do suction
    MAN_ST_FOLDBACK = 9  ,
    MAN_ST_RETREAT = 10 , //retreat back to standby state
    MAN_ST_DO_EDGE_STOP = 11,
    MAN_ST_RETRACT_TO_STANDBY = 12,
    MAN_ST_BACK_TO_STANDBY = 13 ,
    MAN_ST_RELEASE_WAIT_STOP = 14 ,
    MAN_ST_PUSH_PACK = 15 ,
    MAN_ST_RELEASE_RET_HOME = 16 ,
    MAN_ST_DONE = 17,
    MAN_ST_EMCSTOP = 18 ,
    MAN_ST_RVS_STANDBY = 19 ,
    MAN_ST_STDBY = 20 ,
    MAN_ST_PUSH_PACK_ROUGH = 21 ,
    MAN_ST_RETREAT_RELEASE = 22 ,
    MAN_ST_PREPARE = 23 ,
    MAN_ST_RESET_NECK_INCIDENCE = 24,
    MAN_ST_WAIT_BEFORE_DONE = 25,
    MAN_ST_WAIT_DOOR_OPEN = 26 ,
    MAN_ST_RETREAT_WITH_PACAKGE = 27 ,
    MAN_ST_START_RETREAT_AFTER_RE_GRIP_PACKAGE = 28 ,
    MAN_ST_RE_GRIP_PACKAGE = 29 ,
    TAPE_FINISH_MOTION_BEFORE_FAILURE = 30 ,
    MAN_ST_FAILURE = 255
} ;

enum E_FLEX_MAN_STATE
{
    TAPE_WAIT_PACK_VERIFY = 1 ,    // !< Verify laser reading
    TAPE_WAIT_NECK_CONTROL = 2  ,
    TAPE_WAIT_NECK_INCIDENCE = 3 ,    // !< Verify laser reading
    TAPE_PUSH_PACK = 4     ,        // Push the package to place
    TAPE_RELEASE_SUCTION = 5,       // Release the package suction
    TAPE_GOTO_STANDBY = 6 ,      // Release the package with slow motion
    TAPE_RETREAT_SDTBY = 7  ,     // retreat to stanby position
    TAPE_PACSET_DONE = 8  ,
    TAPE_RESET_NECK_INCIDENCE = 9  ,
    TAPE_PACSET_FAIL = 15
} ;


enum E_PREPARATION_COMMAND
{
    E_PrepCmdNothing = 0 ,
    E_PrepCmdSetPlateAngle = 1 ,
    E_PrepCmdHoming = 2
};

enum E_PREPARATION_STATE
{
    EP_PrepStateNothing = 0 ,
    EP_PrepState_Init = 1 ,
    //E_PrepState_WaitPlate = 2 ,
    // E_PrepState_WaitArmHome = 3 ,
    //E_PrepState_WaitArmHomeBackToArea = 4 ,
    EP_PrepState_AlmostDone = 5,
    EP_PrepState_Done = 10 ,
    EP_PrepState_Error = 15
};



enum E_FLEXHOME_STATE
{
    E_FlexHomeStateNothing = 0 ,
    E_FlexHomeState_Init = 1 ,
    E_FlexHomeState_Go2Home = 2 ,
    E_FlexHomeState_GoSpacerHome = 3 ,
    E_FlexHomeState_GoPlateHome = 4 ,
    E_FlexHomeState_AlmostDone = 5 ,
    E_FlexHomeState_fix_position = 6 ,
    E_FlexHomeState_Done = 10 ,
    E_FlexHomeState_Error = 15
};



enum PICKING_DIRECTION
{
    PICKDIR_LEFT =1,
    PICKDIR_RIGHT =2
};


// Robot Geometry
#define G_XDistWheelShoulderPivot 0.24F // X Distance between wheels center point and manipulator pivot
#define G_YDistWheelShoulderPivot 0.28F  // Y Distance between wheels/rail touch line and manipulator pivot
#define G_MinManipulatorXClosure 0.18f   // Minimum X distance between manipulator pivot and center of end effector
#define G_LHumerus 0.2836F //Length of the radius (elbow to wrist)
#define G_LRadius 0.2836F // Length of hand (wrist to gripper)
#define G_LHand 0.124F // Length of hand (from wrist to end of compressed suckers)
#define G_LSucker 0.025f // Length of flexible part of gripper
#define  G_WHumerus 0.07f // Width of Humerus
#define G_WHand 0.20f // Width of tool


// Exception fatality level
#define EXP_RESET (short)(0)   // A code for resetting any existing failure
#define EXP_FATAL (short)(-1)   // Fatal - dead duck
#define EXP_WARN  (short)(-2)   // For warning
#define EXP_ABORT  (short)(-3)  // Abort auto actions, servo still on, can continue to next mission
#define EXP_ABORT_PACKON  (short)(-4)  // Abort auto actions, leave pack handling on the work
#define EXP_SAFE_FATAL (short)(-5)   // Fatal - with safe brake application



#define OWN_EXP_ID 7

#ifndef NULL
#define NULL 0
#endif

#define DYNAMIXEL_MOTOR_ON_TOUT 3.0f



#endif /* SHAREDH_SYSDEF_H_ */
