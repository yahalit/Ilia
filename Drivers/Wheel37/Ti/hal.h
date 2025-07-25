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

//! \file   solutions\servo_drive_with_can\f28003x\drivers\includehal.h
//! \brief  Contains public interface to various functions related
//!         to the HAL object
//!

#ifndef _HAL_H_
#define _HAL_H_


// **************************************************************************
// the includes


// platforms
#include "hal_obj.h"

#include "svgen_current.h"


//!
//!
//! \defgroup HAL HAL
//!
//@{


#ifdef __cplusplus
extern "C" {
#endif


// **************************************************************************
// the defines

//! Trip Zones all interrupt
//!
#define HAL_TZ_INTERRUPT_ALL     ( EPWM_TZ_INTERRUPT_DCBEVT2 \
                                 + EPWM_TZ_INTERRUPT_DCBEVT1 \
                                 + EPWM_TZ_INTERRUPT_DCAEVT2 \
                                 + EPWM_TZ_INTERRUPT_DCAEVT1 \
                                 + EPWM_TZ_INTERRUPT_OST \
                                 + EPWM_TZ_INTERRUPT_CBC )

#define HAL_TZSEL_SIGNALS_ALL     ( EPWM_TZ_SIGNAL_CBC1 |                      \
                                    EPWM_TZ_SIGNAL_CBC2 |                      \
                                    EPWM_TZ_SIGNAL_CBC3 |                      \
                                    EPWM_TZ_SIGNAL_CBC4 |                      \
                                    EPWM_TZ_SIGNAL_CBC5 |                      \
                                    EPWM_TZ_SIGNAL_CBC6 |                      \
                                    EPWM_TZ_SIGNAL_DCAEVT2 |                   \
                                    EPWM_TZ_SIGNAL_DCBEVT2 |                   \
                                    EPWM_TZ_SIGNAL_OSHT1 |                     \
                                    EPWM_TZ_SIGNAL_OSHT2 |                     \
                                    EPWM_TZ_SIGNAL_OSHT3 |                     \
                                    EPWM_TZ_SIGNAL_OSHT4 |                     \
                                    EPWM_TZ_SIGNAL_OSHT5 |                     \
                                    EPWM_TZ_SIGNAL_OSHT6 |                     \
                                    EPWM_TZ_SIGNAL_DCAEVT1 |                   \
                                    EPWM_TZ_SIGNAL_DCBEVT1 )


//! configure the ample window to 15 system clock cycle wide by assigning 14
//! to the ACQPS of ADCSOCxCTL Register for correct ADC operation
#define HAL_ADC_SAMPLE_WINDOW           14

//! \brief Defines the comparator number for current prection
//!
#define HAL_NUM_CMPSS_CURRENT           3

//! \brief Defines the gpio for start command
//!
#define HAL_START_CMD_GPIO            25   //13

//! \brief Defines the gpio for stop command
//!
#define HAL_STOP_CMD_GPIO             25   //7

//! \brief Defines the gpio for the nFAULT of Power Module device
//!
#define HAL_PM_nFAULT_GPIO            24

//! \brief Defines the gpio for the OCTW of Power Module device
//!
#define HAL_PM_nOCTW_GPIO             34

//! \brief Defines the gpio for the SPI_CS of DRV device
//!
#define HAL_DRV_SPI_CS_GPIO           57

//! \brief Defines the gpio for the enable gate of DRV device
//!
#define HAL_DRV_EN_GATE_GPIO          29



//! \brief Defines the PWM deadband rising edge delay count (system clocks)
//!
#define HAL_PM_PWM_DB_CNT         10

//! \brief Defines the bypassed delay for PWM on/off noise
//!
#define HAL_PM_NOISE_WINDOW_SET      30

#define HAL_TZ_SIGNAL1            EPWM_TZ_SIGNAL_OSHT1
#define HAL_TZ_SIGNAL2            EPWM_TZ_SIGNAL_OSHT2

#define HAL_XBAR_INPUT1           XBAR_INPUT1
#define HAL_XBAR_INPUT2           XBAR_INPUT2

#define HAL_DCTRIPIN            ( EPWM_DC_COMBINATIONAL_TRIPIN7 \
                                | EPWM_DC_COMBINATIONAL_TRIPIN8 \
                                | EPWM_DC_COMBINATIONAL_TRIPIN9 )


//! \brief Defines the function to turn LEDs off
//!
#define HAL_turnLEDOff            HAL_setGPIOLow

//! \brief Defines the function to turn LEDs on
//!
#define HAL_turnLEDOn             HAL_setGPIOHigh

//! \brief Defines the function to turn LEDs on
//!
#define HAL_toggleLED             HAL_toggleGPIO

// **************************************************************************
// the typedefs

//! \brief Enumeration for the LED numbers
//!
typedef enum
{
    HAL_GPIO_LED1 = 31,   //!< GPIO pin number for LaunchPad LED 4
    HAL_GPIO_LED2 = 31,   //!< GPIO pin number for LaunchPad LED 5
    HAL_GPIO_ISR  = 30,   //!< GPIO pin number for ISR Executing Time
    HAL_GPIO_BML  = 31    //!< GPIO pin number for Main Loop Executing Time
} HAL_LEDNumber_e;


//! \brief Enumeration for the sensor types
//!
typedef enum
{
    HAL_SENSORTYPE_CURRENT = 0,  //!< Enumeration for current sensor
    HAL_SENSORTYPE_VOLTAGE = 1   //!< Enumeration for voltage sensor
} HAL_SensorType_e;


//! \brief Enumeration for the QEP setup
//!
typedef enum
{
    HAL_QEP_QEP1=0,  //!< Select QEP1
    HAL_QEP_QEP2=1   //!< Select QEP2
} HAL_QEPSelect_e;


//! \brief Enumeration for the CPU Timer
//!
typedef enum
{
    HAL_CPU_TIMER0 = 0,  //!< Select CPU Timer0
    HAL_CPU_TIMER1 = 1,  //!< Select CPU Timer1
    HAL_CPU_TIMER2 = 2,  //!< Select CPU Timer2
} HAL_CPUTimerNum_e;


// **************************************************************************
// the globals

extern __interrupt void mainISR(void);

#ifdef CMD_CAN_ENABLE
extern __interrupt void canISR(void);
#endif



#ifdef CMD_CAN_FD_ENABLE
extern __interrupt void CANFDIntrISR0(void);
extern __interrupt void CANFDIntrISR1(void);
#endif


#ifdef CMD_CAN_FD_ENABLE
#define DATABYTES   64

#define MCAN_INTR_ERROR_BITS     (MCAN_IR_PED_MASK |        \
                                  MCAN_IR_PEA_MASK |        \
                                  MCAN_IR_EW_MASK  |        \
                                  MCAN_IR_EP_MASK  |        \
                                  MCAN_IR_ELO_MASK |        \
                                  MCAN_IR_BEU_MASK |        \
                                  MCAN_IR_BEC_MASK |        \
                                  MCAN_IR_TOO_MASK |        \
                                  MCAN_IR_MRAF_MASK)
#endif
//------------------------------------------------------------------------------
// CMPSS
#define IA_CMPHP_MUX       1                            // CMPSS1-A11
#define IA_CMPLP_MUX       1                            // CMPSS1-A11

#define IB_CMPHP_MUX       4                            // CMPSS2-C4
#define IB_CMPLP_MUX       4                            // CMPSS2-C4

#define IC_CMPHP_MUX       3                            // CMPSS3-C7
#define IC_CMPLP_MUX       3                            // CMPSS3-C7

#define CMPSS_DACH_VALUE   2048+1024+512
#define CMPSS_DACL_VALUE   2048-1024-512

// end of definition for site 1 (near emulator) on launchPad
// **************************************************************************
// the function prototypes

//! \brief     Acknowledges an interrupt from the ADC so that another ADC interrupt can 
//!            happen again.
//! \param[in] handle     The hardware abstraction layer (HAL) handle
//! \param[in] adcIntNum  The interrupt number
static inline void HAL_ackADCInt(HAL_Handle handle,const ADC_IntNumber adcIntNum)
{
  HAL_Obj *obj = (HAL_Obj *)handle;

  // clear the ADC interrupt flag
  ADC_clearInterruptStatus(obj->adcHandle[0], adcIntNum);       // ADCB

  // Acknowledge interrupt from PIE group 1
  Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);

  return;
} // end of HAL_ackADCInt() function

#ifdef _FLASH
//! \brief      Executes calibration routines
//! \details    Values for offset and gain are programmed into OTP memory at
//!             the TI factory.  This calls and internal function that programs
//!             these offsets and gains into the ADC registers.
//! \param[in]  handle  The hardware abstraction layer (HAL) handle
extern void HAL_cal(HAL_Handle handle);
#endif

//! \brief      Disables global interrupts
//! \param[in]  handle  The hardware abstraction layer (HAL) handle
extern void HAL_disableGlobalInts(HAL_Handle handle);

//! \brief      Enables the ADC interrupts
//! \details    Enables the ADC interrupt in the PIE, and CPU.  Enables the 
//!             interrupt to be sent from the ADC peripheral.
//! \param[in]  handle  The hardware abstraction layer (HAL) handle
extern void HAL_enableADCInts(HAL_Handle handle);

//! \brief      Enables the CAN interrupts
//! \details    Enables the CAN interrupt in the PIE, and CPU.
//! \param[in]  handle  The hardware abstraction layer (HAL) handle

extern void HAL_enableMCANInts(HAL_Handle handle);
//! \brief      Enables the CAN interrupts
//! \details    Enables the CAN interrupt in the PIE, and CPU.
//! \param[in]  handle  The hardware abstraction layer (HAL) handle

extern void HAL_enableCANInts(HAL_Handle handle);


//! \brief      Enables the ADC interrupts without CPU interrupts
//! \details    Enables the ADC interrupts to only trigger CLA, and without
//!             interrupting the CPU
//! \param[in]  handle  The hardware abstraction layer (HAL) handle

extern void HAL_enableADCIntsToTriggerCLA(HAL_Handle handle);


//! \brief      Enables the debug interrupt
//! \details    The debug interrupt is used for the real-time debugger.  It is
//!             not needed if the real-time debugger is not used.  Clears
//!             bit 1 of ST1.
//! \param[in]  handle  The hardware abstraction layer (HAL) handle
extern void HAL_enableDebugInt(HAL_Handle handle);


extern void HAL_enableDRV(HAL_Handle handle);

#ifdef DRV8320_SPI
extern void HAL_writeDRVData(HAL_Handle handle, DRV8320_SPIVars_t *drv8320Vars);

extern void HAL_readDRVData(HAL_Handle handle, DRV8320_SPIVars_t *drv8320Vars);

extern void HAL_setupDRVSPI(HAL_Handle handle, DRV8320_SPIVars_t *drv8320Vars);
#endif

#ifdef DRV8323_SPI
extern void HAL_writeDRVData(HAL_Handle handle, DRV8323_SPIVars_t *drv8323Vars);

extern void HAL_readDRVData(HAL_Handle handle, DRV8323_SPIVars_t *drv8323Vars);

extern void HAL_setupDRVSPI(HAL_Handle handle, DRV8323_SPIVars_t *drv8323Vars);
#endif

//! \brief     Enables global interrupts
//! \param[in] handle  The hardware abstraction layer (HAL) handle
extern void HAL_enableGlobalInts(HAL_Handle handle);

//! \brief     Gets the current scale factor
//! \param[in] handle  The hardware abstraction layer (HAL) handle
//! \return    The current scale factor
static inline float32_t HAL_getCurrentScaleFactor(HAL_Handle handle)
{
  HAL_Obj *obj = (HAL_Obj *)handle;

  return(obj->current_sf);
} // end of HAL_getCurrentScaleFactor() function

//! \brief     Gets the PWM duty cycle times
//! \param[in] handle       The hardware abstraction layer (HAL) handle
//! \param[in] pDutyCycles  A pointer to memory for the duty cycle durations
static inline void HAL_getDutyCycles(HAL_Handle handle,uint16_t *pDutyCycles)
{
    HAL_Obj *obj = (HAL_Obj *)handle;

    pDutyCycles[0] = EPWM_getCounterCompareValue(obj->pwmHandle[0],
                                                 EPWM_COUNTER_COMPARE_A);
    pDutyCycles[1] = EPWM_getCounterCompareValue(obj->pwmHandle[1],
                                                 EPWM_COUNTER_COMPARE_A);
    pDutyCycles[2] = EPWM_getCounterCompareValue(obj->pwmHandle[2],
                                                 EPWM_COUNTER_COMPARE_A);
    return;
} // end of HAL_getDutyCycles() function


//! \brief     Gets the number of current sensors
//! \param[in] handle  The hardware abstraction layer (HAL) handle
//! \return    The number of current sensors
static inline uint_least8_t HAL_getNumCurrentSensors(HAL_Handle handle)
{
  HAL_Obj *obj = (HAL_Obj *)handle;
  

  return(obj->numCurrentSensors);
} // end of HAL_getNumCurrentSensors() function


//! \brief     Gets the number of voltage sensors
//! \param[in] handle  The hardware abstraction layer (HAL) handle
//! \return    The number of voltage sensors
static inline uint_least8_t HAL_getNumVoltageSensors(HAL_Handle handle)
{
  HAL_Obj *obj = (HAL_Obj *)handle;
  

  return(obj->numVoltageSensors);
} // end of HAL_getNumVoltageSensors() function


//! \brief     Gets the voltage scale factor
//! \param[in] handle  The hardware abstraction layer (HAL) handle
//! \return    The voltage scale factor
static inline float32_t HAL_getVoltageScaleFactor(HAL_Handle handle)
{
  HAL_Obj *obj = (HAL_Obj *)handle;

  return(obj->voltage_sf);
} // end of HAL_getVoltageScaleFactor() function


//! \brief     Acknowledges an interrupt that is set for estimator
//! \param[in] handle     The hardware abstraction layer (HAL) handle
static inline void HAL_ackEstInt(HAL_Handle handle)
{
    // Acknowledge this interrupt to receive more interrupts from group 1
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);

    return;
} // end of HAL_ackEstInt() function


//! \brief      Configures the fault protection logic
//! \details    Sets up the trip zone inputs so that when a comparator
//!             signal from outside the micro-controller trips a fault,
//!             the EPWM peripheral blocks will force the
//!             power switches into a high impedance state.
//! \param[in]  handle  The hardware abstraction layer (HAL) handle
extern void HAL_setupFaults(HAL_Handle handle);

//! \brief     Sets up the GATE object
//! \param[in] handle       The hardware abstraction layer (HAL) handle
extern void HAL_setupGate(HAL_Handle handle);

//! \brief      Initializes the hardware abstraction layer (HAL) object
//! \details    Initializes all handles to the microcontroller peripherals.
//!             Returns a handle to the HAL object.
//! \param[in]  pMemory   A pointer to the memory for the hardware abstraction layer object
//! \param[in]  numBytes  The number of bytes allocated for the hardware abstraction layer object, bytes
//! \return     The hardware abstraction layer (HAL) object handle
extern HAL_Handle HAL_init(void *pMemory,const size_t numBytes);

//! \brief      Initializes the interrupt vector table
//! \details    Points the ISR to the function mainISR.
//! \param[in]  handle  The hardware abstraction layer (HAL) handle
static inline void HAL_initIntVectorTable(HAL_Handle handle)
{
    Interrupt_register(INT_ADCA1, &mainISR);

#ifdef CMD_CAN_ENABLE
    Interrupt_register(INT_CANA0, &canISR);
#endif

    return;
} // end of HAL_initIntVectorTable() function

//! \brief      Reads the ADC data
//! \details    Reads in the ADC result registers and scales the values
//!             according to the settings in user.h.  The structure gAdcData
//!             holds three phase voltages, three line currents, and one DC bus
//!             voltage.
//! \param[in]  handle    The hardware abstraction layer (HAL) handle
//! \param[in]  pADCData  A pointer to the ADC data buffer
static inline void HAL_readADCDataWithOffsets(HAL_Handle handle,HAL_ADCData_t *pADCData)
{
  HAL_Obj *obj = (HAL_Obj *)handle;

  float32_t value;

  float32_t current_sf = HAL_getCurrentScaleFactor(handle);
  float32_t voltage_sf = HAL_getVoltageScaleFactor(handle);

  // convert phase A current        ->A1/RA0
  value = (float32_t)ADC_readResult(obj->adcResult[2], ADC_SOC_NUMBER0);
  pADCData->I_A.value[0] = value * current_sf;

  // convert phase B current        ->C1/RC0
  value = (float32_t)ADC_readResult(obj->adcResult[0], ADC_SOC_NUMBER0);
  pADCData->I_A.value[1] = value * current_sf;

  // convert phase C current        ->A3/RA1
  value = (float32_t)ADC_readResult(obj->adcResult[1], ADC_SOC_NUMBER0);
  pADCData->I_A.value[2] = value * current_sf;

  // convert dcBus voltage          ->A14/RA3
  value = (float32_t)ADC_readResult(obj->adcResult[1], ADC_SOC_NUMBER2);
  pADCData->dcBus_V = value * voltage_sf;


  return;
} // end of HAL_readADCDataWithOffsets() function


//! \brief      Reads the ADC data
//! \details    Reads in the ADC result registers and scales the values
//!             according to the settings in user.h.  The structure gAdcData
//!             holds three phase voltages, three line currents, and one DC bus
//!             voltage.
//! \param[in]  handle    The hardware abstraction layer (HAL) handle
//! \param[in]  pADCData  A pointer to the ADC data buffer
static inline void HAL_readADCDataWithoutOffsets(HAL_Handle handle,HAL_ADCData_t *pADCData)
{
  HAL_Obj *obj = (HAL_Obj *)handle;

  float32_t value;

  float32_t current_sf = -HAL_getCurrentScaleFactor(handle);
  float32_t voltage_sf = HAL_getVoltageScaleFactor(handle);

  // convert phase A current        ->A1/RA0
  value = (float32_t)ADC_readResult(obj->adcResult[2], ADC_SOC_NUMBER0);
  pADCData->I_A.value[0] = value * current_sf;

  // convert phase B current        ->C1/RC0
  value = (float32_t)ADC_readResult(obj->adcResult[0], ADC_SOC_NUMBER0);
  pADCData->I_A.value[1] = value * current_sf;

  // convert phase C current        ->A3/RA1
  value = (float32_t)ADC_readResult(obj->adcResult[1], ADC_SOC_NUMBER0);
  pADCData->I_A.value[2] = value * current_sf;

  // convert dcBus voltage          ->A14/RA3
  value = (float32_t)ADC_readResult(obj->adcResult[1], ADC_SOC_NUMBER2);
  pADCData->dcBus_V = value * voltage_sf;

  // read speed set                 ->C0/RC3
  pADCData->throttle = (float32_t)ADC_readResult(obj->adcResult[1], ADC_SOC_NUMBER2);

  return;
} // end of HAL_readADCDataWithOffsets() function

//! \brief     Reads the timer count
//! \param[in] handle       The hardware abstraction layer (HAL) handle
//! \param[in] timerNumber  The timer number, 0,1 or 2
//! \return    The timer count
static inline uint32_t HAL_readTimerCnt(HAL_Handle handle,const uint_least8_t timerNumber)
{
    HAL_Obj *obj = (HAL_Obj *)handle;

    uint32_t timerCnt = CPUTimer_getTimerCount(obj->timerHandle[timerNumber]);

    return(timerCnt);
} // end of HAL_readTimerCnt() function

//! \brief     Sets the GPIO pin high
//! \param[in] handle      The hardware abstraction layer (HAL) handle
//! \param[in] gpioNumber  The GPIO number
static inline void HAL_setGPIOHigh(HAL_Handle handle,const uint32_t gpioNumber)
{

  // set GPIO high
  GPIO_writePin(gpioNumber, 1);

  return;
} // end of HAL_setGPIOHigh() function


//! \brief     Read the GPIO pin
//! \param[in] handle      The hardware abstraction layer (HAL) handle
//! \param[in] gpioNumber  The GPIO number
//! \return    The GPIO pin
static inline uint32_t HAL_readGPIOData(HAL_Handle handle,const uint32_t gpioNumber)
{
  uint32_t gpioPinData;

  // set GPIO high
  gpioPinData = GPIO_readPin(gpioNumber);

  return(gpioPinData);
} // end of HAL_readGPIOData() function


//! \brief     Sets the GPIO pin low
//! \param[in] handle      The hardware abstraction layer (HAL) handle
//! \param[in] gpioNumber  The GPIO number
static inline void HAL_setGPIOLow(HAL_Handle handle,const uint32_t gpioNumber)
{

  // set GPIO low
  GPIO_writePin(gpioNumber, 0);

  return;
} // end of HAL_setGPIOLow() function

//! \brief     Sets the number of voltage sensors
//! \param[in] handle             The hardware abstraction layer (HAL) handle
//! \param[in] numVoltageSensors  The number of voltage sensors
/*
static inline void HAL_setNumVoltageSensors(HAL_Handle handle,const uint_least8_t numVoltageSensors)
{
  HAL_Obj *obj = (HAL_Obj *)handle;

  obj->numVoltageSensors = numVoltageSensors;

  return;
} // end of HAL_setNumVoltageSensors() function
*/

//! \brief     Sets the number of current sensors
//! \param[in] handle             The hardware abstraction layer (HAL) handle
//! \param[in] numCurrentSensors  The number of current sensors
static inline void HAL_setNumCurrentSensors(HAL_Handle handle,const uint_least8_t numCurrentSensors)
{
  HAL_Obj *obj = (HAL_Obj *)handle;


  obj->numCurrentSensors = numCurrentSensors;

  return;
} // end of HAL_setNumCurrentSensors() function

//! \brief      Sets the hardware abstraction layer parameters
//! \details    Sets up the microcontroller peripherals.  Creates all of the scale
//!             factors for the ADC voltage and current conversions.  Sets the initial
//!             offset values for voltage and current measurements.
//! \param[in]  handle       The hardware abstraction layer (HAL) handle
extern void HAL_setParams(HAL_Handle handle);


//! \brief      Sets up the ADCs (Analog to Digital Converters)
//! \param[in]  handle  The hardware abstraction layer (HAL) handle
extern void HAL_setupADCs(HAL_Handle handle);


//! \brief     Sets up the CANA
//! \param[in] handle  The hardware abstraction layer (HAL) handle
extern void HAL_setupCANA(HAL_Handle handle);


//! \brief     Sets up the MCAN
//! \param[in] handle  The hardware abstraction layer (HAL) handle
extern void HAL_setupMCAN(HAL_Handle handle);


//! \brief     configure the CANA
//! \param[in] handle  The hardware abstraction layer (HAL) handle
extern void HAL_configMCAN(HAL_Handle halHandle);


//! \brief      runs ADC offset calibration
//! \param[in]  handle  The hardware abstraction layer (HAL) handle
extern void HAL_runADCZeroOffsetCalibration(uint32_t base);


//! \brief      Sets up the PGAs (Programmable Gain Amplifiers)
//! \param[in]  handle  The hardware abstraction layer (HAL) handle
extern void HAL_setupPGAs(HAL_Handle handle);


//! \brief      Sets up the CMPSSs (Comparator Subsystems)
//! \param[in]  handle  The hardware abstraction layer (HAL) handle
extern void HAL_setupCMPSSs(HAL_Handle handle);


//! \brief      Sets up the DACs (Buffered Digital-to-Analog Converter)
//! \param[in]  handle  The hardware abstraction layer (HAL) handle
extern void HAL_setupDACs(HAL_Handle handle);


//! \brief      Sets up the clocks
//! \details    Sets up the micro-controller's main oscillator
//! \param[in]  handle  The hardware abstraction layer (HAL) handle
extern void HAL_setupClks(HAL_Handle handle);


//! \brief     Sets up the faults
//! \param[in] handle  The hardware abstraction layer (HAL) handle
extern void HAL_setupFaults(HAL_Handle handle);


//! \brief     Sets up the GPIO (General Purpose I/O) pins
//! \param[in] handle  The hardware abstraction layer (HAL) handle
extern void HAL_setupGPIOs(HAL_Handle handle);


//! \brief     Sets up the FLASH.
//! \param[in] handle  The hardware abstraction layer (HAL) handle
extern void HAL_setupFlash(HAL_Handle handle);

//! \brief     Sets up the CLA
//! \param[in] handle  The hardware abstraction layer (HAL) handle
extern void HAL_setupCLA(HAL_Handle handle);

//! \brief     Sets up the peripheral clocks
//! \param[in] handle  The hardware abstraction layer (HAL) handle
extern void HAL_setupPeripheralClks(HAL_Handle handle);


//! \brief     Sets up the PIE (Peripheral Interrupt Expansion)
//! \param[in] handle  The hardware abstraction layer (HAL) handle
extern void HAL_setupPIE(HAL_Handle handle);

//! \brief     Sets up the PWMs (Pulse Width Modulators)
//! \param[in] handle          The hardware abstraction layer (HAL) handle
//! \param[in] systemFreq_MHz  The system frequency, MHz
extern void HAL_setupPWMDACs(HAL_Handle handle,
                   const float32_t systemFreq_MHz);

//! \brief     Sets up the QEP peripheral
//! \param[in] handle  The hardware abstraction layer (HAL) handle
extern void HAL_setupQEP(HAL_Handle handle,HAL_QEPSelect_e qep);

//! \brief     Sets up the SCIA
//! \param[in] handle  The hardware abstraction layer (HAL) handle
extern void HAL_setupSCIA(HAL_Handle handle);


//! \brief     Sets up the SPIA
//! \param[in] handle  The hardware abstraction layer (HAL) handle
extern void HAL_setupSPIA(HAL_Handle handle);


//! \brief     Sets up the SPIB
//! \param[in] handle  The hardware abstraction layer (HAL) handle
extern void HAL_setupSPIB(HAL_Handle handle);



//! \brief     Toggles the GPIO pin
//! \param[in] handle      The hardware abstraction layer (HAL) handle
//! \param[in] gpioNumber  The GPIO number
static inline void HAL_toggleGPIO(HAL_Handle handle,const uint32_t gpioNumber)
{

    // toggle GPIO
    GPIO_togglePin(gpioNumber);

    return;
} // end of HAL_toggleGPIO() function


//! \brief
//! \param[in]
//! \param[in]
void HAL_clearDataRAM(void *pMemory, uint16_t lengthMemory);


//! \brief     Reads PWM period register
//! \param[in] handle     The hardware abstraction layer (HAL) handle
//! \param[in] pwmNumber  The PWM number
//! \return    The PWM period value
static inline uint16_t HAL_readPWMPeriod(HAL_Handle handle,const uint16_t pwmNumber)
{
  HAL_Obj *obj = (HAL_Obj *)handle;

  // the period value to be returned
  uint16_t pwmPeriodValue;

  pwmPeriodValue = EPWM_getTimeBasePeriod(obj->pwmHandle[pwmNumber]);

  return(pwmPeriodValue);
} // end of HAL_readPWMPeriod() function


//! \brief     Writes PWM data to the PWM comparators for motor control
//! \param[in] handle    The hardware abstraction layer (HAL) handle
//! \param[in] pPWMData  The pointer to the PWM data
static inline void HAL_writePWMData(HAL_Handle handle, HAL_PWMData_t *pPWMData)
{
  HAL_Obj *obj = (HAL_Obj *)handle;
  uint_least8_t pwmCnt;

  for(pwmCnt=0;pwmCnt<3;pwmCnt++)
    {
      // compute the value
      float32_t period = (float32_t)(EPWM_getTimeBasePeriod(obj->pwmHandle[pwmCnt]));
      float32_t V_pu = -pPWMData->Vabc_pu.value[pwmCnt];      // Negative
      float32_t V_sat_pu = MATH_sat(V_pu,0.5,-0.5);           // -0.5~0.5
      float32_t V_sat_dc_pu = V_sat_pu + 0.5;                 // 0~1.0
      int16_t pwmValue  = (int16_t)(V_sat_dc_pu * period);  //

      // Save current CMP value for OVM
      pPWMData->cmpValue[pwmCnt] = pwmValue;

      // write the PWM data value
      EPWM_setCounterCompareValue(obj->pwmHandle[pwmCnt],
                                  EPWM_COUNTER_COMPARE_A,
                                  pwmValue);
    }

  // write the PWM data value  for ADC trigger
  EPWM_setCounterCompareValue(obj->pwmHandle[0],
                              EPWM_COUNTER_COMPARE_C,
                              1);
  return;
} // end of HAL_writePWMData() function


//! \brief      Enables the PWM devices
//! \details    Turns on the outputs of the EPWM peripheral which will allow
//!             the power switches to be controlled.
//! \param[in]  handle  The hardware abstraction layer (HAL) handle
static inline void HAL_enablePWM(HAL_Handle handle)
{
    HAL_Obj *obj = (HAL_Obj *)handle;

    // Clear comparator digital filter output latch
    CMPSS_clearFilterLatchHigh(obj->cmpssHandle[0]);
    CMPSS_clearFilterLatchLow(obj->cmpssHandle[0]);

    CMPSS_clearFilterLatchHigh(obj->cmpssHandle[1]);
    CMPSS_clearFilterLatchLow(obj->cmpssHandle[1]);

    CMPSS_clearFilterLatchHigh(obj->cmpssHandle[2]);
    CMPSS_clearFilterLatchLow(obj->cmpssHandle[2]);

    EPWM_clearTripZoneFlag(obj->pwmHandle[0], HAL_TZ_INTERRUPT_ALL);
    EPWM_clearTripZoneFlag(obj->pwmHandle[1], HAL_TZ_INTERRUPT_ALL);
    EPWM_clearTripZoneFlag(obj->pwmHandle[2], HAL_TZ_INTERRUPT_ALL);

    obj->flagEnablePWM = true;

    return;
} // end of HAL_enablePWM() function


//! \brief      clear fault status of motor control
//! \details
//! \param[in]  handle  The hardware abstraction layer (HAL) handle
static inline void HAL_clearFaultStatus(HAL_Handle handle)
{
    HAL_Obj *obj = (HAL_Obj *)handle;

    // Clear any comparator digital filter output latch
    CMPSS_clearFilterLatchHigh(obj->cmpssHandle[0]);
    CMPSS_clearFilterLatchLow(obj->cmpssHandle[0]);

    CMPSS_clearFilterLatchHigh(obj->cmpssHandle[1]);
    CMPSS_clearFilterLatchLow(obj->cmpssHandle[1]);

    CMPSS_clearFilterLatchHigh(obj->cmpssHandle[2]);
    CMPSS_clearFilterLatchLow(obj->cmpssHandle[2]);


    // Clear any Trip Zone flag
    EPWM_clearTripZoneFlag(obj->pwmHandle[0], HAL_TZ_INTERRUPT_ALL);
    EPWM_clearTripZoneFlag(obj->pwmHandle[1], HAL_TZ_INTERRUPT_ALL);
    EPWM_clearTripZoneFlag(obj->pwmHandle[2], HAL_TZ_INTERRUPT_ALL);

    return;
} // end of HAL_clearMtrFaultStatus() function


//! \brief      set the PWM mode to brake the motor
//! \details    Turns off the high side PWM, and turn on the low side PWM
//!
//! \param[in]  handle  The hardware abstraction layer (HAL) handle
static inline void HAL_setPWMBrake(HAL_Handle handle)
{
    HAL_Obj *obj = (HAL_Obj *)handle;

    EPWM_setActionQualifierContSWForceAction(obj->pwmHandle[0],
                                    EPWM_AQ_OUTPUT_A, EPWM_AQ_SW_OUTPUT_LOW);

    EPWM_setActionQualifierContSWForceAction(obj->pwmHandle[0],
                                    EPWM_AQ_OUTPUT_B, EPWM_AQ_SW_OUTPUT_HIGH);

    EPWM_setActionQualifierContSWForceAction(obj->pwmHandle[1],
                                    EPWM_AQ_OUTPUT_A, EPWM_AQ_SW_OUTPUT_LOW);

    EPWM_setActionQualifierContSWForceAction(obj->pwmHandle[1],
                                    EPWM_AQ_OUTPUT_B, EPWM_AQ_SW_OUTPUT_HIGH);

    EPWM_setActionQualifierContSWForceAction(obj->pwmHandle[2],
                                    EPWM_AQ_OUTPUT_A, EPWM_AQ_SW_OUTPUT_LOW);

    EPWM_setActionQualifierContSWForceAction(obj->pwmHandle[2],
                                    EPWM_AQ_OUTPUT_B, EPWM_AQ_SW_OUTPUT_HIGH);

    EPWM_clearTripZoneFlag(obj->pwmHandle[0], HAL_TZ_INTERRUPT_ALL);
    EPWM_clearTripZoneFlag(obj->pwmHandle[1], HAL_TZ_INTERRUPT_ALL);
    EPWM_clearTripZoneFlag(obj->pwmHandle[2], HAL_TZ_INTERRUPT_ALL);

    return;
} // end of HAL_disablePWM() function

//! \brief     Sets the DAC Shadow Output Value
//! \param[in] handle      The hardware abstraction layer (HAL) handle
//! \param[in] dacNumber   The DAC number
//! \param[in] dacValue    The DAC value
static inline void HAL_setDACValue(HAL_Handle handle,
                                   const uint16_t dacNumber,
                                   const uint16_t dacValue)
{
    return;
} // end of HAL_setDACValue() function


//! \brief     Sets the value of the internal DAC of the high comparator
//! \param[in] handle      The hardware abstraction layer (HAL) handle
//! \param[in] cmpssNumber The CMPSS number
//! \param[in] dacValue    The DAC value of the high comparator
static inline void HAL_setCMPSSDACValueHigh(HAL_Handle handle,
                                            const uint16_t cmpssNumber,
                                            const uint16_t dacValue)
{
    HAL_Obj *obj = (HAL_Obj *)handle;

    // set GPIO low
    CMPSS_setDACValueHigh(obj->cmpssHandle[cmpssNumber], dacValue);

    return;
} // end of HAL_setCMPSSDACValueHigh() function


//! \brief     Sets the value of the internal DAC of the low comparator
//! \param[in] handle      The hardware abstraction layer (HAL) handle
//! \param[in] cmpssNumber The CMPSS number
//! \param[in] dacValue    The DAC value of the low comparator
static inline void HAL_setCMPSSDACValueLow(HAL_Handle handle,
                                           const uint16_t cmpssNumber,
                                           const uint16_t dacValue)
{
    HAL_Obj *obj = (HAL_Obj *)handle;

    // set GPIO low
    CMPSS_setDACValueLow(obj->cmpssHandle[cmpssNumber], dacValue);

    return;
} // end of HAL_setCMPSSDACValueLow() function


//! \brief     Sets up the PWMs (Pulse Width Modulators)
//! \param[in] handle          The hardware abstraction layer (HAL) handle
//! \param[in] systemFreq_MHz  The system frequency, MHz
//! \param[in] pwmPeriod_usec  The PWM period, usec
//! \param[in] numPWMTicksPerISRTick  The number of PWM clock ticks per ISR clock tick
extern void HAL_setupPWMs(HAL_Handle handle,
                          const float32_t systemFreq_MHz,
                          const float32_t pwmPeriod_usec,
                          const uint16_t numPWMTicksPerISRTick);


//! \brief     Sets the current scale factor in the hal
//! \param[in] handle      The hardware abstraction layer (HAL) handle
//! \param[in] current_sf  The current scale factor
static inline void HAL_setCurrentScaleFactor(HAL_Handle handle,const float32_t current_sf)
{
  HAL_Obj *obj = (HAL_Obj *)handle;


  obj->current_sf = current_sf;

  return;
} // end of HAL_setCurrentScaleFactor() function

//! \brief     Sets the voltage scale factor in the hal
//! \param[in] handle      The hardware abstraction layer (HAL) handle
//! \param[in] voltage_sf  The voltage scale factor
static inline void HAL_setVoltageScaleFactor(HAL_Handle handle,const float32_t voltage_sf)
{
  HAL_Obj *obj = (HAL_Obj *)handle;

  obj->voltage_sf = voltage_sf;

  return;
} // end of HAL_setVoltageScaleFactor() function


static inline uint16_t HAL_getTripFaults(HAL_Handle handle)
{
    HAL_Obj *obj = (HAL_Obj *)handle;
    uint16_t tripFault = 0;


    tripFault = (EPWM_getTripZoneFlagStatus(obj->pwmHandle[0])
               & (EPWM_TZ_FLAG_OST | EPWM_TZ_FLAG_DCAEVT1 | EPWM_TZ_FLAG_DCAEVT2))
             |(EPWM_getTripZoneFlagStatus(obj->pwmHandle[1])
               & (EPWM_TZ_FLAG_OST | EPWM_TZ_FLAG_DCAEVT1 | EPWM_TZ_FLAG_DCAEVT2))
             | (EPWM_getTripZoneFlagStatus(obj->pwmHandle[2])
               & (EPWM_TZ_FLAG_OST | EPWM_TZ_FLAG_DCAEVT1 | EPWM_TZ_FLAG_DCAEVT2));


    return(tripFault);
}

//! \brief     Set trigger point in the middle of the low side pulse
//! \param[in] handle    The hardware abstraction layer (HAL) handle
//! \param[in] pPWMData  The pointer to the PWM data
static inline void HAL_setOvmParams(HAL_Handle handle, HAL_PWMData_t *pPWMData)
{
    HAL_Obj *obj = (HAL_Obj *)handle;

    pPWMData->period = EPWM_getTimeBasePeriod(obj->pwmHandle[0]);
    pPWMData->deadband[0] = HAL_PM_PWM_DB_CNT;
    pPWMData->deadband[1] = HAL_PM_PWM_DB_CNT;
    pPWMData->deadband[2] = HAL_PM_PWM_DB_CNT;

    pPWMData->noiseWindow = HAL_PM_NOISE_WINDOW_SET;
}

//! \brief     Set trigger point in the middle of the low side pulse
//! \param[in] handle    The hardware abstraction layer (HAL) handle
//! \param[in] pPWMData  The pointer to the PWM data
//! \param[in] ignoreShunt  The low side shunt that should be ignored
//! \param[in] midVolShunt  The middle length of output voltage
static inline void HAL_setTrigger(HAL_Handle handle, HAL_PWMData_t *pPWMData,
                                  const SVGENCURRENT_IgnoreShunt_e ignoreShunt,
                                  const SVGENCURRENT_VmidShunt_e midVolShunt)
{
  HAL_Obj *obj = (HAL_Obj *)handle;

  uint16_t pwmCMPA[3];

  pwmCMPA[0] = EPWM_getCounterCompareValue(obj->pwmHandle[0], EPWM_COUNTER_COMPARE_A);
  pwmCMPA[1] = EPWM_getCounterCompareValue(obj->pwmHandle[1], EPWM_COUNTER_COMPARE_A);
  pwmCMPA[2] = EPWM_getCounterCompareValue(obj->pwmHandle[2], EPWM_COUNTER_COMPARE_A);

  int16_t pwmNum = 0;
  int16_t pwmSOCCMP = 1;

  if(ignoreShunt == SVGENCURRENT_USE_ALL)
  {
      pwmSOCCMP = 2;

      // write the PWM data value  for ADC trigger
      EPWM_setADCTriggerSource(obj->pwmHandle[0],
                               EPWM_SOC_A,
                               EPWM_SOC_TBCTR_D_CMPC);
  }
  else
  {
      if(midVolShunt == SVGENCURRENT_VMID_A)
      {
          pwmNum = 0;
      }
      else if(midVolShunt == SVGENCURRENT_VMID_B)
      {
          pwmNum = 1;
      }
      else      // (midVolShunt == SVGENCURRENT_VMID_B)
      {
          pwmNum = 2;
      }

      pwmSOCCMP = pwmCMPA[pwmNum] - pPWMData->deadband[pwmNum] - pPWMData->noiseWindow;

      if(pwmSOCCMP < 0)
      {
          pwmSOCCMP = -pwmSOCCMP;

          // write the PWM data value  for ADC trigger
          EPWM_setADCTriggerSource(obj->pwmHandle[0],
                                   EPWM_SOC_A,
                                   EPWM_SOC_TBCTR_U_CMPC);
      }
      else
      {
          // write the PWM data value  for ADC trigger
          EPWM_setADCTriggerSource(obj->pwmHandle[0],
                                   EPWM_SOC_A,
                                   EPWM_SOC_TBCTR_D_CMPC);
      }

  }

  //
  pPWMData->socCMP = pwmSOCCMP;

  // write the PWM data value  for ADC trigger
  EPWM_setCounterCompareValue(obj->pwmHandle[0],
                              EPWM_COUNTER_COMPARE_C,
                              pwmSOCCMP);
  return;
} // end of HAL_setTrigger() function


//! \brief     Writes PWM data to the PWM comparator & Period for motor control
//! \param[in] handle    The hardware abstraction layer (HAL) handle
//! \param[in] pPWMData  The pointer to the PWM data
static inline void
HAL_writePWMAllData(HAL_Handle handle, HAL_PWMData_t *pPWMData)
{
    HAL_Obj *obj = (HAL_Obj *)handle;
    uint16_t pwmCnt;

    for(pwmCnt=0;pwmCnt<3;pwmCnt++)
    {
        // compute the value
        float32_t period = (float32_t)pPWMData->period;

        float32_t V_pu = -pPWMData->Vabc_pu.value[pwmCnt];
        float32_t V_sat_pu = MATH_sat(V_pu, 0.5, -0.5);
        float32_t V_sat_dc_pu = V_sat_pu + 0.5;
        int16_t pwmValue  = (int16_t)(V_sat_dc_pu * period);

        // Save current CMP value for OVM
        pPWMData->cmpValue[pwmCnt] = pwmValue;

        // Write the Time-Base Period Register (TBPRD)
        EPWM_setTimeBasePeriod(obj->pwmHandle[pwmCnt], pPWMData->period);

        // write the PWM data value
        EPWM_setCounterCompareValue(obj->pwmHandle[pwmCnt],
                                    EPWM_COUNTER_COMPARE_A,
                                    pwmValue);
    }

    // write the PWM data value  for ADC trigger
    EPWM_setCounterCompareValue(obj->pwmHandle[0],
                                EPWM_COUNTER_COMPARE_C,
                                1);

    return;
} // end of HAL_writePWMData() function

#ifdef __cplusplus
}
#endif // extern "C"

//@}  // ingroup


#endif // end of _HAL_H_ definition

