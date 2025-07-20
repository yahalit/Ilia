/*
 * SysDef.h
 *
 *  Created on: Aug 21, 2021
 *      Author: Yahali
 */

#ifndef SHAREDH_SYSDEF_H_
#define SHAREDH_SYSDEF_H_


// Manipulator states
enum
{
    MAN_ST_INIT = 0 , // !< Ready to initialize
    MAN_ST_WAIT_STOP_1 = 1 ,    // !< Wait complete stop after initialization
    MAN_ST_GO_ROUGH_POSITION = 2 , // !< Go each axis independently to fetch start position
    MAN_ST_GO_ROUGH_POSITION_A = 3 ,
    MAN_ST_WAIT_LASER_POS = 4 , // !< Wait until laser acquires package
    MAN_ST_GO_PRECISE_POSITION = 5 , // !< Final approach to the target, aided by laser aiming (if GET package)
    MAN_ST_DO_SUCTION = 6 , // !< Do suction
    MAN_ST_FOLDBACK = 7  ,
    MAN_ST_RETREAT = 8 ,
    MAN_ST_DO_EDGE_STOP = 9,
    MAN_ST_RETRACT_TO_STANDBY = 10,
    MAN_ST_RELEASE_PUT = 11 ,
    MAN_ST_RELEASE_WAIT_STOP = 12 ,
    MAN_ST_PUSH_PACK = 13 ,
    MAN_ST_RELEASE_RET_HOME = 14 ,
    MAN_ST_DONE = 15,
    MAN_ST_EMCSTOP = 16 ,
    MAN_ST_STDBY = 20 ,
    MAN_ST_PUSH_PACK_ROUGH = 21 ,
    MAN_ST_RETREAT_RELEASE = 22 ,
    MAN_ST_FAILURE = 255
} ;

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
#define  G_WHumerus 0.07 // Width of Humerus
#define G_WHand 0.20 // Width of tool


// Exception fatality level
#define EXP_RESET (short)(0)   // A code for resetting any existing failure
#define EXP_FATAL (short)(-1)   // Fatal - dead duck
#define EXP_WARN  (short)(-2)   // For warning
#define EXP_ABORT  (short)(-3)  // Abort auto actions
#define OWN_EXP_ID 7

#ifndef NULL
#define NULL 0
#endif





#endif /* SHAREDH_SYSDEF_H_ */
