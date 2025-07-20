/*
 * AdcDrv.c
 *
 *  Created on: Jun 25, 2023
 *      Author: yahal
 */
#include "..\Application\StructDef.h"


void setupDac(void)
{
    EALLOW ;

    HWREGH(DACA_BASE + DAC_O_CTL) = 3 ; // Brake control
    HWREGH(DACA_BASE + DAC_O_VALA) = 4090 ;
    HWREGH(DACA_BASE + DAC_O_VALS) = 4090 ;
    HWREGH(DACA_BASE + DAC_O_OUTEN) = 1 ;

    // Brake enable
    HWREGH(DACB_BASE + DAC_O_CTL) = 3 ; // Gain = 2 ;
    HWREGH(DACB_BASE + DAC_O_VALA) = 1 ; // Disable brake
    HWREGH(DACB_BASE + DAC_O_VALS) = 1 ;
    HWREGH(DACB_BASE + DAC_O_OUTEN) = 1 ;

    EDIS ;
}


short EnableBrake(short ena)
{
    short unsigned val = 0 ;
    if ( ena )
    {
        val = 4090 ;
    }
    HWREGH(DACB_BASE + DAC_O_VALA) = val ; // Disable brake
    HWREGH(DACB_BASE + DAC_O_VALS) = val ;
    return 0 ;
}



/*
 * Decide the brake voltage by substituting to DAC
 * When value high enough (here 4090) is taken brake supply turns off
 */
short OutBrakeVolts( float volts  )
{
    short x = (short) ( 3.947e+03f -130.4830f * __fmin( __fmax( volts, 6.0f) , 28.0f ) ) ;
    if ( x > 0x780 )
    {
        HWREGH(DACA_BASE + DAC_O_VALA) = 4090 ; // Disable brake
        HWREGH(DACA_BASE + DAC_O_VALS) = 4090 ;
        EnableBrake(0);
        return 0 ;
    }
    EnableBrake(1);
    x = __max( x , 0x180) ;
    HWREGH(DACA_BASE + DAC_O_VALA) = (short unsigned) x ; // Disable brake
    HWREGH(DACA_BASE + DAC_O_VALS) = (short unsigned) x ;
    return 1 ;
}



void SetupADCs()
{
    float sum , value ;
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

    // Rail sensor
    ADC_setupSOC(ADCA_BASE, ADC_SOC_NUMBER0, ADC_TRIGGER_EPWM1_SOCA,
                  ADC_CH_ADCIN7 , ADC_SAMPLE_WINDOW);

    // POTREF
    ADC_setupSOC(ADCB_BASE, ADC_SOC_NUMBER0, ADC_TRIGGER_EPWM1_SOCA,
                  ADC_CH_ADCIN10, ADC_SAMPLE_WINDOW);

    // POT1
    ADC_setupSOC(ADCC_BASE, ADC_SOC_NUMBER0, ADC_TRIGGER_EPWM1_SOCA,
                  ADC_CH_ADCIN1, ADC_SAMPLE_WINDOW);


    // ID
    ADC_setupSOC(ADCA_BASE, ADC_SOC_NUMBER1, ADC_TRIGGER_EPWM1_SOCA,
                  ADC_CH_ADCIN2, ADC_SAMPLE_WINDOW);

    // Brake voltage
    ADC_setupSOC(ADCB_BASE, ADC_SOC_NUMBER1, ADC_TRIGGER_EPWM1_SOCA,
                  ADC_CH_ADCIN9, ADC_SAMPLE_WINDOW);

    // delay to allow ADCs to power up
    WaitUsec(200000U);

    // Before interrupts are on, force SOC to get the identity voltage
    sum = 0 ;
    for (cnt = 0 ; cnt < 50 ; cnt++ )
    {
    // TriggerB3
        HWREGH(ADCA_BASE + ADC_O_SOCFRC1) = 2 ; // Force SOC1
        // Wait completion
        while ( (HWREGH(ADCA_BASE + ADC_O_CTL1) & (1<<13)) || (HWREGH(ADCA_BASE + ADC_O_SOCFLG1) & (1<<1)) ) ;
        // Summarize
        value = HWREGH(ADCARESULT_BASE+ADC_O_RESULT1) * 8.0566e-04f;
        sum += value ;
    }
    SysState.IdPinVolts = sum * 0.02f ;

    // The voltage should be 0.5 * 3.3 = 1.65 for R . 1.1V for left
    //if ( (SysState.IdPinVolts - 1.8f ) * (SysState.IdPinVolts - 1.5f ) < 0 )
    if ( ProjId == PROJ_TYPE_WH_INTFC_R )
    {
        CanIdLocal = ID_LOCAL_RIGHT ;
        CanIdSt = ID_STEER_RIGHT ;
        CanIdWh = ID_WH_RIGHT    ;
        //ProjId = PROJ_TYPE_WH_INTFC_R ;
    }
    else
    {
        //if ( (SysState.IdPinVolts - 1.25f ) * (SysState.IdPinVolts - 0.95f ) < 0 )
        if (ProjId == PROJ_TYPE_WH_INTFC_L  )
        {
            CanIdLocal = ID_LOCAL_LEFT ;
            CanIdSt = ID_STEER_LEFT ;
            CanIdWh = ID_WH_LEFT    ;
            //ProjId = PROJ_TYPE_WH_INTFC_L ;
        }
        else
        {
            CanIdLocal = 4 ;
            CanIdSt = 2 ;
            CanIdWh = 1 ;
        }
    }
    SysState.AxisState[EA_Wheel].SlaveId = CanIdWh ;
    SysState.AxisState[EA_Steering].SlaveId = CanIdSt ;
    SysState.AxisState[EA_Wheel].ExpectedTag = EA_Wheel+1 ;
    SysState.AxisState[EA_Steering].ExpectedTag = EA_Steering+1 ;

    SysState.AxisState[EA_Wheel].pCanOutQueue = &CanWheelOutQueue  ;
    SysState.AxisState[EA_Steering].pCanOutQueue = &CanSteerOutQueue  ;
    return;
} // end of HAL_setupADCs() function
