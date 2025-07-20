#include "PdStructDef.h"
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
//#include <file.h>

//#include "F28x_Project.h"     // DSP28x Headerfile
#include "..\Drivers\F2837x_YDCAN.h"


/**
 *  File for system management functions
 */


/*
 * Run power on BIT
 */
void RunPBit( void)
{
	switch ( PBit.State )
	{
	case 0: // Start system
		SetSysTimerTarget ( TIMER_PBIT, 2000000, &PDSysTimerStr) ;
		PBit.State = 1 ;
		break ;
	case 1:
		// Wait communication from LP to
		// - Wake PS
		// - Start talk with axes

		if ( ( PdCBit.V12Fail  ) || ( PdCBit.V24Fail ) )
		{
			SetSysTimerTarget ( TIMER_PBIT, 2000000, &PDSysTimerStr) ;
		}
		if ( IsSysTimerElapse( TIMER_PBIT, &PDSysTimerStr)  )
		{
			PBit.State = 10 ; // 2 ;
		}
		break ;
	default:
	    break;

	}
}


/*
 * Run the system logics
 */
void RunSystem( void )
{
	RunPBit() ;

	if ( Tx12_24_ForCardTest )
	{
	    if ( IsSysTimerElapse(TMR_ATP_RS485,&PDSysTimerStr) )
	    {
	        SetSysTimerTargetSec( TMR_ATP_RS485 , 0.1 ,&PDSysTimerStr) ;
	        ScibRegs.SCITXBUF.all = 'a' ;
	        ScicRegs.SCITXBUF.all = 'b' ;
	    }
	}

}

void ActivatePumps()
{
    short unsigned  pon, mask ;
    long long nowTime  ;

    mask = BlockInts() ;
    nowTime = IsrTimerPD.UsecTimerLL ;
    RestoreInts(mask) ;
    pon = ManCmd.ControlWord.PumpOn ? 1 : 0 ;
    if ( pon == 0 )
    {
        IsrTimerPD.PumpOpTimer = nowTime  ;
    }

    if (OverRideSwitches==0) // ( ManCmd.State==0 && (OverRideSwitches==0))
    {// Just for debug, on package handling the laser is managed automatically
        SetAirPump( IND_PUMP_LASER , ManCmd.ControlWord.LaserPsOn ? 1 : 0 ) ;
        SetAirPump( IND_PUMP_1 , pon  ) ;
        if ( nowTime - IsrTimerPD.PumpOpTimer > 30000 )
        {
            SetAirPump( IND_PUMP_2 , pon ) ;
        }
        else
        {
            SetAirPump( IND_PUMP_2 , 0) ;
        }
    }
}

/**
 * \brief Accept the manipulator control word
 * Operate brakes and laser PS accordingly
 */
void SetManipulatorControlWord( struct CManControlWord cw )
{

    ManCmd.ControlWord = cw ;

    if ( ManCmd.ControlWord.BrakeValid && (OverRideSwitches==0) )
    {
        SetRelayDrv(  3 , ManCmd.ControlWord.ReleaseWheels ? 1 : 0  );
        SetRelayDrv(  4 , ManCmd.ControlWord.ReleaseSteer ? 1 : 0  );
    }

}

