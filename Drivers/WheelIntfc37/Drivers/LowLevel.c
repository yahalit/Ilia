/*
 * LowLevel.c
 *
 *  Created on: Jun 25, 2023
 *      Author: yahal
 */

#include "..\Application\StructDef.h"

// Linker Defined variables
extern uint32_t Cla1ProgRunStart, Cla1ProgLoadStart, Cla1ProgLoadSize;
extern uint32_t Cla1ConstRunStart, Cla1ConstLoadStart, Cla1ConstLoadSize;


void setupCpuTimers(void)
{
    CPUTimer_setEmulationMode(myCPUTIMER0_BASE, CPUTIMER_EMULATIONMODE_STOPAFTERNEXTDECREMENT);
    CPUTimer_setPreScaler(myCPUTIMER0_BASE, 0U);
    CPUTimer_setPeriod(myCPUTIMER0_BASE, 4294967295U);
    CPUTimer_disableInterrupt(myCPUTIMER0_BASE);
    CPUTimer_resumeTimer(myCPUTIMER0_BASE);

    //myCPUTIMER1 initialization
    CPUTimer_setEmulationMode(myCPUTIMER1_BASE, CPUTIMER_EMULATIONMODE_STOPAFTERNEXTDECREMENT);
    CPUTimer_setPreScaler(myCPUTIMER1_BASE, 119U);
    CPUTimer_setPeriod(myCPUTIMER1_BASE, 4294967295U);
    CPUTimer_disableInterrupt(myCPUTIMER1_BASE);
    CPUTimer_resumeTimer(myCPUTIMER1_BASE);

    //myCPUTIMER2 initialization
    CPUTimer_setEmulationMode(myCPUTIMER2_BASE, CPUTIMER_EMULATIONMODE_STOPAFTERNEXTDECREMENT);
    CPUTimer_setPreScaler(myCPUTIMER2_BASE, 0U);
    CPUTimer_setPeriod(myCPUTIMER2_BASE, 4294967295U);
    CPUTimer_disableInterrupt(myCPUTIMER2_BASE);
    CPUTimer_resumeTimer(myCPUTIMER2_BASE);
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
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_LINB);



    SysCtl_disablePeripheral(SYSCTL_PERIPH_CLK_PMBUSA);

    return;
}

void initClbExample(void);

void InitPeripherals(void)
{
    SysCtl_disableWatchdog();


    // Enable temperature sensor (C12)
    ASysCtl_enableTemperatureSensor();

    // initialize the interrupt controller
    Interrupt_initModule();

    // init vector table
    MyInterrupt_initVectorTable() ;
    //Interrupt_initVectorTable();


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


#endif
    ASysCtl_lockVREG();

    //
    // Configure GPIO20 and GPIO21 as digital pins
    //
    GPIO_setAnalogMode(20U, GPIO_ANALOG_DISABLED);
    GPIO_setAnalogMode(21U, GPIO_ANALOG_DISABLED);


    SysCtl_deviceCal();

    SetupPeripheralClks() ;


    setupCpuTimers() ;


    SetupADCs();

    setupDac() ;

    SetupEcap() ;
    // Pacer shall interrupt only on too big count
    SetupPwmPacer( PWM_A_BASE,CUR_SAMPLE_TIME_USEC * 25 / 10  );

    initCLA();

    setupMCAN();

    setupQEP1();
    setupQEP2();

    setupGpio() ;
    setupINPUTXBAR() ;
    setupCLBXBAR() ;

    setupCLB();
    //initClbExample();

    setupLin() ;
    setupDMA();

    SetupFSI() ;

    // Set Halls as digital inputs
    EALLOW ;
    HWREG( GPIOCTRL_BASE + GPIO_O_GPHAMSEL ) = ~(GPIO_GPHAMSEL_GPIO242 | GPIO_GPHAMSEL_GPIO225  | GPIO_GPHAMSEL_GPIO244 | GPIO_GPHAMSEL_GPIO241 |GPIO_GPHAMSEL_GPIO227 |GPIO_GPHAMSEL_GPIO230) ;
    HWREG( GPIOCTRL_BASE + GPIO_O_GPHCTRL )  = 0x28282828 ; // 3MHz sampling
    HWREG( GPIOCTRL_BASE + GPIO_O_GPHQSEL1 )  = 0xaa0aaaaa ; // 6 samples (excluding reserved)
    HWREG( GPIOCTRL_BASE + GPIO_O_GPHQSEL2 )  = 0x0a8a8a8a ; // 6 samples (excluding reserved)
}


void PauseInts(void)
{
    Interrupt_disable(INT_ECAP1);
    Interrupt_disable(INT_EPWM1);

    SysCtl_disableWatchdog();
}

void UnpauseInts(void)
{
    Interrupt_enable(INT_EPWM1);
    Interrupt_enable(INT_ECAP1);
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP2);
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP4);
}


void SetupIsr(void)
{


    // setup the Event Trigger Selection Register (    //EPWM_setInterruptSource(PWM_A_BASE, EPWM_INT_TBCTR_PERIOD);
    DINT ;
    EALLOW ;


    // Event selection
    HWREGH(PWM_A_BASE + EPWM_O_ETSEL) = 0xc0a ; // Have SOCA and INTA on period


    HWREGH(ADCA_BASE+ADC_O_INTSEL1N2) = 0x61  ; // Enable interrupt , Make the interrupt continuous, no need to reset ADC interrupt source
    //HWREGH(ADCB_BASE+ADC_O_INTSEL1N2) |= ( (1<<6) | (1 << 5) )  ; // Enable interrupt , Make the interrupt continuous, no need to reset ADC interrupt source

    Interrupt_register(INT_ECAP1, &EcapIsr);
    Interrupt_register(INT_EPWM1, &PwmIsr);
    Interrupt_register(INT_TIMER0, &Timer0Interrupt);

    //EPWM_disableInterrupt(PWM_A_BASE);

    EALLOW ;
    HWREGH(PWM_A_BASE + EPWM_O_CMPA + 0x1U)  = CUR_SAMPLE_TIME_CLOCKS - SAMPLE_BEFORE_EVENT_USEC * CPU_CLK_MHZ  ; // Sample  before event
    //HWREGH(PWM_A_BASE + EPWM_O_CMPB + 0x1U)  = CUR_SAMPLE_TIME_CLOCKS * 2 - SAMPLE_BEFORE_EVENT_USEC * CPU_CLK_MHZ  ; // Sample  before event
    HWREGH(PWM_A_BASE + EPWM_O_ETPS)  = 0x101 ; // SOCA and INT enabled for each event

    EPWM_setADCTriggerSource(PWM_A_BASE,EPWM_SOC_A, EPWM_SOC_TBCTR_U_CMPA);
    EPWM_enableADCTrigger(PWM_A_BASE, EPWM_SOC_A);

    //EPWM_setInterruptEventCount(PWM_A_BASE, 1);
    EPWM_setADCTriggerEventPrescale(PWM_A_BASE, EPWM_SOC_A,1);

    // setup the Event Trigger Clear Register (ETCLR)
    EPWM_clearEventTriggerInterruptFlag(PWM_A_BASE);
    EPWM_clearADCTriggerFlag(PWM_A_BASE, EPWM_SOC_A);


    //Interrupt_enable(INT_ADCA1);
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);

    CLA_forceTasks(CLA1_BASE, CLA_TASKFLAG_8); // Initialize CLA control

    CLA_setTriggerSource(CLA_TASK_1, CLA_TRIGGER_ADCA1); // Thats immediately upon getting current samples

    HWREGH( CPUTIMER0_BASE+CPUTIMER_O_TCR) = 0x8010; // Timer0 stopped, clear overflow ;interrupts disabled

    EcapInterruptEna() ;
    //HWREGH(PIECTRL_BASE + PIE_O_IER1) = (1<<6) ; // For timer 0
    Interrupt_enable(INT_TIMER0);
    IER = INTERRUPT_ACK_GROUP4 | INTERRUPT_ACK_GROUP3 | INTERRUPT_ACK_GROUP1 ;
    HWREGH(PWM_A_BASE + EPWM_O_TBCTR) = 0 ;
    HWREGH(EPWM1_BASE + EPWM_O_ETCLR) = 0xd ;
    HWREGH(PIECTRL_BASE + PIE_O_ACK) = INTERRUPT_ACK_GROUP3 ;
    HWREGH(PIECTRL_BASE + PIE_O_IER3) = 1U;

    HWREGH(ECAP1_BASE + ECAP_O_ECCLR) = 0xff ;
    HWREGH(PIECTRL_BASE + PIE_O_ACK) = INTERRUPT_ACK_GROUP4 ;
    HWREGH(PIECTRL_BASE + PIE_O_IER4) = 1U;


    // enable the ePWM module time base clock sync signal
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_TBCLKSYNC);

}


__interrupt void MyInterrupt_defaultHandler(void)
{
    uint16_t pieVect;
    uint16_t vectID;

    //
    // Calculate the vector ID. If the vector is in the lower PIE, it's the
    // offset of the vector that was fetched (bits 7:1 of PIECTRL.PIEVECT)
    // divided by two.
    //
    pieVect = HWREGH(PIECTRL_BASE + PIE_O_CTRL);
    vectID = (pieVect & 0xFEU) >> 1U;

    //
    // If the vector is in the upper PIE, the vector ID is 128 or higher.
    //
    if(pieVect >= 0x0E00U)
    {
        vectID += 128U;
    }

    //
    // Something has gone wrong. An interrupt without a proper registered
    // handler function has occurred. To help you debug the issue, local
    // variable vectID contains the vector ID of the interrupt that occurred.
    //
    ESTOP0;
    for(;;)
    {
        ;
    }

}

//*****************************************************************************
//
// Interrupt_initVectorTable
//
//*****************************************************************************
void MyInterrupt_initVectorTable(void)
{
    uint16_t i;

    EALLOW;

    //
    // We skip the first three locations because they are initialized by Boot
    // ROM with boot variables.
    //
    for(i = 3U; i < 224U; i++)
    {
        HWREG(PIEVECTTABLE_BASE + (2U * i)) =
            (uint32_t)MyInterrupt_defaultHandler;
    }

    //
    // NMI and ITRAP get their own handlers.
    //
    HWREG(PIEVECTTABLE_BASE + ((INT_NMI >> 16U) * 2U)) =
        (uint32_t)Interrupt_nmiHandler;
    HWREG(PIEVECTTABLE_BASE + ((INT_ILLEGAL >> 16U) * 2U)) =
        (uint32_t)Interrupt_illegalOperationHandler;

    EDIS;
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
    CLA_mapTaskVector(CLA1_BASE, CLA_MVECT_8, (uint16_t)&Cla1Task8);
    SetClaAllSw();

#pragma diag_warning=770

    //
    // Enable Tasks 1 and 8
    //
    CLA_enableTasks(CLA1_BASE, (CLA_TASKFLAG_1 | CLA_TASKFLAG_2 | CLA_TASKFLAG_8));

    //
    // Force task 8, the one time initialization task
    //
    // CLA_forceTasks(CLA1_BASE, CLA_TASKFLAG_8);
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




/*
 * PWM pin test
 */
/*
void InitKuku(void)
{
#undef NGP
    #define NGP 2
    HWREG( GPIODATA_BASE + GPIO_O_GPACLEAR) = 0b11111100 ;
    GPIO_setPinConfig(GPIO_2_GPIO2);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_SYNC);

#undef NGP
#define NGP 3
    GPIO_setPinConfig(GPIO_3_GPIO3);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_SYNC);

#undef NGP
#define NGP 6
    GPIO_setPinConfig(GPIO_6_GPIO6);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_SYNC);


#undef NGP
#define NGP 7
    GPIO_setPinConfig(GPIO_7_GPIO7);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_SYNC);

    HWREG( GPIODATA_BASE + GPIO_O_GPACLEAR) = (1<<2) | (1<<3) | (1<<6) || (1<<7) ;


    HWREG( GPIODATA_BASE + GPIO_O_GPASET) = (1<<2)  ;
    HWREG( GPIODATA_BASE + GPIO_O_GPACLEAR) = (1<<2)  ;

    HWREG( GPIODATA_BASE + GPIO_O_GPASET) = (1<<3)  ;
    HWREG( GPIODATA_BASE + GPIO_O_GPACLEAR) = (1<<3)  ;


    HWREG( GPIODATA_BASE + GPIO_O_GPASET) = (1<<6)  ;
    HWREG( GPIODATA_BASE + GPIO_O_GPACLEAR) = (1<<6)  ;

    HWREG( GPIODATA_BASE + GPIO_O_GPASET) = (1<<7)  ;
    HWREG( GPIODATA_BASE + GPIO_O_GPACLEAR) = (1<<7)  ;
}
*/


void ResetHardwareSysTimer(void)
{
    HWREG(CPUTIMER0_BASE + CPUTIMER_O_TIM) = 0 ;
}

void __error__(const char *filename, uint32_t line)
{
    ESTOP0 ;
}
