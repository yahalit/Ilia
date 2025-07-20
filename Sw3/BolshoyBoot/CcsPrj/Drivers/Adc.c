/*
 * Adc.c
 *
 *  Created on: Aug 17, 2021
 *      Author: Yahali
 */
#include "..\Application\StructDef.h"

void  AdcSetMode(Uint16 adc, Uint16 resolution, Uint16 signalmode);

#define ADC_ADCA 0
#define ADC_ADCB 1
#define ADC_ADCC 2
#define ADC_ADCD 3
 //
//definitions for selecting ADC resolution
//
#define ADC_RESOLUTION_12BIT 0
#define ADC_RESOLUTION_16BIT 1
//
//definitions for selecting ADC signal mode
//(single-ended mode is only a valid mode for 12-bit resolution)
//
#define ADC_SIGNALMODE_SINGLE 0
#define ADC_SIGNALMODE_DIFFERENTIAL 1

// The following pointers to functions calibrate the ADC linearity.  Use this
// in the AdcSetMode(...) function only
#define CalAdcaINL (void   (*)(void))0x0703B4
#define CalAdcbINL (void   (*)(void))0x0703B2
#define CalAdccINL (void   (*)(void))0x0703B0
#define CalAdcdINL (void   (*)(void))0x0703AE

// The following pointer to a function call looks up the ADC offset trim for a
// given condition. Use this in the AdcSetMode(...) function only.
#define GetAdcOffsetTrimOTP (Uint16 (*)(Uint16 OTPoffset))0x0703AC


void ForceAdc(void)
{
    AdcaRegs.ADCSOCFRC1.all = 0xf ;
    AdcbRegs.ADCSOCFRC1.all = 0x3f ;
    AdccRegs.ADCSOCFRC1.all = 0x1f ;
}


/**
 * brief: Initilize the ADC converter
 *
 * The converter is initialized to 16 bits resolution.
 * All the channels convert in high priority (no round robin)
 * SOCs are manual, and each SOC triggers the entire ADC
 *
 */
void InitAdc(void)
{
    extern void InitAdcSpecific(volatile struct ADC_REGS *pAdc);
    short AcClocks = 119;
    //write configurations
    EALLOW;

    AdcaRegs.ADCCTL2.bit.PRESCALE = 6; //set ADCCLK divider to /4
    AdcbRegs.ADCCTL2.bit.PRESCALE = 6; //set ADCCLK divider to /4
    AdccRegs.ADCCTL2.bit.PRESCALE = 6; //set ADCCLK divider to /4
    AdcSetMode(ADC_ADCA, ADC_RESOLUTION_16BIT, ADC_SIGNALMODE_SINGLE);
    AdcSetMode(ADC_ADCB, ADC_RESOLUTION_16BIT, ADC_SIGNALMODE_SINGLE);
    AdcSetMode(ADC_ADCC, ADC_RESOLUTION_16BIT, ADC_SIGNALMODE_SINGLE);

    //Set pulse positions to late
    AdcaRegs.ADCCTL1.bit.INTPULSEPOS = 1;
    AdcbRegs.ADCCTL1.bit.INTPULSEPOS = 1;
    AdccRegs.ADCCTL1.bit.INTPULSEPOS = 1;

    //power up the ADCs
    AdcaRegs.ADCCTL1.bit.ADCPWDNZ = 1;
    AdcbRegs.ADCCTL1.bit.ADCPWDNZ = 1;
    AdccRegs.ADCCTL1.bit.ADCPWDNZ = 1;

    //delay for 1ms to allow ADC time to power up
    CpuTimer1Regs.TIM.all = 2000;
    while (CpuTimer1Regs.TIM.all > 1000)
        ;

    InitAdcSpecific(&AdcaRegs); // Initialize the Analog/Digital converter
    InitAdcSpecific(&AdcbRegs); // Initialize the Analog/Digital converter
    InitAdcSpecific(&AdccRegs); // Initialize the Analog/Digital converter

    AdcaRegs.ADCSOC0CTL.all = (2L << 15) + AcClocks;
    AdcaRegs.ADCSOC1CTL.all = (3L << 15) + AcClocks;
    AdcaRegs.ADCSOC2CTL.all = (4L << 15) + AcClocks;
    AdcaRegs.ADCSOC3CTL.all = (5L << 15) + AcClocks;

    AdcbRegs.ADCSOC0CTL.all = (0L << 15) + AcClocks;
    AdcbRegs.ADCSOC1CTL.all = (1L << 15) + AcClocks;
    AdcbRegs.ADCSOC2CTL.all = (2L << 15) + AcClocks;
    AdcbRegs.ADCSOC3CTL.all = (3L << 15) + AcClocks;
    AdcbRegs.ADCSOC4CTL.all = (4L << 15) + AcClocks;
    AdcbRegs.ADCSOC5CTL.all = (5L << 15) + AcClocks;

    AdccRegs.ADCSOC0CTL.all = (2L << 15) + AcClocks;
    AdccRegs.ADCSOC1CTL.all = (3L << 15) + AcClocks;
    AdccRegs.ADCSOC2CTL.all = (4L << 15) + AcClocks;
    AdccRegs.ADCSOC3CTL.all = (14L << 15) + AcClocks;
    AdccRegs.ADCSOC4CTL.all = (15L << 15) + AcClocks;

    AdcaRegs.ADCINTSEL1N2.all = 0; //No ints
    AdcaRegs.ADCINTSEL3N4.all = 0; //No ints
    AdcaRegs.ADCINTFLGCLR.bit.ADCINT1 = 0xf; //make sure all flag is cleared

    AdcbRegs.ADCINTSEL1N2.all = 0; //No ints
    AdcbRegs.ADCINTSEL3N4.all = 0; //No ints
    AdcbRegs.ADCINTFLGCLR.bit.ADCINT1 = 0xf; //make sure all flag is cleared

    AdccRegs.ADCINTSEL1N2.all = 0; //No ints
    AdccRegs.ADCINTSEL3N4.all = 0; //No ints
    AdccRegs.ADCINTFLGCLR.bit.ADCINT1 = 0xf; //make sure all flag is cleared

}

/*
 * brief: Initialize a single ADC block
 *
 * Software conversion will do 0-5, 14-15 channels, with 0.6usec window
 * as fit for 16 bit sample with 4 divider of ADC clock from sys clock
 */
void InitAdcSpecific(volatile struct ADC_REGS *pAdc)
{
    short AcClocks = 119;

    pAdc->ADCSOC0CTL.all = (0L << 15) + AcClocks;
    pAdc->ADCSOC1CTL.all = (1L << 15) + AcClocks;
    pAdc->ADCSOC2CTL.all = (2L << 15) + AcClocks;
    pAdc->ADCSOC3CTL.all = (3L << 15) + AcClocks;
    pAdc->ADCSOC4CTL.all = (4L << 15) + AcClocks;
    pAdc->ADCSOC5CTL.all = (5L << 15) + AcClocks;
    pAdc->ADCSOC14CTL.all = (14L << 15) + AcClocks;
    pAdc->ADCSOC15CTL.all = (15L << 15) + AcClocks;

    pAdc->ADCINTSEL1N2.all = 0; //No ints
    pAdc->ADCINTSEL3N4.all = 0; //No ints
    pAdc->ADCINTFLGCLR.bit.ADCINT1 = 0xf; //make sure all flag is cleared
}


/*
* Loads INL trim values from OTP into the trim registers of the specified ADC.
* Use only as part of AdcSetMode function, since linearity trim correction
* is needed for some modes.
*/
void CalAdcINL(Uint16 adc)
{
    switch(adc){
        case ADC_ADCA:
            if(0xFFFF != *((Uint16*)CalAdcaINL)){
                //trim function is programmed into OTP, so call it
                (*CalAdcaINL)();
            }
            else {
                //do nothing, no INL trim function populated
            }
            break;
        case ADC_ADCB:
            if(0xFFFF != *((Uint16*)CalAdcbINL)){
                //trim function is programmed into OTP, so call it
                (*CalAdcbINL)();
            }
            else {
                //do nothing, no INL trim function populated
            }
            break;
        case ADC_ADCC:
            if(0xFFFF != *((Uint16*)CalAdccINL)){
                //trim function is programmed into OTP, so call it
                (*CalAdccINL)();
            }
            else {
                //do nothing, no INL trim function populated
            }
            break;
        case ADC_ADCD:
            if(0xFFFF != *((Uint16*)CalAdcdINL)){
                //trim function is programmed into OTP, so call it
                (*CalAdcdINL)();
            }
            else {
                //do nothing, no INL trim function populated
            }
            break;
    }
}

/*
* Set the resolution and signalmode for a given ADC. This will ensure that
* the correct trim is loaded.
*/
void AdcSetMode(Uint16 adc, Uint16 resolution, Uint16 signalmode)
{
    Uint16 adcOffsetTrimOTPIndex; //index into OTP table of ADC offset trims
    Uint16 adcOffsetTrim; //temporary ADC offset trim

    //re-populate INL trim
    CalAdcINL(adc);

    if(0xFFFF != *((Uint16*)GetAdcOffsetTrimOTP)){
        //offset trim function is programmed into OTP, so call it

        //calculate the index into OTP table of offset trims and call
        //function to return the correct offset trim
        adcOffsetTrimOTPIndex = 4*adc + 2*resolution + 1*signalmode;
        adcOffsetTrim = (*GetAdcOffsetTrimOTP)(adcOffsetTrimOTPIndex);
    }
    else {
        //offset trim function is not populated, so set offset trim to 0
        adcOffsetTrim = 0;
    }

    //Apply the resolution and signalmode to the specified ADC.
    //Also apply the offset trim and, if needed, linearity trim correction.
    switch(adc){
        case ADC_ADCA:
            AdcaRegs.ADCCTL2.bit.RESOLUTION = resolution;
            AdcaRegs.ADCCTL2.bit.SIGNALMODE = signalmode;
            AdcaRegs.ADCOFFTRIM.all = adcOffsetTrim;
            if(ADC_RESOLUTION_12BIT == resolution){

                //12-bit linearity trim workaround
                AdcaRegs.ADCINLTRIM1 &= 0xFFFF0000;
                AdcaRegs.ADCINLTRIM2 &= 0xFFFF0000;
                AdcaRegs.ADCINLTRIM4 &= 0xFFFF0000;
                AdcaRegs.ADCINLTRIM5 &= 0xFFFF0000;
            }
        break;
        case ADC_ADCB:
            AdcbRegs.ADCCTL2.bit.RESOLUTION = resolution;
            AdcbRegs.ADCCTL2.bit.SIGNALMODE = signalmode;
            AdcbRegs.ADCOFFTRIM.all = adcOffsetTrim;
            if(ADC_RESOLUTION_12BIT == resolution){

                //12-bit linearity trim workaround
                AdcbRegs.ADCINLTRIM1 &= 0xFFFF0000;
                AdcbRegs.ADCINLTRIM2 &= 0xFFFF0000;
                AdcbRegs.ADCINLTRIM4 &= 0xFFFF0000;
                AdcbRegs.ADCINLTRIM5 &= 0xFFFF0000;
            }
        break;
        case ADC_ADCC:
            AdccRegs.ADCCTL2.bit.RESOLUTION = resolution;
            AdccRegs.ADCCTL2.bit.SIGNALMODE = signalmode;
            AdccRegs.ADCOFFTRIM.all = adcOffsetTrim;
            if(ADC_RESOLUTION_12BIT == resolution){

                //12-bit linearity trim workaround
                AdccRegs.ADCINLTRIM1 &= 0xFFFF0000;
                AdccRegs.ADCINLTRIM2 &= 0xFFFF0000;
                AdccRegs.ADCINLTRIM4 &= 0xFFFF0000;
                AdccRegs.ADCINLTRIM5 &= 0xFFFF0000;
            }
        break;
        case ADC_ADCD:
            AdcdRegs.ADCCTL2.bit.RESOLUTION = resolution;
            AdcdRegs.ADCCTL2.bit.SIGNALMODE = signalmode;
            AdcdRegs.ADCOFFTRIM.all = adcOffsetTrim;
            if(ADC_RESOLUTION_12BIT == resolution){

                //12-bit linearity trim workaround
                AdcdRegs.ADCINLTRIM1 &= 0xFFFF0000;
                AdcdRegs.ADCINLTRIM2 &= 0xFFFF0000;
                AdcdRegs.ADCINLTRIM4 &= 0xFFFF0000;
                AdcdRegs.ADCINLTRIM5 &= 0xFFFF0000;
            }
        break;
    }
}



