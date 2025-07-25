//###########################################################################
//
// FILE:   adc.c
//
// TITLE:  C28x ADC driver.
//
//###########################################################################
// $TI Release: F2838x Support Library v2.00.00.02 $
// $Release Date: Fri May 24 03:44:36 CDT 2019 $
// $Copyright:
// Copyright (C) 2019 Texas Instruments Incorporated - http://www.ti.com/
//
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
//###########################################################################

#include "adc.h"

//
// The following macro calculates the INL trim location in OTP memory
// required to calibrate the ADC linearity.  Use this in the
// ADC_setMode() function only.
//
#define ADC_getINLTrimOTPLoc(offset) ((uint32_t *)(0x70128U + (0xC * offset)))

//
// This macro calculates the ADC offset trim location in OTP memory required
// to calibrate ADC offset. Use this in the ADC_setMode() function only.
//
#define ADC_getOffsetTrimOTPLoc(offset)     ((uint16_t *)(0x70158U + offset))

//
// TI-OTP key value expected to be programmed in trimmed device
//
#define TI_OTP_DEV_KEY                          (0x5A5AU)

//
// Macro to read the key value programmed in the device
//
#define TI_OTP_DEV_PRG_KEY                      (HWREGH(0x70238UL))

//*****************************************************************************
//
// ADC_setMode
//
//*****************************************************************************
void
ADC_setMode(uint32_t base, ADC_Resolution resolution,
            ADC_SignalMode signalMode)
{
    uint16_t offsetIndex = 0U, offsetTrim = 0U, i;
    uint32_t * inlTrimAddress;

    //
    // Check the arguments.
    //
    ASSERT(ADC_isBaseValid(base));

    //
    // Check for correct signal mode & resolution. In this device:
    // Differential signal conversions are supported in 16-bit only
    //
    if(signalMode == ADC_MODE_DIFFERENTIAL)
    {
        ASSERT(resolution == ADC_RESOLUTION_16BIT);
    }

    EALLOW;
    switch(base)
    {
        case ADCA_BASE:
            offsetIndex = (uint16_t)(0U);
            inlTrimAddress = ADC_getINLTrimOTPLoc(0U);
            break;
        case ADCB_BASE:
            offsetIndex = (uint16_t)(1U);
            inlTrimAddress = ADC_getINLTrimOTPLoc(1U);
            break;
        case ADCC_BASE:
            offsetIndex = (uint16_t)(2U);
            inlTrimAddress = ADC_getINLTrimOTPLoc(2U);
            break;
        case ADCD_BASE:
            offsetIndex = (uint16_t)(3U);
            inlTrimAddress = ADC_getINLTrimOTPLoc(3U);
            break;
        default:
            //
            // Invalid base address!
            //
            offsetIndex = (uint16_t)(0U);
            inlTrimAddress = ADC_getINLTrimOTPLoc(0U);
            break;
    }

    //
    // Get the offset trim value programmed into OTP
    //
    offsetIndex += (4U * ((resolution == ADC_RESOLUTION_16BIT) ? 1U : 0U));

    if(TI_OTP_DEV_PRG_KEY == TI_OTP_DEV_KEY)
    {
        offsetTrim = (*(uint16_t *)(ADC_getOffsetTrimOTPLoc(offsetIndex)));
        offsetTrim = (signalMode == ADC_MODE_SINGLE_ENDED) ?
                                       (offsetTrim >> 8):(offsetTrim & 0xFF);
    }
    else
    {
        offsetTrim = 0U;
    }

    //
    // Also apply the offset trim and, if needed, linearity trim correction.
    //
    HWREGH(base + ADC_O_OFFTRIM) = offsetTrim;

    //
    // Update INL trim values to ADC trim registers
    //
    if(TI_OTP_DEV_PRG_KEY == TI_OTP_DEV_KEY)
    {
        for(i = 0U; i < 6U; i++)
        {
            HWREG(base + ADC_O_INLTRIM1 + (i * 2)) = (*inlTrimAddress++);
        }
    }

    if(resolution == ADC_RESOLUTION_12BIT)
    {
        //
        // 12-bit linearity trim workaround
        //
        HWREG(base + ADC_O_INLTRIM1) &= 0xFFFF0000U;
        HWREG(base + ADC_O_INLTRIM2) &= 0xFFFF0000U;
        HWREG(base + ADC_O_INLTRIM4) &= 0xFFFF0000U;
        HWREG(base + ADC_O_INLTRIM5) &= 0xFFFF0000U;
    }

    //
    // Apply the resolution and signalMode to the specified ADC.
    //
    HWREGH(base + ADC_O_CTL2) = (HWREGH(base + ADC_O_CTL2) &
                                 ~(ADC_CTL2_RESOLUTION | ADC_CTL2_SIGNALMODE)) |
                                ((uint16_t)resolution | (uint16_t)signalMode);
    EDIS;
}
//*****************************************************************************
//
// ADC_setPPBTripLimits
//
//*****************************************************************************
void
ADC_setPPBTripLimits(uint32_t base, ADC_PPBNumber ppbNumber,
                     int32_t tripHiLimit, int32_t tripLoLimit)
{
    uint32_t ppbHiOffset;
    uint32_t ppbLoOffset;

    //
    // Check the arguments.
    //
    ASSERT(ADC_isBaseValid(base));
    ASSERT((tripHiLimit <= 65535) && (tripHiLimit >= -65536));
    ASSERT((tripLoLimit <= 65535) && (tripLoLimit >= -65536));

    //
    // Get the offset to the appropriate trip limit registers.
    //
    ppbHiOffset = (ADC_PPBxTRIPHI_STEP * (uint32_t)ppbNumber) +
                  ADC_O_PPB1TRIPHI;
    ppbLoOffset = (ADC_PPBxTRIPLO_STEP * (uint32_t)ppbNumber) +
                  ADC_O_PPB1TRIPLO;

    EALLOW;

    //
    // Set the trip high limit.
    //
    HWREG(base + ppbHiOffset) =
        (HWREG(base + ppbHiOffset) & ~ADC_PPBTRIP_MASK) |
        ((uint32_t)tripHiLimit & ADC_PPBTRIP_MASK);

    //
    // Set the trip low limit.
    //
    HWREG(base + ppbLoOffset) =
        (HWREG(base + ppbLoOffset) & ~ADC_PPBTRIP_MASK) |
        ((uint32_t)tripLoLimit & ADC_PPBTRIP_MASK);

    EDIS;
}
