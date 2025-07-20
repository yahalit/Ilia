#include "..\Application\StructDef2.h"

/*
 * MalinkiMgr.c
 *
 *  Created on: Sep 8, 2023
 *      Author: yahal
 */






void SendPwm2Tlc( void )
{
    //long unsigned  ledval ;
    short unsigned mask;
    if ( IsSysTimerElapse(TIMER_I2C_TLC_TRANSMIT, &SysTimerStr)  == 0 )
    {
        return ;
    }
    SetSysTimerTarget (TIMER_I2C_TLC_TRANSMIT , 100000 , &SysTimerStr) ; // No need for next update PWM faster than 100msec

    mask = BlockInts();
    OutMalinkiMsg.cobId = (0x200 + 120 ) ; 
    OutMalinkiMsg.LogicId = 0 ;
    OutMalinkiMsg.dLen = 8 ;
    OutMalinkiMsg.data[0] = M2S.Items.ActCmd.cmd.MalinkiSetCmd ;
    SysState.bIssueMsg2Malinki = bEnableSync ;
    RestoreInts(mask) ;
}


short MalinkiProcessTxPdo1(struct CCanMsg *pMsg)
{
    short unsigned us;
    long unsigned ver , subver, patch;

    us =  * ( (short unsigned *) &pMsg->data[1] + 1 ) ;
    ver = ((long unsigned)us & 0xFF00) << 16 ;
    //subver = ((long unsigned)us & 0xF0) << 16 ;
    subver = ((long unsigned)us & 0xF0) << 12 ;
    patch = ((long unsigned)us & 0xF) << 12 ;

    S2M.Items.SlaveRevisions.item.MalinkiVerSubverPatch = ver + subver + patch ;
    return 0 ;
}


    // Read Malinki status
void MalinkiHandler(void)
{
    if ( SysState.bMalinkiMsgRdy)
    {
        MalinkiProcessTxPdo1 ( &MalinkiInMsg ) ;
        SysState.bMalinkiMsgRdy = 0 ;
    }
}
