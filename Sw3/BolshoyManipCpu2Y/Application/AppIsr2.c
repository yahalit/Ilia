/*
 * AppIsr.c
 *
 *  Created on: Aug 21, 2021
 *      Author: Yahali
 */

//#include "F28x_Project.h"     // DSP28x Headerfile
//#include "F2837x_YDCAN.h"
#include "StructDef2.h"




void Core2CanHandler(void) ;
void PduCanHandler(void) ;
void ServoCanHandler(void) ;
void Core2CanHandlerTx(void);


// Format an angle cosine as NCoord integer ( refer ICD)
short F2NCoord( float f )
{
    f = __fmax( __fmin( f * 32768.0f , 32767.0f ) , -32768.0f ) ;
    return (short) f  ;
}

/*
 * \brief Interpret simulated host message
 */
#define SPI_PREAMBLE_LEN 5



void ProcessLaser( float laserRange  )
{
    float Junk[2]   ;
    if ( M2S.Items.ActCmd.cmd.ModeWord.bit.LaserPsOn && (laserRange >= ManGeo.MinLaserRange)  && (laserRange <= ManGeo.MaxLaserRange ) )
    {
        SysState.Package.LaserDist = laserRange ;
        SysState.Package.LaserDistValid = 1 ;
        if ( SysState.Package.LaserMedianCnt < 2 )
        {
            SysState.Package.LaserMedianValid = 0 ;
            SysState.Package.LaserDistMedian = 0 ;
            SysState.Package.LaserDistMedianBuf[SysState.Package.LaserMedianCnt] = SysState.Package.LaserDist  ;
            SysState.Package.LaserMedianCnt += 1 ;
        }
        else
        {
            SysState.Package.LaserDistMedianBuf[0] = SysState.Package.LaserDistMedianBuf[1];
            SysState.Package.LaserDistMedianBuf[1] = SysState.Package.LaserDistMedianBuf[2];
            SysState.Package.LaserDistMedianBuf[2] = SysState.Package.LaserDist ;
            Junk[0] = __fmax ( SysState.Package.LaserDistMedianBuf[0] , SysState.Package.LaserDistMedianBuf[1]  ) ;
            Junk[1] = __fmax( __fmin ( SysState.Package.LaserDistMedianBuf[1],SysState.Package.LaserDistMedianBuf[0]) , SysState.Package.LaserDistMedianBuf[2]  ) ;
            SysState.Package.LaserDistMedian = __fmax( Junk[0] , Junk[1] ) ;
            SysState.Package.LaserMedianValid = 1 ;
        }
    }
    else
    {
        SysState.Package.LaserDistValid = 0 ;
        SysState.Package.LaserDistMedian = 0 ;
        SysState.Package.LaserMedianValid = 0 ;
        SysState.Package.LaserMedianCnt = 0 ;
    }
}


float Us2Volt ;
/**
 * Process the analog samples
 *
 */

float SlowPosFilterGain;


#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( ProcAnalogSamples, "--opt_level=3" );
#endif




//
/**
 *\brief This is the main periodic interrupt of the robot
 *  Runs every short cycle  (256u)
 */
#ifndef WINSIM
interrupt 
#endif
void TimerIsrCore2( void)
{
// Take ISR time
    short unsigned cnt ;

    IsrTimer.IsrCounter += 1  ;
#ifndef WINSIM
    EPwm3Regs.ETCLR.bit.INT = 1;
    PieCtrlRegs.PIEACK.all = 0x4 ;
#endif
    //EPwm1Regs.ETCLR.bit.INT = 1;
    //PieCtrlRegs.PIEACK.all = 0x4 ;

    if ( M2S.Items.ActCmd.cmd.ModeWord.bit.RecorderTimeBasis == 0  )
    {
        RtRecorder() ;
    }

    //FastRtUS1SciHandler();
    //FastRtUS2SciHandler();
    if ( M2S.Items.ActCmd.cmd.ModeWord.bit.testRs485 == 0 )
    {
        DealDynamixel24();
        DealDynamixel12();
    }
    else
    {
        if ( M2S.Items.ActCmd.cmd.ModeWord.bit.testRs485 == 1 )
        {
            FastRtUS1SciHandler();
            FastRtUS2SciHandler();
        }
        else
        {
            DisableRs485Tx_1() ;
            DisableRs485Tx_2() ;
        }
    }

    // Read hardware inputs of the LP; in robot 3 they have no use
    SysState.Mot.PlcInSw[0] = (GpioDataRegs.GPCDAT.bit.GPIO85 ) ? 1 : 0 ;
    SysState.Mot.PlcInSw[1] = (GpioDataRegs.GPEDAT.bit.GPIO145 ) ? 1 : 0 ;

    if ( M2S.Items.ActCmd.cmd.ModeWord.bit.StopCan == 0 ) // StopCan is used if we want to tune a servo axis by an external master
    {
        Core2CanHandlerTx() ; // 0.5msec CAN queue hardware-level processing , for acceptable BG service
    }

    if (IsrTimer.IsrCounter & (FAST_INTS_IN_C-1)  )
    { // Proceed only 1 in 16
        return ;
    }
    if  ( SysState.RtAlgorRunning )
    {
        return ; // Still busy from previous cycle, miss the next
    }
    SysState.RtAlgorRunning = 1 ;
    EINT ;
// Part for 4.096msec
    // Treat laser acceptance. Even though EEF reports directly to Core#2, the data is first put to Core#1,
    // then treated here as data coming from Core#1
    ProcessLaser( M2S.Items.ActCmd.cmd.LaserDistMeter) ;

    // Robot main axes in CAN
    if ( M2S.Items.ActCmd.cmd.ModeWord.bit.StopCan  )
    {
        TxPdoBitStr.ErrorCond = 1 ;
        for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++)
        {
            SysState.CanAxis[cnt].BH.ComCbit.ErrorCond = 1 ;
        }
        PduRxPdoBitStr.ErrorCond = 1 ;
        EEFRxPdoBitStr.ErrorCond = 1 ;
        ManTxPdoBitStr.ErrorCond = 1 ;
    }
    else
    {
        // Take actions regarding CAN slaves
        Core2CanHandler() ;
    }


    if ( M2S.Items.ActCmd.cmd.ModeWord.bit.RecorderTimeBasis   )
    {
        RtRecorder() ;
    }

    DINT ;
    SysState.RtAlgorRunning = 0 ;

}










