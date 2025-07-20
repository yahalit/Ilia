/*
 * SysControl.c
 *
 *  Created on: Aug 10, 2021
 *      Author: Yahali
 */


// TI File $Revision: /main/7 $
// Checkin $Date: September 20, 2007   13:30:31 $
//###########################################################################
//
// FILE:   DSP2837xS_SysCtrl.c
//
// TITLE:  F2837xS Device System Control Initialization & Support Functions.
//
// DESCRIPTION:
//
//         Example initialization of system resources.
//
//###########################################################################
// $TI Release: DSP2833x/DSP2823x Header Files V1.20 $
// $Release Date: August 1, 2008 $
//###########################################################################


//#include "DSP2833x_Device.h"     // Headerfile Include File
//#include "DSP2833x_Examples.h"   // Examples Include File
//#include "..\SysLowLevel.h"
#include "F28x_DeviceConfig.h"

#define CPU_TYPE            DEV_CPU_MODEL
extern void ADC_cal();


void DisableDog(void);
void KickDog(void);

short WatchDogKickPermission;

// Functions that will be run from RAM need to be assigned to
// a different section.  This section will then be mapped to a load and
// run address using the linker cmd file.

#if defined(__TI_COMPILER_VERSION__)  &&  __TI_COMPILER_VERSION__ >= 15009000
#define RAF_FUNC_SEC    ".TI.ramfunc"
#endif
#pragma CODE_SECTION(InitFlash_Bank0, RAF_FUNC_SEC);
#pragma CODE_SECTION(InitFlash, RAF_FUNC_SEC);
#if CPU_TYPE == 283371
#pragma CODE_SECTION(InitFlash_Bank1, RAF_FUNC_SEC);
#endif
#pragma CODE_SECTION(FlashOff_Bank0, RAF_FUNC_SEC);
#if CPU_TYPE == 283371
#pragma CODE_SECTION(FlashOff_Bank1, RAF_FUNC_SEC);
#endif


//---------------------------------------------------------------------------
// Example: InitFlash:
//---------------------------------------------------------------------------
// This function initializes the Flash Control registers

//                   CAUTION
// This function MUST be executed out of RAM. Executing it
// out of OTP/Flash will yield unpredictable results


//
// InitFlash_Bank0 - This function initializes the Flash Control registers for
//                   Bank 0.
//
//      *CAUTION*
// This function MUST be executed out of RAM. Executing it out of OTP/Flash
// will yield unpredictable results.
//
#ifdef __cplusplus
    #ifdef __TI_COMPILER_VERSION__
        #if __TI_COMPILER_VERSION__ >= 15009000
            #pragma CODE_SECTION(".TI.ramfunc");
        #endif
    #endif
#endif
void InitFlash_Bank0(void)
{
    EALLOW;

    //
    // Set VREADST to the proper value for the flash banks to power up
    // properly. This sets the bank power up delay.
    //
#if CPU_TYPE == 283882
    //Flash0CtrlRegs.FBAC.bit.BAGP = ?;
#else
    Flash0CtrlRegs.FBAC.bit.VREADST = 0x14;
#endif
    //
    // At reset bank and pump are in sleep. A Flash access will power up the
    // bank and pump automatically.
    //
    // After a Flash access, bank and pump go to low power mode (configurable
    // in FBFALLBACK/FPAC1 registers) if there is no further access to flash.
    //
    // Power up Flash bank and pump. This also sets the fall back mode of
    // flash and pump as active.
    //
    Flash0CtrlRegs.FPAC1.bit.PMPPWR = 0x1;
    Flash0CtrlRegs.FBFALLBACK.bit.BNKPWR0 = 0x3;

    //
    // Disable Cache and prefetch mechanism before changing wait states
    //
    Flash0CtrlRegs.FRD_INTF_CTRL.bit.DATA_CACHE_EN = 0;
    Flash0CtrlRegs.FRD_INTF_CTRL.bit.PREFETCH_EN = 0;

    //
    // Set waitstates according to frequency
    //
    //      *CAUTION*
    // Minimum waitstates required for the flash operating at a given CPU rate
    // must be characterized by TI. Refer to the datasheet for the latest
    // information.
    //
//    #if CPU_FRQ_200MHZ
    Flash0CtrlRegs.FRDCNTL.bit.RWAIT = 0x3;
//    #endif

//    #if CPU_FRQ_150MHZ
//    Flash0CtrlRegs.FRDCNTL.bit.RWAIT = 0x2;
//    #endif

//    #if CPU_FRQ_120MHZ
//    Flash0CtrlRegs.FRDCNTL.bit.RWAIT = 0x2;
//    #endif

    //
    // Enable Cache and prefetch mechanism to improve performance of code
    // executed from Flash.
    //
    Flash0CtrlRegs.FRD_INTF_CTRL.bit.DATA_CACHE_EN = 1;
    Flash0CtrlRegs.FRD_INTF_CTRL.bit.PREFETCH_EN = 1;

    //
    // At reset, ECC is enabled. If it is disabled by application software and
    // if application again wants to enable ECC.
    //
    Flash0EccRegs.ECC_ENABLE.bit.ENABLE = 0xA;

    EDIS;

    //
    // Force a pipeline flush to ensure that the write to the last register
    // configured occurs before returning.
    //
    __asm(" RPT #7 || NOP");
}



//
// FlashOff_Bank0 - This function powers down the flash
//
//      *CAUTION*
// This function MUST be executed out of RAM. Executing it out of OTP/Flash
// will yield unpredictable results. Also you must seize the flash pump in
// order to power it down.
//
#ifdef __cplusplus
    #ifdef __TI_COMPILER_VERSION__
        #if __TI_COMPILER_VERSION__ >= 15009000
            #pragma CODE_SECTION(".TI.ramfunc");
        #endif
    #endif
#endif
void FlashOff_Bank0(void)
{
    EALLOW;

    //
    // Set VREADST to the proper value for the flash banks to power up properly
    //
#if CPU_TYPE == 283882
    //Flash0CtrlRegs.FBAC.bit.BAGP = 0;
#else
    Flash0CtrlRegs.FBAC.bit.VREADST = 0x14;
#endif
    //
    // Power down bank
    //
    Flash0CtrlRegs.FBFALLBACK.bit.BNKPWR0 = 0;

    //
    // Power down pump
    //
    Flash0CtrlRegs.FPAC1.bit.PMPPWR = 0;

    EDIS;
}




#if CPU_TYPE == 283371
void InitFlash(void)
{

    InitFlash_Bank0();
    InitFlash_Bank1();
}
#elif CPU_TYPE == 283882
void InitFlash(void)
{
    Flash_initModule(FLASH0CTRL_BASE, FLASH0ECC_BASE, 3);
}
#elif CPU_TYPE == 283392
void InitFlash(void)
{
    EALLOW;

    //
    // Set VREADST to the proper value for the flash banks to power up
    // properly. This sets the bank power up delay.
    //
    Flash0CtrlRegs.FBAC.bit.VREADST = 0x14;

    //
    // At reset bank and pump are in sleep. A Flash access will power up the
    // bank and pump automatically.
    //
    // After a Flash access, bank and pump go to low power mode (configurable
    // in FBFALLBACK/FPAC1 registers) if there is no further access to flash.
    //
    // Power up Flash bank and pump. This also sets the fall back mode of
    // flash and pump as active.
    //
    Flash0CtrlRegs.FPAC1.bit.PMPPWR = 0x1;
    Flash0CtrlRegs.FBFALLBACK.bit.BNKPWR0 = 0x3;

    //
    // Disable Cache and prefetch mechanism before changing wait states
    //
    Flash0CtrlRegs.FRD_INTF_CTRL.bit.DATA_CACHE_EN = 0;
    Flash0CtrlRegs.FRD_INTF_CTRL.bit.PREFETCH_EN = 0;

    //
    // Set waitstates according to frequency
    //
    //      *CAUTION*
    // Minimum waitstates required for the flash operating at a given CPU rate
    // must be characterized by TI. Refer to the datasheet for the latest
    // information.
    //
    //#if CPU_FRQ_200MHZ
    Flash0CtrlRegs.FRDCNTL.bit.RWAIT = 0x3;
    //#endif

    //#if CPU_FRQ_150MHZ
    //Flash0CtrlRegs.FRDCNTL.bit.RWAIT = 0x2;
    //#endif

    //#if CPU_FRQ_120MHZ
    //Flash0CtrlRegs.FRDCNTL.bit.RWAIT = 0x2;
    //#endif

    //
    // Enable Cache and prefetch mechanism to improve performance of code
    // executed from Flash.
    //
    Flash0CtrlRegs.FRD_INTF_CTRL.bit.DATA_CACHE_EN = 1;
    Flash0CtrlRegs.FRD_INTF_CTRL.bit.PREFETCH_EN = 1;

    //
    // At reset, ECC is enabled. If it is disabled by application software and
    // if application again wants to enable ECC.
    //
    Flash0EccRegs.ECC_ENABLE.bit.ENABLE = 0xA;

    EDIS;

    //
    // Force a pipeline flush to ensure that the write to the last register
    // configured occurs before returning.
    //
    __asm(" RPT #7 || NOP");

}
#endif

/*
*
*   procedure\function name :   KickDog
*
*   Description :
*   This function resets the watchdog timer.
*   Enable this function for using KickDog in the application
*
*   Input & type & limit :
*       Input: No
*       Output: No
*
*   Returns: No
*
*   Remarks:
*
*   Caution:
*
*   Revision history   : -----
*   Last update date   : 28/08/2005
*
-------------------------------------------------------------------------------*/
void KickDog(void)
{
    if (WatchDogKickPermission == 1)
    {
        EALLOW;
        WdRegs.WDKEY.bit.WDKEY = 0x0055;
        WdRegs.WDKEY.bit.WDKEY = 0x00AA;
        EDIS;
        WatchDogKickPermission = 0 ;
    }
}


/**
 * \brief Disable watchdog.
 * \note    1.  Writing a 1 to  bit 6 (WDDIS) will disable the watchdog module. Writing a 0
            will enable the module. This bit can only be modified if the
            WDOVERRIDE bit in the SCSR2 register is set to 1. On reset, the
            watchdog module is enabled.
            2.  The user must ALWAYS write 1,0,1 to WDCHK bits(5:3) whenever a write to
                WDCR register is performed. Writing any other value will cause an
                immediate reset to the core (if WD enabled).
 * \sa WDCR register description
 */
void DisableDog(void)
{
    volatile Uint16 temp;

    //
    // Grab the clock config first so we don't clobber it
    //
    EALLOW;
    temp = WdRegs.WDCR.all & 0x0007; // preserve watchdog counter clock (WDCLK) rate
    WdRegs.WDCR.all = 0x0068 | temp; // write bit 6 (WDDIS) as 1, 5:3 (WDCHK) as 0x5, disabling watchdog
    EDIS;
}
/**
 * \brief Enable watchdog.
 * \note
 * \sa WDCR register description, DisableDog
 */
void EnableDog(void)
{
    volatile Uint16 temp;
    EALLOW;
    WdRegs.WDWCR.all = 0x0; // Disable windowed functionality
    WdRegs.WDKEY.bit.WDKEY = 0x0055;
    WdRegs.WDKEY.bit.WDKEY = 0x00AA;

    temp = WdRegs.WDCR.all & 0x0007; // preserve watchdog counter clock (WDCLK) rate
    WdRegs.WDCR.all = 0x0028 | temp; // write bit 6 (WDDIS) as 0, 5:3 (WDCHK) as 0x5, enabling watchdog
    EDIS;
}
/**
 * \brief Generate reset CPU by watch dog.
 * \note    First should enable watchdog by EnableDog()
 * \sa DisableDog, EnableDog
 */
void ResetByDog(void)
{// generate reset
    // This function forces a reset by enabling the watchdog timer and setting bits 5:3 to 0
    volatile Uint16 temp;
        EALLOW;
//      WdRegs.WDKEY.bit.WDKEY = 0x0032;// Improper value written to WDKEY.
                                        // No action, WDCNTR no longer enabled to be reset by next 0xAA.
        temp = WdRegs.WDCR.all & 0x0007; // preserve watchdog counter clock (WDCLK) rate
        WdRegs.WDCR.all = 0x0020 | temp;// write bit 6 as 0, 5:3 as 0x4, enabling watchdog and forcing reset

        EDIS;
}

//
// SysXtalOscSel - This function switches to External CRYSTAL oscillator.
//
void SysXtalOscSel(void)
{
    EALLOW;
    ClkCfgRegs.CLKSRCCTL1.bit.XTALOFF=0;            // Turn on XTALOSC
    ClkCfgRegs.CLKSRCCTL1.bit.OSCCLKSRCSEL = 1;     // Clk Src = XTAL
    EDIS;
}

//
// ServiceDog - This function resets the watchdog timer.
//
// Enable this function for using ServiceDog in the application.
//
void ServiceDog(void)
{
    EALLOW;
    WdRegs.WDKEY.bit.WDKEY = 0x0055;
    WdRegs.WDKEY.bit.WDKEY = 0x00AA;
    EDIS;
}


//
// InitSysPll - This function initializes the PLL registers.
//
// Note: The internal oscillator CANNOT be used as the PLL source if the
// PLLSYSCLK is configured to frequencies above 194 MHz.
//
// Note: This function uses the Watchdog as a monitor for the PLL. The user
// watchdog settings will be modified and restored upon completion.
//
#define   PLLCLK_BY_2      1
//#if  defined(EVAL_BOARD)
#define   IMULT_40        40
//#else
#define   IMULT_20        20
//#endif
#define   FMULT_0         0

// clock source
//#define   INT_OSC2     0
#define   XTAL_OSC     1    // external oscillator 20 MHz
//#define   INT_OSC1     2
//#define   AUXCLKIN     4

#ifdef CPU1


void InitPll(void)
{
     //
     // Initialize the PLL control: SYSPLLMULT and SYSCLKDIVSEL.
     //
     // Defined options to be passed as arguments to this function are defined
     // in F2837xS_Examples.h.
     //
     // Note: The internal oscillator CANNOT be used as the PLL source if the
     // PLLSYSCLK is configured to frequencies above 194 MHz.
     //
     //  PLLSYSCLK = (XTAL_OSC_MHZ) * (IMULT + FMULT) / (PLLSYSCLKDIV)   [MHz]
     //
//#if  defined(EVAL_BOARD) && DFT_PRODUCT_FAMILY != PIT303DLEC
//    InitSysPll(XTAL_OSC,IMULT_40,FMULT_0,PLLCLK_BY_2);
#if CPU_TYPE==283882


    // Set up PLL control and clock dividers
    SysCtl_setClock(DEVICE_SETCLOCK_CFG);
    // Make sure the LSPCLK divider is set to the default (divide by 4)
    SysCtl_setLowSpeedClock(SYSCTL_LSPCLK_PRESCALE_4);
    // Set up AUXPLL control and clock dividers needed for CMCLK
    SysCtl_setAuxClock(DEVICE_AUXSETCLOCK_CFG);
    // Set up CMCLK to use AUXPLL as the clock source and set the
    // clock divider to 1.
    SysCtl_setCMClk(SYSCTL_CMCLKOUT_DIV_1,SYSCTL_SOURCE_AUXPLL);
#elif  defined(EVAL_BOARD)
    InitSysPll(XTAL_OSC,IMULT_40,FMULT_0,PLLCLK_BY_2);
#else
    InitSysPll(XTAL_OSC, IMULT_20, FMULT_0, PLLCLK_BY_2);
#endif
}

#endif // CPU1


/** CPU Subsystem Clock (SYSCLK and PERx.SYSCLK)

    The CPU provides a clock (SYSCLK) to the CLA, DMA, and most peripherals.
      This clock is identical to
    PLLSYSCLK, but is gated when the CPU enters STANDBY or HALT mode.
    Each peripheral clock has its own independent clock gating which is controlled by the PCLKCRx registers.
    By default, the ePWM, EMIF1, and EMIF2 clocks each have an additional /2 divider, which is required to
    support CPU frequencies over 100 MHz. At slower CPU frequencies, these dividers can be disabled via
    the PERCLKDIVSEL register.

Low-Speed Peripheral Clock (LSPCLK and PERx.LSPCLK)

    The SCI, SPI, and McBSP modules can communicate at bit rates that are much slower than the CPU
    frequency. These modules are connected to a shared clock divider, which generates a low-speed
    peripheral clock (LSPCLK) derived from SYSCLK. LSPCLK uses a /4 divider by default, but the ratio can
    be changed via the LOSPCP register. Each SCI, SPI, and McBSP module's clock (PERx.LSPCLK) can be
    gated independently via the PCLKCRx registers.

 */

/** \brief Get LCPCLK in [Hz] for SCI, SPI, and McBSP, depends on CPU_MHZ and ClkCfgRegs.LOSPCP.bit.LSPCLKDIV.
 *  \sa InitPeripheralClocks
 */
long GetLcpClk()
{
    return CPU_CLK_HZ / 2;
}
/** \brief Get Perx.SYSCLK in [Hz] for peripherals other than ePWM, EMIF1, and EMIF2, depends on CPU_MHZ.
 *  \sa InitPeripheralClocks and the note above
 */
long GetPerClk()
{
    return CPU_CLK_HZ;
}
/** \brief Get Perx.SYSCLK for PWM modules in [Hz], depends on CPU_MHZ and for PWM  ClkCfgRegs.PERCLKDIVSEL.bit.EPWMCLKDIV.
 *  \sa InitPeripheralClocks and the note above
 */
long GetPerPWMClk()
{
    return CPU_CLK_HZ;
}

//
// \brief CsmUnlock - This function unlocks the CSM. User must replace 0xFFFF's with
//                      current password for the DSP. Returns 1 if unlock is successful.
//
Uint16 CsmUnlock(void)
{
    volatile Uint16 temp;

    //
    // Load the key registers with the current password. The 0xFFFF's are dummy
    // passwords.  User should replace them with the correct password for the
    // DSP.
    //
    EALLOW;
    DcsmZ1Regs.Z1_CSMKEY0 = 0xFFFFFFFF;
    DcsmZ1Regs.Z1_CSMKEY1 = 0xFFFFFFFF;
    DcsmZ1Regs.Z1_CSMKEY2 = 0xFFFFFFFF;
    DcsmZ1Regs.Z1_CSMKEY3 = 0xFFFFFFFF;

    DcsmZ2Regs.Z2_CSMKEY0 = 0xFFFFFFFF;
    DcsmZ2Regs.Z2_CSMKEY1 = 0xFFFFFFFF;
    DcsmZ2Regs.Z2_CSMKEY2 = 0xFFFFFFFF;
    DcsmZ2Regs.Z2_CSMKEY3 = 0xFFFFFFFF;
    EDIS;

    return(0);
}

//===========================================================================
// End of file.
//===========================================================================


