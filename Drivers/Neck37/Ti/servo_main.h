//#############################################################################
// $Copyright:
// Copyright (C) 2017-2022 Texas Instruments Incorporated - http://www.ti.com/
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions
// are met:
//
//   Redistributions of source code must retain the above copyright
//   notice, this list of conditions and the following disclaimer.
//
//   Redistributions in binary form must reproduce the above copyright
//   notice, this list of conditions and the following disclaimer in the
//   documentation and/or other materials provided with the
//   distribution.
//
//   Neither the name of Texas Instruments Incorporated nor the names of
//   its contributors may be used to endorse or promote products derived
//   from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
// $
//#############################################################################

#ifndef SERVO_MAIN_H
#define SERVO_MAIN_H

//**************************************************************************
//! \file   solutions/servo_drive_with_can/common/include/servo_main.h
//! \brief  header file to be included in all labs
//!
//**************************************************************************


//*****************************************************************************
//
// If building with a C++ compiler, make all of the definitions in this header
// have a C binding.
//
//*****************************************************************************
#ifdef __cplusplus
extern "C"
{
#endif

//*****************************************************************************
//
//! \addtogroup SERVO MAIN
//! @{
//
//*****************************************************************************
#define CMD_CAN_FD_ENABLE 1
//
// modules
//
/*
#ifdef __TMS320C28XX_CLA__
#include "libraries/math/include/CLAmath.h"
#else
#include "libraries/math/include/math.h"
#include <math.h>
#endif
*/

#if defined(CMD_CAN_ENABLE)
#include "communication.h"
#endif  // CMD_CAN_ENABLE

#include "userParams_updated.h"

#include "ctrl.h"
#include "clarke.h"
#include "filter_fo.h"
#include "ipark.h"
#include "park.h"
#include "pi.h"
#include "svgen.h"
#include "svgen_current.h"
#include "traj.h"
#include "fwc.h"
#include "mtpa.h"
#include "vs_freq.h"

//
// Only for lab03&lab04--position open loop control
//
#include "angle_gen.h"

#ifdef STEP_RESPONSE_EN
#include "graph.h"
#endif  // STEP_RESPONSE_EN

#include "qep_sensor.h"

#include "cpu_time.h"

//
// solutions
//
#if !defined(__TMS320C28XX_CLA__)
#include "user.h"
#include "hal.h"
#endif

#ifdef DRV8301_SPI
#include "drv8301.h"
#endif

#ifdef DRV8320_SPI
#include "drv8320.h"
#endif


//=============================================================================
// Incremental Build options for System check-out
//=============================================================================
#define DMC_LEVEL_1     1   //Y 50% duty, offset calibration and verify phase shift
#define DMC_LEVEL_2     2   //Y open loop control to check sensing signals
#define DMC_LEVEL_3     3   //Y closed current loop to check the hardware settings

#define DMC_BUILDLEVEL  DMC_LEVEL_1


#define LED_BLINK_FREQ_Hz           (1.0f)    // 1Hz

#define FLYINGSTART_DELAY_TIME      300       // pwm cycles

#define OVER_VOLTAGE_BITS           0x0001    // DC Bus Over Voltage Fault
#define UNDER_VOLTAGE_BITS          0x0002    // DC Bus Under Voltage Fault
#define MOTOR_OVER_TEMPER_BITS      0x0004    // Motor over temperature Fault
#define MODULE_OVER_TEMPER_BITS     0x0008    // Module over temperature Fault
#define MODULE_OVER_CURRENT_BITS    0x0010    // Hardware Over Current Fault
#define OVER_RMS_CURRENT_BITS       0x0020    // Motor Phase Over Current Fault
#define OVER_PEAK_CURRENT_BITS      0x0040    // Software Over Current Fault
#define MULTI_OVER_CURRENT_BITS     0x0080    // Multiple times over current
#define MOTOR_LOST_PHASE_BITS       0x0100    // Motor Lost Phase
#define CURRENT_UNBALANCE_BITS      0x0200    // Motor Phase Current Unbalance
#define MOTOR_STALL_BITS            0x0400    // Motor Stall
#define MOTOR_OVER_SPEED_BITS       0x0800    // Motor Over Speed
#define STARTUP_FAILE_BITS          0x1000    // Startup failed
#define MOTOR_OVER_LOAD_BITS        0x2000    // Over Load Error
#define CONTROLLER_ERROR_BITS       0x4000    // FAST Controller error
#define RESERVE_15_BITS             0x8000    // Reserved for further use

#define MASK_ALL_FAULT_BITS         0x0000
#define ENABLE_ALL_FAULT_BITS       0xFFFF

//
// Block all fault protection except over current and over voltage faults
//
#define FAULT_MASK_OC_OV            OVER_VOLTAGE_BITS                          \
                                  + MODULE_OVER_CURRENT_BITS                   \
                                  + MASK_ALL_FAULT_BITS

//
// Block all fault protection except current, voltage and temperature faults
//
#define FAULT_MASK_OC_FU_OT         OVER_VOLTAGE_BITS                          \
                                  + UNDER_VOLTAGE_BITS                         \
                                  + MOTOR_OVER_TEMPER_BITS                     \
                                  + MODULE_OVER_TEMPER_BITS                    \
                                  + MODULE_OVER_CURRENT_BITS                   \
                                  + CONTROLLER_ERROR_BITS                      \
                                  + MASK_ALL_FAULT_BITS

//
// Block some fault protection
//
#define FAULT_MASK_OC_FV_OL         OVER_VOLTAGE_BITS                          \
                                  + UNDER_VOLTAGE_BITS                         \
                                  + MOTOR_OVER_TEMPER_BITS                     \
                                  + MODULE_OVER_TEMPER_BITS                    \
                                  + MODULE_OVER_CURRENT_BITS                   \
                                  + OVER_RMS_CURRENT_BITS                      \
                                  + OVER_PEAK_CURRENT_BITS                     \
                                  + MULTI_OVER_CURRENT_BITS                    \
                                  + CURRENT_UNBALANCE_BITS                     \
                                  + MOTOR_OVER_LOAD_BITS                       \
                                  + CONTROLLER_ERROR_BITS                      \
                                  + MASK_ALL_FAULT_BITS

//
// Enable all fault protection
//
#define FAULT_MASK_ALL_FLTS         OVER_VOLTAGE_BITS                          \
                                  + UNDER_VOLTAGE_BITS                         \
                                  + MOTOR_OVER_TEMPER_BITS                     \
                                  + MODULE_OVER_TEMPER_BITS                    \
                                  + MODULE_OVER_CURRENT_BITS                   \
                                  + OVER_RMS_CURRENT_BITS                      \
                                  + OVER_PEAK_CURRENT_BITS                     \
                                  + MULTI_OVER_CURRENT_BITS                    \
                                  + MOTOR_LOST_PHASE_BITS                      \
                                  + CURRENT_UNBALANCE_BITS                     \
                                  + MOTOR_STALL_BITS                           \
                                  + MOTOR_OVER_SPEED_BITS                      \
                                  + STARTUP_FAILE_BITS                         \
                                  + MOTOR_OVER_LOAD_BITS                       \
                                  + CONTROLLER_ERROR_BITS                      \
                                  + MASK_ALL_FAULT_BITS

// Clear all fault protection except over/under voltage and offset error
//
#define  FAULT_CLEAR_NVS               OVER_VOLTAGE_BITS                       \
                                      + UNDER_VOLTAGE_BITS                     \
                                      + MOTOR_OVER_TEMPER_BITS                 \
                                      + MODULE_OVER_TEMPER_BITS

//
//! \brief typedefs for the fault
//
typedef struct _FAULT_BITS_
{             // bits  description
    uint16_t overVoltage:1;         // 0  DC Bus Over Voltage Fault
    uint16_t underVoltage:1;        // 1  DC Bus Under Voltage Fault
    uint16_t motorOverTemp:1;       // 2  Motor over temperature Fault
    uint16_t moduleOverTemp:1;      // 3  Power module over temperature Fault

    uint16_t moduleOverCurrent:1;   // 4  Hardware Over Current Fault Flag
    uint16_t overRmsCurrent:1;      // 5  Motor Phase Over Current Fault
    uint16_t overPeakCurrent:1;     // 6  Software Over Current Fault Flag
    uint16_t multiOverCurrent:1;    // 7  Multiple times over current

    uint16_t motorLostPhase:1;      // 8  Motor Lost Phase
    uint16_t currentUnbalance:1;    // 9  Motor Phase Current Unbalance
    uint16_t motorStall:1;          // 10 Motor Stall
    uint16_t overSpeed:1;           // 11 Motor Over Speed

    uint16_t startupFailed:1;       // 12 Startup failed
    uint16_t overLoad:1;            // 13 Over Load Error
    uint16_t controllerError:1;     // 14 FAST Controller error
    uint16_t reserve15:1;           // 15 Reserved
} FAULT_BITS;

typedef union _FAULT_REG_t {
    uint16_t            all;
    FAULT_BITS          bit;
}FAULT_REG_t;


//
//! \brief Enumeration for the kit boards
//
typedef enum
{
    BOARD_BSXL8320RS_REVA      = 0,          //!< the board is BOOSTXL_8320RS
    BOARD_BSXL8323RS_REVA      = 1,          //!< the board is BOOSTXL_8323RS
    BOARD_BSXL3PHGAN_REVA      = 2           //!< the board is BOOSTXL_3PhGaN
} Board_Kit_e;

//
//! \brief Initialization values of global variables
//
#define MOTOR_VARS_INIT {                                                      \
    false, /* flagEnableSys */                                                 \
    false, /* flagRunIdentAndOnLine */                                         \
    false, /* flagSetupController */                                           \
    true,  /* flagEnableOffsetcalc */                                          \
                                                                               \
    true,  /* flagEnableSpeedCtrl */                                           \
    true,  /* flagEnableCurrentCtrl */                                         \
    false, /* flagStateMotorRunning */                                         \
    false, /* flagRunCmdCAN */                                                 \
                                                                               \
    MOTORCTRL_MODE_SPEED,  /* motorCtrlMode */                                 \
                                                                               \
    CTRL_STATE_IDLE, /* ctrlState */                                           \
    BOARD_BSXL8320RS_REVA,  /* boardKit */                                     \
                                                                               \
    10.0f,  /* speedSetCAN_Hz */                                               \
    10.0f,  /* speedSet_Hz */                                                  \
    10.0f,  /* speedRef_Hz */                                                  \
    0.300f, /* speedRef_krpm */                                                \
    0.0f,   /* speedTraj_Hz */                                                 \
    0.0f,   /* speed_Hz */                                                     \
    0.0f,   /* speed_krpm */                                                   \
    0.0f,   /* speedFdbAbs_Hz */                                               \
    10.0f,  /* accelerationMax_Hzps */                                         \
                                                                               \
    0.1f,  /* Kp_spd */                                                        \
    0.01f, /* Ki_spd */                                                        \
                                                                               \
    0.5f,  /* Kp_Id */                                                         \
    0.01f, /* Ki_Id */                                                         \
                                                                               \
    0.5f,  /* Kp_Iq */                                                         \
    0.01f, /* Ki_Iq */                                                         \
                                                                               \
    0.0f,  /* Vs_V */                                                          \
    0.0f,  /* VdcBus_V */                                                      \
                                                                               \
    0.0f,  /* Is_A */                                                          \
    0.0f,  /* IsRef_A */                                                       \
    (USER_MOTOR_MAX_CURRENT_A * 0.5f),  /* overCurrent_A */                    \
                                                                               \
    {IA_OFFSET_A, IB_OFFSET_A, IC_OFFSET_A}, /* offsets_I_A */                 \
    {VA_OFFSET_V, VB_OFFSET_V, VC_OFFSET_V}, /* offsets_V_V */                 \
                                                                               \
    1.0f,  /* Vbus_sf */                                                       \
    0.0f,  /* VbusFilter_V */                                                  \
                                                                               \
    0,  /* pwmISRCount */                                                      \
    0,  /* mainLoopCount */                                                    \
    0,  /* timerCnt_1ms */                                                     \
                                                                               \
    2048 + 1024 + 512 + 256, /* dacValH */                                     \
    2048 - 1024 - 512 - 256, /* dacValL */                                     \
    2048,  /* dacaVal */                                                       \
    2048,  /* dacbVal */                                                       \
                                                                               \
    0,  /* faultNow */                                                         \
    0,  /* faultUse */                                                         \
    0,  /* faultOld */                                                         \
    0,  /* faultMask */                                                        \
    0   /* flagClearFaults */                                                  \
}

//extern USER_Params   userParams;


extern HAL_ADCData_t adcData;
extern HAL_PWMData_t pwmData;


//
// the function prototypes
//

//
//! \brief The main interrupt service (ISR) routine
//
extern __interrupt void mainISR(void);
extern __interrupt void canISR(void);

//



//
//! \brief      Updates the receive and transmit datas from CAN
//
extern void updateCANCmdFreq(void);


//*****************************************************************************
//
// Close the Doxygen group.
//! @}
//
//*****************************************************************************

//*****************************************************************************
//
// Mark the end of the C bindings section for C++ compilers.
//
//*****************************************************************************
#ifdef __cplusplus
}
#endif

#endif // end of SERVO_MAIN_H definition
