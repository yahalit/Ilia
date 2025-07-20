/*
 * Adc.c
 *
 *  Created on: May 18, 2023
 *      Author: yahal
 */

#include "..\Application\BootStructDef.h"


#ifdef ON_BOARD_BRAKE
void setupDac(void)
{
    EALLOW ;
//    HWREGH(DACA_BASE + DAC_O_CTL) = 3 ; // Gain = 2 ;
//    HWREGH(DACA_BASE + DAC_O_VALA) = 1 ;
//    HWREGH(DACA_BASE + DAC_O_VALS) = 1 ;
//    HWREGH(DACA_BASE + DAC_O_OUTEN) = 1 ;

    HWREGH(DACB_BASE + DAC_O_CTL) = 3 ; // Gain = 2 ;
    HWREGH(DACB_BASE + DAC_O_VALA) = 4090 ; // Disable brake
    HWREGH(DACB_BASE + DAC_O_VALS) = 4090 ;
    HWREGH(DACB_BASE + DAC_O_OUTEN) = 1 ;


    EDIS ;
}

#endif 


void SetupADCs()
{
    float sum , sumT ;
    short unsigned cnt ;
    SysCtl_delay(100U);
    ADC_setVREF(ADCA_BASE, ADC_REFERENCE_INTERNAL, ADC_REFERENCE_3_3V);
    ADC_setVREF(ADCB_BASE, ADC_REFERENCE_INTERNAL, ADC_REFERENCE_3_3V);
    ADC_setVREF(ADCC_BASE, ADC_REFERENCE_INTERNAL, ADC_REFERENCE_3_3V);
    SysCtl_delay(100U);

    // Set main clock scaling factor (50MHz max clock for the ADC module)
    ADC_setPrescaler(ADCA_BASE, ADC_CLK_DIV_2_0);
    ADC_setPrescaler(ADCB_BASE, ADC_CLK_DIV_2_0);
    ADC_setPrescaler(ADCC_BASE, ADC_CLK_DIV_2_0);

    // set the ADC interrupt pulse generation to end of conversion
    ADC_setInterruptPulseMode(ADCA_BASE, ADC_PULSE_END_OF_CONV);
    ADC_setInterruptPulseMode(ADCB_BASE, ADC_PULSE_END_OF_CONV);
    ADC_setInterruptPulseMode(ADCC_BASE, ADC_PULSE_END_OF_CONV);

    // enable the ADCs
    ADC_enableConverter(ADCA_BASE);
    ADC_enableConverter(ADCB_BASE);
    ADC_enableConverter(ADCC_BASE);

    // set priority of SOCs
    ADC_setSOCPriority(ADCA_BASE, ADC_PRI_ALL_HIPRI);
    ADC_setSOCPriority(ADCB_BASE, ADC_PRI_ALL_HIPRI);
    ADC_setSOCPriority(ADCC_BASE, ADC_PRI_ALL_HIPRI);

    // delay to allow ADCs to power up
    SysCtl_delay(1000U);

    // configure the interrupt sources    //RA3
    ADC_setInterruptSource(ADCA_BASE, ADC_INT_NUMBER1, ADC_SOC_NUMBER2);
    ADC_setInterruptSource(ADCB_BASE, ADC_INT_NUMBER1, ADC_SOC_NUMBER0); // Immediate current availability

    SetAdcMux() ;


    // Before interrupts are on, force SOC to get the identity voltage
    WaitUsec(200000U);
    sum = 0 ;
    sumT = 0 ;
    for (cnt = 0 ; cnt < 50 ; cnt++ )
    {
        // TriggerC5
            HWREGH(ADCC_BASE + ADC_O_SOCFRC1) = (1<<5) ; // Force SOC3
        // TriggerB3
            HWREGH(ADCB_BASE + ADC_O_SOCFRC1) = 8 ; // Force SOC3
        // Wait completion
        while ( (HWREGH(ADCB_BASE + ADC_O_CTL1) & (1<<13)) || (HWREGH(ADCB_BASE + ADC_O_SOCFLG1) & (1<<3)) ) ;
        // Summarize
        sum  += HWREGH(ADCBRESULT_BASE+ADC_O_RESULT3) * 8.0566e-04f;
        sumT += HWREGH(ADCCRESULT_BASE+ADC_O_RESULT5) * 8.0566e-04f;
    }
    SysState.IdPinVolts = sum * 0.02f ;
    sumT *= 0.02f ;



    return;
} // end of HAL_setupADCs() function

