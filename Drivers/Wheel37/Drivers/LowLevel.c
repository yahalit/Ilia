/*
 * LowLevel.c
 *
 *  Created on: May 17, 2023
 *      Author: yahal
 */
#include "..\Application\StructDef.h"


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

    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EQEP1);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EQEP2);

    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_SCIA);

    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_SPIA);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_SPIB);

    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_I2CA);

    SysCtl_disablePeripheral(SYSCTL_PERIPH_CLK_CANA);

    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_MCANA);

    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_ADCA);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_ADCB);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_ADCC);

    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_CMPSS1);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_CMPSS2);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_CMPSS3);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_CMPSS4);

    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_FSITXA);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_FSIRXA);

    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_LINA);

    SysCtl_disablePeripheral(SYSCTL_PERIPH_CLK_PMBUSA);

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


    CLA_forceTasks(CLA1_BASE, CLA_TASKFLAG_7); // Initialize current filter
    CLA_forceTasks(CLA1_BASE, CLA_TASKFLAG_8); // Initialize CLA counters

    CLA_setTriggerSource(CLA_TASK_1, CLA_TRIGGER_ADCB1); // Thats immediately upon getting current samples
    CLA_setTriggerSource(CLA_TASK_2, CLA_TRIGGER_ADCA1); // And that is later after all ADC is complete

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


    // Set up PLL control and clock dividers
    // PLLSYSCLK = 20MHz (XTAL_OSC) * 30 (IMULT) / (2 (REFDIV) * 3 (ODIV) * 1(SYSDIV))
#ifdef EVAL_BOARD
    SysCtl_setClock(SYSCTL_OSCSRC_XTAL | SYSCTL_IMULT(48) |
                    SYSCTL_REFDIV(2) | SYSCTL_ODIV(4) |
                    SYSCTL_SYSDIV(1) | SYSCTL_PLL_ENABLE |
                    SYSCTL_DCC_BASE_0);
#else
    SysCtl_setClock(SYSCTL_OSCSRC_XTAL_SE | SYSCTL_IMULT(48) |
                    SYSCTL_REFDIV(1) | SYSCTL_ODIV(4) |
                    SYSCTL_SYSDIV(1) | SYSCTL_PLL_ENABLE |
                    SYSCTL_DCC_BASE_0);
#endif //EVAL_BOARD
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

    initCLA();

    SetupADCs();

    // If identity is specified by user data, take it
    SetProjectId()  ;

    setupCMPSSs();

#ifndef SLAVE_DRIVER
    setupDac() ;
    setupMCAN();
    // setup the eqep
    setupQEP();
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

    // Set Halls as digital inputs
    setupHallInputs() ;


#ifndef SLAVE_DRIVER
    setupSpi() ;
#endif
    setupLin() ;
    setupDMA();

    SysCtl_setWatchdogPredivider(SYSCTL_WD_PREDIV_4096) ; // For about 20msec
    //SysCtl_setWatchdogPrescaler(3) ;
    SysCtl_enableWatchdog() ;
}

void SetClaAllSw(void)
{
    KillMotor() ;

    EALLOW ;
    HWREGH(CLA1_BASE + CLA_O_MIER) = 0 ;
    CLA_setTriggerSource(CLA_TASK_1, CLA_TRIGGER_SOFTWARE); //CLA_TRIGGER_EPWM1INT
    CLA_setTriggerSource(CLA_TASK_2, CLA_TRIGGER_SOFTWARE); //CLA_TRIGGER_EPWM1INT
    CLA_setTriggerSource(CLA_TASK_3, CLA_TRIGGER_SOFTWARE); //CLA_TRIGGER_EPWM1INT

    EALLOW ;
    HWREGH(CLA1_BASE + CLA_O_MICLR) = 0xff ;
    while ( HWREGH(CLA1_BASE + CLA_O_MIRUN  ) | HWREGH(CLA1_BASE + CLA_O_MIFR  ) )
    {
        HWREGH(CLA1_BASE + CLA_O_MICLR) = 0xff ;
    }

    CLA_setTriggerSource(CLA_TASK_8, CLA_TRIGGER_SOFTWARE);
}

void initCLAMemory(void)
{
    //
    // Copy the program and constants from FLASH to RAM before configuring
    // the CLA
    //
    memcpy((uint32_t *)&Cla1ProgRunStart, (uint32_t *)&Cla1ProgLoadStart,
           (uint32_t)&Cla1ProgLoadSize);
    memcpy((uint32_t *)&Cla1ConstRunStart, (uint32_t *)&Cla1ConstLoadStart,
        (uint32_t)&Cla1ConstLoadSize );


    //
    // CLA Program will reside in RAMLS0 and data in RAMLS1, RAMLS2
    //
    MemCfg_setLSRAMMasterSel(MEMCFG_SECT_LS0, MEMCFG_LSRAMMASTER_CPU_CLA1);
    MemCfg_setLSRAMMasterSel(MEMCFG_SECT_LS1, MEMCFG_LSRAMMASTER_CPU_CLA1);
    MemCfg_setLSRAMMasterSel(MEMCFG_SECT_LS2, MEMCFG_LSRAMMASTER_CPU_CLA1);
    MemCfg_setCLAMemType(MEMCFG_SECT_LS0, MEMCFG_CLA_MEM_PROGRAM);
    MemCfg_setCLAMemType(MEMCFG_SECT_LS1, MEMCFG_CLA_MEM_PROGRAM);
    MemCfg_setCLAMemType(MEMCFG_SECT_LS2, MEMCFG_CLA_MEM_DATA);


    ClearMemRpt((short unsigned *) &ClaState,sizeof( ClaState) );
    ClearMemRpt((short unsigned *) &ClaMailIn,sizeof( ClaMailIn) );
}


//
// CLA Initialization
//
// Description: This function will
// - copy over code and const from flash to CLA program and data ram
//   respectively
// - Initialize the task vectors (MVECTx)
// - setup each task's trigger
// - enable each individual task
// - map program and data spaces to the CLA
// - run any one-time initialization task
// Please note that the CLA can only run code and access data that is in RAM.
// the user must assign constants (tables) to FLASH, and copy them over to
// RAM at run-time. They must be copied to a RAM that lies in the address space
// of the CLA, and prior to giving the CLA control over that space
//
void initCLA(void)
{

//
// Suppressing #770-D conversion from pointer to smaller integer
// The CLA address range is 16 bits so the addresses passed to the MVECT
// registers will be in the lower 64KW address space. Turn the warning
// back on after the MVECTs are assigned addresses
//
#pragma diag_suppress=770

    //
    // Assign the task vectors and set the triggers for task 1
    // and 8
    //
    CLA_mapTaskVector(CLA1_BASE, CLA_MVECT_1, (uint16_t)&Cla1Task1);
    CLA_mapTaskVector(CLA1_BASE, CLA_MVECT_2, (uint16_t)&Cla1Task2);
    CLA_mapTaskVector(CLA1_BASE, CLA_MVECT_3, (uint16_t)&Cla1Task3);
    CLA_mapTaskVector(CLA1_BASE, CLA_MVECT_7, (uint16_t)&Cla1Task7); // Set current pre-filter parameters
    CLA_mapTaskVector(CLA1_BASE, CLA_MVECT_8, (uint16_t)&Cla1Task8);
    SetClaAllSw();

#pragma diag_warning=770

    //
    // Enable Tasks 1 and 8
    //
    CLA_enableTasks(CLA1_BASE, (CLA_TASKFLAG_1 | CLA_TASKFLAG_2 | CLA_TASKFLAG_7 | CLA_TASKFLAG_8));
    CLA_setTriggerSource(CLA_TASK_7, CLA_TRIGGER_SOFTWARE);

}

/*
 * iN LAYOUT 2 Only Hall C goes to analog port, that is GPIO225 = A4
 */
void setupHallInputs(void)
{
#ifdef ON_BOARD_HALL
    EALLOW ;
    HWREG( GPIOCTRL_BASE + GPIO_O_GPHQSEL1 )  = 0xaa0aaaaa ; // 6 samples (excluding reserved)
    HWREG( GPIOCTRL_BASE + GPIO_O_GPHQSEL2 )  = 0x0a8a8a8a ; // 6 samples (excluding reserved)
    HWREG( GPIOCTRL_BASE + GPIO_O_GPHAMSEL ) = ~GPIO_GPHAMSEL_GPIO225;
    HWREG( GPIOCTRL_BASE + GPIO_O_GPHCTRL )  = 0x0a0a0a0a ; // 12MHz sampling (0xa=10)
    HWREG( GPIOCTRL_BASE + GPIO_O_GPACTRL )  = ( HWREG( GPIOCTRL_BASE + GPIO_O_GPACTRL ) & 0xffffff )  + (10UL<<24); // Set port period = 10
    HWREG( GPIOCTRL_BASE + GPIO_O_GPBCTRL )  = ( HWREG( GPIOCTRL_BASE + GPIO_O_GPBCTRL ) & 0xffffff00 )  + (10UL); // Set port period = 10

    XBAR_setInputPin( INPUTXBAR_BASE,  XBAR_INPUT4  , 28 ) ;
    XBAR_setInputPin( INPUTXBAR_BASE,  XBAR_INPUT5  , 225 ) ;
    XBAR_setInputPin( INPUTXBAR_BASE,  XBAR_INPUT6  , 33 ) ;

    GPIO_setInterruptType(GPIO_INT_XINT1, GPIO_INT_TYPE_BOTH_EDGES); // 1.4
    GPIO_setInterruptType(GPIO_INT_XINT2, GPIO_INT_TYPE_BOTH_EDGES); // 1.5
    GPIO_setInterruptType(GPIO_INT_XINT3, GPIO_INT_TYPE_BOTH_EDGES); // 12.1

    GPIO_enableInterrupt(GPIO_INT_XINT1);
    GPIO_enableInterrupt(GPIO_INT_XINT2);
    GPIO_enableInterrupt(GPIO_INT_XINT3);
#endif
}

// MCP9700 from MicroChip
float GetTemperatureFromAdc(float volts)
{
    return ( volts - 0.5f ) * 100.0f ;
}

