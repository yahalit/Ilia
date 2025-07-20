/*
 * PinMux.c
 *
 *  Created on: Sep 16, 2023
 *      Author: yahal
 */
#include "..\Application\BootStructDef.h"






#define NGP
void setupGpioCAN(void)
{
#ifndef EVAL_BOARD
#undef NGP
#define NGP 0
    GPIO_setPinConfig(GPIO_0_MCAN_RX);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_IN);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_ASYNC);

#undef NGP
#define NGP 1
    GPIO_setPinConfig(GPIO_1_MCAN_TX);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_IN);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_ASYNC);
#else
#undef NGP
#define NGP 4
    GPIO_setPinConfig(GPIO_4_MCAN_TX);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_IN);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_ASYNC);

#undef NGP
#define NGP 5
    GPIO_setPinConfig(GPIO_5_MCAN_RX);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_IN);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_ASYNC);
#endif // EVAL_BOARD
}

void setupGpio(void)
{
//    InitKuku() ;

    //Device_initGPIO();
#undef NGP
#define NGP 2
    HWREG( GPIODATA_BASE + GPIO_O_GPACLEAR) = 0b11111100 ;
    GPIO_setPinConfig(GPIO_2_EPWM2_A);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_SYNC);

#undef NGP
#define NGP 3
    GPIO_setPinConfig(GPIO_3_EPWM2_B);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_SYNC);

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
#endif // EVAL_BOARD

#undef NGP
#define NGP 6
    GPIO_setPinConfig(GPIO_6_EPWM4_A);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_SYNC);


#undef NGP
#define NGP 7
    GPIO_setPinConfig(GPIO_7_EPWM4_B);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_SYNC);

    HWREG( GPIODATA_BASE + GPIO_O_GPASET) = 0x31010000 ;

#undef NGP
#define NGP 16
    GPIO_setPinConfig(GPIO_16_SPIB_SOMI);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_IN);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_ASYNC);

#undef NGP
#define NGP 18
    GPIO_setPinConfig(GPIO_18_GPIO18); // Gyro data ready
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_IN);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_PULLUP);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_SYNC);

#undef NGP
#define NGP 24
    GPIO_setPinConfig(GPIO_24_SPIB_SIMO);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_ASYNC);

#undef NGP
#define NGP 29
    GPIO_setPinConfig(GPIO_29_SPIB_STE);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_ASYNC);

    HWREG( GPIODATA_BASE + GPIO_O_GPBSET) = 0x1 ;
#undef NGP
#define NGP 32
    GPIO_setPinConfig(GPIO_32_SPIB_CLK);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_ASYNC);

#undef NGP
#define NGP 33
    GPIO_setPinConfig(GPIO_33_GPIO33) ; //
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_IN);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_ASYNC);

#undef NGP
#define NGP 35
    GPIO_setPinConfig(GPIO_35_EQEP1_A);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_IN);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_6SAMPLE);

#undef NGP
#define NGP 37
    GPIO_setPinConfig(GPIO_37_EQEP1_B);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_IN);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_6SAMPLE);

}


void SetAdcMux(void)
{
    // configure the SOCs for drv8312kit_revD
    // IA-FB
    ADC_setupSOC(ADCA_BASE, ADC_SOC_NUMBER0, ADC_TRIGGER_EPWM2_SOCA,
                 ADC_CH_ADCIN9, ADC_SAMPLE_WINDOW);

    // IB-FB
    ADC_setupSOC(ADCB_BASE, ADC_SOC_NUMBER0, ADC_TRIGGER_EPWM2_SOCA,
                 ADC_CH_ADCIN1, ADC_SAMPLE_WINDOW);

    // IC-FB -
    ADC_setupSOC(ADCC_BASE, ADC_SOC_NUMBER0, ADC_TRIGGER_EPWM2_SOCA,
                 ADC_CH_ADCIN0, ADC_SAMPLE_WINDOW);

    // Bus current
    ADC_setupSOC(ADCA_BASE, ADC_SOC_NUMBER1, ADC_TRIGGER_EPWM2_SOCA,
                  ADC_CH_ADCIN0, ADC_SAMPLE_WINDOW);

    // STO
    ADC_setupSOC(ADCB_BASE, ADC_SOC_NUMBER1, ADC_TRIGGER_EPWM2_SOCA,
                  ADC_CH_ADCIN12, ADC_SAMPLE_WINDOW);

    // VBus
    ADC_setupSOC(ADCC_BASE, ADC_SOC_NUMBER1, ADC_TRIGGER_EPWM2_SOCA,
                  ADC_CH_ADCIN1 , ADC_SAMPLE_WINDOW);

    // POTREF
    ADC_setupSOC(ADCA_BASE, ADC_SOC_NUMBER2, ADC_TRIGGER_EPWM2_SOCA,
                  ADC_CH_ADCIN8, ADC_SAMPLE_WINDOW);

    // POT1
    ADC_setupSOC(ADCB_BASE, ADC_SOC_NUMBER2, ADC_TRIGGER_EPWM2_SOCA,
                  ADC_CH_ADCIN2, ADC_SAMPLE_WINDOW);

    // POT2
    ADC_setupSOC(ADCC_BASE, ADC_SOC_NUMBER2, ADC_TRIGGER_EPWM2_SOCA,
                  ADC_CH_ADCIN3, ADC_SAMPLE_WINDOW);


    // ID
    ADC_setupSOC(ADCB_BASE, ADC_SOC_NUMBER3, ADC_TRIGGER_EPWM2_SOCA,
                  ADC_CH_ADCIN9, ADC_SAMPLE_WINDOW);

    // Temperature
    ADC_setupSOC(ADCC_BASE, ADC_SOC_NUMBER3, ADC_TRIGGER_EPWM2_SOCA,
                  ADC_CH_ADCIN12, ADC_SAMPLE_WINDOW);
}

