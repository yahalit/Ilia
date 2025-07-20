/*
 * Brakes.c
 *
 *  Created on: Aug 19, 2023
 *      Author: yahal
 */

#include "StructDef.h"

//#pragma  FUNCTION_OPTIONS ( OutBrakeVolts, "--opt_level=0" );
short OutBrakeVolts( float volts  )
{
#ifdef SLAVE_DRIVER
	// Tell the other driver to apply brake
    if ( volts < 10.0f )
    {
        SysState.Cmd2Intfc.bit.BrakeRelease = 0 ;
        SysState.Cmd2Intfc.bit.BrakeVolts = 0 ;
        return 0 ;
    }
    else
    {
        SysState.Cmd2Intfc.bit.BrakeRelease = 1 ;
        SysState.Cmd2Intfc.bit.BrakeVolts = (short) (__fmin(2.0f*(volts-10),31.0f)  )  ;
        return 1 ;
    }

#else
    short  x ;
    float Vbrake ;

    if ( volts >= 15.7f  )
    {
        Vbrake = __fmin ( __fmax( 3.770695971f - 0.1333333333f * __fmin(volts,28.0) , 0.02f ) , 1.71f )  ;
    }
    else
    {
        HWREGH(DACB_BASE + DAC_O_VALA) = 4090 ; // Disable brake
        HWREGH(DACB_BASE + DAC_O_VALS) = 4090 ;
        return 0 ;
    }
    x = (short) ( Vbrake * (4096.0/3.3f) ) ;
    x = __max( x , 0x100) ;
    HWREGH(DACB_BASE + DAC_O_VALA) = (short unsigned) x ;
    HWREGH(DACB_BASE + DAC_O_VALS) = (short unsigned) x ;
    return 1 ;
#endif
}



