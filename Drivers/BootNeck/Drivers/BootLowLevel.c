/*
 * LowLevel.c
 *
 *  Created on: May 17, 2023
 *      Author: yahal
 */
#include "..\Application\BootStructDef.h"


// Linker Defined variables
extern uint32_t Cla1ProgRunStart, Cla1ProgLoadStart, Cla1ProgLoadSize;
extern uint32_t Cla1ConstRunStart, Cla1ConstLoadStart, Cla1ConstLoadSize;




void ResetHardwareSysTimer(void)
{
    HWREG(CPUTIMER0_BASE + CPUTIMER_O_TIM) = 0 ;
}

inline
void SetupTimers()
{
  //CPUTimer_setPreScaler(CPUTIMER0_BASE, 0);
    CPUTimer_stopTimer(CPUTIMER0_BASE) ;
    CPUTimer_stopTimer(CPUTIMER1_BASE) ;

  CPUTimer_setPeriod(CPUTIMER0_BASE, 0xffffffff);
  CPUTimer_setPeriod(CPUTIMER1_BASE, 0xffffffff);

  HWREG(CPUTIMER0_BASE + CPUTIMER_O_TIM) = 0xffffffff ;
  HWREG(CPUTIMER1_BASE + CPUTIMER_O_TIM) = 0xffffffff ;

  HWREGH(CPUTIMER0_BASE + CPUTIMER_O_TPR) = 0;
  HWREGH(CPUTIMER1_BASE + CPUTIMER_O_TPR) = CPU_CLK_MHZ-1;

  CPUTimer_setEmulationMode(CPUTIMER0_BASE,CPUTIMER_EMULATIONMODE_STOPAFTERNEXTDECREMENT);
  CPUTimer_setEmulationMode(CPUTIMER1_BASE,CPUTIMER_EMULATIONMODE_STOPAFTERNEXTDECREMENT);

  CPUTimer_startTimer(CPUTIMER0_BASE) ;
  CPUTimer_startTimer(CPUTIMER1_BASE) ;

  //myCPUTIMER2 initialization
  CPUTimer_setEmulationMode(CPUTIMER2_BASE, CPUTIMER_EMULATIONMODE_STOPAFTERNEXTDECREMENT);
  CPUTimer_setPreScaler(CPUTIMER2_BASE, 119U);
  CPUTimer_setPeriod(CPUTIMER2_BASE, 4294967295U);
  CPUTimer_disableInterrupt(CPUTIMER2_BASE);
  CPUTimer_resumeTimer(CPUTIMER2_BASE);

  return;
}


void WaitUsec( long unsigned usec )
{
    union
    {
        short s[2] ;
        long  unsigned ul ;
    }u;
    HWREG(CPUTIMER0_BASE + CPUTIMER_O_TIM) = usec ;
    do
    {
        u.ul = HWREG(CPUTIMER0_BASE + CPUTIMER_O_TIM) ;
    } while ( u.s[1] >= 0 ) ;
}


void setupEcap(void)
{
#ifdef SLAVE_DRIVER
    // ECAP 1 captures the sync signal (used only for steering)
    EALLOW ;
    HWREG(ECAP1_BASE + ECAP_O_ECCTL0)  = 2      ; // Input for capture
    HWREGH(ECAP1_BASE + ECAP_O_ECCTL1) = 0x410e ; // Enable capture 1 on fall, capture 2 on rise, both reset counter
    HWREGH(ECAP1_BASE + ECAP_O_ECCTL2) = 0x810  ; // Counter runs. continuous, wrap after 1 events (fall only)
#endif

    // ECAP2 is just a free running counter
    HWREGH(ECAP2_BASE + ECAP_O_ECCTL1) = 0x0 ; // Stop in emulation don't capture
    HWREG (ECAP2_BASE + ECAP_O_TSCTR ) = 0 ;
    HWREGH(ECAP2_BASE + ECAP_O_ECCTL2) = 0x10  ; // Just run


    // ECAP 3 is just a free runner
    HWREG(ECAP3_BASE + ECAP_O_TSCTR) = 0 ;
    HWREGH(ECAP3_BASE + ECAP_O_ECCTL2) = (1<<4) ;
}



inline
void SetupPeripheralClks(void)
{
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_DMA);

    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_TIMER0);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_TIMER1);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_TIMER2);

    SysCtl_disablePeripheral(SYSCTL_PERIPH_CLK_HRCAL);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_TBCLKSYNC);

    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_DACA);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_DACB);


    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM1);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM2);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM3);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM4);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM5);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM6);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM7);

    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_ECAP1);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_ECAP2);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_ECAP3);


    SysCtl_disablePeripheral(SYSCTL_PERIPH_CLK_CANA);

    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_MCANA);

    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_ADCA);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_ADCB);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_ADCC);

    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_FSITXA);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_FSIRXA);


    return;
}



void SetupIsr(void)
{


    // setup the Event Trigger Selection Register (ETSEL)
    //EPWM_setInterruptSource(PWM_A_BASE, EPWM_INT_TBCTR_PERIOD);
    DINT ;
    EALLOW ;
    HWREGH(ADCA_BASE+ADC_O_INTSEL1N2) |= ( (1<<6) | (1 << 5) )  ; // Enable interrupt , Make the interrupt continuous, no need to reset ADC interrupt source
    HWREGH(ADCB_BASE+ADC_O_INTSEL1N2) |= ( (1<<6) | (1 << 5) )  ; // Enable interrupt , Make the interrupt continuous, no need to reset ADC interrupt source

    Interrupt_register(INT_ADCA1, &AdcIsr);
#ifdef SLAVE_DRIVER
    Interrupt_register(INT_TIMER0, &Timer0Interrupt);
    Interrupt_enable(INT_TIMER0);
#endif

    EPWM_disableInterrupt(PWM_A_BASE);

    EPWM_setADCTriggerSource(PWM_A_BASE,EPWM_SOC_A, EPWM_SOC_TBCTR_D_CMPC);

    EPWM_enableADCTrigger(PWM_A_BASE, EPWM_SOC_A);

    EPWM_setInterruptEventCount(PWM_A_BASE, 1);
    EPWM_setADCTriggerEventPrescale(PWM_A_BASE, EPWM_SOC_A,1);

    // setup the Event Trigger Clear Register (ETCLR)
    EPWM_clearEventTriggerInterruptFlag(PWM_A_BASE);
    EPWM_clearADCTriggerFlag(PWM_A_BASE, EPWM_SOC_A);

    // write the PWM data value  for ADC trigger
    EPWM_setCounterCompareValue(PWM_A_BASE, EPWM_COUNTER_COMPARE_C, (short unsigned)(ADC_START_BEFORE_CYC_USEC * CPU_CLK_MHZ) );


    Interrupt_enable(INT_ADCA1);
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);

    // enable the ePWM module time base clock sync signal
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_TBCLKSYNC);

}


void PauseInts(void)
{
    Interrupt_disable(INT_ADCA1);
    Interrupt_disable(INT_TIMER0);
    SysCtl_disableWatchdog();
}

void UnpauseInts(void)
{
    Interrupt_enable(INT_ADCA1);
    Interrupt_enable(INT_TIMER0);
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
}




void InitPeripherals()
{
    SysCtl_disableWatchdog();


    // Enable temperature sensor (C12)
    ASysCtl_enableTemperatureSensor();

    // initialize the interrupt controller
    Interrupt_initModule();

    // init vector table
    Interrupt_initVectorTable();

    SysCtl_setClock(SYSCTL_OSCSRC_XTAL_SE | SYSCTL_IMULT(48) |
                    SYSCTL_REFDIV(1) | SYSCTL_ODIV(4) |
                    SYSCTL_SYSDIV(1) | SYSCTL_PLL_ENABLE |
                    SYSCTL_DCC_BASE_0);
    SysCtl_deviceCal();

    SetupPeripheralClks() ;

    // Make sure the LSPCLK divider is set to divide by 2
    SysCtl_setLowSpeedClock(SYSCTL_LSPCLK_PRESCALE_2); // 60MHz for SFRA, SPI&SCI

    //
     // Lock VREGCTL Register
     // The register VREGCTL is not supported in this device. It is locked to
     // prevent any writes to this register
     //
    ASysCtl_lockVREG();


     //
     // Call Flash Initialization to setup flash wait states. This function must
     // reside in RAM.
    Flash_initModule(FLASH0CTRL_BASE, FLASH0ECC_BASE, DEVICE_FLASH_WAITSTATES);

    SetupTimers();

    SetupADCs();


#ifndef SLAVE_DRIVER
    setupDac() ;
    setupMCAN();
 #endif

    // Setup the ECAP
    setupEcap();

#ifdef SLAVE_DRIVER
    // Setup the FSI
    SetupFSI();
#endif

    KillMotor() ;
    SysCtl_disablePeripheral(SYSCTL_PERIPH_CLK_TBCLKSYNC);

// Full drive synchronizes every cycle 
 // Synchronization of slave is every full 2-axis cycle
    SetupPwmPacer( PWM_PACER_BASE,CUR_SAMPLE_TIME_USEC*CUR_SAMP_PACER_MULT);
    SetupPWM( PWM_A_BASE,CUR_SAMPLE_TIME_USEC);
    SetupPWM( PWM_B_BASE,CUR_SAMPLE_TIME_USEC);
    SetupPWM( PWM_C_BASE,CUR_SAMPLE_TIME_USEC);

    SetGateDriveEable(0) ;
    setupGpio() ;

    SysCtl_setWatchdogPredivider(SYSCTL_WD_PREDIV_2048) ; // For about 20msec
    //SysCtl_setWatchdogPrescaler(3) ;
    SysCtl_enableWatchdog() ;
}



