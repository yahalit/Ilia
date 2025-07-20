/*
 * Adc.c
 *
 *  Created on: May 18, 2023
 *      Author: yahal
 */

#include "..\Application\StructDef.h"


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

    ClaControlPars.Vdc2Bit2Volt = VDC_2_BIT_VOLTS_R2 ;


    SetAxisByIdVolts() ;

//    if (ProjId >= PROJ_TYPE_LAST)
//    {
//        ProjId = PROJ_TYPE_UNDEFINED ;
//    }
//    CanId = ProjSpecificData[ProjId].CanId ;

    return;
} // end of HAL_setupADCs() function


SingleCmpss(uint32_t base, short unsigned ThLow , short unsigned ThHigh)
{
    // Enable CMPSS and configure the negative input signal to come from the DAC
    CMPSS_enableModule(base);

    // NEG signal from DAC for COMP-H
    CMPSS_configHighComparator(base, CMPSS_INSRC_DAC);

    // NEG signal from DAC for COMP-L
    CMPSS_configLowComparator(base, CMPSS_INSRC_DAC);

    // Configure the output signals. Both CTRIPH and CTRIPOUTH will be fed by
    // the asynchronous comparator output.
    // Dig filter output ==> CTRIPH, Dig filter output ==> CTRIPOUTH
    CMPSS_configOutputsHigh(base,
                            CMPSS_TRIP_FILTER |
                            CMPSS_TRIPOUT_FILTER);

    // Dig filter output ==> CTRIPL, Dig filter output ==> CTRIPOUTL
    CMPSS_configOutputsLow(base,
                           CMPSS_TRIP_FILTER |
                           CMPSS_TRIPOUT_FILTER |
                           CMPSS_INV_INVERTED);

    // Configure digital filter. For this example, the maximum values will be
    // used for the clock prescale, sample window size, and threshold.
    CMPSS_configFilterHigh(base, 2 , 32, 28);
    CMPSS_initFilterHigh(base);

    // Initialize the filter logic and start filtering
    CMPSS_configFilterLow(base, 2, 32, 28);
    CMPSS_initFilterLow(base);

    // Set up COMPHYSCTL register
    // COMP hysteresis set to typical value
    CMPSS_setHysteresis(base, 1);

    // Use VDDA as the reference for the DAC and set DAC value to midpoint for
    // arbitrary reference
    CMPSS_configDAC(base,CMPSS_DACREF_VDDA | CMPSS_DACVAL_SYSCLK | CMPSS_DACSRC_SHDW);

    // Set DAC-H to allowed MAX +ve current
    CMPSS_setDACValueHigh(base, ThHigh);

    // Set DAC-L to allowed MAX -ve current
    CMPSS_setDACValueLow(base, ThLow);

    // Clear any high comparator digital filter output latch
    CMPSS_clearFilterLatchHigh(base);

    // Clear any low comparator digital filter output latch
    CMPSS_clearFilterLatchLow(base);

}

void setupCMPSSs(void)
{

    // Refer to the Table 9-2 in Chapter 9 of TMS320F28004x
    // Technical Reference Manual (SPRUI33B), to configure the ePWM X-Bar

    // CMP0 = A9 (current) , CMP2 (B1) current , CMP3 = Short , CMP4 = current



    ASysCtl_selectCMPHPMux(ASYSCTL_CMPHPMUX_SELECT_VB, VB_CMPHP_MUX);
    ASysCtl_selectCMPLPMux(ASYSCTL_CMPLPMUX_SELECT_VB, VB_CMPLP_MUX);

    ASysCtl_selectCMPHPMux(ASYSCTL_CMPHPMUX_SELECT_ISC, ISC_CMPHP_MUX);
    ASysCtl_selectCMPLPMux(ASYSCTL_CMPLPMUX_SELECT_ISC, ISC_CMPLP_MUX);

    SingleCmpss(CMPSS_VBUS_BASE , (short unsigned)(ControlPars.AbsoluteUndervoltage / ClaControlPars.Vdc2Bit2Volt ) ,(short unsigned)(ControlPars.AbsoluteOvervoltage / ClaControlPars.Vdc2Bit2Volt));
    SingleCmpss(CMPSS_BUSCUR_BASE,100, (short unsigned)(ControlPars.DcShortCitcuitTripVolts * VOLT_2_ADC) );

    // Next
    // CMPSS2.High: Mux 2.0
    // CMPSS2.Lo  : Mux 3.0
    // CMPSS3.High: Mux 4.0
    // EPWM XBAR must define trip 4/5
    EALLOW ;
    HWREG(EPWMXBAR_BASE + XBAR_O_TRIP4MUX0TO15CFG) = 0 ;
    HWREG(EPWMXBAR_BASE + XBAR_O_TRIP5MUX0TO15CFG) = 0 ;
    HWREG(EPWMXBAR_BASE + XBAR_O_TRIP4MUXENABLE) = 0xc ;
    HWREG(EPWMXBAR_BASE + XBAR_O_TRIP5MUXENABLE) = 0x10 ;
    HWREGH(EPWMXBAR_BASE + XBAR_O_TRIPOUTINV) = 0 ;



    EDIS ;
    return;
}  

