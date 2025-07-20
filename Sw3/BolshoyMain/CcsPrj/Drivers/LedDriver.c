/*
 * LedDriver.c
 *
 *  Created on: Nov 20, 2016
 *      Author: Yahali Theodor
 *
 *      Files regarding the TLC4911 LED driver ( address pine sets A3..A0 = 8 )
 *      The 7 bit address mode is used
 *      The component is set to PWM only mode, where the PWM's are all set to a desired value
 */

//#include "F28x_Project.h"     // DSP28x Headerfile
#include "..\Application\StructDef.h"

/*
 * \brief Set the control for a single LED
 * \param ind : Index of LED
 * \param PWM : [1..255] LED intensity
 */
void SetLedPwm( short unsigned ind , short unsigned PWM )
{
    if ( PWM > 255 ) PWM = 255 ;
    if ( ind >= 9 ) return ;
    PwmValuesTlc[ind] = PWM ;
}

/*
 * \brief Initialize the LED controller
 */

void LedControlInit( void )
{
    short unsigned cnt ;

    // Set all the LED commands to 0
    for ( cnt = 0 ; cnt < 12 ; cnt++ )
    {
        PwmValuesTlc[cnt] = 0 ; // 100 + cnt * 12 ;
    }
}

short PutCanSlaveQueue( struct CCanMsg * pMsg);
long  GetMalinkiDiscreteCommands(long unsigned src) ;

void SendPwm2Tlc( void )
{
    long unsigned  ledval , dcmd ;
    if ( IsSysTimerElapse(TIMER_I2C_TLC_TRANSMIT, &SysTimerStr)  == 0 )
    {
        return ;
    }
    SetSysTimerTarget (TIMER_I2C_TLC_TRANSMIT , 100000 , &SysTimerStr) ; // No need for next update PWM faster than 100msec

    ledval = (~SysState.GMalinkiLedSet) & 0x1ff ;

    // Set additional Malinki commands
    dcmd = GetMalinkiDiscreteCommands(SysState.GMalinkiLedSet) ;
    M2S.Items.ActCmd.cmd.MalinkiSetCmd =  (dcmd & ~0x1ffUL) | ledval;

}



