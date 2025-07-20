
#define VARS_OWNER
#define PD_VARS_OWNER

#include "StructDef2.h"





#define MAIN_VARS_OWNER


#include "main.h"

void EnableInterrupts();

long unsigned z[2] ;
//short volatile vandal ;


void InitManipulatorType(void)
{
    // Get configuration from core#1 report
    ManipulatorType  = M2S.Items.ActCmd.cmd.ConfigWord.bit.ManipType ;
    WheelArmExists   = M2S.Items.ActCmd.cmd.ConfigWord.bit.NoElbowExist ;
    switch (ManipulatorType)
    {
    case None_Manipulator:
        break ;
    case SCARA_Manipulator:
        break ;
    case Flex_Manipulator:
        break ;
    default:
        SevereBugUnknownManipualtor() ;
    }

}



void main(void)
{
    z[1] = 0 ; // Just a place for the debugger to stop at start
    /// Wait assignment of RAM memories , approving that main CPU is awake
    while((HWREGH(MEMCFG_BASE + MEMCFG_O_GSXMSEL) &  MEMCFG_GSXMSEL_MSEL_GS15) == 0U)
    {
    }

    InitPeripherals();

    z[0] = BurnPass[z[1]] ; // The 388 compiler will not allocate for  BurnPass unless it is really used as selection vector
                            // SO THIS TRICK SERVES TO FORCE THE COMPILE TO ACTUALLY GENERATE BurnPass in Sector N

    SevereBug = 0 ; // Optimistic

    // Wait definition for manipulator
    InitManipulatorType() ;

    // Initialize application variables
    InitApp() ;

    EnableInterrupts() ; // Enable periodic interrupt

    while(1)
    {
        IdleTask();
    }
} // end of main function.





/**
 * \brief The idle background task
 */
void IdleTask (void)
{
    UpdateSysTimer (&SysTimerStr ); // Sample the system timer for the use of this idle task scan.


    ObjectSlave() ; // CAN slave in response to host


    IdleCbit() ; //Analyze system state, BIT - built in test, CBit - continuous bit
    IdleCbitResponse() ; // React system CBIT findings


    if (IsPsActive() ) // 54 V is stable
    {
        if ( PowerOnSetup() )
        {
            RunDynamixelSystem();
        }
    }
    else
    { // Power on setup at init state if power is inactive
        PBit.State = 0 ;
    }

    OperSyncReport(); // Report to master CPU (#1)


    IdleCanProc() ; // PDU communications need be considered even when axes are no ready


    // Wake-up the PD Power supplies from sleep, 12 , 24, and 54
    if ( SysState.WakeupState != E_CAN_WAKEUP_SLEEP )
    {
        if ( IsSysTimerElapse (TIMER_PS_MNGR_PERIOD, &SysTimerStr)  )
        {
            PdWakeUpPs() ;
            SetSysTimerTargetSec ( TIMER_PS_MNGR_PERIOD , 0.025f , &SysTimerStr)    ;
        }
    }
    else
    {
        S2M.Items.ActStatus.stat.PsStatus.bit.PsWakeState  = SYSSTAT_WAKE_WAIT_SLEEP ;
        SetSysTimerTargetSec ( TIMER_PS_MNGR_PERIOD , 0.025f , &SysTimerStr)    ;
    }

    SleepRequestManager() ; // Deal with sleep requests

    SendPwm2Tlc() ; // Set the LED driver at the from panel

    if ( IsGen3() )
    {
        if (IsPsActive() ) // 54 V is stable run axis state machine
        { // If power voltages exist
            CanStateMng( ) ; // Try to put servo system into operational state
        }
        CanCBit() ; // Run self test for things relevant only to GEN3
    }
    else
    {
        SetManipulatorOn() ;
    }
}


/*
 * For a Scara manipulator get the cartesian position and the reachable space
 */
void ScaraGetManipulatorLimits (float *x1_out, float *y1_out , float *ymin_out , float *ymax_out  )
{
    float x1,  y1  , ymin , ymax , t1 , t2 , t3 , w , cnext  , l  ;
    ymin = 0 ; ymax = 0 ;
    t1 = ManCmd.Ctl24[MAN_AXIS_SHOULDER].Pos ;
    t2 = ManCmd.Ctl24[MAN_AXIS_ELBOW].Pos ;
    t3 = ManCmd.Ctl24[MAN_AXIS_WRIST].Pos ;

    cnext = __cos( t1   ) ;
    x1 = ManGeo.LHumerus * cnext;
    y1 = ManGeo.LHumerus * Ysin( t1 ) ; // Place of elbow joint

    w  = ManGeo.WHumerus*0.5f;

    ymin = __fmin(ymin,y1+w) ;
    ymin = __fmin(ymin,y1-w) ;
    ymax = __fmax(ymax,y1+w) ;
    ymax = __fmax(ymax,y1-w) ;

    cnext = __cos( t1 + t2 ) ; // Place of wrist joint
    x1 = x1 + ManGeo.LRadius * cnext ;
    y1 = y1 + ManGeo.LRadius * Ysin( t1 + t2 ) ;

    ymin = __fmin(ymin,y1+w) ;
    ymin = __fmin(ymin,y1-w) ;
    ymax = __fmax(ymax,y1+w) ;
    ymax = __fmax(ymax,y1-w) ;

    l = ManGeo.LSucker + ManGeo.LHand ;  // Place of hand center
    cnext = __cos( t1 + t2 + t3 ) ;
    x1 = x1 + l * cnext ;
    y1 = y1 + l * Ysin( t1 + t2 + t3 ) ;

    w  = ManGeo.WHand*0.5f;
    ymin = __fmin(ymin,y1+w*cnext) ;
    ymin = __fmin(ymin,y1-w*cnext) ;
    ymax = __fmax(ymax,y1+w*cnext) ;
    ymax = __fmax(ymax,y1-w*cnext) ;

    *x1_out = x1 ;
    *y1_out = y1 ;
    *ymax_out = ymax ;
    *ymin_out = ymin ;

}




/**
 * \brief Build the operational sync driven report
 *
 * \return 0: ok, -1: TX queue is full
 */
short OperSyncReport( void )
{
    short unsigned * uPtr ;
    short *sPtr;
    long  unsigned data  ;
    short  s1 ,s2 ;
    short unsigned us2 ;
    float x1 , y1 , ymin , ymax ;
    union
    {
        short unsigned us[2] ;
        long  unsigned ul ;
        struct
        {
            struct CManCBit ManCBit ;
            struct CManCBitH ManCBitH ;
        } s ;
    } uBit ;


    sPtr  = (short *) &data ;
    uPtr  = (short unsigned *) &data ;

    // Ready PDO #1
    uBit.s.ManCBit = ManCBit ;
    uBit.s.ManCBitH = ManCBitH ;

    S2M.Items.ActStatus.stat.ManipData1_L = uBit.ul ;

    uPtr[1] = 0 ;
    uPtr[0] =  ( ManCmd.State & 0xff ) |  ( ( ManCmd.StopError & 0xff ) << 8 );
    S2M.Items.ActStatus.stat.ManipData1_H = data ;

    // X-Y position of manipulator
    s1=  (short) ( __fmax( __fmin ( ManCmd.x , 0.9f ), -0.9f)  * 128.0F ) ;
    s2 = (short) ( __fmax( __fmin ( ManCmd.y , 0.9f ), -0.9f)  * 128.0F ) ;
    uPtr[0] = ( (unsigned short) (s1+256) & 0x00ff ) | (  ( (unsigned short) (s2+256) & 0x00ff ) << 8 ) ;

    uPtr[1] = SysState.Package.ManHolds ;
    S2M.Items.ActStatus.stat.ManipData2_L = data ;
   //uPtr[2] = (short) ( mod2piS (ManCmd.theta)  * 10430.0F ) ;

    // at the bottom 8 bits of theta there is spare
    uPtr[0] = (( (short) ( mod2piS (ManCmd.theta)  * 40.7437 ) & 0xff ) << 8 )  ;
    s1 = (short) (fSat (DynStat12[0].PositionActual, 2.55f) * 50.0f) ;
    s2 = (short) (fSat (DynStat12[1].PositionActual, 2.55f) * 50.0f) ;
    uPtr[1] = ((unsigned short)s1 & 0xff) + (( (unsigned short)s2 & 0xff) << 8 ) ;
    S2M.Items.ActStatus.stat.ManipData2_H = data ;

    uPtr[0] = 0x8000  + (( Dynamixel12.State & 0xf ) << 4 )  + ( Dynamixel24.State & 0xf );
    uPtr[1] = ( DynStat12[0].HardErrorStat & 0xff ) + (( DynStat12[1].HardErrorStat & 0xff )<<8) ;
    S2M.Items.ActStatus.stat.ManipData3_L = data ;
    uPtr[0] = ( DynStat24[0].HardErrorStat & 0xff ) + (( DynStat24[1].HardErrorStat & 0xff )<<8) ;
    uPtr[1] = ( DynStat24[2].HardErrorStat & 0xff );
    S2M.Items.ActStatus.stat.ManipData3_H = data ;

    sPtr[0]  = 0 ;
    sPtr[1]  = (short) ( ManCmd.Ctl24[0].Pos * 10430 ) ;
    S2M.Items.ActStatus.stat.ManipData4_L = data ;
    sPtr[0]  = (short) ( ManCmd.Ctl24[1].Pos * 10430 ) ;
    sPtr[1]  = (short) ( ManCmd.Ctl24[2].Pos * 10430 ) ;
    S2M.Items.ActStatus.stat.ManipData4_H = data ;

    if ( ManipulatorType != Flex_Manipulator)
    {
        us2 = (KnowWhereIAm24[0]?1:0 ) |  (KnowWhereIAm24[1]?2:0) | (  KnowWhereIAm24[2]?4:0)  | (  KnowWhereIAm24[3]?8:0 );
    }
    else
    {
        us2 = (KnowWhereIAmCAN[0]?1:0 ) |  (KnowWhereIAmCAN[1]?2:0) | (  KnowWhereIAmCAN[2]?4:0)  ;
    }
    us2 |= ((  KnowWhereIAm12[0]?0x10:0)| (  KnowWhereIAm12[1] ? 0x20: 0  )) ;

    if (  ManipulatorType == Flex_Manipulator)
    {
        TapeArmGetManipulatorLimits (&x1, &y1, &ymin , &ymax );
    }
    else
    {
        ScaraGetManipulatorLimits (&x1, &y1, &ymin , &ymax );
    }
    s1 = (short) ( __fmax( __fmin( x1 * 100 , 127 ) , 0  ) ) ;
    sPtr[0]  = 0x4000 | (us2 << 8)  |  (( *(unsigned short*) &s1 ) & 255 )  ;
    sPtr[1]  = (short) ( __fmax( __fmin( y1 * 1000 , 32700 ) , -32700  )  ) ;
    S2M.Items.ActStatus.stat.ManipData5_L = data ;
    sPtr[0]  = (short) ( __fmax( __fmin( ymin * 1000 , 32700 ) , -32700  )  ) ;
    sPtr[1]  = (short) ( __fmax( __fmin( ymax * 1000 , 32700 ) , -32700  )  ) ;
    S2M.Items.ActStatus.stat.ManipData5_H = data ;
    return 0 ;
}





long float2field( float f , long mask , short shifts )
{
    float mm ;
    mm = (float) (mask >> 1) ;
    return (long) __fmax(__fmin(f,mm),-mm) << shifts  ;
}







short GetExpFatality(void)
{
    long unsigned *pLongexp ;
    pLongexp = (long unsigned *) & SysState.Mot.ExceptionTab[(SysState.Mot.ExceptionCnt - 1) & (EXCEPTION_TAB_LENGTH-1)];
    return (- ( (( short unsigned)( pLongexp[1] & 0xf0)) >> 4 ) );
}




void ClearExceptions( void )
{
    SysState.Mot.ExceptionCnt = 0 ;
    SysState.Mot.ExceptionTab[0] = 0 ;
    SysState.Mot.ExceptionTab[1] = 0 ;
    SysState.Mot.ExceptionTab[2] = 0 ;
    SysState.Mot.ExceptionTab[3] = 0 ;
    SysState.Mot.ExceptionTab[4] = 0 ;
    SysState.Mot.ExceptionTab[5] = 0 ;
    SysState.Mot.ExceptionTab[6] = 0 ;
    SysState.Mot.ExceptionTab[7] = 0 ;
}



/*
 * Log an exception in the exception stack
 *
\param ID:  OWN_EXP_ID or the logical ID of the axis that failed
\param fatality:
 #define EXP_RESET (short)(0)   // A code for resetting any existing failure
 #define EXP_FATAL (short)(-1)   // Fatal - dead duck
 #define EXP_WARN  (short)(-2)   // For warning
 #define EXP_ABORT  (short)(-3)  // Abort auto actions
\param exp: An exception code.
\note: For resetting, use LogException(OWN_EXP_ID, EXP_RESET, 0);

*/
long unsigned LogException ( short unsigned ID ,  short fatality , long unsigned exp )
{
    short unsigned oldexp , oldmode , qinfo , usexp   ;
    short unsigned mask ;
    long unsigned ext_exp;
    long unsigned  *pExp ;
    mask = BlockInts() ;

    usexp   = (short unsigned)exp;
    ext_exp = exp >> 16 ;

    // Old exception to test if this report is really new
    if ( SysState.Mot.ExceptionInit )
    {
        oldexp = (short unsigned) (  SysState.Mot.ExceptionTab[(SysState.Mot.ExceptionCnt-1)&(EXCEPTION_TAB_LENGTH-1)] & 0xffff ) ;
    }
    else
    {
        oldexp = 0 ;
        SysState.Mot.ExceptionInit = 1 ;
    }

    oldmode = SysState.Mot.mode ; // Mode backup

    qinfo   = 0 ;

    if ( fatality == EXP_FATAL )
    {
        SysState.Mot.QuickStop = 1;
        SysState.Mot.mode = E_SysMotionModeFault;
    }
    /*
    if ( fatality == EXP_WARN)
    {
        //SysState.Mot.Exception = (unsigned short) exp ;
    }
    */
    if ( fatality == EXP_ABORT)
    {
        // Change : ABORT does not leave the auto mode, just go to the null queue
        SysState.Mot.QuickStop = 1;
    }


    if ( usexp != oldexp )
    {
        // Prevent multiple registration of the same error.
        // Specifically, an error reset will be ignored if the error code is anyway 0

        if ( ( fatality == EXP_WARN) && SysState.Mot.RejectWarning.IgnoreWarning  )
        { // Warnings may be logged later if desired
            SysState.Mot.RejectWarning.ID = ID ;
            SysState.Mot.RejectWarning.exp = exp ;
        }
        else
        {// Log exception
            // Exception files:
            // Long[0]:
            // 0..15  : Exception code
            // 16..19 : ID of exception generator
            // 20..23 : Mode (Automatic, .... ) just before exception throw
            // 24..35 : Next position in queue (if relevant)
            // Long[1]:
            //  0..3: 0x80 if was running a queue
            //  4..7: Fatality code
            //  16..31: Extended exception code (high part of exception parameter)

            pExp = (long unsigned  * ) & SysState.Mot.ExceptionTab[SysState.Mot.ExceptionCnt] ;
            pExp[0] = (long unsigned) usexp  +  (( long unsigned) (ID&0xf) << 16 )
                    +  (( long unsigned) (oldmode &0xf) << 20 )
                    +  (( long unsigned) (qinfo &0xff) << 24 ) ;
            pExp[1] = ( (( long unsigned) qinfo >> 8 ) & 0xf ) + (((-fatality) & 0xf) << 4 )
                                +  (( long unsigned) ext_exp  << 16 ) ;
            SysState.Mot.ExceptionCnt =  ( SysState.Mot.ExceptionCnt+1) & (EXCEPTION_TAB_LENGTH-1)  ;
        }
    }


    RestoreInts( mask) ;

    return exp ;
}


/**
 * \brief Initiate the time outs of the system
 */
void InitTimeOuts ( void )
{
//    SetSysTimerTarget( TIMER_I2C_TLC_TRANSMIT , 10000 , &SysTimerStr) ; // 10msec till first touching the LEDS
    SetSysTimerTargetSec( TIMER_RS485_24V_TOUT , 0.001f , &SysTimerStr) ;
    SetSysTimerTarget ( TIMER_RS485_24V_TWAIT, 0x7fffffff , &SysTimerStr) ; // Practically forever
    SetSysTimerTarget ( TIMER_RS485_24V_TWAIT_RT, 0x1 , &SysTimerStr) ; // Start elapsed
    SetSysTimerTargetSec ( TMR_WAIT_LASER_INVALID , 0.3f , &SysTimerStr  );
    SetSysTimerTargetSec ( TMR_WAIT_SUCK_HOLD, 0.3f , &SysTimerStr  );
    SetSysTimerTargetSec ( TMR_DOOR_STOP , 0.0001f ,&SysTimerStr); // Avoid premature "Stopped" indication
    SetSysTimerTargetSec( TMR_MUSHROOM_PRESS , 0.001f ,&SysTimerStr) ;

}



void  ApplyManCalibration(void)
{
    short unsigned cnt ;

    if ( ManipulatorType == None_Manipulator)
    {
        return ;
    }

    DynStat24[0].PositionOffset = ManCalibArr.ShoulderCenter ;
    DynStat24[1].PositionOffset = ManCalibArr.ElbowCenter ;
    DynStat24[2].PositionOffset = ManCalibArr.WristCenter ;

    switch (ManipulatorType)
    {
    case SCARA_Manipulator:
        DynStat12[0].PositionScale  = ManGeo.LDoorGainFac + ManCalibArr.LDoorGainFac ;
        DynStat12[0].PositionOffset = ManGeo.LDoorCenter+ ManCalibArr.LDoorCenter ;
        DynStat12[0].NominalEncoderOffset = 0 ;
            // Right
        DynStat12[1].PositionScale =  ManGeo.RDoorGainFac+ ManCalibArr.RDoorGainFac ;
        DynStat12[1].PositionOffset = ManGeo.RDoorCenter+ ManCalibArr.RDoorCenter ;
        DynStat12[1].NominalEncoderOffset = 0 ;
        break ;
    case Flex_Manipulator:
        // Door
        DynStat12[0].PositionScale  = ManGeo.FlexLDoorGainFac + ManCalibArr.FlexLDoorGainFac ;
        DynStat12[0].PositionOffset = ManGeo.FlexLDoorCenter+ ManCalibArr.FlexLDoorCenter ;
        DynStat12[0].NominalEncoderOffset = 0 ;
            // Right
        DynStat12[1].PositionScale =  ManGeo.FlexRDoorGainFac+ ManCalibArr.FlexRDoorGainFac ;
        DynStat12[1].PositionOffset = ManGeo.FlexRDoorCenter+ ManCalibArr.FlexRDoorCenter ;
        DynStat12[1].NominalEncoderOffset = 0 ;

        break ;
    default:
        SevereBugUnknownManipualtor() ;
    }

    // Just protection for uninitialized axes, avoid zero division
    for ( cnt = 0; cnt < NUM_12V_MANIP_AXES ; cnt++ )
    {
        if ( DynStat12[cnt].PositionScale == 0 )
        {
            DynStat12[cnt].PositionScale = 0.00153398078788f ;
            DynStat12[cnt].SpeedScale   = ( 1.0f/41.7f) ; // 0.229 rpm/ bit
        }
    }

}
#define NECK_TYPE 0x9300
#define WHEEL_TYPE 0x9400
#define PD_TYPE 0x9200

#define PROJ_TYPE_UNDEFIND 0
#define PROJ_TYPE_WHEEL_R 1
#define PROJ_TYPE_STEERING_R 2
#define PROJ_TYPE_WHEEL_L 3
#define PROJ_TYPE_STEERING_L 4
#define PROJ_TYPE_NECK 5
#define PROJ_TYPE_NECK2 6
#define PROJ_TYPE_NECK3 7
#define PROJ_TYPE_TRAY_ROTATOR 8
#define PROJ_TYPE_TRAY_SHIFTER 9
#define PROJ_TYPE_TAPE_MOTOR 10
#define PROJ_TYPE_LAST 11 // Must be 1 over the biggest

const short unsigned SlaveIdTab  [N_CAN_SLAVES+1] = {ID_PLATE,ID_TAPEARM,ID_SPACER,PD_CAN_ID}  ;
const short unsigned SlaveProjTab[N_CAN_SLAVES+1] = {NECK_TYPE,NECK_TYPE,NECK_TYPE,PD_TYPE}  ;
const short unsigned SlaveRoleTab[N_CAN_SLAVES+1] = {PROJ_TYPE_TRAY_ROTATOR,PROJ_TYPE_TAPE_MOTOR,PROJ_TYPE_TRAY_SHIFTER,PROJ_TYPE_UNDEFIND}  ;


const short unsigned SlavePosModeTab[N_CAN_SLAVES+1] = {E_LC_Dual_Pos_Mode,E_LC_Pos_Mode,E_LC_Pos_Mode,E_LC_Pos_Mode}  ;

#if (N_CAN_SLAVES+1) >= N_CAN_SLAVES_DEF
#error "Problem in CAN axis dimensions "
#endif
#if (N_CAN_SLAVES+1) >= DEF_NUM_MAX_24V_AXES
#error "Problem in CAN axis dimensions "
#endif

float CA_BigFatZero ;


void InstallAxes(void)
{
    short cnt ;
    struct CCanAxis * pAxis ;
    for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
    {
        pAxis->Installed = 0 ; // Temporary
    }
    SysState.CanAxis[LOGICAL_PLATE].Installed = 0 ;
    SysState.CanAxis[LOGICAL_TAPEARM].Installed = 1 ;
    SysState.CanAxis[LOGICAL_SPACER].Installed = 1 ;
}

void InitCanAxes(void)
{
    short unsigned cnt , c1, id , role , proj   ;
    struct CCanAxis * pAxis ;
    CA_BigFatZero = 0 ;
    for ( cnt = 0 ; cnt <= N_CAN_SLAVES ; cnt++ )
    {
        pAxis = (struct CCanAxis *  ) &SysState.CanAxis[cnt] ;
        id = SlaveIdTab[cnt] ;
        role = SlaveRoleTab[cnt] ;
        proj = SlaveProjTab[cnt] ;

        pAxis->Sdo.SlaveBuf = (unsigned long *) SysState.CanAxis[cnt].SdoBuf ;
        pAxis->CanId = id  ;
        pAxis->AxisRole = role  ;
        pAxis->AxisProj = proj  ;
        pAxis->MotCntRad = 1.0f ; // Scaling is done inside the axis
        pAxis->Installed = 0 ; // Temporary
        pAxis->BH.PositionLoopClosureMode = SlavePosModeTab[cnt] ;
        KnowWhereIAmCAN[cnt] = 0 ;

        SysState.CanAxis[cnt].Pdo1RxMsg.cobId = 0x200 + id ;
        SysState.CanAxis[cnt].Pdo1RxMsg.LogicId = 0 ;
        SysState.CanAxis[cnt].Pdo1RxMsg.dLen = 8 ;

        for ( c1 = 0 ; c1 < 8 ; c1++)
        {
            pAxis->BH.ModalCmdPtr[c1] = &CA_BigFatZero ;
        }
        pAxis->BH.ModalCmdPtr[E_LC_Torque_Mode] = &pAxis->BH.CurrentCmd ;
        pAxis->BH.ModalCmdPtr[E_LC_Speed_Mode] = &pAxis->BH.UserSpeedCmd ;
        pAxis->BH.ModalCmdPtr[E_LC_Pos_Mode] = &pAxis->BH.UserPosCmd ;
        pAxis->BH.ModalCmdPtr[E_LC_Dual_Pos_Mode] = &pAxis->BH.UserPosCmd ;

        InitCbitCounter( & pAxis->BH.ComCbit , 8 , 5 , 1 , 1 );
    }

    InstallAxes();
    SysState.CanAxis[N_CAN_SLAVES].Installed = 1 ; // The manipulator system at the PD



}



void NextHostSciHandlerInit(short unsigned) ;
/**
 *
 * \brief Initialize system level application parameters
 *
 * \detail Initialize the CAN axes
 */
void InitSysData(void)
{
    short unsigned cnt ;
    struct CFloatParRecord *pPar ;
    // float m[3][3] ;
    ClearMemRpt((short unsigned *) &SysState,sizeof( SysState) );
    ClearMemRpt((short unsigned *) &ClaState,sizeof( ClaState) );
    ClearMemRpt((short unsigned *) &ClaInput,sizeof( ClaInput) );
    //ClearMemRpt((short unsigned *) &M2S,sizeof( M2S) );
    ClearMemRpt((short unsigned *) &S2M,sizeof( S2M) );

    ClearMemRpt ( (short unsigned *) &ManCmd , (short unsigned) sizeof( struct CManCmd  ) )  ;
    ClearMemRpt ( (short unsigned *) &ManGeo , (short unsigned) sizeof( struct CManGeo  ) )  ;
    ClearMemRpt ( (short unsigned *) &ManualManCmd , (short unsigned) sizeof( struct CManualManCmd  ) )  ;
    ClearMemRpt ( (short unsigned *) &ClaState , (short unsigned) sizeof( ClaState ) )  ;
    ClearMemRpt ( (short unsigned *) &NoElbowCmd , (short unsigned) sizeof( struct CNoElbowCmd  ) )  ;
    ClearMemRpt ( (short unsigned *) &ManCalibArr , (short unsigned) sizeof( struct CCalib  ) )  ;
    ClearMemRpt ( (short unsigned *) &CanNet , (short unsigned) sizeof( struct CCanNet  ) )  ;
    ClearMemRpt ( (short unsigned *) &TapeArmCmd, (short unsigned) sizeof(  TapeArmCmd  ) )  ;

    bEnableSync = 0 ;

    for ( cnt = 0 ; cnt < DEF_NUM_MAX_24V_AXES ; cnt++ )
    {
        KnowWhereIAm24[cnt] = 0 ;
        ClearMemRpt ( (short unsigned *) &DynStat24[cnt],(short unsigned) sizeof( struct CDynamixelStat  ) )  ;
    }
    for ( cnt = 0 ; cnt < DEF_NUM_MAX_12V_AXES ; cnt++ )
    {
        KnowWhereIAm12[cnt] = 0 ;
        ClearMemRpt ( (short unsigned *) &DynStat12[cnt],(short unsigned) sizeof( struct CDynamixelStat  ) )  ;
    }


    // Go through the entire parameters table and load the defaults
    for ( cnt = 0 ; cnt < (sizeof(ParTable)/sizeof(struct CFloatParRecord)) ; cnt++ )
    {
        pPar = (struct CFloatParRecord  *) &ParTable[cnt];
        if ( pPar->ptr == (float*) 0 )
        {
            break ;
        }
        *pPar->ptr = pPar->dflt ;
    }
    SysState.MasterMsgCnt = 0 ; // Indicate not started

 //   NUM_MAN_AXES = DEF_NUM_MAN_AXES ;
    if ( WheelArmExists )
    {
        NUM_12V_WHEELARM_AXES = 2 ;
    }
    else
    {
        NUM_12V_WHEELARM_AXES = 0 ;
    }

    switch(ManipulatorType)
    {
    case None_Manipulator:
        NUM_12V_MANIP_AXES = 0 ;
        NUM_24V_AXES = 0 ;
        NUM_24V_GEOM_AXES = 0 ;
        ManGeo.MaxSpeed[0] = ManGeo.FlexMaxSpeed; // !< Maximum speed, stam
        pDyn24Setup = Dyn24SetupNone ;
        break ;
    case SCARA_Manipulator:
        NUM_12V_MANIP_AXES = DEF_NUM_12V_MANIP_AXES ;
        ManCmd.Ctl12[MAN_AXIS_LSTOP].MaxSpeedCmd = 2.0F ;
        ManCmd.Ctl12[MAN_AXIS_RSTOP].MaxSpeedCmd  = 2.0F ;

        NUM_24V_AXES = DEF_NUM_24V_GEOM_AXES ;
        NUM_24V_GEOM_AXES = DEF_NUM_24V_GEOM_AXES;
        ManGeo.MaxSpeed[0] = ManGeo.ShoulderMaxSpeed; // !< Maximum speed
        ManGeo.MaxSpeed[1] = ManGeo.ElbowMaxSpeed; // !< Maximum speed
        ManGeo.MaxSpeed[2] = ManGeo.WristMaxSpeed; // !< Maximum speed
        ManCmd.Ctl24[MAN_AXIS_SHOULDER].Profiler.PosMin = -1.6F;
        ManCmd.Ctl24[MAN_AXIS_ELBOW].Profiler.PosMin = -2.3F;
        ManCmd.Ctl24[MAN_AXIS_WRIST].Profiler.PosMin = -1.9F;
        ManCmd.Ctl24[MAN_AXIS_SHOULDER].Profiler.PosMax = 1.6F;
        ManCmd.Ctl24[MAN_AXIS_ELBOW].Profiler.PosMax  = 2.3F;
        ManCmd.Ctl24[MAN_AXIS_WRIST].Profiler.PosMax  = 1.9F;
        ManCmd.Ctl24[MAN_AXIS_SHOULDER].MaxSpeedCmd  = ManGeo.ShoulderMaxSpeed + 0.05f  ;
        ManCmd.Ctl24[MAN_AXIS_ELBOW].MaxSpeedCmd = ManGeo.ElbowMaxSpeed + 0.05f ;
        ManCmd.Ctl24[MAN_AXIS_WRIST].MaxSpeedCmd = ManGeo.WristMaxSpeed + 0.05f ;

        ManCmd.Ctl24[MAN_AXIS_SHOULDER].L24.Kp = MAN_DEFAULT_KP;
        ManCmd.Ctl24[MAN_AXIS_ELBOW].L24.Kp = MAN_DEFAULT_KP;
        ManCmd.Ctl24[MAN_AXIS_WRIST].L24.Kp = MAN_DEFAULT_KP;
        pDyn24Setup = Dyn24SetupSCARA ;
        break ;
    case Flex_Manipulator:
        NUM_12V_MANIP_AXES = DEF_NUM_12V_MANIP_AXES ;
        ManCmd.Ctl12[MAN_AXIS_LSTOP].MaxSpeedCmd = 2.0F ;
        ManCmd.Ctl12[MAN_AXIS_RSTOP].MaxSpeedCmd  = 2.0F ;

        NUM_24V_AXES = DEF_NUM_24V_FLEX_AXES ;
        NUM_24V_GEOM_AXES = DEF_NUM_24V_FLEX_AXES;

        ManGeo.MaxSpeed[0] = ManGeo.FlexMaxSpeed; // !< Maximum speed
        pDyn24Setup = Dyn24SetupFlex ;
        break;
    default:
        SevereBugUnknownManipualtor() ;
    }
    pDyn12Setup = Dyn12SetupTotal ;

    NUM_12V_AXES_TOTAL = NUM_12V_MANIP_AXES+NUM_12V_WHEELARM_AXES ;
    FlexDynSpeedCmdLimit = FLEX_DYN_SPEED_CMD_LIMIT ;


    // Axes of wheel arm - no unit translation for position
    for ( cnt = 0 ; cnt < NUM_12V_WHEELARM_AXES ; cnt++ )
    {
        DynStat12[cnt+NUM_12V_MANIP_AXES].PositionScale = 1.0f ;
        DynStat12[cnt+NUM_12V_MANIP_AXES].PositionOffset = 0 ;
        DynStat12[cnt+NUM_12V_MANIP_AXES].SpeedScale    = ( 1.0f/41.7f) ; // 0.229 rpm/ bit
    }


    SlaveSdo.SlaveBuf = (long  unsigned *) &SysState.Msg.data.ull ;


    InitCbitCounter( &PduRxPdoBitStr , 6 /*MaxCount*/, 3 /*ErrorThold*/,  1 /*UpStep*/, 2 /*DnStep*/);
    InitCbitCounter( &EEFRxPdoBitStr , 6 /*MaxCount*/, 4 /*ErrorThold*/,  1 /*UpStep*/, 2 /*DnStep*/);
    InitCbitCounter( &TxPdoBitStr , 6 /*MaxCount*/, 4 /*ErrorThold*/,  1 /*UpStep*/, 2 /*DnStep*/);
    InitCbitCounter( &ManTxPdoBitStr , 6 /*MaxCount*/, 4 /*ErrorThold*/,  1 /*UpStep*/, 2 /*DnStep*/);

    //ManRouteCmdImage.WheelPosOnPoleGain = 4.0f ; // 0.6Hz
    //ManRouteCmd.ArcCurrent  = 4.0f ;
    //ManRouteCmdImage.RescueCurrent  = 5.0f ;


#ifdef SP_SER_FLASH
    FlashCalibPD =   SER_FLASH_ADD_CALIB_MANIP ; // Flash sector for calibration
#else
    FlashCalibPD =   Sector_AppCalib_start; // Sector M
#endif

    //FlashCalibPD = (struct CCalib *) Sector_AppCalib_start ; // 0x0BC000; // Sector M
    //FlashCalibManipPD = (struct CCalib *) 0x0BA000; // Sector L


    InitDynamixelNet ( &Dynamixel12  ,  12 , NUM_12V_AXES_TOTAL);
    InitDynamixelNet ( &Dynamixel24  ,  24 , NUM_24V_AXES);

    for ( cnt = 0 ; cnt < NUM_24V_AXES  ; cnt++ )
    {
        InitCbitCounter( & Dx24AxisComCbit[cnt] , 16 , 10 , 2 , 1 );
        InitCbitCounter( & ManControlCbitCntr[cnt] , 8 , 5 , 1 , 1 );
        ManCmd.Ctl24[cnt].GoTimerID = TIMER_24_TOUT_START + cnt * 2 ;
        ManCmd.Ctl24[cnt].StabilizeTimerID = TIMER_24_TOUT_START + cnt * 2 + 1 ;
    }
    for ( cnt = 0 ; cnt < NUM_12V_AXES_TOTAL ; cnt++ )
    {
        InitCbitCounter( & Dx12AxisComCbit[cnt] , 33 , 24 , 3 , 2 );
        ManCmd.Ctl12[cnt].GoTimerID = TIMER_12_TOUT_START + cnt * 2 ;
        ManCmd.Ctl12[cnt].StabilizeTimerID = TIMER_12_TOUT_START + cnt * 2 + 1 ;
    }

    InitManipulator() ;


    ManCmd.RdyNewAction = 0xff ; // Enable state resetting

    if ( DealCalibrationManip(1))
    {
        SysState.CBit.bit.NoCalib = 1 ;
    }



    // Initialize the programming parameters with flash contents
    ReadCalibFromFlash ( (long unsigned*) &ManipCalibProg.Calib ,  FlashCalibPD  ) ;

    ResetManRecovery24() ;
    ResetManRecovery12() ;

    for ( cnt = 0 ; cnt < DEF_NUM_MAX_24V_AXES ; cnt++ )
    {
        DynStat24[cnt].bPosModulo = 1 ;
        InitCbitIntegrator( &ManCmd.Ctl24[cnt].OverErrorBit , __fmax(ManCmd.IntegralErrorThold*2,0.3f)  /*MaxIntegral*/, ManCmd.IntegralErrorThold /*ErrorThold*/, 8 /*bw*/, 1 /*GainUp*/, 0.5 /*GainDn*/,&SysTimerStr);
    }
    for ( cnt = 0 ; cnt < DEF_NUM_MAX_12V_AXES ; cnt++ )
    {
        DynStat12[cnt].IsDxlPosLoop = 1 ;
        DynStat12[cnt].bPosModulo = 1 ;
        InitCbitIntegrator( &ManCmd.Ctl12[cnt].OverErrorBit ,  0.1f /*MaxIntegral*/, 0.55f /*ErrorThold*/,8 /*bw*/,  1 /*GainUp*/, 0.5f /*GainDn*/,&SysTimerStr);
        DynStat12[cnt].bPinAxis   = 0 ;
        DynStat12[cnt].bIgnoreErrorMask = 0xff ; // Ignore nothing
        DynStat12[cnt].CurrentLimit = 2.0f ;
        DynStat12[cnt].CurrentScale = 0.269e-3f ;
        DynStat12[cnt].InvCurrentScale = 371.7472f ;
    }
    for ( cnt = NUM_12V_MANIP_AXES ; cnt < NUM_12V_AXES_TOTAL ; cnt++ )
    { // axes for wheel arm latches
        DynStat12[cnt].bPosModulo = 0 ;
        DynStat12[cnt].bPinAxis   = 1 ;
        DynStat12[cnt].bIgnoreErrorMask = DYN12_PIN_ERROR_MASK ; // Ignore nothing
    }

    if ( ManipulatorType == Flex_Manipulator)
    {
        DynStat12[MAN_AXIS_RSTOP].IsPosLimit = 1 ;
        DynStat12[MAN_AXIS_LSTOP].IsPosLimit = 1 ;
        S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Homed = 0  ;
    }

    S2M.Items.ActStatus.stat.SlaveStat.bit.hi.ManipType =  ManipulatorType ;
    S2M.Items.ActStatus.stat.IsOperational = PROJ_TYPE ; // 0x8580 ; // Mark that CPU2 is running operational SW

    InitRecorder() ;

    US1MessageStr.WaitCntr = 6 ;
    US2MessageStr.WaitCntr = 6 ;

    InitCanAxes() ;

    SysState.CanAxis[LOGICAL_PLATE].BH.PDO3ReportStyle = PDO3_CONFIG_ROTARY_POT ;
    SysState.CanAxis[LOGICAL_SPACER].BH.PDO3ReportStyle = PDO3_CONFIG_LINEAR ;
    SysState.CanAxis[LOGICAL_TAPEARM].BH.PDO3ReportStyle = PDO3_CONFIG_LINEAR ;
    SysState.CanAxis[LOGICAL_PLATE].bRequiresPotHoming = 1 ;

}





/*
 * \brief Initialize the application
 */
void InitApp()
{
    InitSystemTimer( &SysTimerStr);

    InitSysData() ; // Initialize system data

    InitTimeOuts( ); // Initiate time outs


#ifdef CORE2_OWNS_CAN
    InitCtlModule();
#endif

}


long unsigned GetSamplingTime( short unsigned ind)
{
    if ( ind == 0 ) return FAST_TS_USEC ;
    return ( (long unsigned)SPI_CYC_IN_C * FAST_TS_USEC ) ;
}

/**
 * \brief Continuous self check
 */
void IdleCbit(void)
{

    // Test sucking state
    // Sucking may be :
    // - Active if both filters shows sucking indication for enough time
    // - Inactive if both pumps are off for enough time
    // - Indeterminate otherwise
    short unsigned mon , cnt;

    // Treat flash pumps
    if ( M2S.Items.ActCmd.cmd.FlashPumpRequest )
    {
        Flash_RelinquishPumpSemaphore() ;
        FlashProgPD.PassWord = 0 ; // Kill flash ownership
    }


    SysState.Pump.On = ArePumpsOn() ;
    if ( SysState.Pump.On )
    {
        SetSysTimerTargetSec( TMR_WAIT_SUCK_DEPLETE , ManGeo.TimeForEntireSuckRelease , &SysTimerStr) ;
    }
    SysState.Pump.IsDepleted = IsSysTimerElapse(TMR_WAIT_SUCK_DEPLETE,&SysTimerStr) ? 1 : 0 ;

    if ( SysState.Package.LaserMedianValid )
    {
        ManCBit.NoSuck1 = ( SysState.Package.LaserDistMedian > ManGeo.MaxLaserDistOnHold ) ;
        SetSysTimerTargetSec ( TMR_WAIT_LASER_INVALID , 0.3f , &SysTimerStr  );
    }
    else
    { // No laser for 0.3sec, no suck
        if ( IsSysTimerElapse(TMR_WAIT_LASER_INVALID,&SysTimerStr) )
        {
            ManCBit.NoSuck1 = 1;
        }
    }

    if (  ManCBit.NoSuck1  || ( SysState.Pump.On == 0 ) )
    {
        SetSysTimerTargetSec ( TMR_WAIT_SUCK_HOLD , ManGeo.TimeInGoodCurrent4Pull , &SysTimerStr  );
    }
    SysState.Pump.IsHolding = IsSysTimerElapse(TMR_WAIT_SUCK_HOLD,&SysTimerStr) ? 1 : 0 ;

    if ( IsPsActive()  ) // PBit.Dynamixel12On )
    {
        ManCBit.Dyn12NetOn = 1 ;
        ManCBit.Dyn24NetOn = IsGen3()  ? 0 : 1 ;
    }
    else
    {
        ManCBit.Dyn12NetOn = 0 ;
        ManCBit.Dyn24NetOn = 0 ;
    }

    ManCBit.Dyn12InitDone =  ( Dynamixel12.InitState ) ? 1 : 0 ;
    ManCBit.Dyn24InitDone =  ( Dynamixel24.InitState ) ? 1 : 0 ;

    // Bit 8 is DISC 2
    mon = 0 ;
    for ( cnt = 0 ; cnt < NUM_24V_AXES ; cnt++ )
    {
        mon += (DynStat24[cnt].MotorOn * (1<<cnt) ) ;
    }
    ManCBit.MotorOnMan =  mon  ;

    mon = 0 ;
    for ( cnt = 0 ; cnt < NUM_12V_MANIP_AXES ; cnt++ )
    {
        mon += (DynStat24[cnt].MotorOn * (1<<cnt) ) ;
    }
    ManCBit.MotorOnStop = mon ;

    mon = 0 ;
    for ( cnt = 0 ; cnt < NUM_12V_WHEELARM_AXES ; cnt++ )
    {
        mon += (DynStat24[cnt+NUM_12V_MANIP_AXES].MotorOn * (1<<cnt) ) ;
    }

    ManCBitH.MotorOnPin = mon ;

    ManCBitH.PbitDone = ( PBit.State == 10  ) ? 1 : 0 ;
    ManCBitH.IndividualAxControl = ( S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual ) ?1 : 0 ;

    ManCBitH.PinMotorIndex = DEF_NUM_MAX_24V_AXES + NUM_12V_MANIP_AXES ;

    S2M.Items.ActStatus.stat.AxisReadout[0] = DynStat24[0].PositionActual ;
    S2M.Items.ActStatus.stat.AxisReadout[1] = DynStat24[1].PositionActual ;
    S2M.Items.ActStatus.stat.AxisReadout[2] = DynStat24[2].PositionActual ;

    S2M.Items.ActStatus.stat.AxisReadout[5] = DynStat12[0].PositionActual ;
    S2M.Items.ActStatus.stat.AxisReadout[6] = DynStat12[1].PositionActual ;
    S2M.Items.ActStatus.stat.AxisReadout[7] = DynStat12[2].PositionActual ;
    S2M.Items.ActStatus.stat.AxisReadout[8] = DynStat12[3].PositionActual ;

    ManStatistics = ( SysState.Pump.On & 1) | ( (SysState.Pump.IsDepleted & 1)<<1)  | ( ManCBit.NoSuck1 ? 4 : 0 ) | ( SysState.Pump.IsHolding ? 8: 0 ) | (SysState.Package.LaserMedianValid ? 16:0)
            | (( ManCmd.State & 31 )  << 5 )  | ((S2M.Items.ActStatus.stat.PumpCmd&1)<<10)|
            ((SysState.Package.SuckRequest.us & 7 ) << 11 ) | (( (long unsigned) ManCmd.StopError & 63 )<<16) ;

    S2M.Items.ActStatus.stat.SlaveStat.bit.hi.FlexArmHomed = SysState.CanAxis[LOGICAL_TAPEARM].BH.AxisCbit.bit.Homed ? 1 : 0 ;
    S2M.Items.ActStatus.stat.SlaveStat.bit.hi.SpacerHomed = SysState.CanAxis[LOGICAL_SPACER].BH.AxisCbit.bit.Homed ? 1 : 0 ;



    ApplyLaser() ;


    SysState.Package.ManOnState.WellnessStatus = IsManipulatorWell();
}

/**
 * \brief respond to the findings of self test
 */
void IdleCbitResponse(void)
{
    if (   IsPsActive() == 0   )
    {
        if ( Dynamixel24.State != DYN_MANUAL_EXT)
        { // If 24 V failed, close 24V servo activity
            Dynamixel24.State = DYN_NET_WAKE_WAIT;
            SetSysTimerTarget(TIMER_RS485_24V_TWAIT,0x7fffffff ,&SysTimerStr) ;
        }
    }
    if (  IsPsActive() == 0  )
    {
        if ( Dynamixel12.State != DYN_MANUAL_EXT)
        { // If 12 V failed, close 12V servo activity
            Dynamixel12.State = DYN_NET_WAKE_WAIT;
            SetSysTimerTarget(TIMER_RS485_12V_TWAIT,0x7fffffff ,&SysTimerStr) ;
        }
    }
}

void SevereBugUnknownManipualtor()
{
    PBit.State = 0 ;
    SevereBug  = 1  ;
}






