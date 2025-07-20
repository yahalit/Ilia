/*
 * ConstDef.h
 *
 *  Created on: Mar 23, 2023
 *      Author: yahal
 */

#ifndef APPLICATION_CONSTDEF_H_
#define APPLICATION_CONSTDEF_H_


#define LP_FIRM_YR 2024UL
#define LP_FIRM_MONTH 10UL
#define LP_FIRM_DAY 12UL

#define LP_FIRM_VER 16UL
#define LP_FIRM_SUBVER 2UL
#define LP_FIRM_PATCH 14UL
#define LP_XX 0

#define ConciseSubverPatch ( ((LP_FIRM_YR-2000) << 24 ) + (LP_FIRM_MONTH<<20) + (LP_FIRM_DAY <<15)  +(LP_FIRM_VER << 8) + (LP_FIRM_SUBVER<<4) + LP_FIRM_PATCH )

#define PROTOCOL_VER 1
#define PROTOCOL_SUBVER 1
#define PROTOCOL_PATCH 3
#define PROTOCOL_XX 0

//#define SEPARATE_CFG

#define RC_VERSION_FOR_SHELFSTOP_PERMIT 16843264 // 1.1.2.0 =hex2dec('01010200')
#define RC_VERSION_FOR_Z_CORRECTION 16843008 // 1.1.1.0 =hex2dec('01010100')
#define RC_VERSION_NO_Z_CORRECTION 16842752 // 1.1.0.0 =hex2dec('01010100')

#define OBJ_2301_FIRM_VER (( (long unsigned)LP_FIRM_YR << 20 ) + ((long unsigned)LP_FIRM_MONTH<<16) + ((long unsigned)LP_FIRM_DAY <<8) + (long unsigned) LP_FIRM_SUBVER )
#define SciLpVerSubverPatch (( (long unsigned)LP_FIRM_VER << 24 ) + ((long unsigned)LP_FIRM_SUBVER<<16) + ((long unsigned)LP_FIRM_PATCH <<8) + (long unsigned) LP_XX )
#define ProtocolSubverPatch (( (long unsigned)PROTOCOL_VER << 24 ) + ((long unsigned)PROTOCOL_SUBVER<<16) + ((long unsigned)PROTOCOL_PATCH <<8) + (long unsigned) PROTOCOL_XX )

//#define DEBUG_CRAB_STATE_MACHINE
#define DEBUG_CAMERA_DELAY
#define DEBUG_SIDE_CAMERA //Required for camera calibration and for camera repeatability test
#define DEBUG_TERMINAL_CLIMB

enum E_Robot_Generation
{
    ROBOT_GEN_BAD = 0,
    ROBOT_GEN2 = 2 ,
    ROBOT_GEN3 = 3
};


#define DIFFERENTIAL_CRAB // Each wheel will crab to the opposite direction
#define SP_SER_FLASH
#define SER_FLASH_ADD_CALIB_MAIN  4096
#define SER_FLASH_ADD_CONFIG_MAIN 16384


#define PiHalf 1.570796326794897f
#define Pi 3.141592653589793f
#define Pi2 6.283185307179586f

#define ARC_SPEED 0.2f // 0.12f


#define FCPU_CLK ((float)CPU_CLK_MHZ*1.0e6F)    // CPU frequency MHz
#define FAST_INTS_IN_C 16
#define SPI_CYC_IN_C FAST_INTS_IN_C // Number of fast cycle within a long one
#define FAST_TS_USEC 256 // Length of short cycle
#define C_TS_CLOCKS ((long)CPU_CLK_MHZ*(long)SPI_CYC_IN_C*(long)FAST_TS_USEC) // Clocks in full proc interrupt
#define F_TS  (FCPU_CLK / (float)C_TS_CLOCKS);
#define C_TS ( FAST_TS_USEC * FAST_INTS_IN_C)
#define CONTROL_TS_USEC ( FAST_TS_USEC * FAST_INTS_IN_C * 2 )
#define ROUTE_LOG_TS_USEC ((long)CONTROL_TS_USEC*4)
#define CONTROL_TS_F ( (float)CONTROL_TS_USEC * 1e-6f )
#define ONE_OVER_CONTROL_TS_F ( 1.0f / ( CONTROL_TS_USEC * 1e-6f ))
#define TS_DIFF_FAC (1.0e6f / C_TS )
#define TS_FAC (1.0e-6f  *  C_TS  )

#define WARM_WIDTH_CMD_TOL 0.020f

#define POS_UNIT_2_M 0.0001F

#define GYRO_DEC_FACTOR (1.0f)

#define HOST_SINGLE_MESSAGE_MAX_LEN 256
#define US_SINGLE_MESSAGE_MAX_LEN 128
#define GYRO_SINGLE_MESSAGE_MAX_LEN 128


//#define TRACK_WIDTH_ADJUST_DIR (-1)
#define ADC_SCALE_16BIT  4.57763671e-05f // (3 / 2^16)
#define MV_2_VOLT 0.001f



#define SDO_BUF_LEN_LONGS 512


#define M_2_LONG_FAC 10000.0F
#define LONG_2_M_FAC (1.0F/M_2_LONG_FAC)


#define UNSIGNED_MINUS1 0xffffffffUL
#define UNSIGNED_MINUS1_S 0xffff


#ifndef NULL
#define NULL 0
#endif


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

/* DFT axes
#define ID_WH_RIGHT  22
#define ID_WH_LEFT  12
#define ID_STEER_RIGHT 21
#define ID_STEER_LEFT 11
*/

#define ID_INTFC_RIGHT  24
#define ID_INTFC_LEFT   14

#define ID_WH_RIGHT  22
#define ID_STEER_RIGHT 21

#define ID_WH_LEFT  12
#define ID_STEER_LEFT 11

#define ID_NECK 30
#define N_CAN_SLAVES 5


#define PDO3_CONFIG_ROTARY_POT 0
#define PDO3_CONFIG_LINEAR 1
#define PDO3_CONFIG_WHEEL  2

#define TERMINAL_APRIL_TAG_2_THEETH_BASE 0.05f //m, from base of PU teeth to terminal tip


#define CANCEL_REL_CRAB_ERROR_CORRECTION

//#define X_TOL_LONG_DIST 0.008f
#define STEER_ON_TARGET_TOL 0.01 //in ProjControlPars defined MotionConvergeWindow = 0.002f

#define X_TOL_SHORT_DIST 0.003f
#define TERMINAL_CLIMB_X_TOL_FINAL 0.011f
#define TERMINAL_CLIMB_Y_TOL_FINAL 0.008f
#define TERMINAL_CLIMB_AZ_TOL_FINAL 0.04f
#define TERMINAL_CLIMB_AZ_TOL 0.015f
//#define TERMINAL_CLIMB_CONVERGENCE_FACTOR 0.5f

#define MIN_X_FOR_ANGLE_APPROACH 0.02
#define MIN_Y_FOR_AZIMUTH_DRIVE 0.015

#define REDUCED_TOL_DIST_FROM_TERMINAL_ENTRANCE 0.02f
//#define BEFORE_CRAB_TOL_FACTOR 0.5f
#define WHEELS_REDUCED_ACC 0.2f //nominal is  AutomaticRunPars.CrabAcceleration , AutomaticRunPars.CrabAcceleration = 0.5 m/s^2
#define WHEELS_ROTATE_IN_PLACE_VMAX 0.05f //nominal is AutomaticRunPars.CrabSpeed = 0.1 m/s
#define WHEELS_DRIVE_FW_VMAX 0.07f //nominal is AutomaticRunPars.CrabSpeed = 0.1 m/s
#define REQUIRED_REL_POS_MEASUREMENTS 5

#define NUMBER_OF_TERMINAL_TYPES 3
#define LONG_TERMINAL_LENGTH_M 0.32f //type A
#define SHORT_TERMINAL_LENGTH_M 0.19f //Type C

enum E_LogicalAxe
{
    LOGICAL_RW = 0,
    LOGICAL_LW = 1,
    LOGICAL_RSTEER = 2,
    LOGICAL_LSTEER = 3,
    LOGICAL_NECK = 4
} ;

#define LP_CAN_ID 124
#define ID_MANIPULATOR 126
#define PD_CAN_ID 126


#define NAV_HIST_BUF_LEN 1024 // Must be 2^N


#define PERMISSION_PAUSE_IN_SHELF_MASK 4

enum E_ManipulatorType
{
    EManipulator_None = 0,
    EManipulator_Scara = 1,
    EManipulator_Flex_Arm = 2
};


enum E_WheelArmType
{
    EWheelArm_Rigid = 0 ,
    EWeelArm_Wheel_Arm28 = 1 ,
    EWeelArm_Wheel_Arm24 = 2 ,
    EWeelArm_Wheel_Arm30 = 3 ,
    EWeelArm_Wheel_Arm32 = 4 ,
    EWeelArm_Wheel_ArmGeneric = 5
};

enum E_RCProtocolType
{
    ERCProtocolType_Early = 0 ,
    ERCProtocolType_Versioned = 1
};

enum E_VerticalRailPitchType
{
    EVerticalRailPitch_Old_6p28 =  0 ,
    EVerticalRailPitch_New_6p35 = 1
};

#endif /* APPLICATION_CONSTDEF_H_ */
