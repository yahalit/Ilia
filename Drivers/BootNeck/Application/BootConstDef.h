/*
 * ConstDef.h
 *
 *  Created on: May 12, 2023
 *      Author: Gal Lior
 */

#ifndef APPLICATION_CONSTDEF_H_
#define APPLICATION_CONSTDEF_H_




#define SRV_FIRM_YR 2024UL
#define SRV_FIRM_MONTH 8UL
#define SRV_FIRM_DAY 19UL

#define SRV_FIRM_VER 1UL
#define SRV_FIRM_SUBVER 1UL
#define SRV_FIRM_PATCH 1




//#define FIRM_VER (( (long unsigned)FIRM_YR << 20 ) + ((long unsigned)FIRM_MONTH<<16) + ((long unsigned)FIRM_DAY <<8) + (long unsigned) FIRM_SUBVER ) ;
#define SubverPatch ( ((SRV_FIRM_YR-2000) << 24 ) + (SRV_FIRM_MONTH<<20) + (SRV_FIRM_DAY <<15) +(SRV_FIRM_VER << 8) + (SRV_FIRM_SUBVER<<4) + SRV_FIRM_PATCH ) ;



#define CPU_CLK_MHZ     120
#define INV_CPU_CLK_MHZ (1.0f/CPU_CLK_MHZ)
#define CPU_CLK_HZ (CPU_CLK_MHZ*1.0e6f)
#define INV_CPU_CLK_HZ (1.0f/CPU_CLK_HZ)
#define CUR_SAMPLE_TIME_USEC 50
#define CUR_SAMPLE_TIME_CLOCKS (CUR_SAMPLE_TIME_USEC*CPU_CLK_MHZ)
#define MAX_TIME_FOR_ZERO_SPEED (6.4e-3f)

#define FSI_OVER_CONTROL 0.5f // Rate of FSI cycles over control cycles

#define BUS_OFF_RECOVERY_TIME 0.1f


// ADC SH Window is 14 clocks. Note that the ADC clock is in SYSCLOCK, and that hold terminates one SYSCLK before the window time
#define ADC_SAMPLE_WINDOW 14
#define ADC_SAMP_WIN ((ADC_SAMPLE_WINDOW+1)/ (float)CPU_CLK_MHZ)
#define CURRENT_SAMP_TC 0.3
#define FALL_AND_QCC_TIME 0.3
#define CURSAMPWINDOW_TIME_USEC (DEAD_TIME_USEC+FALL_AND_QCC_TIME+CURRENT_SAMP_TC*7 + ADC_SAMPLE_WINDOW * INV_CPU_CLK_MHZ )  //   CURSAMPWINDOW_TIME_USEC 1.77f
#define ADC_START_BEFORE_CYC_USEC (ADC_SAMP_WIN+DEAD_TIME_USEC)

#define PiHalf 1.570796326794897f
#define Pi     3.141592653589793f
#define Pi2 6.283185307179586f
#define OneOverPi2 0.159154943091895f
#define Log2OfE 1.442695040888963f

#define HallFac 0.166666666666667f



#define MAX_PDO_AGE_FOR_AUTOMATIC 0.1

#define MAX_TICKS_FOR_ZERO_SPEED ( 5000L )
#define MIN_TICKS_FOR_SPEED (CUR_SAMPLE_TIME_USEC  / 5 )

#define EXP_FATAL (short)(-1)   // Fatal - dead duck
#define EXP_WARN  (short)(-2)   // For warning
#define EXP_ABORT  (short)(-3)  // Abort auto actions
#define EXP_RESET  (short)(0)  // Clear
//#define EXP_ABORT_PACKON  (short)(-4)  // Abort auto actions, leave pack handling on the work
#define EXP_SAFE_FATAL (short)(-5)   // Fatal - with safe brake application


#define SQRT_OF_TWO_THIRDS 0.816496580927726f
#define SQRT_OF_3_OVER_2 0.866025403784439f
#define SQRT_OF_HALF 0.707106781186547

//#define SIG_TABLE_SIZE SIG_TABLE_SIZE_BASIC
#define N_RECS_MAX  16// Maximum amount of recorded signals


#define FAST_INTS_IN_C 1
#define FAST_TS_USEC CUR_SAMPLE_TIME_USEC
#define SDO_BUF_LEN_LONGS 2048

#define VBUS_SAMP_RATIO 0.0323f
#define ADC_RAT 8.056640625000000e-04f



#define UART_SW_INP_BUF_SIZE 128

// Total allocated timers
#define NSYS_TIMER_CMP_ARRAY 16

// Flags for configuration parameters
#define CFG_FLOAT 2
#define CFG_MUST_INIT 4
#define CFG_MUST_AUTO 8
#define CFG_KILLS_CFG  16
#define CFG_RECALC  32



#define ID_LOCAL_RIGHT  24
#define ID_LOCAL_LEFT   14


enum INBD_BrakeEngageState
{
    INBD_EngageNothing = 0 ,
    INBD_EngageInit = 1 ,
    INBD_WaitZeroSpeedRef = 2 ,
    INBD_WaitBrakeEngage = 3
} ;


#define EXCEPTION_TAB_LENGTH 4




#define USEC_2_SEC (1.0e-6f)
#define SEC_2_USEC (1.0e6f)

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

#define CFG_REVISION 0x4000


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


#define MAX_ADC_CUR_OFFSET 200

#define UNSIGNED_MINUS1 0xffffffffUL
#define UNSIGNED_MINUS1_S 0xffff

#define CodeStartAddress 0x83000

#define Sector_AppParams_start  0x09C000 // Sector 12 of bank1

#define Sector_AppIdentity_start  0x09D000 // Sector 13 of bank1

#define Sector_AppCalib_start  0x09E000   // Sector 14 of bank 1

#define Sector_AppVerify_start  0x09F000   // Sector 15 of bank 1

#define nUserCfgPars 128


#define IsBadFloat(x) ((( *((short unsigned *)&x + 1 ) & 0x7f80 ) == 0x7f80 ) ? 1 : 0 )

#endif /* APPLICATION_CONSTDEF_H_ */
