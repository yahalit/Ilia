
#include "..\Application\PdStructDef.h"
//#include "F28x_Project.h"     // DSP28x Headerfile

//#include <Dynamixel.h>
//#include "F2837x_YDCAN.h"


/**
 * \brief
 */
short IsMushroomRelease( )
{
    if ( OverRideMushroom != 1 )
    {
        if ( GpioDataRegs.GPBDAT.bit.GPIO41)
        {
            SetSysTimerTargetSec( TMR_MUSHROOM_PRESS , 2.e-3f ,&PDSysTimerStr) ;
        }
        if ( IsSysTimerElapse(TMR_MUSHROOM_PRESS,&PDSysTimerStr) )
        {
            return 0 ; // Interrupted operation
        }
    }
	return 1 ;
}


/**
 * Test the SCI A
 * Clear FIFO
 * TX 4 bytes
 * Wait acceptance and approve
 */
long unsigned TestSciA(short unsigned val)
{

	long unsigned bnt ;

	SciaRegs.SCICTL1.bit.SWRESET=0;
	asm(" rpt #3 ||nop") ;
	SciaRegs.SCICTL1.bit.SWRESET=1;
	asm(" rpt #3 ||nop") ;
	SciaRegs.SCIFFTX.bit.SCIFFENA = 0 ;
	SciaRegs.SCIFFTX.bit.TXFIFORESET = 0 ;
	SciaRegs.SCIFFRX.bit.RXFIFORESET = 0 ;


	SciaRegs.SCITXBUF.bit.TXDT = ( val & 0xff )  ;

	// At 115200 , wait 1msec for arrival is enough
	WaitStam( 1000 , &PDSysTimerStr );
	bnt = SciaRegs.SCIRXBUF.bit.SAR ;

	return bnt ;
}



/**
 * \brief Test the SCI BC which are RS485
 * It has to by while the Dynamixel state machine is idle

long unsigned TestSciBC()
{
	long unsigned RetVal ;
	short cnt ;
	ScibRegs.SCICTL1.bit.SWRESET = 0 ;
	ScicRegs.SCICTL1.bit.SWRESET = 0 ;
	asm( " rpt #3 ||nop");
	ScicRegs.SCILBAUD.bit.BAUD = ScibRegs.SCILBAUD.bit.BAUD ; // Equate baud rates for mutual talks
	ScicRegs.SCIHBAUD.all = ScibRegs.SCIHBAUD.all ;

	ScibRegs.SCICTL1.bit.SWRESET = 1 ;
	ScicRegs.SCICTL1.bit.SWRESET = 1 ;
	asm( " rpt #3 ||nop");

	Dynamixel12.InTx = 0xffff ;
	Dynamixel24.InTx = 0xffff ;
	Dynamixel12.SciErrAcc = 0;
	Dynamixel24.SciErrAcc = 0;

	Dynamixel24.InRx = 0 ;
	DynamixelTxShortForm ( & Dynamixel12) ;
	WaitStam( 6000 ,&PDSysTimerStr);
	RetVal = 0x80000 ;
	if (Dynamixel24.InRx == 16  )
	{
		for ( cnt = 0 ; cnt < 16 ; cnt++ )
		{
			if ( Dynamixel24.RxStr[cnt] != cnt  )
			{
				RetVal += cnt ;
			}
		}
	}
	else
	{
		RetVal += 16 * Dynamixel24.InRx  ;
	}

	Dynamixel12.InRx = 0 ;
	DynamixelTxShortForm ( & Dynamixel24) ;
	WaitStam( 6000 , &PDSysTimerStr);

	if (Dynamixel24.InRx == 16  )
	{
		for ( cnt = 0 ; cnt < 16 ; cnt++ )
		{
			if ( Dynamixel24.RxStr[cnt] != cnt  )
			{
				RetVal = 256 * cnt ;
			}
		}
	}
	else
	{
		RetVal += 4096 * Dynamixel24.InRx  ;
	}


	return RetVal  ;
}
*/


/**
 * \brief Get state of discrete relay drives
 */
long unsigned GetOpenDrainStat()
{
	long unsigned BitStat ;
	BitStat = ( GpioDataRegs.GPADAT.bit.GPIO4 ? 1 : 0 )  ;
	BitStat |=  ( (GpioDataRegs.GPADAT.all & 0x3ff000) >> 11 ) ; // Brake 4 (least) ,5,6 , Chakalaka , Brake 7, 8 (most)
	if  ( GpioDataRegs.GPCDAT.bit.GPIO64 ) BitStat |= 0x800 ; // Brake 9 (FAN)
	if  ( GpioDataRegs.GPCDAT.bit.GPIO86 ) BitStat |= 0x1000 ; // Tail light
	if ( GpioDataRegs.GPBDAT.bit.GPIO58 ) BitStat |= 0x2000; // Disc1
	if ( Sw54Control.MotorOn )BitStat |= 0x4000; // Servo power on
	return BitStat;
}


/**
 * \brief Get the limit switches
 *
 * \return: Bitfield .0 - man sw1 , .1 = man sw2 , .2 = stop sw 1 , .3 = stop sw 2
 *
 */
short unsigned GetLimits( )
{
	short unsigned stat ;
	stat = GpioDataRegs.GPCDAT.bit.GPIO87 ? 1 : 0 ;
	if ( GpioDataRegs.GPDDAT.bit.GPIO99  ) stat += 2 ;
	if ( GpioDataRegs.GPCDAT.bit.GPIO65 ) stat += 4;
	if ( GpioDataRegs.GPCDAT.bit.GPIO66 ) stat += 8;
	if ( GpioDataRegs.GPBDAT.bit.GPIO59 ) stat += (1<<8); // Disc2
	return stat ;
}

/**
 * \brief Set or clear current to the relay driver (12V)
 *
 * This function is Ahbal. It will set the switch regardless of the
 * existence of its high side supply
 */
void SetRelayDrv(  short unsigned index , short unsigned On )
{
	switch ( index )
	{
	case 1:
		if ( On )
		{
			GpioDataRegs.GPASET.bit.GPIO20 = 1;
		}
		else
		{
			GpioDataRegs.GPACLEAR.bit.GPIO20 = 1;
		}
		break ;
	case 2:
		if ( On )
		{
			GpioDataRegs.GPASET.bit.GPIO21 = 1;
		}
		else
		{
			GpioDataRegs.GPACLEAR.bit.GPIO21 = 1;
		}
		break ;
	case 3: // Steer brake
		if ( On )
		{
			GpioDataRegs.GPASET.bit.GPIO4 = 1;
		}
		else
		{
			GpioDataRegs.GPACLEAR.bit.GPIO4 = 1;
		}
		break ;
	case 4: // Wheel brake
		if ( On )
		{
			GpioDataRegs.GPASET.bit.GPIO12 = 1;
		}
		else
		{
			GpioDataRegs.GPACLEAR.bit.GPIO12 = 1;
		}
		break ;
	case 5: // Neck brake
		if ( On )
		{
			GpioDataRegs.GPASET.bit.GPIO13 = 1;
		}
		else
		{
			GpioDataRegs.GPACLEAR.bit.GPIO13 = 1;
		}
		break ;
	case 6: // FAN
		if ( On )
		{
			GpioDataRegs.GPCSET.bit.GPIO64 = 1;
		}
		else
		{
			GpioDataRegs.GPCCLEAR.bit.GPIO64 = 1;
		}
		break ;
	case 10: // Disc1
		if ( On )
		{
			GpioDataRegs.GPBSET.bit.GPIO58 = 1;
		}
		else
		{
			GpioDataRegs.GPBCLEAR.bit.GPIO58 = 1;
		}
	case 11: // Tail light
		if ( On == 0 )
		{
			GpioDataRegs.GPCSET.bit.GPIO86 = 1;
		}
		else
		{
			GpioDataRegs.GPCCLEAR.bit.GPIO86 = 1;
		}
		break ;
    case 12: // Shunt
        if ( On )
        {
            GpioDataRegs.GPASET.bit.GPIO14 = 1;
        }
        else
        {
            GpioDataRegs.GPACLEAR.bit.GPIO14 = 1;
        }
        break ;
	}
}

/**
 * \brief Set or clear current to the chakalaka (12V)
 *
 * This function is Ahbal. It will set the switch regardless of the
 * existence of its high side supply
 */

void SetChakalaka(  short unsigned On )
{
	if ( On )
	{
		GpioDataRegs.GPASET.bit.GPIO19 = 1;// Chakalaka
	}
	else
	{
		GpioDataRegs.GPACLEAR.bit.GPIO19 = 1;// Chakalaka
	}
}

/*
* This function is Ahbal. It will set the switch regardless of the
* existence of its high side supply
*/

void SetFrontCamLight(  short unsigned On )
{
   if ( On )
   {
       GpioDataRegs.GPASET.bit.GPIO14 = 1;// QR code light
   }
   else
   {
       GpioDataRegs.GPACLEAR.bit.GPIO14 = 1;// QR code light
   }
}

/*
* This function is Ahbal. It will set the switch regardless of the
* existence of its high side supply
*/

void SetRearCamLight(  short unsigned On )
{
   if ( On )
   {
       GpioDataRegs.GPASET.bit.GPIO13 = 1;// Tail camera light

   }
   else
   {
       GpioDataRegs.GPACLEAR.bit.GPIO13 = 1;// Tail camera light
   }
}



/**
 * \brief Set or clear current to the pump switches (12V)
 *
 * This function is Ahbal. It will set the switch regardless of the
 * existence of its high side supply
 */
void SetAirPump( short unsigned index , short unsigned On )
{
    // Pump may be enabled only if 24V works
    if ( (OverRideSwitches==0) && ( Buck24Control.MotorOn == 0) )
    {
        On = 0;
    }
	switch ( index )
	{
	case IND_PUMP_LASER:
		if ( On )
		{
			GpioDataRegs.GPASET.bit.GPIO16 = 1;
		}
		else
		{
			GpioDataRegs.GPACLEAR.bit.GPIO16 = 1;
		}
		break ;
	case IND_PUMP_1:
		if ( On )
		{
			GpioDataRegs.GPASET.bit.GPIO17 = 1;
		}
		else
		{
			GpioDataRegs.GPACLEAR.bit.GPIO17 = 1;
		}
		break ;
	case IND_PUMP_2:
		if ( On )
		{
			GpioDataRegs.GPASET.bit.GPIO18 = 1;
		}
		else
		{
			GpioDataRegs.GPACLEAR.bit.GPIO18 = 1;
		}
		break ;
	}
}

/**
 * \brief Test if air pumps are commanded to On
 *
 * \return 1: On, 0: At least one is off
 */
short unsigned ArePumpsOn (void)
{
	if ( GpioDataRegs.GPADAT.bit.GPIO17 && GpioDataRegs.GPADAT.bit.GPIO18 )
	{
		return 1 ;
	}
	return 0 ;
}


/**
 * \brief Initialize the SCI and raw communication management struct of a dynamixel
 *
 * We assume that the low speed pre-scalar has been set to LP_MHZ (divide by 1 (200MHZ clock)?)
 * Communication at DYN_BAUD_RATE , 8 bits in byte, 1 stop bit , no parity , no DTR , no RTS
 */
short InitSciA ( long unsigned baudrate )
{
	short unsigned baud ;
	volatile struct SCI_REGS * pSci ;
	pSci = &SciaRegs ;
	baud = (short) ( ( (float)LP_MHZ * 1000000.0f ) / (baudrate * 8.0f ) + 0.5 ) - 1 ;

	pSci->SCICTL1.bit.SWRESET = 0 ;

	pSci->SCICCR.bit.STOPBITS = 0 ;
	pSci->SCICCR.bit.PARITYENA = 0 ;
	pSci->SCICCR.bit.LOOPBKENA = 0 ;
	pSci->SCICCR.bit.SCICHAR = 7 ;

	pSci->SCIHBAUD.bit.BAUD = ( baud >> 8 ) & 0xff ;
	pSci->SCILBAUD.bit.BAUD = baud & 0xff ;

	// SCICTL2 programming not required
	// SCIRXST is read only
	// SCIRXEMU is not relevant
	pSci->SCIFFTX.all = 0xe040 ;
	pSci->SCIFFRX.all = 0x6040 ;
	pSci->SCIFFRX.bit.RXFFIL = 8 ;

	// SCIFFCT - not relevant - no use of auto baud detect
	pSci->SCIPRI.bit.FREESOFT = 0x3 ;

	pSci->SCICTL1.all = 0x20 + 0x8 + 2 + 1 ;

	return 0 ;
}



/**
 * \brief Get the USEC hardware timer
 *
 * \param 0: off , 1: Tx on
 */
long unsigned GetUsec()
{
	return ~CpuTimer1Regs.TIM.all ;
}


/**
 * \brief Set FAN on/off
 */
void ActivateFan(short unsigned val )
{
	if ( val )
	{
		GpioDataRegs.GPCSET.bit.GPIO64 = 1 ;
	}
	else
	{
		GpioDataRegs.GPCCLEAR.bit.GPIO64 = 1 ;
	}
}


/**
 * Set the enable for the RS485 of the 12v

void Set12VRs485Tx ( short unsigned on )
{
	if ( on )
	{
		GpioDataRegs.GPBSET.bit.GPIO61 = 1 ;
	}
	else
	{
		GpioDataRegs.GPBCLEAR.bit.GPIO61 = 1 ;
	}
}
 */

/**
 * Set the enable for the RS485 of the 24v

 * \param 0: off , 1: Tx on

void Set24VRs485Tx ( short unsigned on )
{
	if ( on )
	{
		GpioDataRegs.GPCSET.bit.GPIO85 = 1 ;
	}
	else
	{
		GpioDataRegs.GPCCLEAR.bit.GPIO85 = 1 ;
	}
}
 */

/**
 * @brief Initialize ECAP1 for generating the basic system time tick
 *
 * ECAP works in PWM mode, and its period interrup at 16usec wakes
 * the fastest CPU interrupt
 * ECAP is not reflected to any DSP pin
 */
void InitEcap1ForTicker(void)
{
	ECap1Regs.ECCTL2.all = 0 ;
	ECap1Regs.ECCTL2.bit.CAP_APWM = 1 ;
	ECap1Regs.ECCTL1.all = 0 ;
	ECap1Regs.CTRPHS = 0 ;
	ECap1Regs.TSCTR = 0 ;
	ECap1Regs.ECEINT.all =0 ;
	ECap1Regs.ECCLR.all = 0xff ;
	ECap1Regs.CAP1 = (CPU_CLK_MHZ * FAST_TS_USEC );
	ECap1Regs.CAP3 = ECap1Regs.CAP1 ;
	ECap1Regs.CAP2 = ECap1Regs.CAP1 >> 1  ;
	ECap1Regs.CAP4 = ECap1Regs.CAP2 ;
	ECap1Regs.ECCTL2.bit.TSCTRSTOP = 1 ;
}

/**
 * @brief Initilize the CPU timers
 *
 * Timer0 as full rate (200M)
 * Timer1 as microseconds
 *
 */
void InitCpuTimers12(void)
{
	// Init timer #0 as full rate counter
	CpuTimer0Regs.TCR.bit.TSS = 1 ;
	CpuTimer0Regs.PRD.all = 0xffffffff ;
	CpuTimer0Regs.TIM.all = 0 ;
	CpuTimer0Regs.TPR.all = 0 ;
	CpuTimer0Regs.TCR.all = 0 ;

	// Init timer #1 as usec counter
	CpuTimer1Regs.TCR.bit.TSS = 1 ;
	CpuTimer1Regs.PRD.all = 0xffffffff ;
	CpuTimer1Regs.TIM.all = 0 ;
	CpuTimer1Regs.TPR.all = (CPU_CLK_MHZ-1) ;
	CpuTimer1Regs.TCR.all = 0 ;
}


/**
 * brief: Initilize the ADC converter
 *
 * The converter is initialized to 16 bits resolution.
 * All the channels convert in high priority (no round robin)
 * SOCs are manual, and each SOC triggers the entire ADC
 *
 */

#ifndef ADC_RESOLUTION_12BIT
#define ADC_RESOLUTION_12BIT 0
#endif

void InitAdc(void)
{
	extern void InitAdcSpecific(volatile struct ADC_REGS *pAdc );
	//write configurations
	EALLOW;

	AdcaRegs.ADCCTL2.bit.PRESCALE = 6; //set ADCCLK divider to /4
	AdcbRegs.ADCCTL2.bit.PRESCALE = 6; //set ADCCLK divider to /4
    AdcSetMode(ADC_ADCA, ADC_RESOLUTION_12BIT, ADC_SIGNALMODE_SINGLE);
    AdcSetMode(ADC_ADCB, ADC_RESOLUTION_12BIT, ADC_SIGNALMODE_SINGLE);

	//Set pulse positions to late
    AdcaRegs.ADCCTL1.bit.INTPULSEPOS = 1;
	AdcbRegs.ADCCTL1.bit.INTPULSEPOS = 1;

	//power up the ADCs
	AdcaRegs.ADCCTL1.bit.ADCPWDNZ = 1;
	AdcbRegs.ADCCTL1.bit.ADCPWDNZ = 1;

	//delay for 1ms to allow ADC time to power up
	CpuTimer1Regs.TIM.all = 2000 ;
	while( CpuTimer1Regs.TIM.all > 1000 ) ;

	InitAdcSpecific(&AdcaRegs) ; // Initialize the Analog/Digital converter
	InitAdcSpecific(&AdcbRegs) ; // Initialize the Analog/Digital converter

    AdcaRegs.ADCINTSEL1N2.all = (1<<6) + (1<<5) + 5  ; // INT1 enabled, after SOC5, no need for EOC clear
    AdcaRegs.ADCINTFLGCLR.bit.ADCINT1 = 0xf; //make sure all flag is cleared


}



/*
 * brief: Initialize a single ADC block
 *
 * Software conversion will do 0-5, 14-15 channels, with 0.6usec window
 * as fit for 16 bit sample with 4 divider of ADC clock from sys clock
 */
void InitAdcSpecific(volatile struct ADC_REGS *pAdc )
{
	long unsigned AcClocks = 41 + (0x7UL<<20) ; // PWM2 on zero

	pAdc->ADCSOC0CTL.all = (0L<<15)+AcClocks;
	pAdc->ADCSOC1CTL.all = (1L<<15)+AcClocks;
	pAdc->ADCSOC2CTL.all = (2L<<15)+AcClocks;
	pAdc->ADCSOC3CTL.all = (3L<<15)+AcClocks;
	pAdc->ADCSOC4CTL.all = (4L<<15)+AcClocks;
	pAdc->ADCSOC5CTL.all = (5L<<15)+AcClocks;
	pAdc->ADCSOC14CTL.all = (14L<<15)+AcClocks;
	pAdc->ADCSOC15CTL.all = (15L<<15)+AcClocks;

	pAdc->ADCINTSEL1N2.all = 0 ; //No ints
	pAdc->ADCINTSEL3N4.all = 0 ; //No ints
	pAdc->ADCINTFLGCLR.bit.ADCINT1 = 0xf; //make sure all flag is cleared
}

/**
 * @brief Setup SPI A for host communication
 *
 */
void InitSpi4Host(void)
{
	SpiaRegs.SPICCR.all = 0 ; // Force SPI reset
	SpiaRegs.SPICTL.all = 0 ;
	SpiaRegs.SPIFFTX.all = 0x40 ; // Clear int
	SpiaRegs.SPIFFRX.all = 0x4040 ; // Clear int and overflow

	SpiaRegs.SPICCR.bit.CLKPOLARITY = 0;
	SpiaRegs.SPICTL.bit.CLK_PHASE = 0 ;
	SpiaRegs.SPICTL.bit.TALK  = 1 ;

	SpiaRegs.SPICCR.bit.SPICHAR = 0xf ;
	SpiaRegs.SPISTS.bit.OVERRUN_FLAG = 1 ;

	SpiaRegs.SPIBRR.bit.SPI_BIT_RATE = 25 ; // Just put something, not used because slave
	SpiaRegs.SPIFFTX.all = 0xe00f ;
	SpiaRegs.SPIFFRX.all = 0x200f ;
	SpiaRegs.SPIFFCT.bit.TXDLY = 0 ;
	SpiaRegs.SPIPRI.all = 0x30 ; // Free run on emulation, no inversion, 4 wire mode

	SpiaRegs.SPICCR.bit.SPISWRESET = 1 ; // Release SPI reset
}



volatile struct EPWM_REGS * GetPwmFromId( short unsigned ID )
{
	switch ( ID) {
	default:
		return NULL ;
	case 1:
		return &EPwm1Regs ;
	case 2:
		return &EPwm2Regs ;
	case 3:
		return &EPwm3Regs ;
	case 4:
		return &EPwm4Regs ;
	case 5:
		return &EPwm5Regs ;
	case 6:
		return &EPwm6Regs ;
	case 7:
		return &EPwm7Regs ;
	case 8:
		return &EPwm8Regs ;
	case 9:
		return &EPwm9Regs ;
	case 10:
		return &EPwm10Regs ;
	case 11:
		return &EPwm11Regs ;
	}
}


/**
 * @brief initialize the PWM for a half bridge of a converter
 *
 * The PWM works the simplest possible:
 * All the PWM work by the same initialization frame:
 *   - ECAP0 out is set as input to the ePWM X bar
 *   - The
 *
 *
 * Counters work on UP mode
 *
 * Note: As much as possible, registers are programmed in the order they appear in
 * 	the TI manual
 */

unsigned short InitPwm4Converter( short unsigned PwmId  ,  short usecFrame )
{
	volatile struct EPWM_REGS * pwm;
	EALLOW ;

	pwm = GetPwmFromId(PwmId) ;

	// Set clock to freeze, divider to full frequency
	pwm->TBCTL.bit.CTRMODE = 0x3 ;
	pwm->TBCTL.bit.HSPCLKDIV = 0 ;
	pwm->TBCTL.bit.PRDLD = 1 ; // Load immediated (no real time regulation)

	// TBCTL2 - left zero as in reset , nothing to program

	// Reset counter
	pwm->TBCTR = 0 ;


	pwm->TBSTS.all  = 0x6 ;// clear status and trips

	// CMPCTL - left zero as in reset , nothing to program
	//  Compares shall be shadowed. loaded at CTR = 0)
	// CMPCTL2 - left zero as in reset , nothing to program

	pwm->DBCTL.bit.OUT_MODE = 3 ; // Standard double sided dead band
	pwm->DBCTL.bit.POLSEL = 2 ; // PWM B is inverted
	pwm->DBCTL2.bit.SHDWDBCTLMODE = 1 ; // CPU shall access now only the shadow, reload on CTR=0
	pwm->DBCTL2.bit.LOADDBCTLMODE = 0 ;
	// AQCTL   - left zero as in reset , nothing to program (Action qualifiers not shadowed)

	// AQTSRCSEL  left zero as in reset , nothing to program (Events not used for PWM shaping)
	// PCCTL   - left zero as in reset , nothing to program (No chopper used)
	// HRCNFG   - left zero as in reset , nothing to program (No high resolution used)
	// HRPWR    - left zero as in reset , nothing to program (No high resolution used)
	// HRMSTEP  - left zero as in reset , nothing to program (No high resolution used)
	// HRCNFG2  - left zero as in reset , nothing to program (No high resolution used)
	// HRPCTL   - left zero as in reset , nothing to program (No high resolution used)
	// GLDCTL   - left zero as in reset , nothing to program (No use for global reload)
	// GLDCFG   - left zero as in reset , nothing to program (No use for global reload)
	// EPWMXLINK- left as in reset , nothing to program (No use for global reload)

	pwm->AQCTLA.all = 0 ;
	pwm->AQCTLA.bit.ZRO = 1  ; // Clear
	pwm->AQCTLA.bit.CAU = 2  ; // Set
	pwm->AQCTLA.bit.PRD = 1  ; // Clear

	// AQCTLA2 is not used

	// AQCTLB is not used
	// AQCTLB2 is not used
	pwm->AQSFRC.bit.RLDCSF = 3 ; // Load AQCSFRC immediate

	pwm->AQCSFRC.all = 0x5 ; // All is low
	// DBREDHR is not used (no high resolution dead band)

	pwm->DBRED.bit.DBRED = (short) ( (float)PWM_CLK_MHZ * DB_USEC ) ;
	// DBFEDHR is not used (no high resolution dead band)
	pwm->DBFED.bit.DBFED = (short) ( (float)PWM_CLK_MHZ * DB_USEC ) ;

	pwm->TBPHS.all = 0 ;

	// TBPRDHR Not used

	// Set frame
	pwm->TBPRD = PWM_CLK_MHZ * usecFrame ;
	pwm->CMPA.bit.CMPA = 0 ;

	pwm->CMPB.bit.CMPB = PWM_CLK_MHZ * usecFrame /4 ;
	pwm->CMPC = PWM_CLK_MHZ * usecFrame /2 ;
	pwm->CMPD = 3 * PWM_CLK_MHZ * usecFrame /2 ;
	//GLDCTL2 not used

	pwm->TZSEL.all = 0 ;
	pwm->TZSEL.bit.DCAEVT1 = 1 ;
	pwm->TZSEL.bit.DCBEVT1 = 1 ;

	//TZDCSEL not needed
	pwm->TZCTL.bit.DCAEVT1 = 2;
	pwm->TZCTL.bit.DCBEVT1 = 2;
	pwm->TZCTL.bit.DCAEVT2 = 2 ;
	pwm->TZCTL.bit.DCBEVT2 = 2 ;


	pwm->TZCTL.bit.TZB = 2 ; // Force low on trip
    pwm->TZCTL.bit.TZA = 2 ;
	//TZCTL2 not needed
	//TZCTLDCA not needed
	// TZCTLDCB not needed
	// TZEINT not needed
	pwm->TZCLR.all = 0x7f;
	pwm->TZOSTCLR.all = 0xff ;

	pwm->ETSEL.all = 0;
	pwm->ETSEL.bit.SOCAEN = 0 ; // Start of convert for ADC is not set - to be set later at global system level
	pwm->ETSEL.bit.SOCASEL = 0 ;

	pwm->ETPS.bit.SOCAPRD = 1 ;

	// ETINTPS not needed
	// ETCNTINITCTL not needed
	// ETCNTINIT not needed

	pwm->DCACTL.all = 0 ;
	// DCBCTL
	// DCFCTL
	// DCCAPCTL
	// DCFOFFSET
	// DCFOFFSETCNT
	// DCFWINDOW
	pwm->DCAHTRIPSEL.all = 0 ; // Event OR Unit
	pwm->DCALTRIPSEL.all = 0 ;
	pwm->DCBHTRIPSEL.all = 0 ;
	pwm->DCBLTRIPSEL.all = 0 ;


	pwm->DCAHTRIPSEL.bit.TRIPINPUT4 = 1 ;
	pwm->DCTRIPSEL.bit.DCAHCOMPSEL = 15 ; // Take the or result of all the trip sources

	pwm->TBPHS.bit.TBPHS = 0 ; 	// Allow synchronization down the stream
	pwm->TBCTL.bit.PHSEN = 1 ;
	pwm->TBCTL.bit.SYNCOSEL= 0 ;

	pwm->TBCTL.bit.CTRMODE = 0  ; // Up
	pwm->TBCTL.bit.FREE_SOFT = 3  ; // Dont stop

    pwm->AQSFRC.bit.RLDCSF = 0 ; // Load AQCSFRC on next

	return 0 ;
}




/**
 * @brief initialize the PWM just for debug pulse observation
 *
 */

unsigned short InitPwm4OpenCollector( short unsigned PwmId ,  short unsigned outind , short usecFrame )
{
	volatile struct EPWM_REGS * pwm;
	EALLOW ;

	pwm = GetPwmFromId(PwmId) ;

	// Set clock to freeze, divider to full frequency
	pwm->TBCTL.bit.CTRMODE = 0x3 ;
	pwm->TBCTL.bit.HSPCLKDIV = 0 ;
//	pwm->TBCTL.bit.HSPCLKDIV = 1 ;

	// Set frame
	pwm->TBPRD = (short unsigned)((PWM_CLK_MHZ * (long) usecFrame)  )  ;

	// Reset counter
	pwm->TBCTR = 0 ;

	// clear status and trips
	pwm->TBSTS.all  = 0x6 ;
	pwm->CMPB.bit.CMPB = pwm->TBPRD + 100 ; // Never compare pwm->TBPRD/2 ;
	pwm->CMPA.bit.CMPA = pwm->TBPRD + 100 ; // Never compare pwm->TBPRD/2 ;
	pwm->CMPCTL.bit.LOADBMODE = 0 ; // Load CMPB on period

	if ( outind == 0 )
	{
		pwm->AQCTLA.all = 0x25 ;  // A up = set , PRD & ZERO = deassert
		pwm->TZCTL.bit.TZA = 2 ;
		pwm->AQCSFRC.bit.CSFA = 1 ;
		//pwm->AQCTLB.all = 0 ;
	}
	else
	{
		//pwm->AQCTLA.all = 0 ;
		pwm->AQCTLB.all = 0x205 ;  // B up = set , PRD & ZERO = deassert
		pwm->TZCTL.bit.TZB = 2 ; // Force low on trip
        pwm->AQCSFRC.bit.CSFB = 1 ;
	}

	// Disable all the shit - chopper, trips, dead band, ...
	pwm->DBCTL.all = 0;
	pwm->DBCTL2.bit.SHDWDBCTLMODE = 1;
	pwm->DBCTL2.bit.LOADDBCTLMODE = 0;
	pwm->PCCTL.all = 0x0 ;

	// clear trip-zones latched status bits
	pwm->TZCLR.all = 0x7F ; // clear all events
	pwm->TZSEL.all = 0 ;

	pwm->TBPHS.bit.TBPHS = 0 ;
	pwm->TBCTL.bit.PHSEN = 0 ;
	pwm->TBCTL.bit.SYNCOSEL= 0 ;

	pwm->TBCTL.bit.CTRMODE = 0  ; // Up
	pwm->TBCTL.bit.FREE_SOFT = 3  ; // Dont stop

	pwm->DCACTL.all = 0 ;

	return 0 ;
}

/**
 * \brief set the atarter drive PS on or off
 */
void EnableStarterGateDrive( short value )
{
	if ( value )
	{
		GpioDataRegs.GPBSET.bit.GPIO60 = 1 ;
	}
	else
	{
		GpioDataRegs.GPBCLEAR.bit.GPIO60 = 1 ;
	}
}
