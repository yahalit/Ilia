/*
 * HardInit.c
 *
 *  Created on: Aug 9, 2021
 *      Author: Yahali
 */
#include "../Application/StructDefB2.h"
#define CPU_TYPE            DEV_CPU_MODEL


extern Uint16 RamfuncsLoadStart;
extern Uint16 RamfuncsLoadEnd;
extern Uint16 RamfuncsRunStart;

extern Uint16 TiRamfuncsLoadStart;
extern Uint16 TiRamfuncsLoadEnd;
extern Uint16 TiRamfuncsRunStart;

extern Uint16 DataRamStartAddr ;
extern Uint16 DataRamLastAddr ;


void MemCopy(Uint16 *SourceAddr, Uint16* SourceEndAddr, Uint16* DestAddr)
{
    while(SourceAddr < SourceEndAddr)
    {
       *DestAddr++ = *SourceAddr++;
    }
    return;
}


void MemClear( Uint16* DestAddr,Uint16* DestEndAddr)
{
    while(DestAddr < DestEndAddr)
    {
       *DestAddr++ = 0;
    }
    return;
}


extern unsigned short MV8 ;

void KillCLA(void)
{
    // kill CLA
    EALLOW;

    MV8 = Cla1Regs.MVECT8 ;

    asm ("  NOP") ;
    asm ("  NOP") ;
    asm ("  NOP") ;
    asm ("  NOP") ;
    asm ("  NOP") ;
    Cla1Regs.MCTL.bit.HARDRESET=1;
    asm ("  NOP") ;
    asm ("  NOP") ;
    Cla1Regs.MCTL.bit.SOFTRESET=1;
    asm ("  NOP") ;
    asm ("  NOP") ;


    //Master Select for LSx RAM:
    // 00: Memory is dedicated to CPU.
    // 01: Memory is shared between CPU and CLA1.
    // 10: Reserved.
    // 11: Reserved.
    MemCfgRegs.LSxMSEL.all = 0x0;  // MSEL_LS0,MSEL_LS1,..MSEL_LS5
    //Selects LS5 RAM as program or data memory for CLA:
    // 0: CLA Data memory.
    // 1: CLA Program memory.
    MemCfgRegs.LSxCLAPGM.all = 0x0 ; // CLAPGM_LS3..CLAPGM_LS5


    asm ("  NOP") ;
    asm ("  NOP") ;

    //Cla1Regs.MMEMCFG.all = 0x0 ;
    //asm ("    NOP") ;
    //asm ("    NOP") ;

    Cla1Regs.MVECT8 = MV8 ;


    EDIS;

}


//--------------------------------------------------------------------------
// Example: InitPeripheralClocks:
//---------------------------------------------------------------------------
// This function initializes the clocks to the peripheral modules.
// First the high and low clock prescalers are set
// Second the clocks are enabled to each peripheral.
// To reduce power, leave clocks to unused peripherals disabled
//
// Note: If a peripherals clock is not enabled then you cannot
// read or write to the registers for that peripheral

void InitPeripheralClocks(void)
{
    EALLOW;

    CpuSysRegs.PCLKCR0.bit.CLA1 = 1;
    CpuSysRegs.PCLKCR0.bit.DMA = 1;
    CpuSysRegs.PCLKCR0.bit.CPUTIMER0 = 1;
    CpuSysRegs.PCLKCR0.bit.CPUTIMER1 = 1;
    CpuSysRegs.PCLKCR0.bit.CPUTIMER2 = 1;

#if CPU_TYPE==283882
    CpuSysRegs.PCLKCR0.bit.CPUBGCRC = 1 ;
    CpuSysRegs.PCLKCR0.bit.CLA1BGCRC = 1 ;
    CpuSysRegs.PCLKCR0.bit.GTBCLKSYNC = 1 ;
    CpuSysRegs.PCLKCR0.bit.ERAD = 1 ;
#endif
    CpuSysRegs.PCLKCR0.bit.TBCLKSYNC = 1;

    CpuSysRegs.PCLKCR3.bit.ECAP1 = 1;
    CpuSysRegs.PCLKCR3.bit.ECAP2 = 1;
    CpuSysRegs.PCLKCR3.bit.ECAP3 = 1;
    CpuSysRegs.PCLKCR3.bit.ECAP4 = 1;
    CpuSysRegs.PCLKCR3.bit.ECAP5 = 1;
    CpuSysRegs.PCLKCR3.bit.ECAP6 = 1;
#if CPU_TYPE==283882
    CpuSysRegs.PCLKCR3.bit.ECAP7 = 1;
#endif

/*   Hazard Ask Kostja: pri chem tut cpu type? It depends on specified board!
#ifdef EVAL_BOARD
#if CPU_TYPE != 283392
    CpuSysRegs.PCLKCR10.bit.CAN_A = 1;
#endif
#endif
*/

    ClkCfgRegs.PERCLKDIVSEL.bit.EPWMCLKDIV = 0;// 0 = /1 of PLLSYSCLK, 1= /2 of PLLSYSLCK (default on reset)
    ClkCfgRegs.LOSPCP.bit.LSPCLKDIV  =1;// LSPCLK = SYSCLK/2
    EDIS;
}



short InitFixedPeripherals()
{
//  MarkStack();

    // Disable CPU interrupts and clear all CPU interrupt flags:
   IER = 0x0000;
   IFR = 0x0000;

    KillCLA();

    MemClear(&DataRamStartAddr , &DataRamLastAddr ) ;

    // Copy the functions from .ramfunc to .text
    MemCopy(&TiRamfuncsLoadStart,&TiRamfuncsLoadEnd, &TiRamfuncsRunStart);

    // Step 1. Initialize System Control:
    // PLL, WatchDog, enable Peripheral Clocks
    // This example function is found in the DSP280x_SysCtrl.c file.

   // Disable the watchdog
   DisableDog();

//Removed from Boot:       SetCpuSupplyBuck() ;

        //
        //      *IMPORTANT*
        //
        // The Device_cal function, which copies the ADC & oscillator calibration
        // values from TI reserved OTP into the appropriate trim registers, occurs
        // automatically in the Boot ROM. If the boot ROM code is bypassed during
        // the debug process, the following function MUST be called for the ADC and
        // oscillators to function according to specification. The clocks to the
        // ADC MUST be enabled before calling this function.
        //
        // See the device data manual and/or the ADC Reference Manual for more
        // information.
        //

       // Initialize the peripheral clocks
       InitPeripheralClocks();


    // Initialize PIE control registers to their default state.
    // The default state is all PIE interrupts disabled and flags
    // are cleared.
    // This function is found in the DSP280x_PieCtrl.c file.
       InitPieCtrl();

    // Disable CPU interrupts and clear all CPU interrupt flags:
       IER = 0x0000;
       IFR = 0x0000;
//HSKOST       EINT ;   // clears bit INTM in the register ST1 in order to enable maskable interrupts

    // Initialize the PIE vector table with pointers to the shell Interrupt
    // Service Routines (ISR).
    // This will populate the entire table, even if the interrupt
    // is not used in this example.  This is useful for debug purposes.
    // The shell ISR routines are found in DSP280x_DefaultIsr.c.
    // This function is found in DSP280x_PieVect.c.
       InitPieVectTable();

       InitFlash();

        //InitTimer1_usec();
        KillCLA();
        EALLOW ;
        Cla1Regs.MVECT8 = 678 ;

return 0;
}




