/*
 * PinMux.c
 *
 *  Created on: Sep 16, 2023
 *      Author: yahal
 */

#include "..\Application\StructDef.h"


#define FSI_FILTER GPIO_QUAL_6SAMPLE


//    GPIO_QUAL_3SAMPLE,                  //!< Qualified with 3 samples
//   GPIO_QUAL_6SAMPLE,                  //!< Qualified with 6 samples


void setupGpio(void)
{
//    InitKuku() ;

    //Device_initGPIO();
    HWREG( GPIODATA_BASE + GPIO_O_GPACLEAR) = 0b11111011 ;

#undef NGP
#define NGP 0
    GPIO_setPinConfig(GPIO_0_EPWM1_A);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_ASYNC);

#undef NGP
#define NGP 1
    GPIO_setPinConfig(GPIO_1_EPWM1_B);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_IN);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_ASYNC);
#undef NGP

#define NGP 2 // Unused
    GPIO_setPinConfig(GPIO_2_GPIO2);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_SYNC);

#undef NGP
#define NGP 3
    GPIO_setPinConfig(GPIO_3_FSIRXA_D0);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, FSI_FILTER);

#ifndef EVAL_BOARD
#undef NGP
#define NGP 4
    GPIO_setPinConfig(GPIO_4_EPWM3_A);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_SYNC);

#undef NGP
#define NGP 5
    GPIO_setPinConfig(GPIO_5_EPWM3_B);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_SYNC);
#endif

#undef NGP
#define NGP 6
    GPIO_setPinConfig(GPIO_6_FSITXA_D0);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_SYNC);


#undef NGP
#define NGP 7
    GPIO_setPinConfig(GPIO_7_FSITXA_CLK);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_SYNC);

    HWREG( GPIODATA_BASE + GPIO_O_GPASET) = 0x31010000 ;

#undef NGP
#define NGP 16
    GPIO_setPinConfig(GPIO_16_EPWM5_A);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_IN);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_ASYNC);

// PIN 18 has different functions for wheel/steering
#undef NGP
#define NGP 18
    if (SysState.AxisSelector == FSI_TAG_FOR_WHEEL)
    {
         GPIO_setPinConfig(GPIO_18_EPWM6_A);
    }
    else
    {
         GPIO_setPinConfig(GPIO_18_GPIO18);       // Sync in
    }
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_IN);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_PULLUP);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_3SAMPLE);

// This is an unused output, for signaling SW events
#undef NGP
#define NGP 24
    GPIO_setPinConfig(GPIO_24_GPIO24);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_ASYNC);

#undef NGP
#define NGP 28
    GPIO_setPinConfig(GPIO_28_GPIO28) ; // GPIO_28_LINA_TX);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_IN);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_ASYNC);

#undef NGP
#define NGP 29
    GPIO_setPinConfig(GPIO_29_LINA_RX);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_ASYNC);

    HWREG( GPIODATA_BASE + GPIO_O_GPBSET) = 0x1 ;
#undef NGP

#define NGP 32
    GPIO_setPinConfig(GPIO_32_LINA_TX);

    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_ASYNC);

#undef NGP
#define NGP 33
    GPIO_setPinConfig(GPIO_33_FSIRXA_CLK) ; // GPIO_33_LINA_RX);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, FSI_FILTER);

#undef NGP
#define NGP 35
    GPIO_setPinConfig(GPIO_35_EPWM5_B);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_IN);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_6SAMPLE);

#undef NGP
#define NGP 37
    GPIO_setPinConfig(GPIO_37_GPIO37);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_IN);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_6SAMPLE);

}

void  SetAdcMux(void)
{
    // configure the SOCs for drv8312kit_revD
    // IA-FB: A.0
    ADC_setupSOC(ADCA_BASE, ADC_SOC_NUMBER0, ADC_TRIGGER_EPWM5_SOCA,
                 ADC_CH_ADCIN9, ADC_SAMPLE_WINDOW);

    // IB-FB:  B.0
    ADC_setupSOC(ADCB_BASE, ADC_SOC_NUMBER0, ADC_TRIGGER_EPWM5_SOCA,
                 ADC_CH_ADCIN1, ADC_SAMPLE_WINDOW);

    // IC-FB:  C.0 -
    ADC_setupSOC(ADCC_BASE, ADC_SOC_NUMBER0, ADC_TRIGGER_EPWM5_SOCA,
                 ADC_CH_ADCIN0, ADC_SAMPLE_WINDOW);

    // Bus current: A.1
    ADC_setupSOC(ADCA_BASE, ADC_SOC_NUMBER1, ADC_TRIGGER_EPWM5_SOCA,
                  ADC_CH_ADCIN0, ADC_SAMPLE_WINDOW);

    // STO: B.1
    ADC_setupSOC(ADCB_BASE, ADC_SOC_NUMBER1, ADC_TRIGGER_EPWM5_SOCA,
                  ADC_CH_ADCIN12, ADC_SAMPLE_WINDOW);

    // VBus C.1
    ADC_setupSOC(ADCC_BASE, ADC_SOC_NUMBER1, ADC_TRIGGER_EPWM5_SOCA,
                  ADC_CH_ADCIN1 , ADC_SAMPLE_WINDOW);

    // Bus current: A.2 , repeated just to have for now conversion at SOC2 for neck compatibility 
    ADC_setupSOC(ADCA_BASE, ADC_SOC_NUMBER2, ADC_TRIGGER_EPWM5_SOCA,
                  ADC_CH_ADCIN0, ADC_SAMPLE_WINDOW);

    // ID B.3
    ADC_setupSOC(ADCB_BASE, ADC_SOC_NUMBER3, ADC_TRIGGER_EPWM5_SOCA,
                  ADC_CH_ADCIN9, ADC_SAMPLE_WINDOW);

    // Temperature: C.5
    // Sensor outputs 500mV at 0c + 10mV/c. As robot works -30 to 140 it is 200mV to 1.9V
    ADC_setupSOC(ADCC_BASE, ADC_SOC_NUMBER3, ADC_TRIGGER_EPWM5_SOCA,
                  ADC_CH_ADCIN5, ADC_SAMPLE_WINDOW);

}


void SetAxisByIdVolts(void)
{
    ProjId = PROJ_TYPE_ERROR ; // Default
    if ( (SysState.IdPinVolts - 1.8f ) * (SysState.IdPinVolts - 1.5f ) < 0 )
    {
        SysState.AxisSelector = FSI_TAG_FOR_WHEEL;
        ProjId = PROJ_TYPE_WHEEL_R ;
    }
    else
    {
        if ( (SysState.IdPinVolts - 1.25f ) * (SysState.IdPinVolts - 0.95f ) < 0 )
        {
            SysState.AxisSelector = FSI_TAG_FOR_STEER;
            ProjId = PROJ_TYPE_STEERING_R ;
        }
        else
        {
            SysState.AxisSelector = PROJ_TYPE_UNDEFINED;
        }
    }
    SysState.TagAndUser = SysState.AxisSelector ;
}


