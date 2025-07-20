/*
 * SeialFlash.c
 *
 *  Created on: Sep 23, 2024
 *      Author: yahal
 */
#include "StructDef.h"



struct CCalib FlashReadStr ;
short ReadCalibFromFlash ( long unsigned *Dest , long unsigned Src_in   )
{
    long unsigned cs ;
    short unsigned cnt ;
    long unsigned *uPtr ;
    short stat ;
    short unsigned len = sizeof( struct CCalib ) ;
    if ( len & 1 )
    {
        return -1 ; // Avoid crash if CCalib is ill defined
    }

    uPtr = (long unsigned *) &FlashReadStr  ;

    ClearMemRpt( (short unsigned * ) Dest , len ) ;

    if ( CheckAlign( (short unsigned *) Dest , 1 ) || (Src_in&1) )
    { // Check both are on long boundary
        return -1 ;
    }

    stat = SFInstructionRead(Src_in, len , (short unsigned *) uPtr );
    if ( stat )
    {
        return stat ;
    }

    len = ( len >> 1 ) ; // Because of shorts

    if ( uPtr[len-2] != 0x12345678)
    {
        return -1 ;
    }
    cs = 0 ;
    for ( cnt = 0 ; cnt < len ; cnt++)
    {
        cs -= *uPtr++  ;
    }
    if ( cs )
    {
        return -1 ;
    }

    uPtr = (long unsigned *) &FlashReadStr  ;
    for ( cnt = 0 ; cnt < len ; cnt++)
    {
        *Dest++ = *uPtr++  ;
    }
    return 0 ;
}


short ReadConfigFromFlashBody (    );

short ReadConfigFromFlash (   )
{
    short stat ;

    stat = ReadConfigFromFlashBody (    ) ;

    if ( stat == 0 )
    {
        if ( Config.RailPitchType < 0 || Config.RailPitchType > 1)
        {
            stat = -1 ;
        }
        if ( Config.WheelArmType < 0 || Config.WheelArmType > 2)
        {
            stat = -1 ;
        }
        if ( Config.ManipConfig < 0 || Config.ManipConfig > 2)
        {
            stat = -1 ;
        }
    }
    if ( stat )
    {
        ClearMemRpt((short unsigned *) &Config  ,sizeof( struct CConfig) );
    }
    return stat ;
}

short ReadConfigFromFlashBody (    )
{

    short unsigned cs ;
    short unsigned cnt ;
    short unsigned *uPtr ;
    short stat ;
    short unsigned len = sizeof( struct CConfig ) ;
    if ( len & 1 )
    {
        return -1 ; // Avoid crash if CCalib is ill defined
    }

    uPtr = (short unsigned *) &Config  ;

    ClearMemRpt( (short unsigned * ) uPtr , len ) ;


    stat = SFInstructionRead(FlashConfig, len ,  uPtr );
    if ( stat )
    {
        return stat ;
    }


    if ( (uPtr[len-3] != 0x1234) || ( uPtr[len-4] != 0x5678))
    {
        return -1 ;
    }
    cs = 0 ;
    for ( cnt = 0 ; cnt < len-1 ; cnt++)
    {
        cs -= *uPtr++  ;
    }
    if ( cs )
    {
        return -1 ;
    }

    return 0 ;
}


