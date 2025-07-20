/*
 * MainApp.c
 *
 *  Created on: May 12, 2023
 *      Author: Gal Lior
 */
#define APP_OWNER
#define CONFIG_OWNER
#define CLA_VAR_OWNER


#include "BootStructDef.h"


/**
 * \brief Initiate the time outs of the system
 */
void InitTimeOuts ( void )
{
    short unsigned cnt ;

    // All the timers are initially elapsed
    for ( cnt = 0 ; cnt < NSYS_TIMER_CMP_ARRAY ; cnt++)
    {
        SetSysTimerTargetSec(cnt, 0.1f, &SysTimerStr);
    }
    SetSysTimerTargetSec ( TIMER_MCAN_BUSOFF , BUS_OFF_RECOVERY_TIME ,  &SysTimerStr  );
//    SetSysTimerTargetSec (TIMER_GYRO_PROG , 0.005f  , &SysTimerStr);
}



void InitAppData(void)
{
    //float PosRange;
    ClearMemRpt((short unsigned *) &SysState,sizeof( SysState) );

    ClearMemRpt((short unsigned *) &CanSlaveInQueue,sizeof( CanSlaveInQueue) );
    ClearMemRpt((short unsigned *) &CanSlaveOutQueue,sizeof( CanSlaveOutQueue) );
    ClearMemRpt((short unsigned *) &SlaveSdo,sizeof( SlaveSdo) );
    ClearMemRpt((short unsigned *) &MasterBlaster,sizeof( MasterBlaster) );
    ClearMemRpt((short unsigned *) &FlashProg,sizeof( FlashProg) );

    CanSlaveInQueue.nQueue = N_SLAVE_QUEUE ;
    CanSlaveOutQueue.nQueue = N_SLAVE_QUEUE ;

    SlaveSdo.SlaveBuf = (unsigned long* ) SlaveSdoBuf ;
	
#ifdef SLAVE_DRIVER	
    SysState.pOutMsgBufTx = &SysState.OutMsgBuf;

    InitFsiService() ;

    SysState.bDebugFSI = 0 ;

#endif 
    SysState.Timing.Ts = CUR_SAMPLE_TIME_USEC * 1e-6 ;
    SysState.Timing.TsTraj = SysState.Timing.Ts ;
    SysState.Timing.TsInTicks = (CPU_CLK_MHZ * CUR_SAMPLE_TIME_USEC  ) ;

	
    InitSystemTimer( &SysTimerStr);


    InitTimeOuts();

}
// If properly burned by a burner, this struct occupies the first words of Seg N
struct CValidityCalc
{
    long unsigned Start ;
    long unsigned * FirstCode ;
    long unsigned * LastCode  ;
    long unsigned Checksum ;
};


#define DisableDog SysCtl_disableWatchdog

#define TestProgramValidGood 0

#pragma FUNCTION_OPTIONS ( TestProgramValid, "--opt_level=0" );

short TestProgramValid (void)
{
    long unsigned *pUl ;
    struct CValidityCalc * uPtr1 = (struct CValidityCalc * ) Sector_AppVerify_start;
    long unsigned * uPtr2 = (long unsigned * ) CodeStartAddress;

    long unsigned cs ;

    DisableDog();
    if (( uPtr1->Start == 0x90abcdef ) && ( *uPtr2 != 0xffffffff ) )
    { // Program burned by ONCE JTAG
        return TestProgramValidGood;
    }
    if ( ( uPtr1->Start == 0x12345678 ) && ( *uPtr2 != 0xffffffff ) )
    { // Program properly burned by a burner
        if ( (uPtr1->FirstCode < (long unsigned*)CodeStartAddress )
            ||(  uPtr1->LastCode >= (long unsigned*)Sector_AppIdentity_start)
            ||( uPtr1->LastCode <= uPtr1->FirstCode )
            || ((long unsigned)uPtr1->FirstCode & 0x3)
            || (((long unsigned)uPtr1->LastCode & 0x000007ff) != 0x000007ff )  )
        {
            return -1 ;
        }
        cs = uPtr1->Checksum ;
        pUl = uPtr1->FirstCode ;
        while ( pUl <= uPtr1->LastCode)
        {
            cs += *pUl++;
        }
        if ( cs )
        {
            return -1 ;
        }
        return TestProgramValidGood;
    }
    return -1 ;
}
typedef void ( *VoidFun) (void) ;


#pragma FUNCTION_OPTIONS ( ApplyIdentity, "--opt_level=0" );
short ApplyIdentity(union UIdentity * pId, union UNVParams *pPars)
{
    short unsigned cnt  ;
    long unsigned cs  ;

    // Set defaults: don't use user configuration
    ClearMemRpt((short unsigned *) &DBaseConf,sizeof( DBaseConf) );

    if (pId->C.Identity.PassWord  != 0x12345678)
    {
        return -1 ; // Bad pass
    }

    // Test checksum for Identity. If failed, nothing to do
    cs = 0;
    for ( cnt = 0 ; cnt < sizeof(struct CIdentity)/2 ; cnt++  )
    {
        cs += pId->Buf[cnt] ;
    }
    if ( cs )
    {
        return -2 ; // Bad cs
    }


    // Test validity of identity revision
    if ( pId->C.Identity.IdentityRevision !=  IdentityParametersRevision )
    {
        return -4 ;
    }

    // Test matching of the hardware type
    if ( pId->C.Identity.HardwareType != THISCARD )
    {
        return -9 ;
    }

    DBaseConf.IsValidIdentity = 1 ;

    // Test the checksum of the non-volatile parameters
    cs = 0;
    for ( cnt = 0 ; cnt < 1024 ; cnt++  )
    {
        cs += pPars->Buf[cnt] ;
    }
    if ( cs )
    {
        return -3 ; // Bad cs
    }

    // If the project is undefined, verify the hardware configuration version
    if (pPars->NVParams.ProjIndex == PROJ_TYPE_UNDEFINED)
    {
        if ( pPars->NVParams.ProjSpecificData.ProjSpecificDataRevision == HwConfigRevision )
        {
            DBaseConf.IsUserHwConfig = 1 ;
        }
    }
    else
    {
        if ( pPars->NVParams.ProjIndex >= PROJ_TYPE_LAST )
        {
            return -5 ;
        }
        else
        {
            DBaseConf.IsUserProjId = 1;
        }
    }


    // Either Project ID or parameters set must be defined
    DBaseConf.IsValidDatabase = 1 ;
    //if ( pId->Identity.UserCfgPars.)
    return 0 ;
}




#pragma FUNCTION_OPTIONS ( setupPwmParams, "--opt_level=0" );

void setupPwmParams(void)
{
    SysState.Timing.PwmFrame = HWREGH(PWM_A_BASE + EPWM_O_TBPRD);
}




#pragma FUNCTION_OPTIONS ( main, "--opt_level=0" );
void main(void)
{
    DINT ;


    // Copy program and initialized data from flash to RAM
    memcpy(&RamfuncsRunStart, &RamfuncsLoadStart, (size_t)&RamfuncsLoadSize);

    if ( TestProgramValid() >= 0 )
    {   DINT ;
        ((VoidFun) CodeStartAddress )() ;
    }

    pUIdentity   = ( union UIdentity *) Sector_AppIdentity_start ;
    pUNVParams   = ( union UNVParams *) Sector_AppParams_start ;
    //NVParamsPassWord = 0 ;

    // Default ID setting
    CanId  = BootCanId ;
    ProjId = PROJ_TYPE_BOOT_NECK ; // PROJ_TYPE_TRAY_SHIFTER ; //  ; // PROJ_TYPE_NECK2 ;
    Proj_Type = PROJ_TYPE - 0x10 ;

    // Test identity
    if ( ApplyIdentity(pUIdentity,pUNVParams) == 0 )
    {
        if ( DBaseConf.IsValidDatabase )
        {
            if ( (pUNVParams->NVParams.ProjIndex < PROJ_TYPE_LAST) && (pUNVParams->NVParams.ProjIndex > PROJ_TYPE_UNDEFINED ) )
            {
                CanId  = ProjSpecificData[pUNVParams->NVParams.ProjIndex].CanId ;
                ProjId = pUNVParams->NVParams.ProjIndex + 20 ;
            }
        }
    }

    InitAppData();

    InitPeripherals() ;

    CfgBlockTransport(); // Only after CAN ID is known

    setupPwmParams() ;

#ifndef SLAVE_DRIVER
    SetBootUpMessage();
#endif

    SetupIsr();

    EINT ;

     while(1)
    {
        IdleLoop() ;
        SysCtl_serviceWatchdog() ;
    }
}



void CfgBlockTransport(void)
{
    SysState.BlockUpload.InBlockMsg.cobId = (0xb<<7)+CanId  ;
    SysState.BlockUpload.InBlockMsg.dLen  = 8 ;

    SysState.BlockUpload.StartBlockMsg.cobId = (0xb<<7)+CanId  ;
    SysState.BlockUpload.StartBlockMsg.dLen  = 8 ;
    SysState.BlockUpload.StartBlockMsg.data[0] = 0x64 + (0x2006L<<8) + (1L<<24);

    SysState.BlockUpload.EndBlockMsg.cobId = (0xb<<7)+CanId  ;
    SysState.BlockUpload.EndBlockMsg.dLen  = 8 ;

    SysState.BlockUpload.AbortBlockMsg.cobId = (0xb<<7)+CanId  ;
    SysState.BlockUpload.AbortBlockMsg.dLen  = 8 ;
    SysState.BlockUpload.AbortBlockMsg.data[0] = (4L<<5) + ( (long unsigned)02006 ) + ( (long unsigned)1 << 24 );
    SysState.BlockUpload.AbortBlockMsg.data[1] = Invalid_sequence_number ;
}




short CheckAlign ( short unsigned * ptr , short unsigned pw )
{
    short unsigned cnt ;
    long unsigned ul ;
    ul = ( long unsigned ) ptr ;
    for ( cnt = 0 ; cnt < pw ; cnt++ )
    {
        if ( ul & ( 1L << cnt ) )
        {
            return -1 ;
        }
    }
    return 0 ;
}


