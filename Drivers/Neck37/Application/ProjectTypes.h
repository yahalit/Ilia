// If you add another project:
// Must set a corresponding table at ProjSpecificData (this file)
// and also control parameters at ProjSpecificCtl (file = ProjControlPars.h)
#define PROJ_TYPE_UNDEFINED 0
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

#define PROJ_TYPE_WHEEL_R_BOOT 21
#define PROJ_TYPE_STEERING_R_BOOT 22
#define PROJ_TYPE_WHEEL_L_BOOT 23
#define PROJ_TYPE_STEERING_L_BOOT 24
#define PROJ_TYPE_NECK_BOOT 25
#define PROJ_TYPE_NECK2_BOOT 26
#define PROJ_TYPE_NECK3_BOOT 27
#define PROJ_TYPE_TRAY_ROTATOR_BOOT 28
#define PROJ_TYPE_TRAY_SHIFTER_BOOT 29
#define PROJ_TYPE_TAPE_MOTOR_BOOT 30


#define PROJ_TYPE_ERROR 0xff

#define PROJ_TYPE_WH_INTFC_R 40
#define PROJ_TYPE_WH_INTFC_L 41


#define PROJ_TYPE_BOOT_NECK 65
#define PROJ_TYPE_BOOT_WHEEL 66
#define PROJ_TYPE_BOOT_INTFC 67
#define PROJ_TYPE_BOOT_STEER 68
