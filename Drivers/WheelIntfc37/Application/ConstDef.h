/*
 * ConstDef.h
 *
 *  Created on: Jun 17, 2023
 *      Author: yahal
 */

#ifndef APPLICATION_CONSTDEF_H_
#define APPLICATION_CONSTDEF_H_

#define PROJ_TYPE 0x9900UL
#define THISCARD  99

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

#define PROJ_TYPE_WH_INTFC_R 40
#define PROJ_TYPE_WH_INTFC_L 41

#define ON_BOARD_CAN

#define CPU_CLK_MHZ 120
#define CPU_CLK_HZ (CPU_CLK_MHZ*1.0e6f)
#define INV_CPU_CLK_MHZ (1.0f/CPU_CLK_MHZ)
#define INV_CPU_CLK_HZ (1.0f/CPU_CLK_HZ)

#define SAMPLE_BEFORE_EVENT_USEC 24 // Usec between CLA wake-to-sample and FSI interrupt
#define FAST_TS_USEC 50
#define CUR_SAMPLE_TIME_USEC FAST_TS_USEC
#define CUR_SAMPLE_TIME_CLOCKS (CUR_SAMPLE_TIME_USEC*CPU_CLK_MHZ)
#define FAST_INTS_IN_C 1

#define FSI_CLK_MHZ 6
#define FSI_MSG_TIME_USEC 30
#define FSI_FLUSH_TIME  ( CPU_CLK_MHZ * 2 / FSI_CLK_MHZ)
#define FSI_FLUSH_START_TIME  ( CPU_CLK_MHZ * 6 )
#define FSI_TX_TIME  ( CPU_CLK_MHZ * (CUR_SAMPLE_TIME_USEC-FSI_MSG_TIME_USEC) - FSI_FLUSH_START_TIME -  FSI_FLUSH_TIME)

#define BUS_OFF_RECOVERY_TIME 0.1f


#define SRV_FIRM_YR 2024UL
#define SRV_FIRM_MONTH 10UL
#define SRV_FIRM_DAY 1UL

#define SRV_FIRM_VER 2UL
#define SRV_FIRM_SUBVER 2UL
#define SRV_FIRM_PATCH 16

// 2.2.9
// Added steering correction to wheel



//#define FIRM_VER (( (long unsigned)FIRM_YR << 20 ) + ((long unsigned)FIRM_MONTH<<16) + ((long unsigned)FIRM_DAY <<8) + (long unsigned) FIRM_SUBVER ) ;
#define SubverPatch ( ((SRV_FIRM_YR-2000) << 24 ) + (SRV_FIRM_MONTH<<20) + (SRV_FIRM_DAY <<15) +(SRV_FIRM_VER << 8) + (SRV_FIRM_SUBVER<<4) + SRV_FIRM_PATCH ) ;


#define Sector_AppParams_start  0x09C000 // Sector 12 of bank1

#define Sector_AppIdentity_start  0x09D000 // Sector 13 of bank1

#define Sector_AppCalib_start  0x09E000   // Sector 14 of bank 1

#define Sector_AppVerify_start  0x09F000   // Sector 15 of bank 1


#define nUserCfgPars 128




// Flags for configuration parameters
#define CFG_FLOAT 2
#define CFG_MUST_INIT 4
//#define CFG_MUST_AUTO 8
#define CFG_KILLS_CFG  16
#define CFG_RECALC  32
#define CFG_REVISION 0x4000


//#define ADC_START_TIME_USEC 10

// Basic FSI F is 60M so it will be 7.5M clock
#define FSI_BAUD_DIVIDER 8

#define USEC_2_SEC (1.0e-6f)
#define SEC_2_USEC (1.0e6f)

#define MAX_TIME_FOR_ZERO_SPEED (6.4e-3f)


#define ADC_SAMPLE_WINDOW 14

#define PWM_A_BASE EPWM1_BASE

#define SDO_BUF_LEN_LONGS 128
#define NSYS_TIMER_CMP_ARRAY 16
#define EXCEPTION_TAB_LENGTH 4

#define LIN_BUFFER_LEN 64 // Must be 2^N
#define UART_SW_INP_BUF_SIZE 128

#define EXP_FATAL (short)(-1)   // Fatal - dead Donald the duck
#define EXP_WARN  (short)(-2)   // For warning
#define EXP_ABORT  (short)(-3)  // Abort auto actions
#define EXP_RESET  (short)(0)  // Clear
//#define EXP_ABORT_PACKON  (short)(-4)  // Abort auto actions, leave pack handling on the work
#define EXP_SAFE_FATAL (short)(-5)   // Fatal - with safe brake application


#define SQRT_OF_TWO_THIRDS 0.816496580927726f
#define SQRT_OF_3_OVER_2 0.866025403784439f
#define SQRT_OF_HALF 0.707106781186547

#define SW_WIDTH_REL_TOL_LOW 0.35f
#define SW_WIDTH_REL_TOL_HI  2.5f



//#define SIG_TABLE_SIZE SIG_TABLE_SIZE_BASIC
#define N_RECS_MAX  16 // Maximum amount of recorded signals
#define REC_BUF_LEN 4096 // 6144 // Number of bins in recorder
#define N_FDEBUG 8
#define N_LDEBUG 8


enum EA_AXIS_NAME
{
    EA_Wheel = 0 ,
    EA_Steering = 1
};



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
    Manufacturer_error_detail = 0x9000000UL
};

#define CAN_NMT  (0<<7)
#define CAN_SYNC  (1<<7)
#define CAN_EMCY  CAN_SYNC
#define CAN_TSTAMP (2<<7)

#define PDO1_TX (3<<7)
#define PDO2_TX (5<<7)
#define PDO3_TX (7<<7)
#define PDO4_TX (9<<7)

#define PDO1_RX (4<<7)
#define PDO2_RX (6<<7)
#define PDO3_RX (8<<7)
#define PDO4_RX (0xa<<7)

#define SDO_TX (0xb<<7)
#define SDO_RX (0xc<<7)

#define CAN_NMT_ERROR_CONTROL  (0xe<<7)


#define ID_LOCAL_RIGHT  24
#define ID_LOCAL_LEFT   14

#define ID_WH_RIGHT  22
#define ID_STEER_RIGHT 21

#define ID_WH_LEFT  12
#define ID_STEER_LEFT 11


#define UNSIGNED_MINUS1 0xffffffffUL
#define UNSIGNED_MINUS1_S 0xffff



#define BrakeAdcGain 11.9890f

// Depends in number of transmitters!
#define MCAN_TX_MASK_OTHER  0b1110000

#include "..\SelfTest\ErrorCodes.h"

#endif /* APPLICATION_CONSTDEF_H_ */
