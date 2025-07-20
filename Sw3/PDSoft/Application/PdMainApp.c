//#include "F28x_Project.h"     // DSP28x Header file
#define CAN_OWNER
#define PD_VARS_OWNER

#include "..\Drivers\F2837x_YDCAN.h"
#include "PdStructDef.h"


// Local functions
void EnableInterrupts(void);
void InitTimerValues(void);
void InitSysDataPD(void);
void IdleCbit(void);
void IdleCbitResponse(void);
void PowerSuppliesMng( void);
void RunSystem();
void ClearExceptionsPD(void);
void ActivatePumps(void) ;

#ifndef _LPSIM

void TestStructs()
{
	extern void TestStructInPage ( short unsigned * ptr , short unsigned ) ;
	TestStructInPage ( (short unsigned* ) & Recorder , sizeof( Recorder) ) ;
}

void PdIdleLoop(void)
{
    UpdateSysTimer(&PDSysTimerStr);

    while ( CanSlaveInQueuePD.nPut != CanSlaveInQueuePD.nGet)
    {
        CanSlavePD() ; // CAN slave in response to host
    }
    ActivatePumps() ;

    // Start the 12V/24V control
    PowerSuppliesMng() ;

    IdleCbit() ; //Analyze system state
    IdleCbitResponse() ; // React system CBIT findings

    RunSystem();
}

void  main()
{

	// Initialize System Control:
	// PLL, WatchDog, enable Peripheral Clocks
	InitSysCtrl();
	EALLOW ;
	ClkCfgRegs.LOSPCP.bit.LSPCLKDIV = 0 ; // For this app, maintain full resolution for SCI

//  Clear all interrupts and initialize PIE vector table:
// Disable CPU interrupts
	DINT;

// Initialize PIE control registers to their default state.
 // The default state is all PIE interrupts disabled and flags
 // are cleared.
 // This function is found in the F2806x_PieCtrl.c file.
    InitPieCtrl();

 // Disable CPU interrupts and clear all CPU interrupt flags:
    IER = 0x0000;
    IFR = 0x0000;

 // Initialize the PIE vector table with pointers to the Interrupt
 // Service Routines (ISR).
 // This will populate the entire table, even if the interrupt
 // is not used in this example.  This is useful for debug purposes.
 // The shell ISR routines are found in F2806x_DefaultIsr.c.
    InitPieVectTable();

	InitPeripherals(); // Initialize the peripherials

	TestStructs( ) ; // Test that structs referred in the assembly code as pages are indeed linked to a page

    InitAppPD();
    SysStatePD.WakeupState = 0 ; // Get ready to start PS

								//asm(" ESTOP0") ;
	EnableInterrupts(); // Enable ECap1Interrupt


	for( ; ; )
	{
	    PdIdleLoop() ;
	}
}
#else
struct StamPwm 
{
	short unsigned TBPRD;
};

struct StamPwm  EPwm6Regs = {3200} ;
struct StamPwm  EPwm2Regs = { 3200 };

void PdIdleLoop(void)
{

    while ( CanSlaveInQueuePD.nPut != CanSlaveInQueuePD.nGet)
    {
        CanSlavePD() ; // CAN slave in response to host
    }

    // Start the 12V/24V control
    PowerSuppliesMng() ;

    IdleCbit() ; //Analyze system state
    IdleCbitResponse() ; // React system CBIT findings

	RunSystem();
}


#endif

short Pdo3Cycle ;
short Pdo4Cycle ;


/**
 * \brief Build the operational sync driven report
 *
 * \return 0: ok, -1: TX queue is full
 */
short OperSyncReport( void )
{
	extern long unsigned  GetBitStatus(	struct CSdo * pSdo ,short unsigned *nData);
	extern short PutCanSlaveQueuePD( struct CCanMsg * pMsg , struct CCanQueue * pQueue);

	struct CCanMsg  Msg ;
	short unsigned * uPtr , *uPtrS;
	short *sPtr;
	struct CSdo * pSdo ;
	short unsigned  nData ;
	short stat ;
	float t1 , t2  ;

	pSdo = &PdHostSdo;
    sPtr  = (short *) Msg.data ;
	uPtr  = (short unsigned *) Msg.data ;
	uPtrS = (short unsigned *) pSdo->SlaveBuf ;

	// Ready PDO #1
	Msg.UseLongId = 0 ;
	Msg.cobId = ( 0x3 << 7 )  + PROJECT_SLAVE_ID ;
	Msg.dLen = 8 ;

	pSdo->SubIndex = 1 ;
	GetBitStatus(pSdo , &nData);
	Msg.data[0] = pSdo->SlaveBuf[0] ;

	pSdo->SubIndex = 3 ;
	GetBitStatus(pSdo , &nData);
	Msg.data[1] = pSdo->SlaveBuf[0] ;

	pSdo->SubIndex = 2 ;
	GetBitStatus(pSdo , &nData);
	uPtr[3]  = uPtrS[0];

	stat = PutCanSlaveQueuePD( &Msg , &CanSlaveOutQueuePD);
	if ( stat < 0 )
	{
		return stat ;
	}

	// Ready PDO #2
	Msg.cobId = ( 0x5 << 7 )  + PROJECT_SLAVE_ID ;
    uPtr[0] = ManCmd.State  ;

	t1 = ClaState.Filt.Volts24 * 5.0f ;
	t2 = (ClaState.Filt.Volts12[0] + ClaState.Filt.Volts12[1] ) * 1280.0f  ;
	IsNotInRange( &t1 , 256.0f , 0 ) ;
	IsNotInRange( &t2 , 65536.0f , 0 ) ;


	uPtr[1] = (((short unsigned) t1) & 0xff ) +  (((short unsigned) t2) & 0xff00 ) ;

	t1 = (ClaState.Filt.VBat54[0] + ClaState.Filt.VBat54[1] ) * 50.0f ;
	IsNotInRange( &t1 , 65536.0f , 0 ) ;

	uPtr[2] = (short unsigned) t1 ;

	t1 = ClaState.Filt.V36 * 100.0f ;
	IsNotInRange( &t1 , 65536.0f , 0 ) ;
	uPtr[3] = (short unsigned) t1 ;

	stat = PutCanSlaveQueuePD( &Msg , &CanSlaveOutQueuePD);
	if ( stat < 0 )
	{
		return stat ;
	}

	/*
	//Ready PDO 3, in alternation
    Msg.cobId = ( 0x7 << 7 )  + PROJECT_SLAVE_ID ;

    Pdo3Cycle = (Pdo3Cycle+1) & 1 ;

    switch (Pdo3Cycle )
    {
    case 0:
        // X-Y position of manipulator
        uPtr[0] = 0 ;

        uPtr[1] = 0 ;
        //uPtr[2] = (short) ( mod2piS (ManCmd.theta)  * 10430.0F ) ;

        // at the bottom 8 bits of theta there is spare
        uPtr[2] = 0  ;


        uPtr[3] = 0 ;
        break ;
    default:
        uPtr[0] = 0x8000  ;
        break ;
    }

    stat = PutCanSlaveQueuePD( &Msg , &CanSlaveOutQueuePD);
    if ( stat < 0 )
    {
        return stat ;
    }

// PD0 4
    Msg.cobId = ( 0x9 << 7 )  + PROJECT_SLAVE_ID ;
    sPtr[0]  = 0 ;
    sPtr[1]  = 0 ;
    sPtr[2]  = 0 ;
    sPtr[3]  = 0 ;

    switch ( Pdo4Cycle )
    {
    case 0:
        Pdo4Cycle = 1 ;
        break ;
    default:
        Pdo4Cycle = 0 ;
        break ;
    }

    stat = PutCanSlaveQueuePD( &Msg , &CanSlaveOutQueuePD);
    if ( stat < 0 )
    {
        return stat ;
    }
    */
	return 0 ;
}








/**
 * Manage the power supply wakeup
 */
void PowerSuppliesMng( void)
{
	long mask ;
	switch ( SysStatePD.WakeupState)
	{
	case 0:
	   	Buck12Control.Exception = 0x1000 ; // Wait start
     	Buck12Control.MotorOn = 0 ;
    	SysStatePD.WakeupState = 1 ;
    	// Allow time for helper supply to wake up
    	EnableStarterGateDrive(1) ;
    	SetSysTimerTarget ( TIMER_POWER_UP_SEQUENCER , 10000 ,&PDSysTimerStr);
    	break ;
	case 1:
#ifndef _LPSIM
		if ( IsSysTimerElapse(TIMER_POWER_UP_SEQUENCER,&PDSysTimerStr) )
#endif
		{
		   	Buck12Control.Exception = 0x0 ; // Remove exception, lets work
	    	SysStatePD.WakeupState = 2 ;
		}
		break ;
	case 2 :
#ifndef _LPSIM
		if ( IsSysTimerElapse(TIMER_SUPPLYOFF_12,&PDSysTimerStr ))
#endif
		{
			mask = BlockInts() ;
			{ // Critical section
				if ( Buck12Control.MotorOnRequest )
				{
					Buck12Control.VSetPoint = Buck12Control.VSetPointNom ;
					Buck12Control.Exception = 0x0 ;
					Buck12Control.MotorOn = 1 ;
					Buck12Control.MotorOnRequest = 0 ;
				}
				if ( Buck12Control.VSetPoint == 0 )
				{
					Buck12Control.MotorOn = 0 ;
				}
			}
			RestoreInts(mask) ;
		}
#ifndef _LPSIM
		if ( IsSysTimerElapse(TIMER_SUPPLYOFF_24 ,&PDSysTimerStr))
#endif
		{
			mask = BlockInts() ;
			{ // Critical section
				if ( Buck24Control.MotorOnRequest )
				{
					Buck24Control.VSetPoint = Buck24Control.VSetPointNom ;
					Buck24Control.Exception = 0x0 ;
					Buck24Control.MotorOn = 1 ;
					Buck24Control.MotorOnRequest = 0 ;
				}
				if ( Buck24Control.VSetPoint == 0 )
				{
					Buck24Control.MotorOn = 0 ;
				}
			}
			RestoreInts(mask) ;
		}

		if (
#ifndef _LPSIM
			IsSysTimerElapse(TIMER_SUPPLYOFF_54 ,&PDSysTimerStr)  &&
#endif
			Sw54Control.MotorOnRequest )
		{
			mask = BlockInts() ;
			{ // Critical section
				Sw54Control.Exception = 0 ;
				Sw54Control.MotorOn = 1 ;
				Sw54Control.MotorOnRequest = 0 ;
			}
			RestoreInts(mask) ;
		}
		break ;
	default:
		break;
	}
}


/**
 * \brief Continuous self check
 */
void IdleCbit(void)
{
#ifndef _LPSIM
	if ( IsMushroomRelease( )  == 0  )
	{
		PdCBit.MushroomDepressed = 1;
		PdCBit.V24Fail = 1;
		PdCBit.V12Fail = 1 ;
		PdCBit.V54Fail = 1 ;
		Buck12Control.MotorOn = 0 ;
		Buck24Control.MotorOn = 0 ;
		Sw54Control.MotorOn = 0 ;
		SetSysTimerTarget(TIMER_SUPPLYOFF_12,100000 ,&PDSysTimerStr) ;
		SetSysTimerTarget(TIMER_SUPPLYOFF_24,100000 ,&PDSysTimerStr) ;
		SetSysTimerTarget(TIMER_SUPPLYOFF_54,100000 ,&PDSysTimerStr) ;
	}
	else
#endif
	{
		PdCBit.MushroomDepressed = 0;
		PdCBit.V24Fail = ((ClaState.Filt.Volts24 < 20.0F || ClaState.Filt.Volts24 > 28.0F) ? 1 : 0);
		PdCBit.V12Fail = ((ClaState.Filt.Volts12[0] < 10.0F || ClaState.Filt.Volts12[0] > 15.0F) ? 1 : 0);
		PdCBit.V54Fail = (((ClaState.Filt.VServo  < 36.0F) || (Sw54Control.Ready == 0)) ? 1 : 0);
	}

	PdCBit.ShuntFail = 0;

}

/**
 * \brief respond to the findings of self test
 */
void IdleCbitResponse(void)
{
	if ( PdCBit.V24Fail  )
	{
        SetSysTimerTarget(TIMER_RS485_24V_TWAIT,0x7fffffff ,&PDSysTimerStr) ;
	}
	if ( PdCBit.V12Fail  )
	{
	    SetSysTimerTarget(TIMER_RS485_12V_TWAIT,0x7fffffff ,&PDSysTimerStr) ;
	}
}



/*
 * \brief Initialize the app data before RT begins
 */
void InitAppPD()
{
	InitSystemTimer(&PDSysTimerStr );  // Create set of timers and init time counters
	InitTimerValues() ; //Set initial elapse time for the timers
#ifndef _LPSIM //already used by LP
    InitRecorder(FAST_INTS_IN_C, FAST_TS_USEC, SDO_BUF_LEN_LONGS);
#endif
	InitSysDataPD() ; // Initialize system data



#ifdef _LPSIM //ensures we run in sim mode
	ManCmd.SimulationMode = SIMFLAG_MANIPULATOR | SIMFLAG_LASER;
	//set all dynamixels to neutral point
	for( int i = 0; i < sizeof(DynStat24) / sizeof(DynStat24[0]); i++)
		DynStat24[i].Sim.SimPositionCnt = DynStat24[i].PositionOffset+DynStat24[i].NominalEncoderOffset;
	for( int i = 0; i < sizeof(DynStat12) / sizeof(DynStat12[0]); i++)
		DynStat12[i].Sim.SimPositionCnt = DynStat12[i].PositionOffset+DynStat12[i].NominalEncoderOffset;
#endif
}

/**
 * \brief Set initial elapse time for the timers
 */
void InitTimerValues()
{
	SetSysTimerTarget ( TIMER_RS485_24V_TWAIT, 0x7fffffff , &PDSysTimerStr) ; // Practically forever
	SetSysTimerTarget ( TIMER_RS485_24V_TWAIT_RT, 0x1 , &PDSysTimerStr) ; // Start elapsed
	SetSysTimerTarget(TIMER_SUPPLYOFF_12,100000 , &PDSysTimerStr) ;
	SetSysTimerTarget(TIMER_SUPPLYOFF_24,100000 , &PDSysTimerStr) ;
	SetSysTimerTarget(TIMER_SUPPLYOFF_54,100000 , &PDSysTimerStr) ;
    SetSysTimerTargetSec( TMR_MUSHROOM_PRESS , 0.001 ,&PDSysTimerStr) ;
}

void ApplyAdcCorrections ( void  )
{
    float resid[16] ;
    short cnt ;
    for ( cnt = 0 ; cnt < 16 ; cnt++ )
    {
        resid[cnt] = NomAdcGains[cnt] ;
    }
    resid[1] = resid[1] * ( 1 + AdcCalibArray[LCalibPar_V36Gain] ) ;
    resid[6] = resid[6] *(1 + AdcCalibArray[LCalibPar_VBatGain]) ;

    resid[7] = resid[7] *(1 + AdcCalibArray[LCalibPar_V12Gain]) ;
    resid[0] = resid[0] *(1 + AdcCalibArray[LCalibPar_V24Gain]) ;
    resid[5] = resid[5] *(1 + AdcCalibArray[LCalibPar_VSrvGain]) ;

    for ( cnt = 0 ; cnt < 16 ; cnt++ )
    {
        AdcGains[cnt] = resid[cnt] ;
    }
}




/**
 *
 * \brief Initialize system level application parameters
 *
 * \detail Initialize the CAN axes
 */
void InitSysDataPD(void)
{
	short unsigned cnt ;
	struct CFloatParRecord *pPar ;

	ClearMemRpt ( (short unsigned *) &ManCmd , (short unsigned) sizeof( struct CManCmd  ) )  ;
    ClearMemRpt ( (short unsigned *) &ClaState , (short unsigned) sizeof( ClaState ) )  ;
    ClearMemRpt ( (short unsigned *) &AdcGains , (short unsigned) sizeof( AdcGains  ) )  ;
    for ( cnt = 0 ; cnt < 16 ; cnt++)
    {
        AdcCalibArray[cnt] = 0 ;
    }
    OverRideMushroom = 0  ;

	FlashCalibPD = (struct CCalibPD *) 0x0BC000; // Sector M
    FlashCalibManipPD = (struct CCalibPD *) 0x0BA000; // Sector L

	SlaveSdoPD.SlaveBuf = (unsigned long* ) SlaveSdoBufPD ;
	PdHostSdo.SlaveBuf = (unsigned long* ) HostSlaveSdoBufPD ;

	SyncMsg.UseLongId = 0;
	SyncMsg.cobId = 0x80;
	SyncMsg.dLen = 0;
	SyncMsg.data[0] = 0;
	SyncMsg.data[1] = 0;

	SysStatePD.CanRxEnable = 1 ;

	CanSlaveOutQueuePD.nQueue = N_SLAVE_QUEUE ;
	CanSlaveInQueuePD.nQueue =  N_SLAVE_QUEUE ;

    //SpiHandleStrPD.Tx2HostCtr = 0xffff ; // a "never can naturally happen" value
	//SpiHandleStrPD.CCanMsgSize = sizeof( struct CCanMsg) ;


    // Go through the entire parameters table and load the defaults
    for ( cnt = 0 ; cnt < 2000 ; cnt++ )
    {
        pPar = (struct CFloatParRecord  *) &ParTablePD[cnt];
        if ( pPar->ptr == (float*) 0 )
        {
            break ;
        }
        *pPar->ptr = pPar->dflt ;
    }


	//#define V36_MEAS_VANDAL_FAC 1.00f // 1.72f
	//#define V36_MEAS_VANDAL_FAC 1.00f // 1.72f

/*
	// 24 V
	SetAdc(0, 0.008961881144663f) ; // , 0, 0.98f, &PdAnalogs.Volts24);
	//PTC
	SetAdc(1, 0.0138f) ; // , 0, 0.2f, &PdAnalogs.V36);
	//ServoCur
	SetAdc(2, 0.0146f) ; // , 0, 0.98f, &PdAnalogs.CurServo);
	// Air pump #1
	SetAdc(3, 3.4877e-04f) ; // , 0, 0.2f, &PdAnalogs.CurAirPump[1]);
	// Air pump #2
	SetAdc(4, 3.4877e-04f) ; // , 0, 0.2f, &PdAnalogs.CurAirPump[2]);
	// VServo ADC
	SetAdc(5, 0.0238f * 1.1f) ; // , 0, 0.5f, &PdAnalogs.VServo);
	// VBat meas #1
	SetAdc(6, 0.025009326720506f * 1.05f) ; // , 0, 0.5f, &PdAnalogs.VBat54[0]);
	// 12 V meas #1
	SetAdc(7, 0.006773565807482f ) ; // , 0, 0.98f, &PdAnalogs.Volts12[0]);
	// Air pump #3
	SetAdc(8, 3.4877e-04f) ; // , 0, 0.2f, &PdAnalogs.CurAirPump[0]);
	//Cur 5V
	SetAdc(9, 0.001464843750000f * 2) ; // , 0, 0.98f, &PdAnalogs.Cur5);
	//Volt 5V
	SetAdc(10, 0.001464843750000f) ; // , 0, 0.98f, &PdAnalogs.Volts5); // 2A/V * 3/4096
																 //Shunt current
	SetAdc(11, 0.003555216648524f) ; // , 0, 0.98f, &PdAnalogs.IShunt);
	//Cur 24V
	SetAdc(12, 0.001464843750000f) ; //  * 2, 0, 0.98f, &PdAnalogs.Cur24);
	//Cur 12V
	SetAdc(13, 0.001464843750000f * 2) ; // , 0, 0.98f, &PdAnalogs.Cur12);

	// VBat meas #2
	SetAdc(14, 0.025009326720506f * 1.05f) ; // , 0, 0.5f, &PdAnalogs.VBat54[1]);
	// 12 V meas #2
	SetAdc(15, 0.006773565807482f ) ; // , 0, 0.98f, &PdAnalogs.Volts12[1]);
*/
	// Initialize the supply sequencing
	Buck12Control.MotorOn = 0;
	Buck12Control.VinMin = 20.0f;
	Buck12Control.VinMax = 47.0f;
	Buck12Control.VoutMax = 16.0f;
	Buck12Control.IoutMax = 9;
	Buck12Control.Val2PWM = (float) EPwm6Regs.TBPRD ;




	Buck24Control.MotorOn = 0;
	Buck24Control.VoutMax = 28.0f ;
	Buck24Control.IoutMax = 9  ;
    Buck24Control.Val2PWM = (float) EPwm2Regs.TBPRD ;

#define LV_OPEN_TIME 1.5e-6f
	Sw54Control.IoutMax = 50 ;
	Sw54Control.VinMin = 36.0f ;
	Sw54Control.VinMax = 75.0f ;
	Sw54Control.pwmFrame = EPwm8Regs.TBPRD  ;
	Sw54Control.Val2PWM = (float) Sw54Control.pwmFrame ;
	Sw54Control.Tpwm = Sw54Control.Val2PWM / ( PWM_CLK_MHZ * 1e6f);
	Sw54Control.StartVout = LV_OPEN_TIME / Sw54Control.Tpwm ;
	Sw54Control.StartPwm = Sw54Control.StartVout * Sw54Control.Val2PWM  ;
	Sw54Control.pwm = Sw54Control.pwmFrame + 100 ; // Value that never happens
	Sw54Control.StartingCtr = 0 ;
	Sw54Control.ValOut  = 0 ;


    DealCalibrationPD (1) ; // Deal with calibration - read from flash
    DealCalibrationManipPD(1) ;


    // Initialize the programming parameters with flash contents
    ReadFlashStruct ( (long unsigned*) &CalibProgPD.Calib , (long unsigned *) FlashCalibPD , sizeof(CalibProgPD.Calib)-sizeof(CalibPD.Stam)  ) ;


    Tx12_24_ForCardTest = 0 ;
}


#ifndef _LPSIM

long unsigned GetSamplingTime( short unsigned ind)
{
	if ( ind == 0 ) return FAST_TS_USEC ;
	return ( (long unsigned)SPI_CYC_IN_C * FAST_TS_USEC ) ;
}

void InitCla(void);
void InitCMPSS(void);


/**
 * @brief  Initialize the hardware peripherals
 */
void InitPeripherals( void )
{
#ifndef _LPSIM
	extern unsigned short InitPwm4Pulse( volatile struct EPWM_REGS * pwm ,  short usecFrame );
	extern short InitSciA ( long unsigned baudrate );
    InitGpio(); // Initialize all IO to inputs

	InitEbss() ; // Reset ebss space to zero
	InitCpuTimers12() ; // Initialize the CPU timers
	InitAdc() ; // Init ADC converters
	//InitSpi4Host() ; // Init SPI A communications
	InitCan() ; // Init the CAN controllersInitEncoder( &EQep2Regs , &WheelEncR) ;

	InitCla() ;
	// Trips
	//SetTrip4MuxAsAdcEvt() ;
	InitCMPSS();

	// Set the PWM A just as timing source to sync all the other activity
	InitPwm4OpenCollector( 1 ,  0 , FAST_TS_USEC ) ;
	EPwm1Regs.TBCTL.bit.PHSEN = 0 ;
	EPwm1Regs.TBCTL.bit.SYNCOSEL= 1 ;

	// For the 24 volt
	InitPwm4Converter( 2,  FAST_TS_USEC / 2 );
	// For the 12 volt
	InitPwm4Converter( 6,   FAST_TS_USEC  / 2  );

	// For brake 1
	InitPwm4OpenCollector( 3, 0 ,  INFINEON_PERIOD_US );

	// PWM 4 and 5 are there only to keep the sync chain
	InitPwm4OpenCollector( 4, 0 ,  FAST_TS_USEC );
	InitPwm4OpenCollector( 5, 0 ,  FAST_TS_USEC );

	// For brake 2
	InitPwm4OpenCollector( 7, 0 ,  INFINEON_PERIOD_US );

	// For brake 3
	InitPwm4OpenCollector( 7, 1 ,  INFINEON_PERIOD_US );

	// For PWM shunt
	//InitPwm4OpenCollector( 8, 0 ,  FAST_TS_USEC );

	// For soft start
	InitPwm4OpenCollector( 8, 1 ,  FAST_TS_USEC   );

	// Set trips for soft start
	EALLOW ;
    EPwmXbarRegs.TRIP4MUX0TO15CFG.bit.MUX0 = 0x00;// CMPSS1.CTRIPH-->mux0-->TRIP4
    EPwmXbarRegs.TRIP4MUXENABLE.bit.MUX0 = 0x01;// Enable MUX 0

	EPwm8Regs.DCTRIPSEL.bit.DCAHCOMPSEL = 0x3; // Select Trip 4 signal for DCAH: CMPSS1.CTRIPH-->mux0-->TRIP4-->DCAH
	EPwm8Regs.TZDCSEL.bit.DCAEVT2 = 2;// DCAEVT2 generated when DCAH
	EPwm8Regs.TZSEL.bit.DCAEVT2 = 1; // Configure DCAEVT2 as CBC Trip

	EPwm8Regs.TZCTL.bit.DCAEVT1 = 2 ;
    EPwm8Regs.TZCTL.bit.DCBEVT1 = 2 ;
    EPwm8Regs.TZCTL.bit.DCAEVT2 = 2 ;
    EPwm8Regs.TZCTL.bit.DCBEVT2 = 2 ;


	// For brake 4
	//InitPwm4OpenCollector( 9, 0 ,  INFINEON_PERIOD_US );

	// For brake 5
	//InitPwm4OpenCollector( 9, 1 ,  INFINEON_PERIOD_US );

	// For brake 6
	//InitPwm4OpenCollector( 10, 0 ,  INFINEON_PERIOD_US );

	// For chakalaka
	// InitPwm4OpenCollector( 10, 1 ,  INFINEON_PERIOD_US );

	// For brake 7
	InitPwm4OpenCollector( 11, 0 ,  INFINEON_PERIOD_US );

	// For brake 8
	InitPwm4OpenCollector( 11, 1 ,  INFINEON_PERIOD_US );

	EALLOW ;
	// Set EPWM2 to activate the ADC in 8usec sequence
	EPwm2Regs.ETSEL.bit.SOCAEN = 1 ;
	EPwm2Regs.ETSEL.bit.SOCASEL = 1 ; // Zero
	EPwm2Regs.ETPS.bit.SOCAPRD = 1 ;

	EPwm6Regs.ETSEL.bit.SOCAEN = 1 ;
	EPwm6Regs.ETSEL.bit.SOCASEL = 6 ; // B up at the middle
	EPwm6Regs.CMPB.bit.CMPB = EPwm2Regs.TBPRD >> 1 ;
	EPwm6Regs.ETPS.bit.SOCAPRD = 1 ;

	// Trip controls: 12 and 24V should trip on over current and over voltage
	// Over voltage 24 = A0
	// Over voltage 12 = IN15
	// Over current 24 = B4
	// Over current 12 = B5
	AdcaRegs.ADCPPB1CONFIG.bit.TWOSCOMPEN = 0 ;
	AdcaRegs.ADCPPB1CONFIG.bit.CONFIG = 0   ; // Thats A0

	AdcaRegs.ADCPPB2CONFIG.bit.TWOSCOMPEN = 0 ;
	AdcaRegs.ADCPPB3CONFIG.bit.CONFIG = 15   ; // Thats A15

	AdcaRegs.ADCPPB1OFFREF = 2678 ; // Thats 1.96 V ... 24V at load
	AdcaRegs.ADCPPB2OFFREF = 1771 ; // Thats 1.37 V ... 12V at load

	AdcaRegs.ADCPPB1TRIPHI.bit.LIMITHI = 300 ;
	AdcaRegs.ADCPPB2TRIPHI.bit.LIMITHI = 200 ;

	AdcaRegs.ADCEVTSEL.all = 0 ;
	AdcaRegs.ADCEVTSEL.bit.PPB1TRIPHI = 1 ;
	AdcaRegs.ADCEVTSEL.bit.PPB2TRIPHI = 1 ;

	AdcaRegs.ADCEVTCLR.all = 0x7777  ;

	// The INA195 will trip at about 6A each supply
	AdcbRegs.ADCPPB1CONFIG.bit.TWOSCOMPEN = 0 ;
	AdcbRegs.ADCPPB1CONFIG.bit.CONFIG = 4   ; // Thats B4

	AdcbRegs.ADCPPB2CONFIG.bit.TWOSCOMPEN = 0 ;
	AdcbRegs.ADCPPB3CONFIG.bit.CONFIG = 5   ; // Thats B5

	AdcbRegs.ADCPPB1OFFREF = 2048 ; // Mid range
	AdcbRegs.ADCPPB2OFFREF = 2048 ; //

	AdcbRegs.ADCPPB1TRIPHI.bit.LIMITHI = 2000 ;
	AdcbRegs.ADCPPB2TRIPHI.bit.LIMITHI = 2000 ;

	AdcbRegs.ADCEVTSEL.all = 0 ;
	AdcbRegs.ADCEVTSEL.bit.PPB1TRIPHI = 1 ;
	AdcbRegs.ADCEVTSEL.bit.PPB2TRIPHI = 1 ;

	AdcbRegs.ADCEVTCLR.all = 0x7777  ;

	// Config trip 4 to get any current / voltage trip
	/*
	EPwmXbarRegs.TRIP4MUX0TO15CFG.bit.MUX0 =2  ; // ADCAEVT1
	EPwmXbarRegs.TRIP4MUX0TO15CFG.bit.MUX2 =2  ; // ADCAEVT2
	EPwmXbarRegs.TRIP4MUX0TO15CFG.bit.MUX8 =2  ; // ADCBEVT1
	EPwmXbarRegs.TRIP4MUX0TO15CFG.bit.MUX10 =2  ; // ADCBEVT2
	EPwmXbarRegs.TRIP4MUXENABLE.all = 1L + (1L<<2) + (1L<<8) + (1L<<10) ;
    */

	EDIS ;

	InitSciA ( 115200 );

	SetupMuxGpio() ; // Setup the pin muxes after the peripherals are programmed
#endif 
	SetAirPump( IND_PUMP_1 , 0) ;
    SetAirPump( IND_PUMP_2 , 0 ) ;
    IsrTimerPD.UsecTimerLL = 0;
	//InitEcap1ForTicker(); // Start ECAP1 as system ticker
}

/**
 * \brief Set a CPU pin.
 *
 * \param ID : GPIO number
 * \param function : Function ID at the CPU mux
 * \param dir : 1 (GPIO_OUTPUT) for output, 0 (GPIO_INPUT) for input
 * \param flags: Inputs are GPIO_ASYNC or GPIO_QUAL6 or GPIO_QUAL3 or GPIO_SYNC
 * 					and may be GPIO_INVERT , GPIO_PULLUP
 * 				 outputs are either PUSHPULL or GPIO_OPENDRAIN
 *
 *
 */
void SetCpuPin ( short unsigned ID , short unsigned function , short unsigned dir , short unsigned flags )
{
	GPIO_SetupPinMux(ID, GPIO_MUX_CPU1, function);
	GPIO_SetupPinOptions(ID, dir, flags);
}


/**
 * \brief Set all the GPIO mux to final position
 *
 * This is for all the peripherals that are programmed while the relevant pins are inputs
 * The CAN (not muxed here but in InitCan() ) is an exception since proper line interaction
 * is necessary for synchronizing to the net
 *
 * Please refer the schematic for further details
 *
 */
void SetupMuxGpio(void)
{
	// PWM 2 A/B for 24V
	SetCpuPin( 2 , 1, GPIO_OUTPUT  , GPIO_PUSHPULL ) ;
	SetCpuPin( 3 , 1, GPIO_OUTPUT  , GPIO_PUSHPULL ) ;

	// PWM 3 A for BRAKE1
	//SetCpuPin( 4 , 1, GPIO_OUTPUT  , GPIO_PUSHPULL ) ;
	GpioDataRegs.GPACLEAR.bit.GPIO4 = 1 ;
	SetCpuPin( 4 , 0, GPIO_OUTPUT  , GPIO_PUSHPULL ) ;

	// PWM 6A and 6B for 12V
	SetCpuPin( 10 , 1, GPIO_OUTPUT  , GPIO_PUSHPULL ) ;
	SetCpuPin( 11 , 1, GPIO_OUTPUT  , GPIO_PUSHPULL ) ;

	// PWM 7A and 7B for open drains BRAKE2/3
	GpioDataRegs.GPACLEAR.bit.GPIO12= 1 ;
	GpioDataRegs.GPACLEAR.bit.GPIO13 = 1 ;
	SetCpuPin( 12 , 0, GPIO_OUTPUT  , GPIO_PUSHPULL ) ;
	SetCpuPin( 13 , 0, GPIO_OUTPUT  , GPIO_PUSHPULL ) ; // Tail camera light

	// PWM 8A and 8B for open drains PWM SHUNT and SOFTSTART
	GpioDataRegs.GPACLEAR.bit.GPIO14 = 1 ; // Head camera light
	// SetCpuPin( 14 , 1, GPIO_OUTPUT  , GPIO_PUSHPULL ) ;
	SetCpuPin( 14 , 0, GPIO_OUTPUT  , GPIO_PUSHPULL ) ; // Camera light (WAS Shunt) shall work as standard IO
	SetCpuPin( 15 , 1, GPIO_OUTPUT  , GPIO_PUSHPULL ) ;

	// PWM 9A and 9B for open drains BRAKE4/5
	GpioDataRegs.GPACLEAR.bit.GPIO16 = 1 ;
	GpioDataRegs.GPACLEAR.bit.GPIO17 = 1 ;
	SetCpuPin( 16 , 0, GPIO_OUTPUT  , GPIO_PUSHPULL ) ;
	SetCpuPin( 17 , 0, GPIO_OUTPUT  , GPIO_PUSHPULL ) ;

	// PWM 10A and 10B for open drains BRAKE6/CHAKALAKA
	GpioDataRegs.GPACLEAR.bit.GPIO18 = 1 ;
	GpioDataRegs.GPACLEAR.bit.GPIO19 = 1 ;
	SetCpuPin( 18 , 0, GPIO_OUTPUT  , GPIO_PUSHPULL ) ;
	SetCpuPin( 19 , 0, GPIO_OUTPUT  , GPIO_PUSHPULL ) ;

	// PWM 11A and 11B for open drains BRAKE7/BRAKE8
	GpioDataRegs.GPACLEAR.bit.GPIO20 = 1 ;
	GpioDataRegs.GPACLEAR.bit.GPIO21 = 1 ;
	SetCpuPin( 20 , 0, GPIO_OUTPUT  , GPIO_PUSHPULL ) ;
	SetCpuPin( 21 , 0, GPIO_OUTPUT  , GPIO_PUSHPULL ) ;

	// Get the "kill state" of the emergency switch
	SetCpuPin( 41 , 0, GPIO_INPUT  , GPIO_QUAL6 | GPIO_PULLUP ) ;

	// SCI A at GPIO42 / 43
	SetCpuPin( 42 , 15, GPIO_OUTPUT  , GPIO_PUSHPULL ) ;
	SetCpuPin( 43 , 15, GPIO_INPUT  , GPIO_ASYNC ) ;

	// Discrete signals DISC1 DISC2
	SetCpuPin( 58 , 0, GPIO_INPUT  , GPIO_SYNC ) ;
	SetCpuPin( 59 , 0, GPIO_INPUT  , GPIO_SYNC ) ;

	// Gate enable
	GpioDataRegs.GPBCLEAR.bit.GPIO60 = 1 ;
	SetCpuPin( 60 , 0 , GPIO_OUTPUT  , GPIO_PUSHPULL ) ;

	// Enable RS485 TX 12 V
	//Set12VRs485Tx(0) ;
	SetCpuPin( 61 , 0 , GPIO_OUTPUT  , GPIO_PULLUP ) ;

	// GPIO62/3 were already programmed for CAN

	// GPIO64 is brake 9 , just GPO
	GpioDataRegs.GPCCLEAR.bit.GPIO64 = 1 ;
	SetCpuPin( 64 , 0 , GPIO_OUTPUT  , GPIO_PUSHPULL ) ;

	// GPIO 65/66 are limit swiches
	SetCpuPin( 65 , 0, GPIO_INPUT  , GPIO_QUAL6 | GPIO_PULLUP) ;
	SetCpuPin( 66 , 0, GPIO_INPUT  , GPIO_QUAL6 | GPIO_PULLUP ) ;

	// GPIO69 is disconnected

	// GPIO70 / 71 are RS485 (SCI B) for the 24V link
	GpioDataRegs.GPCSET.bit.GPIO71 = 1 ;
	SetCpuPin( 70 , 6, GPIO_INPUT  , GPIO_SYNC ) ;
	SetCpuPin( 71 , 6, GPIO_OUTPUT  , GPIO_PULLUP ) ;

	// GPIO72 , GPIO73, GPIO78 and GPIO84 are unused

	// GPIO85 is ena TX for the 24V link
	//Set24VRs485Tx(0) ;

	SetCpuPin( 85 , 0 , GPIO_OUTPUT  , GPIO_PULLUP ) ;

	// GPIO86 was for tail LED (active low, so set to 1 in order to disable conduction)
	GpioDataRegs.GPCSET.bit.GPIO86 = 1 ;
	SetCpuPin( 86 , 0 , GPIO_OUTPUT  , GPIO_PULLUP ) ;

	// GPIO87 is manipulator limit sw1
	SetCpuPin( 87 , 0, GPIO_INPUT  , GPIO_QUAL6 | GPIO_PULLUP ) ;

	// GPIO89 / 90 are RS485 (SCI C) for the 12V link
	GpioDataRegs.GPCSET.bit.GPIO89 = 1 ;
	SetCpuPin( 89 , 6, GPIO_INPUT  , GPIO_SYNC ) ;
	SetCpuPin( 90 , 6, GPIO_OUTPUT  , GPIO_PULLUP ) ;

	// GPIO91 / 92 are I2C
	GpioDataRegs.GPCSET.bit.GPIO91 = 1 ;
	GpioDataRegs.GPCSET.bit.GPIO92 = 1 ;
	SetCpuPin( 91 , 6, GPIO_OUTPUT  , GPIO_OPENDRAIN ) ;
	SetCpuPin( 92 , 6, GPIO_OUTPUT  , GPIO_OPENDRAIN ) ;

	// GPIO99 is manipulator limit sw2
	SetCpuPin( 99 , 0, GPIO_INPUT  , GPIO_QUAL6 | GPIO_PULLUP ) ;

}

#endif




