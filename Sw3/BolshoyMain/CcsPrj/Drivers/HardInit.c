/*
 * HardInit.c
 *
 *  Created on: Aug 9, 2021
 *      Author: Yahali
 */
#include "..\Application\StructDef.h"



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



void KillCLA(void)
{
#ifndef _LPSIM
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


    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_CLA1);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_DMA);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_TIMER0);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_TIMER1);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_TIMER2);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_CPUBGCRC);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_CLA1BGCRC);

    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_HRCAL);

    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_TBCLKSYNC);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_ERAD);

    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EMIF1);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EMIF2);

    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM1);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM2);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM3);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM4);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM5);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM6);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM7);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM8);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM9);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM10);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM11);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM12);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM13);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM14);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM15);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM16);

    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_ECAP1);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_ECAP2);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_ECAP3);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_ECAP4);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_ECAP5);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_ECAP6);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_ECAP7);

    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EQEP1);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EQEP2);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EQEP3);


    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_SCIA);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_SCIB);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_SCIC);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_SCID);

    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_SPIA);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_SPIB);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_SPIC);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_SPID);

    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_I2CA);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_I2CB);

    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_CANA);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_CANB);



    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_ADCA);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_ADCB);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_ADCC);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_ADCD);

    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_CMPSS1);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_CMPSS2);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_CMPSS3);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_CMPSS4);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_CMPSS5);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_CMPSS6);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_CMPSS7);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_CMPSS8);

    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_DACA);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_DACB);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_DACC);



    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_DCC0);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_DCC1);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_DCC2);


    EALLOW ;
    ClkCfgRegs.PERCLKDIVSEL.bit.EPWMCLKDIV = 1;// 0 = /1 of PLLSYSCLK, 1= /2 of PLLSYSLCK (default on reset)
    ClkCfgRegs.LOSPCP.bit.LSPCLKDIV  = 0;// LSPCLK = SYSCLK
    CpuSysRegs.PCLKCR0.bit.TBCLKSYNC = 1;
    EDIS;

}


/**
 * @brief Initialize the CPU timers
 *
 * Timer0 as full rate
 * Timer1 as microseconds
 *
 */
void InitCpuTimers12(void)
{
#ifndef _LPSIM
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


short InitPeripherals()
{
//  MarkStack();


    // Disable CPU interrupts and clear all CPU interrupt flags:
   IER = 0x0000;
   IFR = 0x0000;

    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_CLA1);
    KillCLA();

#ifndef _LPSIM
    // Memory clearing is only required agter non-POR bootup
    MemClear(&DataRamStartAddr , &DataRamLastAddr ) ;

    // Copy the functions from .ramfunc to .text
    MemCopy(&TiRamfuncsLoadStart,&TiRamfuncsLoadEnd, &TiRamfuncsRunStart);
#endif
    InitCpuTimers12() ; // Initialize the CPU timers

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
        EALLOW;
        //
        // Enable pull-ups on unbonded IOs as soon as possible to reduce power
        // consumption.
        //
//TODO      GPIO_EnableUnbondedIOPullups();
        EDIS;
        //
        // Initialize the PLL control: SYSPLLMULT and SYSCLKDIVSEL.
        //
        // Defined options to be passed as arguments to this function are defined
        // in F2837xS_Examples.h.
        //
        // Note: The internal oscillator CANNOT be used as the PLL source if the
        // PLLSYSCLK is configured to frequencies above 194 MHz.
        //
        //  PLLSYSCLK = (XTAL_OSC) * (IMULT + FMULT) / (PLLSYSCLKDIV)
        //
        //MV8 = Cla1Regs.MVECT8 ;
        //if ( MV8 != 678 ) //ClaInput.IntentionallyZero[0] != 9 || ClaInput.IntentionallyZero[0] != 10 )
        if (ClkCfgRegs.CLKSEM.bit.SEM != 2  )
        //MV8 = Cla1Regs.MVECT8 ;
        //if (  MV8 != 234 )
        {
            InitPll();  // argument unused
            ClaInput.IntentionallyZero[0] = 0 ; // Assure clock - bypass is not to be re- exploited
            EALLOW ;
            ClkCfgRegs.CLKSEM.all = 0xa5a50002 ;
        }
        //if (ClkCfgRegs.SYSPLLCTL1.bit.PLLCLKEN == 0 )
        //{
        //    InitPll();  // argument unused
        //}

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
#ifndef _LPSIM
       InitPieVectTable();
#endif


       InitFlash();

        //InitTimer1_usec();
        KillCLA();

        InitAdc();

        InitSci( 0 , 460800L ); // Host comm
        InitSci( 1 , 115200 ); // Gyro
        InitSci( 2 , 115200 ); // US 1
        InitSci( 3 , 115200 ); // US 2


        InitGpio() ;        // configure the general purpose I/O's

        InitEMIF() ;

        InitCan();

        InitPwm4Pacer();
        //InitPwm13ForSTO();
        InitEcap6AsUsecCounter() ;

        CLA_configClaMemory();
        CLA_initCpu1Cla1();

        LedControlInit() ;

        // Allow the CPU2 to control the RS485 SCI
        SysCtl_selectCPUForPeripheral(SYSCTL_CPUSEL5_SCI,3,SYSCTL_CPUSEL_CPU2);
        SysCtl_selectCPUForPeripheral(SYSCTL_CPUSEL5_SCI,4,SYSCTL_CPUSEL_CPU2);
        // Handle PWM as pacer to core 2
        SysCtl_selectCPUForPeripheral(SYSCTL_CPUSEL0_EPWM,3,SYSCTL_CPUSEL_CPU2);

#ifdef CORE2_OWNS_CAN
        SysCtl_selectCPUForPeripheral(SYSCTL_CPUSEL8_CAN,2,SYSCTL_CPUSEL_CPU2);
#endif

        EALLOW ;

        // Pass the RS485 to CPU2 control
        GpioCtrlRegs.GPECSEL2.bit.GPIO143 =  2;
        GpioCtrlRegs.GPECSEL3.bit.GPIO144 =  2;

        EDIS ;

        InitSpiB();
        SpiFlashFail = SFInit() ;
return 0;
}


void SetSF_STEOwnership(short owner);


void SetSpibOwner(void)
{
    if ( M2S.Items.ActCmd.cmd.bSerialFlashOwner == 0 )
    { // Nobody owns the SF
        if ( M2S.Items.ActCmd.cmd.bSerialFlashRequest )
        { // If we requested it , then just take
            SysCtl_selectCPUForPeripheral(SYSCTL_CPUSEL6_SPI,2,SYSCTL_CPUSEL_CPU1);
            SetSF_STEOwnership(0);
            M2S.Items.ActCmd.cmd.bSerialFlashOwner = 1 ;
        }
        else if (S2M.Items.UFlashToken.item.bSerialFlashRequest)
        {// Otherwise CPU2 wants it, grant permission
            SysCtl_selectCPUForPeripheral(SYSCTL_CPUSEL6_SPI,2,SYSCTL_CPUSEL_CPU2);
            SetSF_STEOwnership(1);
            M2S.Items.ActCmd.cmd.bSerialFlashOwner = 2 ;
        }
    }
    else
    {// Already owned by someone
        switch (M2S.Items.ActCmd.cmd.bSerialFlashOwner)
        {
        case 1: // Ours
            if ( M2S.Items.ActCmd.cmd.bSerialFlashRequest == 0 )
            {// Relinquish ownership if not requested
                M2S.Items.ActCmd.cmd.bSerialFlashOwner = 0 ;
            }
            break ;
        case 2:
            if (S2M.Items.UFlashToken.item.bSerialFlashRequest == 0 )
            {  // If CPU2 does not want it anymore, make it again public
                M2S.Items.ActCmd.cmd.bSerialFlashOwner = 0 ;
            }
            break ;
        }
    }
}


//---------------------------------------------------------------------------
// EnableInterrupts:
//---------------------------------------------------------------------------
// This function enables the PIE module and CPU __interrupts
// Description is in the Delfino manual p-86

#ifndef _LPSIM
interrupt void TimerIsrC( void);
#else
void TimerIsrC(void);
#endif


void EnableInterrupts()
{
    DINT ;
    EALLOW ;


    // Enable the PIE
    PieCtrlRegs.PIECTRL.bit.ENPIE = 1;
    PieVectTable.EPWM1_INT = TimerIsrC; // INT 4.1
    PieCtrlRegs.PIEIER3.bit.INTx1 = 1 ;
    IER = (1<<2) ;

    // Enable ECAP interrupt
    EPwm1Regs.ETSEL.bit.INTSEL = 1 ;
    EPwm1Regs.ETSEL.bit.INTEN  = 1 ;


    // Enables PIE to drive a pulse into the CPU
    PieCtrlRegs.PIEACK.all = 0xFFFF;

    // Enable Interrupts at the CPU level
    SysState.bPeriodicProcRunning = 1 ;
    EINT;

}

