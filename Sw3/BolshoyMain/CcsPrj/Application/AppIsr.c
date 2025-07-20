/*
 * AppIsr.c
 * for CPU1
 *  Created on: Aug 21, 2021
 *      Author: Yahali
 */

//#include "F28x_Project.h"     // DSP28x Headerfile
//#include "F2837x_YDCAN.h"
#include "StructDef.h"
#include "CanSlave.h"
#include "gyro.h"


void PDCanHandler(void) ;
void RtCanHandler(void) ;
void PDCanHandlerTx(void);


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




long HostProtocolSimulation( short unsigned * buf )
{
    short unsigned * uPtr , OpCode ,  txcntr   ;

    short unsigned * msgBody ;
    long  MessageTime , lRetVal  ;
    //long unsigned age ;
    lRetVal = 0;
    uPtr = buf ;

    msgBody = (short unsigned *) &buf[SPI_PREAMBLE_LEN]  ;

    WasSpiError = 0 ;

    //TxOpCode = ( HostMessageStr.Opcode >> 8 ) ;
    OpCode = ( buf[2] & 0xff ) ;
    txcntr = buf[1] & 0xff ;
    HostHandleStr.RxFromHostCtr = txcntr ;

    MessageTime = GetUnalignedLong( & uPtr[3] ) ;

    switch ( OpCode)
    {
    case OpCodeAcknowledge:
        break ;
    case OpCodeClearQueue:
        lRetVal  = SciClearQueue(msgBody, MessageTime,txcntr , 0 );
        break ;

    case OpCodeSetQueueEntry:
        lRetVal = SciSetQueueEntry(msgBody, MessageTime,txcntr , 0 );
        break  ;

    case OpCodeSetEmcyStop:
        // This action causes the the robot to stop immediately
        // The motors remain on if they already were
        lRetVal = SciSetEmergencyStop(msgBody, MessageTime,txcntr, 0 ) ;
        break ;

    case OpCodeHandlePackage:
        lRetVal = SciSetHandlePackage(msgBody, MessageTime,txcntr, 0 ) ;
        break;


    case OpCodeSetExecPtr:
        // Put a queue to execution
        lRetVal = SciSetQueueExecutionPointer(msgBody, MessageTime,txcntr, 0 ) ;
        break ;


    case OpCodeDeviationReport:
        lRetVal = SciSetDeviationReport(msgBody, MessageTime,txcntr, 0 );
        break ;

    case OpCodePositionReport:
        lRetVal = SciSetPositionReport(msgBody, MessageTime,txcntr, 0 );
        break ;

    case OpCodeSetParameter:
        lRetVal = SciSetParameter(msgBody, MessageTime,txcntr, 0 );
        break ;

    default:
        lRetVal = SPI_ERR_BAD_OPCODE ;
    }

    return lRetVal ;
}



float Us2Volt ;
/**
 * Process the analog samples
 *
 */



#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( ProcAnalogSamples, "--opt_level=3" );
#endif


void ProcAnalogSamples(void)
{
    float  y  ; //  ,  laser  ;
    extern unsigned long AccumLsStatus(void) ;
    short unsigned sv ;
    union
    {
       short unsigned us[2] ;
       long unsigned ul ;
    }usl;
    //float Us2Volt ;


    SysState.ShoulderRoll = (  SysState.Nav.roll - SysState.CanAxis[LOGICAL_NECK].OuterPos ) ;

    Analogs.OverLoadkRWh2  = ClaState.Filt.OLoadSt2 ;

    Analogs.OverLoadkRWh1  = ClaState.Filt.OLoadSt1 ;

    SysState.TrackWidthCtl.RodAngle[LOGICAL_RW] = -( ClaState.WheelArmRatio[1] - SysState.WheelArm.RWheelArmOffset ) * SysState.WheelArm.RWheelArmGain ;
    SysState.TrackWidthCtl.RodAngle[LOGICAL_LW] = ( ClaState.WheelArmRatio[0] - SysState.WheelArm.LWheelArmOffset ) * SysState.WheelArm.LWheelArmGain ;


    sv = SysState.CanAxis[LOGICAL_RW].BH.LimitSw.ValidCounter ;
    if ( sv != SysState.CanAxis[LOGICAL_RW].BH.LimitSw.SwitchDetectValidUsed )
    {
        SysState.CanAxis[LOGICAL_RW].BH.LimitSw.SwitchDetectValidUsed = sv ;
        if ( SysState.CanAxis[LOGICAL_RW].BH.LimitSw.SwitchDetectMarker ) // If switch is armed for catch
        {
            if (  SysState.CanAxis[LOGICAL_RW].BH.LimitSw.SwitchRequestDir * SysState.CanAxis[LOGICAL_RW].BH.LimitSw.SwitchDir > 0 )
            {
                SysState.CanAxis[LOGICAL_RW].BH.LimitSw.SwitchDetectMarker = 0 ;
                SysState.CanAxis[LOGICAL_RW].InductiveSensor = 1;
                SysState.CanAxis[LOGICAL_RW].EncOnInductiveSensor = SysState.CanAxis[LOGICAL_RW].BH.LimitSw.WheelEncoderAtCenter ;
            }
        }
    }


    sv = SysState.CanAxis[LOGICAL_LW].BH.LimitSw.ValidCounter ;
    if ( sv != SysState.CanAxis[LOGICAL_LW].BH.LimitSw.SwitchDetectValidUsed )
    {
        SysState.CanAxis[LOGICAL_LW].BH.LimitSw.SwitchDetectValidUsed = sv ;
        if ( SysState.CanAxis[LOGICAL_LW].BH.LimitSw.SwitchDetectMarker )// If switch is armed for catch
        {
            if (  SysState.CanAxis[LOGICAL_LW].BH.LimitSw.SwitchRequestDir * SysState.CanAxis[LOGICAL_LW].BH.LimitSw.SwitchDir > 0 )
            {
                SysState.CanAxis[LOGICAL_LW].BH.LimitSw.SwitchDetectMarker = 0 ;
                SysState.CanAxis[LOGICAL_LW].InductiveSensor = 1;
                SysState.CanAxis[LOGICAL_LW].EncOnInductiveSensor = SysState.CanAxis[LOGICAL_LW].BH.LimitSw.WheelEncoderAtCenter ;
            }
        }
    }


    if ( SysState.Debug.bRecorder4LimitSwitches )
    {


        lDebug[5] = SysState.CanAxis[LOGICAL_RW].EncOnInductiveSensor ;
        lDebug[6] = SysState.CanAxis[LOGICAL_LW].EncOnInductiveSensor ;
        usl.us[0] = (SysState.Mot.ChgMode.State & 0xff ) +( ( (unsigned short)ManRouteCmd.ShelfMode & 0xff) << 8 ) ;
        usl.us[1] = ManRouteCmd.CrabCrawl ;
        lDebug[7] = usl.ul ;

   }



#ifdef _LPSIM

    LpSimDbg.LimitSwStatus = 0; 
#endif

    //M2S.Items.ActCmd.cmd.NoWristPotRatio[0] = ClaState.WheelArmRatio[0] ;
    //M2S.Items.ActCmd.cmd.NoWristPotRatio[1] = ClaState.WheelArmRatio[1] ;

    //Analogs.UsSamp2      =  AdcSampleRegs[5] * InvScale * 0.805664 ;

/*
    if ( SysState.EEF.bUse)
    {
        laser = S2M.Items.ActStatus.stat.LaserVolts  ;
    }
    else
    {
        laser = ClaState.Filt.LaserSamp1 ;
    }
    if ( laser < Calib.LaserMinimumVolts )
    {
        Analogs.UsSamp1 = -50.0 ; // Surely out of range
    }
    else
    {
        Analogs.UsSamp1      =  laser *  133.5863f * ( 1 + Calib.LaserGainCorrection ) - 39.2175f * (1+Calib.LaserOffsetCorrection)  ; // 43.8541f ; // in mm
    }
    M2S.Items.ActCmd.cmd.LaserDistMeter = Analogs.UsSamp1 * 0.001f ;
*/

    y = __fmin( ClaState.Filt.OLoadNK * 0.0625f, 4095.0f) ;
    Analogs.OverLoadkRNk  = (2.3f * y - 5181.440000f  ) / ( 4505.600000f - y ) ;


    // Record limit switch state for debugging
    WheelEncR.Position = SysState.CanAxis[LOGICAL_RW].BH.WheelEncoderCnt    ;

    WheelEncL.Position = SysState.CanAxis[LOGICAL_LW].BH.WheelEncoderCnt  ;
}


/**
 * \brief process gyro data
 */
void ProcGyro()
{
    //float  fac ;
    //long Delta ;
    //float WxOld;
    short unsigned  newquat , wasgood ;
    long unsigned oldtime ;
    short unsigned cnt ;
    //float dt ;

    //float qNew[4]  ;

    if ( GyroMessageStr.GyroStatus.bit.FilterVaild == 0  || GyroMessageStr.State == 0  )
    {
        SysState.Nav.Imu.status = 1 ;
        ImuBitStr.ErrorCond = 1 ;
        GyroInt.MustWait4Stop |= 1 ; // Kill any on-going calibration feat
    }


    // Go over the data items
    newquat  = 0 ;
    wasgood  = ImuStartMgr.Good ;

    for ( cnt = 0 ; cnt < GyroMessageStr.DataFromDeviceValid ; cnt++  )
    {
        switch ( ImuDataItem[cnt].DataId )
        {
        case QID: // Quaternion, floating point
            SysState.Nav.RawQuat[0] = * (float *) &ImuDataItem[cnt].Data[0] ;
            SysState.Nav.RawQuat[1] = *(float *) &ImuDataItem[cnt].Data[1] ;
            SysState.Nav.RawQuat[2] = *(float *) &ImuDataItem[cnt].Data[2] ;
            SysState.Nav.RawQuat[3] = *(float *) &ImuDataItem[cnt].Data[3] ;

            NormalizeQuat( SysState.Nav.RawQuat, SysState.Nav.RawQuat ) ;
            ImuStartMgr.Good = 1 ;
            ImuStartMgr.agecnt = 0 ;
            GyroInt.XSenseTimeOutCntr = 0 ;
            newquat = 1 ;
            break ;
        case WID : // Angular speed, floating point, NED
            SysState.Nav.RawW[0] = * (float *) &ImuDataItem[cnt].Data[0] ;
            SysState.Nav.RawW[1] = * (float *) &ImuDataItem[cnt].Data[1] ;
            SysState.Nav.RawW[2] = * (float *) &ImuDataItem[cnt].Data[2] ;
            SysState.Nav.Imu.Omega[0] = SysState.Nav.RawW[0] ;
            SysState.Nav.Imu.Omega[1] = SysState.Nav.RawW[1] ;
            SysState.Nav.Imu.Omega[2] = SysState.Nav.RawW[2] ;
            break ;
        }
    }
    GyroMessageStr.DataFromDeviceValid = 0 ;


    ImuStartMgr.New =  ImuStartMgr.Good && ( 0 == wasgood);

    if ( newquat == 0 )
    {
        if ( ImuStartMgr.agecnt < 256 )
        {
            ImuStartMgr.agecnt += 1 ;
        }
        else
        {
            ImuStartMgr.Good = 0 ;
        }
        return ; // Nothing more to do
    }

    oldtime = GyroInt.Time ;
    GyroInt.Time = GyroInt.XSenseTimeCnt ;

    // Set the quaternion into system
    GyroInt.deltaT = __fmax( (float) (GyroInt.Time-oldtime) * 1e-6f , 256e-6f)  ;

    // Main code of gyro action
    GyroAction ( SysState.Nav.Imu.Omega ,SysState.Nav.RawQuat , GyroInt.deltaT) ;

    // Get roll from quat
    rawroll = QuattoRoll(GyroInt.BodyQuat );


    // 10 Hz filtered roll for tail control

    SysState.Nav.Imu.GyroXFilt = SysState.Nav.Imu.GyroXFilt + ControlPars.PoleSmoothAcc * GyroInt.deltaT * (GyroInt.Wbody[0] - SysState.Nav.Imu.GyroXFilt);

    SysState.Nav.Imu.HeadRollFilt = SysState.Nav.Imu.HeadRollFilt + GyroInt.deltaT * SysState.Nav.Imu.GyroXFilt
            + GyroInt.deltaT * ControlPars.GyroXFiltBwRadSec * (rawroll - SysState.Nav.Imu.HeadRollFilt ) ;


}


/**
 *\brief This is the main periodic interrupt of the robot
 *  Runs every 256 short cycles (4.096 msec)
 */
#ifndef _LPSIM
interrupt 
#endif
void TimerIsrC( void)
{
// Take ISR time
    long upd1 , upd2 ;

    // Update system time
    do
    {
        upd1 = ClaState.Timer.upd ;
        IsrTimer.RawEcapTimer = ClaState.Timer.RawEcapTimer;
        IsrTimer.UsecTimer = ClaState.Timer.UsecTimer ;
        upd2 = ClaState.Timer.upd ;
    }  while ( upd1 != upd2 ) ;
    IsrTimer.mSecTimer = ClaState.Timer.mSecTimer ;
    IsrTimer.SecTimer = ClaState.Timer.SecTimer ;

    IsrTimer.IsrCounter += 1  ;

    // Acknowledge interrupt
    EPwm1Regs.ETCLR.bit.INT = 1;
    PieCtrlRegs.PIEACK.all = 0x4 ;

    // Read the analog samples from ADC
    ProcAnalogSamples();

    // If the recorder is fast, do it now
    if ( Recorder.TimeBasis == 0  )
    {
        RtRecorder() ;
    }

    // Deal UART buffers (HOST)
    FastRtHostSciHandler() ;

    // Read the gyro
    FastRtGyroSciHandler() ;
    GyroInt.XSenseTimeOutCntr = __min( 32767 , 1+GyroInt.XSenseTimeOutCntr) ;
    if ( ImuStartMgr.Done )
    { // We read the quaternion only
        ProcGyro() ;
    }

    RtCanHandlerTx();


    if (IsrTimer.IsrCounter & (FAST_INTS_IN_C-1)  )
    {
        return ;
    }

    SetSpibOwner() ; // Set the owner of the serial flash

    IsrTimer.UsecTimerOnFork = IsrTimer.UsecTimer ;

    EINT ;
// Part for 4.096msec

    // Pass data from BG o CLA processing
// Collect PDO from the axes (2 wheels, 2 rudders, 1 neck )
// each of them should emit a PDO with status, current , and speed
// Collect PDO from the manipulator axes

    // Robot main axes in CAN
    if ( M2S.Items.ActCmd.cmd.ModeWord.bit.StopCan  )
    {
        TxPdoBitStr.ErrorCond = 1 ;
        RxPdoBitStr.ErrorCond = 1 ;
    }

    // Handle all control oriented functions
    RtCanHandler();

    // Control word to the manipulator
    M2S.Items.ActCmd.cmd.ControlWord =  *  ( ( short unsigned *) &SysState.Package.ManipControlWord );

    // CAN communication with PD

    if ( SysState.Status.PdInTest == 0 )
    {
        PDCanHandler() ;
    }

    if ( Recorder.TimeBasis   )
    {
        RtRecorder() ;
    }

    DINT ;
}













