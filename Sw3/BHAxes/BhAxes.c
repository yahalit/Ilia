#ifdef CFG_AXIS_CPU1
#include "..\BolshoyMain\CcsPrj\Application\StructDefInc.h"
#else
#include "..\BolshoyManipCpu2R3\Application\StructDefInc.h"
#endif

extern struct CBH * GetBH(short unsigned LogicId) ;

/*
 * Process PDO1 coming from BH axes
 */
short ProcessTxPdo1(short unsigned LogicId , struct CCanMsg *pMsg)
{
    union
    {
        signed short s[2] ;
        unsigned short us[2] ;
        unsigned long ul ;
    } u ;
    volatile struct CBH *pBH ;
    pBH = GetBH(LogicId) ;

    pBH->AxisCbit.all = pMsg->data[0] ;

    // If axis is issued a new command,it will not be accepted as converged until axis had time to respond
    if ( pBH->NewCmdCnt )
    {
        pBH->NewCmdCnt -= 1 ;
        pBH->AxisCbit.bit.MotionConverged = 0 ;
        pBH->AxisCbit.bit.ProfileConverged = 0 ;
    }


    u.ul = pMsg->data[1] ;
    pBH->AxisCbit2.all = ( u.us[0] >> 11 ) ;
    u.us[0] <<= 5 ;

    // The torque is always calculated so that positive tore drives positive speed
    pBH->Torque     =  u.s[0] * SysState.CanAxis[LogicId].InvPdoCurrentReportScale * 0.03125f * pBH->BHAxisDirection;

    pBH->TorqueFilt = pBH->TorqueFilt + 0.16f * (pBH->Torque - pBH->TorqueFilt) ;

    if (pBH->AxisCbit.bit.IsTemperature )
    {
        pBH->Temperature = (float) u.us[1] - 60 ;
    }
    else
    {
        pBH->FaultCode = u.us[1] ;
    }
    //pAxis->OperationEnabled = pBH->AxisCbit.bit.MotorOn ;

    //pAxis->IsFault = pBH->AxisCbit.bit.MotorFault  ;
    return 0 ;
}


/**
 * @brief Process incoming PDO2
 *
 * For all the axes PDO 2 has the same composition:
 * ClaState.Encoder1.UserSpeed   ;
 * ClaState.Encoder1.UserPos ;
 *
 */



short ProcessTxPdo2(short unsigned LogicId , struct CCanMsg *pMsg)
{
    union
    {
        float f ;
        long  unsigned ul ;
    }u ;
    volatile struct CBH *pBH ;
    pBH = GetBH(LogicId) ;

    u.ul = pMsg->data[0] ;
    if ( isnan(u.f) == 0  )
    {
        pBH->UserSpeed = u.f * pBH->BHAxisDirection;
    }
    u.ul = pMsg->data[1] ;
    if ( isnan(u.f) == 0  )
    {
        pBH->ReportSpeedCmd = u.f * pBH->BHAxisDirection;
    }
    return 0 ;
}


float inline Short2Pos(short u)
{
    return ( (float) u * InteralAngleUnits2Rad ) ;
}

/**
 * @brief Process incoming PDO2
 */
// PDO3 is configuration dependent:

// Rotary Potentiometer axes (steering, rotator, neck) configuration:
///////////////////////
// [0..1].s : Position command, 15bit rotation
// [2..3].s : Position actual , 15bit rotation
// [4..5].f : Potentiometer1
// [6..7].f : Potentiometer2
//
// Linear axes (Tape arm, linear)
// [0..1].s : Position command, 0.1mm
// [2..3].s : Position actual , 0.1mm
// [4..7] 0

// Wheel configuration:
///////////////////////
// No PDO 3 TX (data will be sent by the interface card)
// 0..3:  Wheel encoder
// 4..7:  0
//

short ProcessTxPdo3(short unsigned LogicId , struct CCanMsg *pMsg)
{
    union
    {
        float f ;
        long  unsigned ul ;
        short  unsigned us[2] ;
        short  s[2] ;
        long l ;
    }u  ;
    short unsigned style  ;
    volatile struct CBH *pBH ;
    float OldPos ;

    pBH = GetBH(LogicId) ;
    style = pBH->PDO3ReportStyle;
    OldPos = pBH->UserPos ;

    switch (style)
    {
    case PDO3_CONFIG_ROTARY_POT:
        u.l = pMsg->data[0] ;
        pBH->ReportPosCmd = Short2Pos(u.s[0] ) * pBH->BHAxisDirection + pBH->PosCommandOffset ;
        pBH->UserPos = Short2Pos(u.s[1] )  * pBH->BHAxisDirection  + pBH->PosCommandOffset  ;
        pBH->AvgIntervalSpeed = ( pBH->UserPos - OldPos) * pBH->OneOverTs ;
        u.l = pMsg->data[1] ;
        pBH->PotMean  = Short2Pos(u.s[0] )    * pBH->BHAxisDirection  + pBH->PosCommandOffset  ;
        pBH->PotDifference = 0 ;
        pBH->PosEncoder = Short2Pos(u.s[1] )  * pBH->BHAxisDirection  + pBH->PosCommandOffset  ;
        break ;
    case PDO3_CONFIG_LINEAR:
        u.l = pMsg->data[0] ;
        pBH->ReportPosCmd = u.s[0] * InteralPosUnits2M * pBH->BHAxisDirection  + pBH->PosCommandOffset  ;
        pBH->UserPos = u.s[1] * InteralPosUnits2M * pBH->BHAxisDirection  + pBH->PosCommandOffset ;
        pBH->AvgIntervalSpeed = ( pBH->UserPos - OldPos) * pBH->OneOverTs ;
        break;
    case PDO3_CONFIG_WHEEL:
        u.l  = pMsg->data[0] ;
        //u1.l =  pBH->WheelEncoderCnt * pBH->BHAxisDirection;
        pBH->WheelEncoderCnt = u.l * pBH->BHAxisDirection; // += (( (long)( u.s[0] - u1.s[0] ) << 16 ) >> 16 ) ;
        break ;
    case PDO3_CONFIG_STEERING:
        u.l = pMsg->data[0] ;
        pBH->ReportPosCmd = Short2Pos(u.s[0] )  * pBH->BHAxisDirection  + pBH->PosCommandOffset  ;
        pBH->UserPos = Short2Pos(u.s[1] )  * pBH->BHAxisDirection  + pBH->PosCommandOffset ;
        pBH->AvgIntervalSpeed = ( pBH->UserPos - OldPos) * pBH->OneOverTs ;
        u.l = pMsg->data[1] ;
        pBH->PotMean  = Short2Pos(u.s[0] )  * pBH->BHAxisDirection  + pBH->PosCommandOffset ;
        pBH->PotDifference = 0 ;
        pBH->PosEncoder = Short2Pos(u.s[1] )  * pBH->BHAxisDirection  + pBH->PosCommandOffset ;
        break ;
    case PDO3_CONFIG_NECK:
        u.l = pMsg->data[0] ;
        pBH->ReportPosCmd = Short2Pos(u.s[0] )  * pBH->BHAxisDirection  + pBH->PosCommandOffset  ;
        pBH->UserPos = Short2Pos(u.s[1] )  * pBH->BHAxisDirection  + pBH->PosCommandOffset ;
        pBH->AvgIntervalSpeed = ( pBH->UserPos - OldPos) * pBH->OneOverTs ;
        u.l = pMsg->data[1] ;
        pBH->PotDifference =Short2Pos(u.s[0]) * pBH->BHAxisDirection;
        pBH->PotMean  = Short2Pos(u.s[1])  * pBH->BHAxisDirection  + pBH->PosCommandOffset ;
        break ;
    }

    return 0 ;
}
// Data (really from interface card) will be:
// No PDO 4 TX (data will be sent by the interface card)
// [0..3].BF = ( ClaMailOut.SwitchDetectValid & 7 ) + ( (SysState.SwitchDir & 3 ) << 3 )
//        + ( ( (long)(__fmin(ClaState.LLimit.SwitchWidth,0.064f) *  15625.0f)  & 2047 ) << 5 )  ;
//          (ClaState.LLimit.PresentValue ? (1<<18) :0) + (ClaState.LLimit.RiseMarker ? (1<<19) :0) +
 //          (ClaState.LLimit.FallMarker ? (1<<20) :0) +
//              ( ( (long)(__fmin(ClaState.LLimit.DistIntoSwitch,0.064f) *  15625.0f)  & 2047 ) << 5 );
// [4..7]  ClaState.LLimit.EncoderAtSwitch

short ProcessTxPdo4(short unsigned LogicId , struct CCanMsg *pMsg)
{
    volatile struct CBH *pBH ;
    short unsigned validctr, mask ;
    union
    {
        float f ;
        long  unsigned ul ;
        short  unsigned us[2] ;
        short  s[2] ;
        long l ;
    } u1 , u2 ;
    short unsigned style  ;
    pBH = GetBH(LogicId) ;
    style = pBH->PDO3ReportStyle;
    switch (style)
    {
    case PDO3_CONFIG_WHEEL:
        u1.l = pMsg->data[1] ;
        u2.l = pMsg->data[0] ;
        mask = BlockInts();
        pBH->LimitSw.StatusAsPdo = u2.ul ;
        validctr = u2.us[0] & 7 ;
        //if ( pBH->LimitSw.ValidCounter != validctr )
        {
            pBH->LimitSw.ValidCounter = validctr ;
            pBH->LimitSw.PresentValue = u2.s[0] & 0x8 ;
            pBH->LimitSw.SwitchDir    = ( u2.us[0] & 16 ) ? -1 : 1 ;
            pBH->LimitSw.RiseMarker = u2.us[1] & 8 ;
            pBH->LimitSw.FallMarker = u2.s[1] & 16 ;
            u2.ul >>= 5 ;
            u2.s[0] = ((( u2.s[0] & 2047 ) << 5 ) >> 5) ; // Make it signed
            u2.s[1] = ((( u2.s[1] & 2047 ) << 5 ) >> 5) ; // Make it signed
            pBH->LimitSw.SwitchWidth  = u2.s[0]  *  6.4000e-05f ;
            pBH->LimitSw.DistIntoWidth  = u2.s[1]  *  6.4000e-05f ;
            pBH->LimitSw.WheelEncoderAtCenter = u1.l ;// + (( (long)( u.s[1] - u1.s[0] ) << 16 ) >> 16 ) ;
        }
        RestoreInts(mask) ;
        break;
    default:
        return -1 ;
    }
    return 0 ;
}


/*
 * Set motor off command
 * cnt: Index of the axis to turn off
 */
void KillMotor(struct CCanAxis *pAxis)
{
    short unsigned mask ;
    mask = BlockInts() ;
    pAxis->BH.BhCw.bit.MotorOnCmd = 0 ;
    pAxis->AutoStartCnt = 0 ;
    pAxis->BH.UserSpeedCmd = 0 ;
    RestoreInts(mask);
}

/*
 * Start a BH axis
 */
void EnableMotor(struct CCanAxis *pAxis)
{
    short unsigned mask ;

    mask = BlockInts() ;
    pAxis->BH.UserSpeedCmd = 0 ;
    pAxis->BH.UserPosCmd = pAxis->BH.UserPos ;

    pAxis->BH.ReferenceMode = E_PosModeStayInPlace ;
    // If already in restart process don't disturb
    if (pAxis->AutoStartCnt >0)
    {
        RestoreInts(mask);
        return;
    }
    if (pAxis->BH.AxisCbit.bit.MotorFault )
    {
        pAxis->AutoStartCnt = 7  ;
    }
    else
    {
        pAxis->BH.BhCw.bit.MotorOnCmd = 1 ;
    }
    RestoreInts(mask);
}

const short unsigned MotorOnOnAutoStartCnt[8]    = {1,1,0,0,0,0,0,0};
const short unsigned ResetFaultOnAutoStartCnt[8] = {0,0,0,0,1,1,0,0} ;

/*
 * \brief Transmit control word and speed/position command to axis
 *
    // Byte 0: Control word. Thats: .0: motor on, 1: Fault reset, :2..4: Loop type : 5..7: Reference type
    // Bytes 1: 0: Release brake (eff. only if Brake override), 1:Disable automatic braking   2: Spare, 3:4 SwitchSizeSelect : 5: KillHoming , 6: Slow , 7: Brake override
    // byte 2: Current limit, 1/256 of rated
    // Bytes 3: 0
    // Bytes 4..7: Command
 */
short BuildRxPdo1Slave( short unsigned  LogicId)
{
    volatile struct  CCanAxis * pAxis ;
    //float q[4] , qdif[4] , ang ;
    union
    {
        float f ;
        long unsigned ul ;
        short unsigned us[2] ;
        short  signed s[2] ;
    }u ;
    union UBHAxisCW LBhCw ;
    short unsigned mask ;

    //long unsigned mask ;
    // Auto restart

    pAxis = &SysState.CanAxis[LogicId] ;

    if ( pAxis->Installed == 0 )
    {
        pAxis->Pdo1RxMsg.data[0] = 0  ;
        pAxis->Pdo1RxMsg.data[1] = 0  ;
        pAxis->Pdo2RxMsg.data[0] = 0  ;
        pAxis->Pdo2RxMsg.data[1] = 0  ;
        pAxis->BH.BhCw.all = 0 ;
        pAxis->BH.UserSpeedCmd = 0;
        return 0 ;
    }
    //if ( pAxis->Installed == 0 )
    //{
    //    return 0 ; // Nothing to do
    //}

    mask = BlockInts() ;
    LBhCw.all = pAxis->BH.BhCw.all ;

    if ( pAxis->AutoStartCnt && (SysState.Mot.mode >= E_SysMotionModeMotorOff ) )
    {
        if ( pAxis->AutoStartCnt >  7 )
        {
            pAxis->AutoStartCnt = 7   ;
        }
        LBhCw.bit.MotorOnCmd = MotorOnOnAutoStartCnt[pAxis->AutoStartCnt]  ;
        LBhCw.bit.FaultReset = ResetFaultOnAutoStartCnt[pAxis->AutoStartCnt]  ;
        pAxis->AutoStartCnt -= 1 ;
    }
    else
    {
        pAxis->AutoStartCnt = 0   ;
        // A reset request is used at most once
        LBhCw.bit.FaultReset = 0  ; // Default
        if ( pAxis->BH.ResetFailRequestCnt != pAxis->BH.ResetFailUseCnt )
        {
            if ( pAxis->BH.AxisCbit.bit.MotorOn == 0 )
            {
                LBhCw.bit.FaultReset = 1  ;
            }
        }


        if ((SysState.Mot.mode == E_SysMotionModeMotorOff ) ||(SysState.Mot.mode == E_SysMotionModeFault) )
        {
            LBhCw.bit.MotorOnCmd = 0  ; // Leave only fault reset option
        }
    }
    pAxis->BH.ResetFailRequestCnt = pAxis->BH.ResetFailUseCnt ;


    // A home kill request is used once
    if ( pAxis->BH.KillHomeRequestCnt != pAxis->BH.KillHomeUseCnt )
    {
        pAxis->BH.KillHomeRequestCnt = pAxis->BH.KillHomeUseCnt ;
        LBhCw.bit.KillHoming = 1  ;
    }
    else
    {
        LBhCw.bit.KillHoming = 0  ;
    }

    //short NextTrq ;

    if ( SysState.Mot.QuickStop )
    {
        LBhCw.bit.ReferenceMode = E_PosModeStayInPlace ;
    }
    else
    {
        LBhCw.bit.ReferenceMode = pAxis->BH.ReferenceMode ;
    }


    LBhCw.bit.LoopClosure =  pAxis->BH.LoopClosureMode ;

    LBhCw.bit.BrakeOverride = 0 ;
    if ( pAxis->BH.ForceMotorOffBrakeRelease)
    {
        LBhCw.bit.MotorOnCmd = 0 ;
        LBhCw.bit.ReleaseBrake = 1 ;
        LBhCw.bit.BrakeOverride = 1 ;
        LBhCw.bit.DisableAutoBrake  = 1 ;
        LBhCw.bit.WheelTracksSteering = 0 ;
    }
    else
    {
        LBhCw.bit.DisableAutoBrake = ( pAxis->BH.DisableAutoBrake ) ? 1 : 0  ;
        LBhCw.bit.WheelTracksSteering = ( pAxis->BH.WheelTracksSteering ? 1 : 0 ) ;
    }
    if ( pAxis->BH.ForceMotorOnBrake && LBhCw.bit.MotorOnCmd )
    {
        LBhCw.bit.BrakeOverride = 1 ;
        LBhCw.bit.ReleaseBrake = 0 ;
    }
    pAxis->BH.BhCw.all = LBhCw.all ;

    u.us[0] = LBhCw.all ;
    u.us[1] = (short unsigned)(__fmin( __fmax(pAxis->BH.CurrentUseRatio,0.0039063f),1.0f) * 256 - 1 ) ;
    pAxis->Pdo1RxMsg.data[0] = u.ul ;


    if (  pAxis->BH.LoopClosureMode ==E_LC_EXTDual_Pos_Mode )
    {
        u.s[0] = (short)(pAxis->BH.UserExtPosError * 1.043037835047045e+04f ) ;
        u.s[1] = (short)(pAxis->BH.UserSpeedCmd * 2048.0f) ;
    }
    else
    if ( pAxis->BH.ReferenceMode == E_PosModePT )
    {
        u.s[0] = (short)(pAxis->BH.UserPosCmd * 1.043037835047045e+04f ) ;
        u.s[1] = (short)(pAxis->BH.UserSpeedCmd * 2048.0f) ;
    }
    else
    {
        if ( pAxis->BH.LoopClosureMode ==E_LC_Speed_Mode )
        {
            //u.f = ( pAxis->BH.UserSpeedCmd + pAxis->AddSpeed) * pAxis->BH.BHAxisDirection  ;
            u.f = pAxis->BH.UserSpeedCmd * pAxis->BH.BHAxisDirection  ;
        }
        else
        {
            u.f = ( *(pAxis->BH.ModalCmdPtr [pAxis->BH.LoopClosureMode]) -pAxis->BH.PosCommandOffset) * pAxis->BH.BHAxisDirection ;
        }
    }

    pAxis->Pdo1RxMsg.data[1] = u.ul  ;

    u.f = pAxis->BH.UserProfileSpeed ;
    pAxis->Pdo2RxMsg.data[0] = u.ul ;

    u.f = pAxis->BH.UserProfileAcc ;
    pAxis->Pdo2RxMsg.data[1] = u.ul ;

    RestoreInts(mask) ;

    return 0 ;
}

/*
* Command all axes with potentiometers to align their  position reading with the potentiometer
 * This is done by SDO as homing may be done before PDO service is alive.
 */
long unsigned HomePots( void )
{
    long unsigned stat1 ;
    long Code1234 ;
    short unsigned cnt ;
    struct CCanAxis * pAxis ;
    Code1234 = 1234 ;

    for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++)
    {
        pAxis = &SysState.CanAxis[cnt] ;
        if ( pAxis->Installed && pAxis->bRequiresPotHoming )
        {
            stat1 = SendSdo2Slave ( 0x2220 , 25 , &Code1234 , 4 , cnt ); // Set home position
            if ( stat1 )
            {
                return stat1 ;
            }
        }
    }
    return 0 ; // Done
}


/**
 * \brief Read configuration by SDO
 *
 * \return Done status - -1: Fail , 0: Executing , 1: Done , 2: Axis not installed
 */
short ReadAxesConfig ( void )
{
    volatile struct CCanAxis * pAxis ;
    short unsigned axis ;
    long unsigned stat ;
    long value;
    float fvalue ;

    for ( axis = 0 ; axis < N_CAN_SLAVES ; axis ++ )
    {
        pAxis = & SysState.CanAxis[axis] ;
        if ( pAxis->Installed == 0 )
        {
            continue ;
        }
        value = 0 ;
        stat = UploadSdoFromSlave ( 0x6075 , 0 , & value, 4 , axis );
        if ( stat || (value == 0) )
        {
            return -1 ;
        }
        pAxis->RatedCurrent = value * 0.001f ;
        value = 0 ;
        stat = UploadSdoFromSlave ( 0x6073 , 0 , & value, 2 , axis );
        if ( stat || (value == 0) )
        {
            return -1 ;
        }
        pAxis->PeakCurrentObj = (float) __fmax( value * 0.001f  , 1 ) * pAxis->RatedCurrent  ;

        // PDO report scale
        stat = UploadSdoFromSlave ( 0x2225 , 27 , & value, 4 , axis );
        if ( stat || (value == 0) )
        {
            return -1 ;
        }
        fvalue = * (float *)&value ;
        if ( isnan(fvalue) || fvalue < 6.0f || fvalue > 1000.0f )
        {
            return -1 ;
        }
        pAxis->InvPdoCurrentReportScale = 1.0f / fvalue ;

        // SW revision
        value = 0 ;
        stat = UploadSdoFromSlave ( 0x2301 , 7 , & value, 2 , axis );
        if ( stat || (value == 0) )
        {
            return -1 ;
        }
        pAxis->BH.SwVersion =  * ((long unsigned *)&value)  ;

    }
    return 0;
}



/**
 * @brief Acknowledge handler for the arrival of boot up message
 */
short CanAcknowledgeBootUp( struct CCanTrap * me )
{
    short unsigned id  , cnt ;

    id = me->GetCobId & 0x7f ;
    for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
    {
        if ( id == SysState.CanAxis[cnt].CanId )
        {
            if ( me->Msg.dLen >= 4 )
            {
                if ( ( SysState.CanAxis[cnt].AxisRole == (short unsigned)( me->Msg.data[0] >> 24 ))  &&
                        ( SysState.CanAxis[cnt].AxisProj == (short unsigned)( (me->Msg.data[0] >> 8) & 0xffff )) )
                {
                    SysState.CanAxis[cnt].BootAcknowledge = 1 ;
                }
                return 0 ;
            }
            else
            {
                LogException ( id , EXP_WARN , exp_unexpected_bootup_msg ) ;
                return -1;
            }
        }
    }

    LogException ( id , EXP_SAFE_FATAL , exp_expected_bootup_found_unknow_id ) ;
    return -1 ;
}
/**
 * @brief: Send a reset communication and wait bootup
 */
short SendResetComWaitBootup( short unsigned id)
{
    short unsigned GetCobId ;
    short TrapId ;
    struct CCanTrap *ptr ;
    ptr = AllocateTrap ( & TrapId ) ; // Ask an index to a non-busy trap

    if (ptr == (struct CCanTrap *) NULL )
    {
        return -1 ;
    }
    ptr->GetCobId = 0x700 + id ; // Standard reply COB ID for a bootup message
    ptr->Msg.cobId = 0 ;
    ptr->Msg.dLen = 2 ; //send only 2 least significant bytes
    ptr->Msg.data[0] = 100 + 256 * id ; //100 is the NMT service code
    ptr->TimeOut = 2000000  ; // 2 seconds
    ptr->arg = exp_bootout_timeout ;
    ptr->ToutHandler = CanExceptionKill ;
    ptr->TrapHandler = CanAcknowledgeBootUp ;
    SendTrap2Queue (ptr , TrapId , & GetCobId ) ;
    return 0;
}


/**
 * \brief Build an SDO from an init message struct
 *
 * \param LogicId : Axis logical ID (NOT CAN ID!) to use
 * \param pInit   ->    Initialization SDO data
 * \param pSdo    ->    Complete SDO descriptor
 *
 * \return 0 ok, otherwise failure
 */

short BuildSdoFromInit  ( short LogicId , const struct CInitSdo *pInit , struct CSdo *pSdo )
{
    if ( pSdo->Status > 1 )
    {
        return -2 ; // If SDO is on the work do nothing
    }

    MemClr((short unsigned *)pSdo,sizeof(struct CSdo)  );

    if ( (LogicId >= 0) && (LogicId < N_CAN_SLAVES)
            && SysState.CanAxis[LogicId].Installed )
    { // Sane ID and axis is installed
        pSdo->SlaveID = SysState.CanAxis[LogicId].CanId ;
    }
    else
    {
        return -1 ;
    }

    if ( pInit->DataType == 8 )
    {
        pSdo->DataType = 7 ;
        pSdo->Lpayload = * ((long unsigned *) pInit->Lpayload.fPtr) ; // Don't bother if that's really a float
    }
    else
    {
        pSdo->DataType = pInit->DataType ;
        pSdo->Lpayload = pInit->Lpayload.ul ; // Don't bother if that's really a float
    }
    pSdo->Index = pInit->Index ;
    pSdo->SubIndex= pInit->SubIndex ;
    return 0 ;
}


void HaltMotor(struct CCanAxis *pAxis, short unsigned value)
{
    if ( value )
    {
        pAxis->BH.UserSpeedCmd = 0 ;
        pAxis->BH.BhCw.bit.ReferenceMode = E_PosModeStayInPlace ;
    }
    else
    {
        SysState.Mot.QuickStop = 0 ;
    }
}

long BigFatZero  ;
/*
 * Initialize the CAN drive data bases
 */
void InitCanAxes(void)
{
    short unsigned cnt , c1 ;
    struct CCanAxis *pAxis ;

    ExpectedPdo1TxScoreBoard = 0 ;
    for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++)
    {
        pAxis = & SysState.CanAxis[cnt];
        pAxis->BH.OneOverTs = (1.e6f / CONTROL_TS_USEC) ;

        pAxis->Installed = InstalledAxisTab[cnt] ;
        pAxis->AxisRole = SlaveRoleTab[cnt] ;
        pAxis->AxisProj = SlaveProjTab[cnt] ;
        pAxis->CanId    = SlaveIdTab[cnt] ;
        pAxis->BH.BHAxisDirection = SlaveDirectionTab[cnt] ;
        pAxis->BH.PDO3ReportStyle = PDO3ReportStyleTab[cnt] ;
        pAxis->bRequiresPotHoming = RequiresPotHomingTab[cnt] ;
        pAxis->BH.PositionLoopClosureMode = MaximumClosureMode[cnt] ;
        pAxis->BH.IsPosition = IsPositionTab[cnt] ;

        pAxis->BH.CurrentUseRatio = 1.0f ;
        for ( c1 = 0 ; c1 < 8 ; c1++)
        {
            pAxis->BH.ModalCmdPtr[c1] = (float *) &BigFatZero ;
        }
        pAxis->Sdo.SlaveBuf = (unsigned long *) pAxis->SdoBuf ;


        pAxis->BH.ModalCmdPtr[E_LC_Torque_Mode] = &pAxis->BH.CurrentCmd ;
        pAxis->BH.ModalCmdPtr[E_LC_Speed_Mode] = &pAxis->BH.UserSpeedCmd ;
        pAxis->BH.ModalCmdPtr[E_LC_Pos_Mode] = &pAxis->BH.UserPosCmd ;
        pAxis->BH.ModalCmdPtr[E_LC_Dual_Pos_Mode] = &pAxis->BH.UserPosCmd ;
        if ( pAxis->BH.IsPosition )
        {
            pAxis->BH.LoopClosureMode = E_LC_Dual_Pos_Mode ;
            pAxis->BH.ReferenceMode = E_PosModePTP;
        }
        else
        {
            pAxis->BH.LoopClosureMode = E_LC_Speed_Mode ;
            pAxis->BH.ReferenceMode = E_RefModeSpeed;
        }


        pAxis->Pdo1RxMsg.cobId = 0x200 + SlaveIdTab[cnt] ;
        pAxis->Pdo1RxMsg.LogicId = 0 ;
        pAxis->Pdo1RxMsg.dLen = 8 ;

        pAxis->Pdo2RxMsg.cobId = 0x300 + SlaveIdTab[cnt] ;
        pAxis->Pdo2RxMsg.LogicId = 0 ;
        pAxis->Pdo2RxMsg.dLen = 8 ;

        // Map of expected PDO by the installed axes
        if (pAxis->Installed  )
        {
            pAxis->BH.PerAxisExpectedPdoScoreBoard = ((0x1UL + (1UL<<N_CAN_SLAVES) + (1UL<<(2*N_CAN_SLAVES)))<<cnt);
            if ( ( pAxis->AxisRole == PROJ_TYPE_WHEEL_R) || ( pAxis->AxisRole ==  PROJ_TYPE_WHEEL_L) )
            {
                pAxis->BH.PerAxisExpectedPdoScoreBoard = pAxis->BH.PerAxisExpectedPdoScoreBoard + (1UL<<(3*N_CAN_SLAVES+cnt)) ;
            }
            ExpectedPdo1TxScoreBoard |= pAxis->BH.PerAxisExpectedPdoScoreBoard ;
        }

        InitCbitCounter( &pAxis->BH.ComCbit , 6 /*MaxCount*/, 3 /*ErrorThold*/,  1 /*UpStep*/, 2 /*DnStep*/);

    }
}


/**
 * \brief Manage SDO download list
 *
 * \param axis  : Logical (NOT CAN ID) index of the axis
 * \param pList : List to transmit
 * \return Done status - -1: Fail , 0: Executing , 1: Done , 2: Axis not installed
 */
short ManageCfgSdoList (short unsigned axis , const struct CInitSdo *pList  )
{
    struct CSdo * pSdo ;
    struct CSdoListMng *pMng;
    pMng = & SysState.CanAxis[axis].SdoMng ;

    if ( SysState.CanAxis[axis].Installed == 0 )
    {
        pMng->done = 2 ;
        return pMng->done;
    }
    if ( pMng->state && pMng->done )
    {
        return pMng->done ; // Nothing more to do
    }

    pSdo = &SysState.CanAxis[axis].Sdo ;
    switch ( pMng->state )
    {
    case 0: // Initialization
        pMng->SdoCounter = 0 ;
        pMng->state = 1 ;
        pMng->done = 0 ;
        pMng->RetryCtr = 0 ;
        break ;

    case 1:
        if ( pList[pMng->SdoCounter].Index == 0xffff )
        { // Check already done - list is exhausted
            pMng->done = 1 ;
            return pMng->done;
        }

        BuildSdoFromInit  ( axis, & pList[pMng->SdoCounter] , pSdo  );
        SendSdoExpeditDloadLong( pSdo );

        pMng->state = 2 ;
        break;

    case 2: // Wait answer

        if ( pSdo->Status < 0 )
        { // Abort
            pMng->state = 1 ;
            pMng->RetryCtr += 1 ;
            if ( pMng->RetryCtr >= 30 ) //required for tape arm
            {
                pMng->state = -1 ;
                pMng->done = -1 ;
            }
        }

        // Check that all the slaves responded correctly
        if  ( pSdo->Status == 1)
        { // This SDO is transmitted;
            pMng->state = 1 ;
            pMng->SdoCounter += 1 ;
            pMng->RetryCtr = 0  ;
        }
        break ;
    default:
        break;
    }
    return pMng->done;
}


/*
 * Go over all the motors and see if any of them failed
 */
short unsigned  CbitManageMotorFaults(void)
{

    struct CCanAxis * pAxis ;
    short  unsigned faults ,failedAxis , ComAbsentAxis , motena, comabsent , cnt , mstat;
    // Manage wheel brakes
    motena = 0 ;
    faults = 0 ;
    comabsent = 0 ;
    failedAxis = 0;
    ComAbsentAxis = 0;
    for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
    {
        pAxis = &SysState.CanAxis[cnt] ;

        mstat = (SysState.WakeupState == E_CAN_WAKEUP_OPERATIONAL) ? IsMotorOn(pAxis) : IsFaultFree( pAxis) ;
        if ( mstat )
        {
            motena |= ( 1 << cnt ) ;
        }
        if ( pAxis->Installed )
        {
            if (pAxis->BH.ComCbit.ErrorCond )
            {
                comabsent |= ( 1 << cnt ) ;
                ComAbsentAxis = cnt ;
            }
            if ( pAxis->BH.AxisCbit.bit.MotorFault )
            {
                failedAxis = cnt ;
                faults |= ( 1 << cnt ) ;
            }
        }
    }


    SysState.CBit.bit.QuickStop = ( SysState.Mot.QuickStop ? 1 : 0 ) ;
    SysState.CBit.bit.MotorReady = motena & 0x1f ;
    //SysState.CBit.bit.PosNotInit = ( SysState.CBit.bit.NavInitialized ? 0 : 1 ) ;
    SysState.CBit.bit.MotorFault = faults ;
#ifdef SLEEP_SUPPORT     //TODO: Manage Sleep
    SysState.CBit.bit.SleepRequest = ( SysState.SleepRequest & 0x7  ) ;
#endif

    if ( faults )
    {
        LogException(OWN_EXP_ID, EXP_SAFE_FATAL, exp_1_axis_registered_a_fault+failedAxis);
    }
    else if (comabsent)
    {
        LogException(OWN_EXP_ID, EXP_SAFE_FATAL, exp_1_axis_registered_com_error+ComAbsentAxis);
    }

    return motena ;
}

