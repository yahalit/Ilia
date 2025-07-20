/*
 * AppIsr.c
 * Main interrupt handler for CPU 2, does communication and tape arm servo control
*/
#include "StructDef2.h"



void ServoCanHandler(void) ;


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

void UpdatePackageHandlingCmdFromM2S()
{
    /* S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual is set in SDO (see object dictionary { 0x2221 , 2 , SetServoTest , GetServoTest }).
     * The following are used for direct parameters of the flex manipulator:
     *      M2S.Items.ActCmd.cmd.PalletAngle (direct operation).
     *      M2S.Items.ActCmd.cmd.Flexmm (direct operation)
     * Used for overriding automatic pumps on:
     *      SysState.Package.OverRidePumpsOn - not set anywhere (need to be set by CAN/ M2S message?)
     */

    if ( ManipulatorType == SCARA_Manipulator )
    {
        //SysState.ScaraEEF.LaserPsOn = M2S.Items.ActCmd.cmd.ModeWord.bit.LaserPsOn; // for Flex never control the laser by M2S. get from OD or automatic.
    } else //( ManipulatorType == FLEX_Manipulator )
    {
        // In OverRideSwitches, SysState.Package.SuckRequest doesn't set the pneumatics activation. It will be set directly by the command word.
    }

    // ManCmd.x & ManCmd.y & ManCmd.State & ManCmd.StopError are sent to S2M.Items.ActStatus.stat.ManipData2_L.
    SetManipulatorControlWord(); //ran also in IdleTask. put M2S.Items.ActCmd.cmd.ControlWord into ManCmd.ControlWord.
}

//used only for SCARA, calculation fixed
void ProcessLaser( float laserMeasure  )
{
#ifdef SHUMKLUM
    float Junk[2]   ;

    if ( M2S.Items.ActCmd.cmd.ModeWord.bit.LaserPsOn && (laserMeasure >= ManGeo.MinLaserRange)  && (laserMeasure <= ManGeo.MaxLaserRange ) )
    {
        SysState.Package.LaserDist = laserMeasure ;
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
            //Junk[0] = __fmax ( SysState.Package.LaserDistMedianBuf[0] , SysState.Package.LaserDistMedianBuf[1]  ) ;
            //Junk[1] = __fmax( __fmin ( SysState.Package.LaserDistMedianBuf[1],SysState.Package.LaserDistMedianBuf[0]) , SysState.Package.LaserDistMedianBuf[2]  ) ;
            //SysState.Package.LaserDistMedian = __fmax( Junk[0] , Junk[1] ) ;//doesn't work, if 2 is the greatest than will return 2.
            Junk[0] = __fmax( __fmin ( SysState.Package.LaserDistMedianBuf[0],SysState.Package.LaserDistMedianBuf[2]) , SysState.Package.LaserDistMedianBuf[1]  ) ; //maX(min(0,2),1) finds median if either 0,2 are the highest. if 1 is the highest then it will return the highest number
            Junk[1] = __fmax( __fmin ( SysState.Package.LaserDistMedianBuf[1],SysState.Package.LaserDistMedianBuf[0]) , SysState.Package.LaserDistMedianBuf[2]  ) ;   //maX(min(0,1),2) finds median if either 0,1 are the highest. if 2 is the highest then it will return the highest number
            SysState.Package.LaserDistMedian = __fmin( Junk[0] , Junk[1] ); //Now need to get the lower of both
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
#endif
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
    //SysState.Mot.PlcInSw[0] = (GpioDataRegs.GPCDAT.bit.GPIO85 ) ? 1 : 0 ;
    //SysState.Mot.PlcInSw[1] = (GpioDataRegs.GPEDAT.bit.GPIO145 ) ? 1 : 0 ;

    if ( M2S.Items.ActCmd.cmd.ModeWord.bit.StopCan == 0 ) // StopCan is used if we want to tune a servo axis by an external master
    {
        // temp note (see inside functin): send SDOs by traps, PD from axes, EEF, PD, Malinki. send sync if bIssueSync2PD is set)
        // temp note (see inside functin): Get messages from hardware and put into queues.
        Core2CanHandlerTxRx() ; // 0.5msec CAN queue hardware-level processing , for acceptable BG service
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

    UpdatePackageHandlingCmdFromM2S();
    //Transfer commands from ManCmd (received from M2S) to FlexManipAxes (all but but reserved & LaserValid);

    //in Flex case, IdleCBitFlexManip() that runs in idle updates SysState.Package.LaserMedianValid & SysState.Package.LaserDistMedian.
    if ( ManipulatorType == SCARA_Manipulator )
    {
        //ProcessLaser( M2S.Items.ActCmd.cmd.LaserDistMeter) ; //TODO:SCARA Update where the SCARA gets its laser reading.
    }

    // Robot main axes in CAN
    if ( M2S.Items.ActCmd.cmd.ModeWord.bit.StopCan )
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










