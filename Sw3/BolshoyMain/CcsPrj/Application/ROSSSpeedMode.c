/*
 * ROSSSpeedMode.c
 *
 *  Created on: May 4, 2024
 *      Author: yahali
 */

#include "StructDef.h"

/*
 * Exit  the ROSS velocity mode
 */
void AbortVelocityMode(void)
{
    if ( SysState.Mot.mode == E_SysMotionModeHostSpeedControl)
    {
        SysState.Mot.QuickStop = 1 ;// Release any quick stop
        SetMotionMode( SysState.Mot.BodyCmd.OldMotionMode,39)  ;
    }
}


/*
 * Set to speed mode: direct ROSS command of linear and angular speed Y244
 */
long SetVelocityMode(void)
{
    short nextmode = SysState.Mot.mode ;

    // Test if there are conditions to enter speed mode
    // Can't be if not-stationaty or actively running a mission
    if ( nextmode != E_SysMotionModeHostSpeedControl)
    {
        switch ( SysState.Mot.mode )
        {
        case E_SysMotionModeStay:
            nextmode = E_SysMotionModeHostSpeedControl ;
            break ;
        case E_SysMotionModePerAxis:
        case E_SysMotionModeManualTravel:
        case E_SysMotionModeAutomaticIdle:
            if (SysState.StationaryTest.bStationary )
            {
                nextmode = E_SysMotionModeHostSpeedControl ;
            }
            break ;
        case E_SysMotionModeAutomatic:
            if ( SysState.Mot.ExecutingQueue ) // || SysState.StationaryTest.bStationary )
            {
                MQ.nGet = 0 ; // Kill motion queue, go practically to null queue
                MQ.nPut = 0 ;
                // SetMotionMode(E_SysMotionModeStay,9) ; // Vandal
                SysState.CBit.bit.QueueAborted = 1;
            }
            nextmode = E_SysMotionModeHostSpeedControl ;
            break ;
        }
        if ( nextmode != E_SysMotionModeHostSpeedControl )
        {
            return (Manufacturer_error_detail + exp_cannot_yet_enter_speedmode) ;
        }
        SysState.Mot.BodyCmd.OldMotionMode = SysState.Mot.mode  ;
    }

    // This is a body-axes mode, so we lose navigation info
    SysState.CBit.bit.NavInitialized  = 0 ;
    SysState.Mot.QuickStop = 0 ;// Release any quick stop

    // Set timer - motion will stop if no new command arrives till next timeout
    SetSysTimerTargetSec ( TIMER_OBSTACLE_AVOIDANCE_CMD, 1.0f,  &SysTimerStr);
    SetMotionMode(E_SysMotionModeHostSpeedControl,19) ;
    return 0 ;
}

