/*
 * HardInit.c
 *
 *  Created on: Aug 9, 2021
 *      Author: Yahali
 */
#include "..\Application\StructDef2.h"
#define CPU_TYPE            DEV_CPU_MODEL


#ifndef WINSIM
extern Uint16 TiRamfuncsLoadStart;
extern Uint16 TiRamfuncsLoadEnd;
extern Uint16 TiRamfuncsRunStart;

extern Uint16 DataRamStartAddr ;
extern Uint16 DataRamLastAddr ;
#endif

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



void KillCLA(void)
{
#ifndef WINSIM 
    // kill CLA
    EALLOW;

    MV8 = Cla1Regs.MVECT8  ;


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

    Cla1Regs.MVECT8   = MV8;

    //Cla1Regs.MMEMCFG.all = 0x0 ;
    //asm ("    NOP") ;
    //asm ("    NOP") ;
    EDIS;
#endif
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
#ifndef WINSIM 

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

#ifdef CPU1
#if CPU_TYPE==283882
    CpuSysRegs.PCLKCR0.bit.HRCAL = 1 ;
#else
    CpuSysRegs.PCLKCR0.bit.HRPWM = 1;
#endif
#endif

    CpuSysRegs.PCLKCR0.bit.TBCLKSYNC = 1;

#ifdef CPU1
    CpuSysRegs.PCLKCR1.bit.EMIF1 = 1;
    CpuSysRegs.PCLKCR1.bit.EMIF2 = 1;
#endif

    CpuSysRegs.PCLKCR2.bit.EPWM1 = 1;
    CpuSysRegs.PCLKCR2.bit.EPWM2 = 1;
    CpuSysRegs.PCLKCR2.bit.EPWM3 = 1;
    CpuSysRegs.PCLKCR2.bit.EPWM4 = 1;
    CpuSysRegs.PCLKCR2.bit.EPWM5 = 1;
    CpuSysRegs.PCLKCR2.bit.EPWM6 = 1;
    CpuSysRegs.PCLKCR2.bit.EPWM7 = 1;
    CpuSysRegs.PCLKCR2.bit.EPWM8 = 1;
    CpuSysRegs.PCLKCR2.bit.EPWM9 = 1;
    CpuSysRegs.PCLKCR2.bit.EPWM10 = 1;
    CpuSysRegs.PCLKCR2.bit.EPWM11 = 1;
    CpuSysRegs.PCLKCR2.bit.EPWM12 = 1;
#if CPU_TYPE==283882
    CpuSysRegs.PCLKCR2.bit.EPWM13 = 1;
    CpuSysRegs.PCLKCR2.bit.EPWM14 = 1;
    CpuSysRegs.PCLKCR2.bit.EPWM15 = 1;
    CpuSysRegs.PCLKCR2.bit.EPWM16 = 1;
#endif

    CpuSysRegs.PCLKCR3.bit.ECAP1 = 1;
    CpuSysRegs.PCLKCR3.bit.ECAP2 = 1;
    CpuSysRegs.PCLKCR3.bit.ECAP3 = 1;
    CpuSysRegs.PCLKCR3.bit.ECAP4 = 1;
    CpuSysRegs.PCLKCR3.bit.ECAP5 = 1;
    CpuSysRegs.PCLKCR3.bit.ECAP6 = 1;
#if CPU_TYPE==283882
    CpuSysRegs.PCLKCR3.bit.ECAP7 = 1;
#endif

    CpuSysRegs.PCLKCR4.bit.EQEP1 = 1;
    CpuSysRegs.PCLKCR4.bit.EQEP2 = 1;
    CpuSysRegs.PCLKCR4.bit.EQEP3 = 1;

    CpuSysRegs.PCLKCR6.bit.SD1 = 1;
    CpuSysRegs.PCLKCR6.bit.SD2 = 1;

    CpuSysRegs.PCLKCR7.bit.SCI_A = 1;
    CpuSysRegs.PCLKCR7.bit.SCI_B = 1;
    CpuSysRegs.PCLKCR7.bit.SCI_C = 1;
    CpuSysRegs.PCLKCR7.bit.SCI_D = 1;

    CpuSysRegs.PCLKCR8.bit.SPI_A = 1;
    CpuSysRegs.PCLKCR8.bit.SPI_B = 1;
    CpuSysRegs.PCLKCR8.bit.SPI_C = 1;
#if CPU_TYPE==283882
    CpuSysRegs.PCLKCR8.bit.SPI_D = 1;
#endif

    CpuSysRegs.PCLKCR9.bit.I2C_A = 1;
    CpuSysRegs.PCLKCR9.bit.I2C_B = 1;
/*   Hazard Ask Kostja: pri chem tut cpu type? It depends on specified board!
#ifdef EVAL_BOARD
#if CPU_TYPE != 283392
    CpuSysRegs.PCLKCR10.bit.CAN_A = 1;
#endif
#endif
*/
//#if CPU_TYPE==283882
//    CpuSysRegs.PCLKCR10.bit.CAN_A = 1;
//#endif
    CpuSysRegs.PCLKCR10.bit.CAN_B = 1;

    CpuSysRegs.PCLKCR11.bit.McBSP_A = 1;
    CpuSysRegs.PCLKCR11.bit.McBSP_B = 1;

    CpuSysRegs.PCLKCR13.bit.ADC_A = 1;
    CpuSysRegs.PCLKCR13.bit.ADC_B = 1;
    CpuSysRegs.PCLKCR13.bit.ADC_C = 1;
    CpuSysRegs.PCLKCR13.bit.ADC_D = 1;

    CpuSysRegs.PCLKCR14.bit.CMPSS1 = 1;
    CpuSysRegs.PCLKCR14.bit.CMPSS2 = 1;
    CpuSysRegs.PCLKCR14.bit.CMPSS3 = 1;
    CpuSysRegs.PCLKCR14.bit.CMPSS4 = 1;
    CpuSysRegs.PCLKCR14.bit.CMPSS5 = 1;
    CpuSysRegs.PCLKCR14.bit.CMPSS6 = 1;
    CpuSysRegs.PCLKCR14.bit.CMPSS7 = 1;
    CpuSysRegs.PCLKCR14.bit.CMPSS8 = 1;

    CpuSysRegs.PCLKCR16.bit.DAC_A = 1;
    CpuSysRegs.PCLKCR16.bit.DAC_B = 1;
    CpuSysRegs.PCLKCR16.bit.DAC_C = 1;

#if CPU_TYPE==283882
    CpuSysRegs.PCLKCR18.bit.FSITX_A = 1 ;
    CpuSysRegs.PCLKCR18.bit.FSITX_B = 1 ;
    CpuSysRegs.PCLKCR18.bit.FSIRX_A = 1 ;
    CpuSysRegs.PCLKCR18.bit.FSIRX_B = 1 ;
    CpuSysRegs.PCLKCR18.bit.FSIRX_C = 1 ;
    CpuSysRegs.PCLKCR18.bit.FSIRX_D = 1 ;
    CpuSysRegs.PCLKCR18.bit.FSIRX_E = 1 ;
    CpuSysRegs.PCLKCR18.bit.FSIRX_F = 1 ;
    CpuSysRegs.PCLKCR18.bit.FSIRX_G = 1 ;
    CpuSysRegs.PCLKCR18.bit.FSIRX_H = 1 ;
    CpuSysRegs.PCLKCR20.bit.PMBUS_A = 1 ;
#endif

    ClkCfgRegs.PERCLKDIVSEL.bit.EPWMCLKDIV = 1;// 0 = /1 of PLLSYSCLK, 1= /2 of PLLSYSLCK (default on reset)
    ClkCfgRegs.LOSPCP.bit.LSPCLKDIV  =1;// LSPCLK = SYSCLK/2
    EDIS;
#endif // WINSIM 
}


/**
 * @brief Initialize the CPU timers
 *
 * Timer0 as full rate (200M)
 * Timer1 as microseconds
 *
 */
void InitCpuTimers12(void)
{
#ifndef WINSIM
    // Init timer #0 as full rate counter
    CpuTimer0Regs.TCR.bit.TSS = 1;
    CpuTimer0Regs.PRD.all = 0xffffffff;
    CpuTimer0Regs.TIM.all = 0;
    CpuTimer0Regs.TPR.all = 0;
    CpuTimer0Regs.TCR.all = 0;

    // Init timer #1 as usec counter
    CpuTimer1Regs.TCR.bit.TSS = 1;
    CpuTimer1Regs.PRD.all = 0xffffffff;
    CpuTimer1Regs.TIM.all = 0;
    CpuTimer1Regs.TPR.all = (CPU_CLK_MHZ - 1);
    CpuTimer1Regs.TCR.all = 0;
#endif
}

void InitPwm3ForPacer(void)
{
#ifndef WINSIM

EALLOW ;
// EPwm3Regs is pacer for core 2
EPwm3Regs.TBCTL.bit.CTRMODE = 0x3;
EPwm3Regs.TBCTL.bit.HSPCLKDIV = 0;
EPwm3Regs.TBCTL.bit.CLKDIV = 6 ; // Divide clock by 64

// Set frame to 0.512 m sec
EPwm3Regs.TBPRD = PWM_CLK_MHZ * (FAST_TS_USEC / 64)  ;

// Reset counter
EPwm3Regs.TBCTR = 0;

// clear status and trips
EPwm3Regs.TBSTS.all = 0x6;
EPwm3Regs.CMPB.bit.CMPB = EPwm3Regs.TBPRD / 2;

// Disable all the shit - chopper, trips, dead band, ...
EPwm3Regs.DBCTL.all = 0;
EPwm3Regs.PCCTL.all = 0x0;

// clear trip-zones latched status bits
EPwm3Regs.TZCLR.all = 0x7F; // clear all events
EPwm3Regs.TZSEL.all = 0;

EPwm3Regs.EPWMSYNCINSEL.all  = 0 ;
EPwm3Regs.EPWMSYNCOUTEN.bit.ZEROEN  = 1 ;

EPwm3Regs.TBCTL.bit.PHSEN   = 0 ;
EPwm3Regs.TBCTL.bit.CTRMODE = 0 ; // Up
EPwm3Regs.TBCTL.bit.FREE_SOFT = 3; // go on while suspend

EPwm3Regs.ETPS.bit.INTPRD = 1;
EDIS ;
#endif 
}


void CopyFlashFuncs2Ram(void)
{
    // Copy the functions from .ramfunc to .text
    short unsigned mask ;
    mask = BlockInts() ;
    MemCopy(&TiRamfuncsLoadStart,&TiRamfuncsLoadEnd, &TiRamfuncsRunStart);
    RestoreInts(mask);
}

short InitPeripherals()
{

    // Disable CPU interrupts and clear all CPU interrupt flags:
#ifndef WINSIM
   IER = 0x0000;
   IFR = 0x0000;

   CpuSysRegs.PCLKCR0.bit.CLA1 = 1;
    KillCLA();

    MemClear(&DataRamStartAddr , &DataRamLastAddr ) ;

    // Copy the functions from .ramfunc to .text
    CopyFlashFuncs2Ram() ; // MemCopy(&TiRamfuncsLoadStart,&TiRamfuncsLoadEnd, &TiRamfuncsRunStart);

    InitCpuTimers12() ; // Initialize the CPU timers

    // Step 1. Initialize System Control:
    // PLL, WatchDog, enable Peripheral Clocks
    // This example function is found in the DSP280x_SysCtrl.c file.

   // Disable the watchdog
   DisableDog();


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


        CLA_configClaMemory();
        CLA_initCpu1Cla1();
        DisableRs485Tx_1() ;
        DisableRs485Tx_2() ;

        InitPwm3ForPacer() ;

        InitCanB();
#endif
return 0;
}


//---------------------------------------------------------------------------
// EnableInterrupts:
//---------------------------------------------------------------------------
// This function enables the PIE module and CPU __interrupts
// Description is in the Delfino manual p-86

interrupt void TimerIsrCore2( void);

void EnableInterrupts()
{
#ifndef WINSIM
    DINT ;
    EALLOW ;

    // Enable the PIE
    PieCtrlRegs.PIECTRL.bit.ENPIE = 1;
    PieVectTable.EPWM3_INT = TimerIsrCore2; // INT 4.1
    PieCtrlRegs.PIEIER3.bit.INTx3 = 1 ;
    IER = (1<<2) ;

    // Enable PWM interrupt
    EPwm3Regs.ETSEL.bit.INTSEL = 1 ;
    EPwm3Regs.ETSEL.bit.INTEN  = 1 ;


    // Enables PIE to drive a pulse into the CPU
    PieCtrlRegs.PIEACK.all = 0xFFFF;

    // Enable Interrupts at the CPU level
    EINT;
#endif
}

