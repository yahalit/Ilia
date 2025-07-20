/*
 * IdleLoop.c
 *
 *  Created on: May 14, 2023
 *      Author: yahal
 */
#include "BootStructDef.h"


long unsigned zevel ;

void IdleLoop(void)
{
    UpdateSysTimer() ;

    CanSlave();

    // Auto recover bus off condition
    if ( MCAN_getOpMode(MCAN0_BASE) == MCAN_OPERATION_MODE_NORMAL )
    {
        SetSysTimerTargetSec ( TIMER_MCAN_BUSOFF , BUS_OFF_RECOVERY_TIME ,  &SysTimerStr  );
    }
    if ( IsSysTimerElapse( BUS_OFF_RECOVERY_TIME ,  &SysTimerStr   ) )
    {
        MCAN_setOpMode(MCAN0_BASE, MCAN_OPERATION_MODE_NORMAL);
    }
}

