
#define VARS_OWNER // Allocate memories for all the globals - just in this file
#define HARDSIMSIM_OWNER
#define MAIN_VARS_OWNER
#include "StructDef.h"






#include "main.h"

extern void EnableInterrupts(void);


//short volatile vandal ;

void DisableGyroDriftCorrection (void)
{
    SysState.Nav.UsecOfGyroDriftDisable = SysState.Nav.UsecOfiPos ;
    SysState.Nav.bGyroDriftDisable |= 1 ;
    SysState.Nav.AzInt = 0 ;
}

#define BOOT_KEY                                0x5A000000UL
#define CPU2_BOOT_FREQ_200MHZ                   0xC800U

#define BOOTMODE_BOOT_TO_FLASH_SECTOR0          0x03U

void Device_bootCPU2(uint32_t bootmode)
{
#ifndef _LPSIM
    //
    // Configure the CPU1TOCPU2IPCBOOTMODE register
    //
    IPC_setBootMode(IPC_CPU1_L_CPU2_R,
                    (BOOT_KEY | CPU2_BOOT_FREQ_200MHZ | bootmode));

    //
    // Set IPC Flag 0
    //
    IPC_setFlagLtoR(IPC_CPU1_L_CPU2_R, IPC_FLAG0);

    //
    // Bring CPU2 out of reset. Wait for CPU2 to go out of reset.
    //
    SysCtl_controlCPU2Reset(SYSCTL_CORE_DEACTIVE);
    while(SysCtl_isCPU2Reset() == 0x1U);
#endif
}

volatile short unsigned PlayCpu2 ;


const long unsigned StatisticsBufferData[32] = { 1105989529,   3610853119,   1092133642,   3497326697,   1045931776,
                                    399115687,   1503168829,   844370171,   1078396958,   2645891736,
                                    2032760127,   1510366082,   3568381785,   2513690131,   2361044919,
                                    393931679,   1227669237,   325215022,   3237241809,   163400247,
                                    438775376,   325791692,   231713995,   227975813,   3346497771,
                                    4011545342,   557942916,   244307902, 2016017452,   51118999,
                                    1447930732,   696567709} ;



void SetNonMasterAccessError(short unsigned u)
{
    EALLOW ;
    HWREG(ACCESSPROTECTION_BASE + MEMCFG_O_NMAVSET) = u  ;
    EDIS ;
}

void SetMasterAccessError(short unsigned u)
{
    EALLOW ;
    HWREG(ACCESSPROTECTION_BASE + MEMCFG_O_MAVSET) = u  ;
    EDIS ;
}

void SetNMIError( short unsigned u)
{
    EALLOW ;
    HWREGH(NMI_BASE + NMI_O_FLGFRC) = u ;
    EDIS ;
}


void NmiServiceFunction(void)
{
    short unsigned flag ;
    ResetReasonLog[WakeCounter].MemErrStat       = HWREGH(TESTERROR_BASE + MEMCFG_O_CPU_RAM_TEST_ERROR_STS) ;
    ResetReasonLog[WakeCounter].MemErrAddress    = HWREG(TESTERROR_BASE + MEMCFG_O_CPU_RAM_TEST_ERROR_ADDR) ;
    ResetReasonLog[WakeCounter].NMIReturnAddress = IntReturnStack[0] ;

    flag = HWREGH(NMI_BASE + NMI_O_FLG) ;
    ResetReasonLog[WakeCounter].NmiStatus = ( flag & 0x7fff ) | 0x8000;
    EALLOW ;
    __asm( " ESTOP0")   ;
    for ( ;; ) ;
    //HWREGH(NMI_BASE + NMI_O_FLGCLR) = 0x76ff ;
}

void illegalOperationServiceFunction()
{
    short unsigned c1 = HWREG(ACCESSPROTECTION_BASE + MEMCFG_O_NMAVFLG);
    short unsigned c2 = HWREG(ACCESSPROTECTION_BASE + MEMCFG_O_MAVFLG);

    ResetReasonLog[WakeCounter].AccessStatus = c1 | ((c2 & 7)  << 12) | 0x8000;
    HWREG(ACCESSPROTECTION_BASE + MEMCFG_O_NMAVCLR) = c1 ;
    HWREG(ACCESSPROTECTION_BASE + MEMCFG_O_MAVCLR) = c2 ;
}


void     InitResetLog()
{
    short statmatch;
    short cnt ;
    statmatch = 1 ;
    // Load statistics
    if ( WakeCounter > 7)
    {
        statmatch = 0  ; // Just a junk from the DRAM
    }
    for ( cnt =0 ; cnt < 32 ; cnt++ )
    {
        if ( StatInSRAMBuffer[cnt] != StatisticsBufferData[cnt])
        {
            statmatch = 0 ;
            StatInSRAMBuffer[cnt] = StatisticsBufferData[cnt];
        }
    }
    if ( statmatch )
    {
        // Test state of wake
        if ( WakeCounter < 7)
        {
            WakeCounter += 1 ;
        }
    }
    else
    {
        for ( cnt = 0 ; cnt< 8 ; cnt++ )
        {
            ResetReasonLog[cnt].Reason           = 0 ;
            ResetReasonLog[cnt].NmiStatus        = 0 ;
            ResetReasonLog[cnt].OldMissionMsec   = 0 ;
            ResetReasonLog[cnt].ResetCause       = 0 ;
            ResetReasonLog[cnt].AccessStatus     = 0 ;
            ResetReasonLog[cnt].MemErrStat       = 0 ;
            ResetReasonLog[cnt].MemErrAddress    = 0 ;
            ResetReasonLog[cnt].NMIReturnAddress = 0 ;
        }
        WakeCounter = 0 ;
    }
    ResetReasonLog[WakeCounter].ResetCause = SysCtl_getResetCause() ;
    SysCtl_clearResetCause(0xf2f) ;
}


long unsigned GetClkMult()
{
    return ( CPU_CLK_MHZ * 4 / XTAL_FRQ_MHZ ) ;
}

//volatile float aa , bb , cc , dd , ss;
volatile long unsigned zBP[2] ;

//TODO: Check encoder match at wheel
//TODO: Start/ stop algorithm in wheels
    long unsigned lcnt ;

void main(void)
{
    zBP[1] = 0 ;
    //while( zBP[1] == 0 );

    // Verify CPU 2 on reset
    EALLOW ;
    DevCfgRegs.CPU2RESCTL.all = 0xa5a50001 ;

    InitPeripherals();

    InitResetLog() ;


    PlayCpu2 = 1 ;
    if ( PlayCpu2)
    {
        Device_bootCPU2(BOOTMODE_BOOT_TO_FLASH_SECTOR0); // Wake core 2
    }

    zBP[0] = BurnPass[zBP[1]] ; // The 388 compiler will not allocate for  BurnPass unless it is really used as selection vector
                            // SO THIS TRICK SERVES TO FORCE THE COMPILE TO ACTUALLY GENERATE BurnPass in Sector N, to be the last thing
                            // burned and tested in FW download.

    InitApp() ;             // Initialize application variables

    SysState.Debug.bDisableNeckStretchAlarm = 1 ;// Hazard
    SysState.Nav.IgnoreWhereAmI = 0 ;


    __asm(" ESTOP0" ) ;
    //EnableSTO() ;
    //while (zBP[1] == 0) ;


    //RobotConfig |=  1 ; // Vandal

    if ( PlayCpu2)
    {
        // Set the event for CPU2 to continue the wakeup
        //Cpu1toCpu2IpcRegs.CPU1TOCPU2IPCSET.bit.IPC0 = 1 ;

    // Allocate core 2 its share of memories, letting it run
        switch ( Config.ManipConfig )
        {
        case EManipulator_None:
            SysState.Package.PendingException = exp_manipulator_not_installed ;
            SysState.Package.LastFault        = exp_manipulator_not_installed ;
            break ;
        case EManipulator_Scara:
            M2S.Items.ActCmd.cmd.ConfigWord.bit.ManipType = Config.ManipConfig  ; // SCARA_Manipulator ; // Flex_Manipulator ;// SCARA_Manipulator ; //  ;
            SysState.EEF.bUse = 0 ;
            break ;
        case EManipulator_Flex_Arm:
            M2S.Items.ActCmd.cmd.ConfigWord.bit.ManipType = Config.ManipConfig  ; // SCARA_Manipulator ; // Flex_Manipulator ;// SCARA_Manipulator ; //  ;
            SysState.EEF.bUse = 1 ;
            break ;
        default:
            M2S.Items.ActCmd.cmd.ConfigWord.bit.ManipType = EManipulator_Scara ; // Flex_Manipulator ;// SCARA_Manipulator ; //  ;
            break ;
        }
        M2S.Items.ActCmd.cmd.ConfigWord.bit.WheelArmExist = ((Config.WheelArmType & 7 ) && ( Config.WheelArmType != 0xffff ))  ? 1 : 0  ;

#ifndef _LPSIM 
        // Allocate CPU2 memory blocks from the global inventory
        MemCfg_setGSRAMMasterSel((MEMCFG_SECT_GS8 |  MEMCFG_SECT_GS9| MEMCFG_SECT_GS10| MEMCFG_SECT_GS11| MEMCFG_SECT_GS12| MEMCFG_SECT_GS13| MEMCFG_SECT_GS14| MEMCFG_SECT_GS15),
                             MEMCFG_GSRAMMASTER_CPU2);
#endif
    }

    // Wait for CPU2 to wake up
    ECap5Regs.TSCTR = 0 ;
    lcnt  = 1 ;
    M2S.Items.ActCmd.cmd.LifeCheck = 1 ;
    while ( ECap5Regs.TSCTR < 200000000 )
    {
        SetSpibOwner() ; // Set the owner of the serial flash. We dont have yet interrupts
                         // so we need do it here
        if ( M2S.Items.ActCmd.cmd.LifeCheck  == S2M.Items.ActStatus.stat.LifeTracker)
        {
            if ( M2S.Items.ActCmd.cmd.LifeCheck  > 6 )
            {
                break ;
            }
            else
            {
                lcnt+= 1 ;
                M2S.Items.ActCmd.cmd.LifeCheck = lcnt ;
            }
        }
    }
    lcnt = ECap5Regs.TSCTR ;

    // Clear servo to go
    //EnableSTO() ;

    EnableInterrupts() ; // Enable ECap1Interrupt

    while(1)
    {
        IdleTask();
    }
} // end of main function.



void DealDiscretes()
{

    struct CPdCmd2 *pPdCmd2 ;

    if ( SysState.Debug.bBypassSetDiscretes == 0 )
    {
        pPdCmd2 = (struct CPdCmd2 *) & SysState.PdCmd2 ;
        if ( pPdCmd2->RearCamLightOn )
        {
            GpioDataRegs.GPESET.bit.GPIO138 = 1 ;
        }
        else
        {
            GpioDataRegs.GPECLEAR.bit.GPIO138 = 1 ;
        }
    }
}


/**
 * \brief The idle background task
 */
void IdleTask (void)
{
    extern short PdWakeUpPs( void  );
    extern void Cpu2ProcessTxPdo(void) ;

    // Copy time for Idle task use
    UpdateSysTimer (&SysTimerStr );

    // Take time, to take statistics if CPU hangs
    ResetReasonLog[WakeCounter].OldMissionMsec = IsrTimer.mSecTimer ;

    // CAN slave of the manipulator - transfer the manipulator its OD share
    ManipSlave();

    CanSlave() ; // CAN slave in response to host

    IdleCanProc() ; // CAN master communications (mostly to motion axes) need be considered even when axes are no ready

    if (M2S.Items.ActCmd.cmd.AxesActive) // 54 V is stable
    { // If Servo PS is on: manage the servo states towards OPERATIONAL
        CanStateMng( ) ;
    }
    else
    {
        // Unexpected power down (first occurance - not already in failure): log  the failure
        if ( ( SysState.WakeupState != E_CAN_WAKEUP_SLEEP ) && (SysState.WakeupState != E_CAN_WAKEUP_INIT)
                    && (SysState.WakeupState != E_CAN_WAKEUP_FAILURE) )
        {
            LogException(OWN_EXP_ID, EXP_FATAL, exp_power_failure);
        }
    }


    SetRobotStationaryIndication() ; // Test if robot is stationary (used to stop integrating the IMU, and taking IMU biases instead)


    DealCameraReports() ; // Integrate possible line and QR reports into the navigation


    // Wake-up the PD Power supplies, 12 , 24, and 54
    // Runs with TIMER_PS_MNGR_PERIOD period
    if ( IsSysTimerElapse (TIMER_PS_MNGR_PERIOD, &SysTimerStr)  )
    {
        if ( SysState.WakeupState != E_CAN_WAKEUP_SLEEP )
        {
            PdWakeUpPs() ;
        }
        SetSysTimerTargetSec ( TIMER_PS_MNGR_PERIOD , 0.025f , &SysTimerStr)    ;
    }


    CBit() ; // Run self test
    ManipSlave(); // Another instance to make more frequent calls

    Cpu2ProcessTxPdo();

    SlowHostSciHandler(); // Deal host communication

    //SleepRequestManager() ; // Deal with sleep requests



    SendPwm2Tlc() ; // Set the LED driver at the from panel


    DealDiscretes();

    ImuManager();
}



long  GetMalinkiDiscreteCommands(long unsigned src)
{
    struct CPdCmd2 *pPdCmd2 ;
    long   unsigned dst ;
    pPdCmd2 = (struct CPdCmd2 *) & SysState.PdCmd2 ;
    dst = 0 ;
    // Chakalaka
    if ( pPdCmd2->ChakalakaOn )
    {
        dst = (1UL<<26) | (1UL<<21);
    }

    if ( pPdCmd2->FanOn )
    {
        dst |= (1UL<<22);
    }

    if ( pPdCmd2->FrontCamLightOn )
    {
        dst |= (1UL<<20);
    }

/*
    if ( pPdCmd2->RearCamLightOn )
    {
        dst |= (1UL<<21);
    }
*/

    return dst | ( src & 0xffffUL) ;
}





 /**
 * \brief Odometry calculations for shelf navigation
    Does not need super timing accuracy, it is just for the host to keep track
 *
 */
void ShelfNavOdometry(long DeltaR, long DeltaL)
{

    short Leader , Follower , zone , armFollower ;
    float LeaderArc , FollowerArc , ArcCenter  ,  Height , c ,s  ;
    float  dx ; // , dw ; // , dy;
    //(void) DeltaR ;
    (void) DeltaL ;


    switch (ManRouteCmd.ShelfMode)
    {
    case E_ShelfArc:      // !< Input arc climb

        switch (ManRouteCmd.CrabCrawl)
        {
        case 1:
            Leader = LOGICAL_RW;
            //Follower = LOGICAL_LW;
            break;
        case -1:
            Leader = LOGICAL_LW;
            //Follower = LOGICAL_RW;
            break;
        default:
            // Illegal case - nothing to do
            if ( SysState.CBit.bit.OnRescueMission ==0 )
            {
                LogException(OWN_EXP_ID, EXP_WARN, exp_wrong_crab_mode_on_shelf_climb);
            }
            return;
        }
        if (SysState.ManRouteState.ArcDistance[Leader] == UNDEFINED_ARC_DISTANCE)
        {
            LeaderArc = 0;
        }
        else
        {
            LeaderArc = SysState.ManRouteState.ArcDistance[Leader] ;
        }

        FollowerArc = GetFollowerByLeader(LeaderArc, &zone, &armFollower);
        ArcCenter = (LeaderArc + FollowerArc) * 0.5f;

        if (ArcCenter < 0)
        {
            ArcCenter = 0;
        }

        if (ArcCenter > Geom.ClimbArcRadi * PiHalf)
        {
            Height = ArcCenter - Geom.ClimbArcRadi * (PiHalf - 1.0f)  + Geom.ClimbArcOverFloor;
        }
        else
        {
            Height = ( 1 - __cos(ArcCenter / Geom.ClimbArcRadi))  *  Geom.ClimbArcRadi + Geom.ClimbArcOverFloor ;
        }

        SysState.Nav.Robot.xc[0] = ManRouteCmd.ShelfRunPars.Xbase;
        SysState.Nav.Robot.xc[1] = ManRouteCmd.ShelfRunPars.Ybase;
        SysState.Nav.Robot.xc[2] = -Height ;

        SysState.Nav.iPos[0] = (long)(SysState.Nav.Robot.xc[0] * M_2_LONG_FAC);
        SysState.Nav.iPos[1] = (long)(SysState.Nav.Robot.xc[1] * M_2_LONG_FAC);
        SysState.Nav.iPos[2] = (long)(SysState.Nav.Robot.xc[2] * M_2_LONG_FAC);

        break;


    case E_TwistToShelf : // !< Horizontally on shelf
        SysState.Nav.Robot.xc[0] = ManRouteCmd.ShelfRunPars.Xbase;
        SysState.Nav.Robot.xc[1] = ManRouteCmd.ShelfRunPars.Ybase;
        SysState.Nav.Robot.xc[2] = -ManRouteCmd.ShelfRunPars.CenterProjHeight ;
        SysState.Nav.iPos[0] = (long)(SysState.Nav.Robot.xc[0] * M_2_LONG_FAC);
        SysState.Nav.iPos[1] = (long)(SysState.Nav.Robot.xc[1] * M_2_LONG_FAC);
        SysState.Nav.iPos[2] = (long)(SysState.Nav.Robot.xc[2] * M_2_LONG_FAC);

        break;


    case E_TwistFromShelf : // !< Horizontally on shelf

        if ( SysState.CBit.bit.OnRescueMission)
        {
            break ;
        }

        switch (ManRouteCmd.CrabCrawl)
        {
        case 1:
            Leader = LOGICAL_RW;
            Follower = LOGICAL_LW;
            break;
        case -1:
            Leader = LOGICAL_LW;
            Follower = LOGICAL_RW;
            break;
        default:
            // Illegal case - nothing to do
            LogException(OWN_EXP_ID, EXP_ABORT, exp_wrong_crab_mode_on_unshelf);
            return;
        }

        SysState.Nav.Robot.xc[0] = SysState.ManRouteState.Destination[0];
        SysState.Nav.Robot.xc[1] = SysState.ManRouteState.Destination[1] ;
        SysState.Nav.Robot.xc[2] = SysState.ManRouteState.Destination[2] ;


        ManRouteCmd.ShelfRunPars.Xbase = SysState.Nav.Robot.xc[0] ;
        ManRouteCmd.ShelfRunPars.Ybase  = SysState.Nav.Robot.xc[1] ;

        AutomaticRunPars.Xbase = SysState.Nav.Robot.xc[0] ;
        AutomaticRunPars.Ybase = SysState.Nav.Robot.xc[1] ;

        SysState.Nav.iPos[0] = (long)(SysState.Nav.Robot.xc[0] * M_2_LONG_FAC);
        SysState.Nav.iPos[1] = (long)(SysState.Nav.Robot.xc[1] * M_2_LONG_FAC);
        SysState.Nav.iPos[2] = (long)(SysState.Nav.Robot.xc[2] * M_2_LONG_FAC);

        if ( SysState.ManRouteState.ArcDistance[Follower] >= SysState.ManRouteState.ArcDistance[Leader] )
        {
            LogException(OWN_EXP_ID, EXP_SAFE_FATAL, exp_follower_arcdist_greaterthan_leader);
        }

        // dx is arc distance to neck projection
        //dx = Geom.ClimbArcRadi * 0.5708f  - SysState.ManRouteState.Destination[2] ;

        SysState.ManRouteState.ArcDistance[Follower] =
                (-SysState.ManRouteState.Destination[2]) + (Geom.ClimbArcRadi * 0.570796326794897f - Geom.ClimbArcOverFloor) - Geom.Center2WheelDist ;
        SysState.ManRouteState.ArcDistance[Leader]   = SysState.ManRouteState.ArcDistance[Follower] + SysState.TrackWidthCtl.TrackWidth;


        //SysState.ManRouteState.ArcDistance[Leader] = dx + SysState.TrackWidthCtl.TrackWidth - Geom.Center2WheelDist ;
        //dw = (E_TrackWidthExtend == ManRouteCmd.ShelfWidthTarget) ? SysState.TrackWidthCtl.ExtendedWidth : SysState.TrackWidthCtl.RetractedWidth ;
        //SysState.ManRouteState.ArcDistance[Follower] = SysState.ManRouteState.ArcDistance[Leader] - dw  ;

/*
        dx = SysState.ManRouteState.ArcDistance[Follower] - SysState.ManRouteState.ArcDistance[Leader] ;

        SysState.ManRouteState.ArcDistance[Leader] = Geom.ClimbArcRadi * 0.5708f  - SysState.ManRouteState.Destination[2] +
                Geom.Center2WheelDist ;
        SysState.ManRouteState.ArcDistance[Follower] = SysState.ManRouteState.ArcDistance[Leader] +
                ((dx>0) ? 2 : -2) * Geom.Center2WheelDist ;
*/
        break;


    case E_ShelfRun_Auto : // !< Horizontally on shelf


        // dx = ( SysState.ManRouteState.WheelEncoderNow[0] - SysState.ShelfRun.EncOnProfileStart[0] ) * WheelEncoder2Meter;

        dx = DeltaR * Geom.Calc.WheelEncoder2MeterShelfHoriz ;
        //dy = ( SysState.ManRouteState.WheelEncoderNow[1] - SysState.ShelfRun.EncOnProfileStart[1] ) * WheelEncoder2Meter;

        c = Ycos(SysState.ManRouteState.NomRouteTangent);
        s = Ysin(SysState.ManRouteState.NomRouteTangent);

        SysState.Nav.Robot.xc[0] += dx * c ;
        SysState.Nav.Robot.xc[1] += dx * s ;

        SysState.Nav.iPos[0] = (long)(SysState.Nav.Robot.xc[0] * M_2_LONG_FAC);
        SysState.Nav.iPos[1] = (long)(SysState.Nav.Robot.xc[1] * M_2_LONG_FAC);
        break;

    default:        // E_DealPack , and Failure: Dont update position
                    // E_TwistToShelf , E_TwistFromShelf

        break;
    }
}


//#define REDUCED_ODOMETRY

#define STEER_ANG_LIMIT_4_ODO 0.0173
/**
 * \brief Odometry calculations for ground navigation
 *
 */
volatile struct  CNavInfo  * volatile pInfo;
void GroundNavOdometry( float DeltaR , float DeltaL , long UsecSamp   )
{
    short unsigned mask ;
    float delta_t , daz_est ;
    //long lpos[3] ;
    //float  yvecp[3]  , yvecr[3] ,vecr[3] , vecl[3],oSpeed[3] , dpos[3], yvecl[3] ;

    //float distf, TOffset[2] , arm;
    float RsteerAct , LsteerAct  , ThetaB , s , c , xcn , ycn ,  v0 , v1  ;
#ifdef REDUCED_ODOMETRY
    float Delta , Steer ;
#else
    float dxr, dxl, dyl, dyr, xRloc , xLloc , yRloc , yLloc, xRn , yRn , xLn , yLn ;
    float Rc ,  waf_nom  ,  ThetaR , ThetaL, tht_nom_2_act;
    Rc = Geom.SteerColumn2WheelDist;
#endif
    //float mm[2][2];


    ThetaB = SysState.Nav.yaw;
    RsteerAct = SysState.Nav.Robot.RSteer;
    LsteerAct = SysState.Nav.Robot.LSteer;

    // Fully modeled odometry
    SysState.Nav.Robot.Direction = ThetaB;

    if ( ( fabsf(RsteerAct) < STEER_ANG_LIMIT_4_ODO ) && ( fabsf(LsteerAct) < STEER_ANG_LIMIT_4_ODO ))
    {
        if ((  DeltaR == 0 ) &&   ( DeltaL == 0 ) )
        {

            mask = BlockInts() ;
            delta_t = (long)( UsecSamp - SysState.Nav.UsecOfiPos ) * 1e-6f ;
            if ( (  delta_t > 0  ) && ( delta_t < 0.1f ))
            {
                if ( UsecSamp - SysState.Nav.UsecOfGyroDriftDisable > 4100000L )
                {
                   SysState.Nav.bGyroDriftDisable &= 0xfffe ;
                   SysState.Nav.UsecOfGyroDriftDisable = UsecSamp - 100000000L ;
                }
            }
            else
            {
                DisableGyroDriftCorrection() ;
            }
            SysState.Nav.UsecOfiPos = UsecSamp ;
            RestoreInts(mask) ;

            SysState.Nav.FiltLineSpeed[0] = SysState.Nav.FiltLineSpeed[0] * 0.9f ;
            SysState.Nav.FiltLineSpeed[1] = SysState.Nav.FiltLineSpeed[1] * 0.9f ;
            SysState.Nav.FiltLineSpeed[2] = 0 ;

            return ;
        }
    }
    // Travel in one period
    /*
    DeltaR *= (1.0f - ControlPars.SlipFactor);
    DeltaL *= (1.0f - ControlPars.SlipFactor);
    */



    ThetaR = RsteerAct ; // Relative wheel angles
    ThetaL = LsteerAct ;

    // Touch point locations in local robot coordinates, accounting for touch-steer hinge distance
    xRloc = -Rc * __sin(RsteerAct);
    yRloc = Geom.Center2WheelDist + Rc * __cos(RsteerAct);
    xLloc = Rc * __sin(LsteerAct);
    yLloc = -Geom.Center2WheelDist - Rc * __cos(LsteerAct);

    // direction of nominal L->R touch, robot
    waf_nom = atan2f(yRloc - yLloc, xRloc - xLloc);
    SysState.Nav.Robot.WheelTouchDist = HYpot(yRloc - yLloc, xRloc - xLloc) ;

    // First approximation, travel in world of each wheel
    dxr = __cos(ThetaR) * DeltaR;
    dyr = __sin(ThetaR) * DeltaR;

    dxl = __cos(ThetaL) * DeltaL;
    dyl = __sin(ThetaL) * DeltaL;

    // First approximation, updated wheel touch points in robot
    xRn = xRloc + dxr;
    yRn = yRloc + dyr;
    xLn = xLloc + dxl;
    yLn = yLloc + dyl;

    // Center of first approximation wheel touch points
    xcn = (dxr + dxl) / 2;
    ycn = (dyr + dyl) / 2;

    // Connection of actual L - R touch, robot
    SysState.Nav.Robot.WheelLineDeviationAngle = atan2f(yRn - yLn, xRn - xLn);

    // Rotation angle on this motion increment
    tht_nom_2_act = mod2piS( SysState.Nav.Robot.WheelLineDeviationAngle - waf_nom ) ;

    mask = BlockInts() ;
    delta_t = (long)( UsecSamp - SysState.Nav.UsecOfiPos ) * 1e-6f ;
    if (  delta_t > 0  )
    {
        if ( delta_t < 0.1f )
        {
            daz_est =  tht_nom_2_act  ;
            SysState.Nav.AzInt += daz_est ;
            if ( UsecSamp - SysState.Nav.UsecOfGyroDriftDisable > 4100000L )
            {
               SysState.Nav.bGyroDriftDisable &= 0xfffe ;
               SysState.Nav.UsecOfGyroDriftDisable = UsecSamp - 100000000L ;
            }
        }
        else
        {
            DisableGyroDriftCorrection() ;
        }
    }
    RestoreInts(mask) ;


    // Rotation matrix robot -> world
    ThetaB += tht_nom_2_act*0.5f; // Average travel angle is average of the previous and the next
    s = __sin(ThetaB);
    c = __cos(ThetaB);

    // Update robot center, back to world ....
    v0 = xcn * c - ycn * s;
    v1 = xcn * s + ycn * c;
    SysState.Nav.Robot.xc[0] = SysState.Nav.Robot.xc[0] + v0 ; // xcn * c - ycn * s ;
    SysState.Nav.Robot.xc[1] = SysState.Nav.Robot.xc[1] + v1 ; // xcn * s + ycn * c ;

    SysState.Nav.FiltLineSpeed[0] = SysState.Nav.FiltLineSpeed[0] + 0.1f * ( v0* ( 1.0f/ CONTROL_TS_F )  - SysState.Nav.FiltLineSpeed[0]) ;
    SysState.Nav.FiltLineSpeed[1] = SysState.Nav.FiltLineSpeed[1] + 0.1f * ( v1* ( 1.0f/ CONTROL_TS_F )  - SysState.Nav.FiltLineSpeed[1]) ;
    SysState.Nav.FiltLineSpeed[2] = 0 ;

    //SysState.Nav.Robot.xc[2] = SysState.Nav.Robot.xc[2] + 0;

    SysState.Nav.iPos[0] = (long) (SysState.Nav.Robot.xc[0] * M_2_LONG_FAC);
    SysState.Nav.iPos[1] = (long) (SysState.Nav.Robot.xc[1] * M_2_LONG_FAC);
    SysState.Nav.iPos[2] = (long) (SysState.Nav.Robot.xc[2] * M_2_LONG_FAC);

    SysState.Nav.UsecOfiPos = UsecSamp ;

    pInfo = &NavHistoryBuffer[SysState.Nav.NavBufferIndex & (NAV_HIST_BUF_LEN-1) ] ;
    pInfo->xc[0] = SysState.Nav.Robot.xc[0] ;
    pInfo->xc[1] = SysState.Nav.Robot.xc[1] ;
    pInfo->yaw   = SysState.Nav.yaw ;
    pInfo->usec  = UsecSamp ;
    pInfo->Renc  = WheelEncR.Position ;
    pInfo->Lenc  = WheelEncL.Position ;

    SysState.Nav.NavBufferIndex = (SysState.Nav.NavBufferIndex +1 ) & (NAV_HIST_BUF_LEN-1) ;

    if ( SysState.Nav.OldestNavUpdIndex ==  SysState.Nav.NavBufferIndex )
    {
        SysState.Nav.OldestNavUpdIndex = (SysState.Nav.NavBufferIndex +1 ) & (NAV_HIST_BUF_LEN-1) ;
    }

}

struct CPosReport AvgPosReport ; // !< Position report from master

short IsPosReportClose( struct CPosReport * p1  , struct CPosReport * p2  )
{
    long dmax ;
    short delta ;
    dmax = labs( p2->X[0] - p1->X[0] ) ;
    //if ( dmax < 0 ) dmax = -dmax ;

    dmax = __lmax( labs(p2->X[1] - p1->X[1]) , dmax ) ;
    //if ( d < 0 ) d = __neg32(d) ;
    //if ( d > dmax ) dmax = d ;

    //d = p2->X[2] - p1->X[2] ;
    //if ( d < 0 ) d = -d ;
    //if ( d > dmax ) dmax = d ;

    if ( dmax  > (4 * M_2_LONG_FAC / 100 )  )
    {
        return 0 ;
    }

    delta =  abs ( p2->Azimuth - p1->Azimuth ) ;
    //if ( delta < 0 ) delta = __neg16(delta );
    if ( delta > (short)(65536L/360/2) )
    {
        return 0 ;
    }
    return 1 ;
}

void MeanPosReport(struct CPosReport * p1  , struct CPosReport * p2 )
{
    short delta ;
    p2->X[0] = ( p2->X[0] + p1->X[0] ) >> 1  ;
    p2->X[1] = ( p2->X[1] + p1->X[1] ) >> 1  ;
    p2->X[2] = ( p2->X[2] + p1->X[2] ) >> 1  ;

    delta = ( p2->Azimuth - p1->Azimuth ) ;
    p2->Azimuth += ( delta >> 1 ) ;
}


/*
\brief Update the robot position based on latest navigation estimate
*/
void UpdateRobotPos  (void)
{
    SysState.Nav.Robot.xc[0] = (float)SysState.Nav.iPos[0] * LONG_2_M_FAC;
    SysState.Nav.Robot.xc[1] = (float)SysState.Nav.iPos[1] * LONG_2_M_FAC;
    SysState.Nav.Robot.xc[2] = (float)SysState.Nav.iPos[2] * LONG_2_M_FAC;
}

/*
 * \brief Update a position increment to the navigation data
 * The increment is also applied to the entire storage buffer so as to keep it consistent
 */
void    UpdateDeltaPos( long dpos[] )
{
    short nPre, cnt;
    short unsigned mask;
    mask = BlockInts() ;
    SysState.Nav.iPos[0] += dpos[0] ;
    SysState.Nav.iPos[1] += dpos[1] ;
    SysState.Nav.iPos[2] += dpos[2] ;
    nPre = ( GyroInt.nGyroQuatListPut - 1) & (N_GYRO_LIST-1) ;
    GyroInt.GyroQuatList[nPre].iPos[0] +=  dpos[0] ;
    GyroInt.GyroQuatList[nPre].iPos[1] +=  dpos[1] ;
    GyroInt.GyroQuatList[nPre].iPos[2] +=  dpos[2] ;
    nPre = ( nPre - 1) & (N_GYRO_LIST-1) ;
    GyroInt.GyroQuatList[nPre].iPos[0] +=  dpos[0] ;
    GyroInt.GyroQuatList[nPre].iPos[1] +=  dpos[1] ;
    GyroInt.GyroQuatList[nPre].iPos[2] +=  dpos[2] ;
    RestoreInts(mask) ;
    // The oldest we don't update fearing a race condition where it will corrupt newly written data
    for ( cnt = 0 ; cnt < N_GYRO_LIST - 3 ; cnt++ )
    {
        nPre = ( nPre - 1) & (N_GYRO_LIST-1) ;
        GyroInt.GyroQuatList[nPre].iPos[0] +=  dpos[0] ;
        GyroInt.GyroQuatList[nPre].iPos[1] +=  dpos[1] ;
        GyroInt.GyroQuatList[nPre].iPos[2] +=  dpos[2] ;
    }
}

void ForcePosReport( float x , float y , float z , float az )
{
    SysState.Nav.Robot.xc[0] = x ;
    SysState.Nav.Robot.xc[1] = y ;
    SysState.Nav.Robot.xc[2] = z ;

    SysState.Nav.iPos[0] = (long) (SysState.Nav.Robot.xc[0] * M_2_LONG_FAC ) ;
    SysState.Nav.iPos[1] = (long) (SysState.Nav.Robot.xc[1] * M_2_LONG_FAC ) ;
    SysState.Nav.iPos[2] = (long) (SysState.Nav.Robot.xc[2] * M_2_LONG_FAC ) ;

    GyroInt.BodyQuat[0] = Ycos( az / 2 ) ;
    GyroInt.BodyQuat[1] = 0 ;
    GyroInt.BodyQuat[2] = 0 ;
    GyroInt.BodyQuat[3] = Ysin( az / 2 ) ;
}


/**
 * \brief Deal with position report
 */
void    DealPosReport(void)
{
    long  pos[3] , dp[3]  ;
    short unsigned mask , Leader , Follower;
    long unsigned UdeltaT, cond;
    float az , Alpha , Speed , Beta , eta , yaw, pit, roll , q[4] , NeckPos , x , y, zz ;
    short RetVal ;

    /*
    if ( SysState.Debug.bRecorder4QrUpdate )
    {
        lDebug[0] = ( SysState.Mot.BgPosReport.Mode & 0xf )
                + (( SysState.ManRouteState.WaitPosReport & 0xf ) << 4 )
                + ( IsInShelf() ? 0x10000L : 0  )
                + ( SysState.CBit.bit.NavInitialized ? 0x20000L : 0  ) ;
        lDebug[1] = SysState.Mot.BgPosReport.TStamp   ;
        lDebug[2] = SysState.ManRouteState.WaitPosTime ;
    }
    */

    // If on the ground, and navigation is not initialized, a normal position report
    // is interpreted as an initializer
    //SysState.Mot.GndNavInitialized == 0
    if ( ( IsInShelf() == 0 ) && ( SysState.CBit.bit.NavInitialized  == 0  ) && ( SysState.Mot.BgPosReport.Mode == 0 ) )
    {
        SysState.Mot.BgPosReport.Mode = 4 ;
    }

    if ( SysState.ManRouteState.WaitPosReport >= 3 )
    {
        // On QR wait, if a delayed take is programmed, wait it
        UdeltaT =  SysState.Mot.BgPosReport.TStamp - SysState.ManRouteState.WaitPosTime  ;
        if ( UdeltaT & 0x80000000 )
        {
            return ;
        }
    }

    // If we read a Q code just before the climb, it is an initializer
    if ( SysState.ManRouteState.WaitPosReport > 1 )
    {
        SysState.Mot.BgPosReport.Mode = 1 ;

        if ( SysState.ManRouteState.WaitPosReport == 4 )
        {
            AvgPosReport = SysState.Mot.BgPosReport ; // No re-evaluation shall ensue; just averaging with itself, keeping the result
            SysState.ManRouteState.WaitPosReport = 2 ;
        }

        if ( SysState.ManRouteState.WaitPosReport >= 3 )
        {
            AvgPosReport = SysState.Mot.BgPosReport ;
            SysState.ManRouteState.WaitPosReport -= 1 ; // Mark request as used
        }
        else
        {
            if ( SysState.ManRouteState.WaitPosReport == 2 )
            {
                if ( IsPosReportClose( & SysState.Mot.BgPosReport , &AvgPosReport ) )
                {
                    MeanPosReport( & SysState.Mot.BgPosReport , &AvgPosReport  ) ;
                    SysState.ManRouteState.WaitPosReport = 1 ;
                }
                else
                {
                    AvgPosReport = SysState.Mot.BgPosReport  ;
                }
            }
        }

    }

    // Ignore position reports if now undesired
    if (SysState.ManRouteState.WaitPosReport < 0 && (SysState.Mot.BgPosReport.Mode <= 1 ) )
    {
        return;
    }

    // Enforcing nav command on the shelf
    // If robot just started;
    // - Wheel arm correctly set (a condition for nav message acceptance, not tested here)
     // - it is not yet in auto mode
    // - It is not formally on shelf
    // - Steering is near zero, no crab, Steering converged, no NewCrabFlag
    // - Head is near level
    // - Neck angle is +/-90
   // = Z coordinate is above arc level
    // Then:
    // - Set the new navigation point
    NeckPos = GetUserPosNeck() ;
    zz = SysState.Mot.BgPosReport.X[2] * LONG_2_M_FAC ;


    cond = ((SysState.Mot.BgPosReport.Mode==4) ? 1: 0 ) + ((fabsf(fabsf(NeckPos)-1.571  ) < 0.2f) ? 2 : 0 )  +
            ( (IsSteeringConverged() || SysState.Mot.QuickStop ) ? 4 : 0 ) + (IsSteerTargetDirection(0,0,0.07f) ? 8 : 0 ) + ((IsInMission() == 0)? 16:0) +
            ( (ManRouteCmd.ShelfMode == 0 ) ? 32: 0 ) +
            ((-zz >  Geom.ClimbArcOverFloor + Geom.ClimbArcRadi + Geom.LimitSw2DistPosOnArc +  Geom.Center2WheelDist ? 64 : 0 ) ) +
            ((SysState.Mot.mode < E_SysMotionModeAutomaticIdle) ? 128 : 0 ) ;

    if ( ( cond & 0xff ) == 0xff )
    {
        x = SysState.Mot.BgPosReport.X[0] * LONG_2_M_FAC ;
        y = SysState.Mot.BgPosReport.X[1] * LONG_2_M_FAC ;
        az = mod2piS ( AngletoF(SysState.Mot.BgPosReport.Azimuth ) ) ;

        mask = BlockInts();
        AutomaticRunPars.Xbase = x ;
        AutomaticRunPars.Ybase = y ;
        ManRouteCmd.ShelfRunPars.Xbase = AutomaticRunPars.Xbase ;
        ManRouteCmd.ShelfRunPars.Ybase = AutomaticRunPars.Ybase ;
        SysState.Mot.ResetShelfBase = 1 ;


        ForcePosReport( x , y , zz , az ) ;
        SysState.ManRouteState.NomRouteTangent = az  ;

        CaptureLastPosition(  &SysState.Mot.LastPositionItem) ;
        SysState.Mot.LastPositionItem.cz_or_fModeData = 0 ; // Just avoid junk there
        SysState.CBit.bit.NavInitialized = 1 ;
        //SysState.Mot.GndNavInitialized = 1 ;
        //UpdateRobotPos();

        if ( NeckPos >= 0.0f )
        {
            Leader = LOGICAL_RW ;
            Follower = LOGICAL_LW ;
            SysState.ManRouteState.OldCrabValue =  1 ;
        }
        else
        {
            Leader = LOGICAL_LW ;
            Follower = LOGICAL_RW ;
            SysState.ManRouteState.OldCrabValue = -1 ;
        }


        SysState.ManRouteState.ArcDistance[Follower] = -zz - Geom.ClimbArcOverFloor - Geom.Center2WheelDist + Geom.ClimbArcRadi * 0.5708f ;
        SysState.ManRouteState.ArcDistance[Leader]   = SysState.ManRouteState.ArcDistance[Follower] + SysState.TrackWidthCtl.TrackWidth;

        ManRouteCmd.ShelfMode = E_ShelfRun_Auto ;
        ManRouteCmd.ShelfSubMode = 0 ;
        ManRouteCmd.ShelfSubSubMode = 0 ;
        SysState.Mot.QuickStop = 0 ;
        SetMotionMode(E_SysMotionModeAutomatic,99);

        RestoreInts(mask) ;
        return ;
    }


    switch ( SysState.Mot.BgPosReport.Mode )
    {
    case 0: // Normal
        // Correct the position of the robot
        if ( IsInShelf() )
        {
            {
                LogException( OWN_EXP_ID , EXP_WARN , exp_init_gnd_nav_on_shelf );
                return  ;
            }
        }

        // Get the navigation data and correct what we have
        // We have the azimuth data with a given variance, and also the position
        // Accuracy is according to speed

        RetVal = GetPosWithDelay ( pos , &eta ,& Speed, (struct CRouteLogItem *)0 , SysState.Mot.PosReport.TStamp  );
        if ( RetVal ) return  ;

        Alpha = ( Speed > 0.5f ) ? 0: ( 1 - Speed * 2  ) ;
        Beta  = Alpha;

        dp[0] = (long) (Alpha * ( SysState.Mot.BgPosReport.X[0] - pos[0] ) ) ;
        dp[1] = (long) (Alpha * ( SysState.Mot.BgPosReport.X[1] - pos[1] ) ) ;
        dp[2] = (long) (Alpha * ( SysState.Mot.BgPosReport.X[2] - pos[2] ) ) ;


        UpdateDeltaPos( dp );


        az = mod2piS ( AngletoF(SysState.Mot.BgPosReport.Azimuth ) ) ;
        QuattoEuler(GyroInt.BodyQuat, &yaw, &pit, &roll);
        yaw = yaw + Beta * mod2piS(az - eta);
        Euler2Quat(yaw, pit, roll, q);

        mask = BlockInts();
        GyroInt.BodyQuat[0] = q[0];
        GyroInt.BodyQuat[1] = q[1] ;
        GyroInt.BodyQuat[2] = q[2] ;
        GyroInt.BodyQuat[3] = q[3] ;
        UpdateRobotPos();
        RestoreInts(mask) ;
        break ;
    case 4: // Initializer, enforcing
    case 1: // Initializer on ground
        if ( IsInShelf() )
        {
            LogException( OWN_EXP_ID , EXP_WARN , exp_init_gnd_nav_on_shelf );
            return  ;
        }

        mask = BlockInts() ;
        dp[0] = SysState.Mot.BgPosReport.X[0] - SysState.Nav.iPos[0];
        dp[1] = SysState.Mot.BgPosReport.X[1] - SysState.Nav.iPos[1];
        dp[2] = SysState.Mot.BgPosReport.X[2] - SysState.Nav.iPos[2];
        RestoreInts(mask) ;

        UpdateDeltaPos( dp );

        az = mod2piS ( AngletoF(SysState.Mot.BgPosReport.Azimuth ) ) ;

        mask = BlockInts() ;

        GyroInt.BodyQuat[0] = Ycos( az / 2 ) ;
        GyroInt.BodyQuat[1] = 0 ;
        GyroInt.BodyQuat[2] = 0 ;
        GyroInt.BodyQuat[3] = Ysin( az / 2 ) ;

        CaptureLastPosition(  &SysState.Mot.LastPositionItem) ;
        SysState.CBit.bit.NavInitialized = 1 ;
        //SysState.Mot.GndNavInitialized = 1 ;
        UpdateRobotPos();
        RestoreInts(mask) ;
        break ;
    case 2: // Initializer on shelf
        break ;
    case 3: // Shelf base point
        break ;
    }
}




long float2field( float f , long mask , short shifts )
{
    float mm ;
    mm = (float) (mask >> 1) ;
    return (long) __fmax(__fmin(f,mm),-mm) << shifts  ;
}





/*
\brief Correct by line & angle deviations
Only for straight line segment, this routine ignores for the time the image processing delay time stamp, assuming nearly straight robot course anyway
*/

void CheckDeviationRpt ()
{
    float s , c ;//, travel[2]; //, AzGo, AzM;
    float tht , c1 , s1 ;
    float AzError  , etay ,  LineSpeed , delta_eta , eta ;
    long   pos[3] , dp[3] , stat ;
    short unsigned mask; 
    struct CRouteLogItem RouteLog;
    struct CSegQueue *pQ ;
    short unsigned segtype;
    struct CMotSegment *pSeg ;
    //long TStamp  , Now;

    // If nav not initialized , nothing to do
    if (SysState.CBit.bit.NavInitialized == 0 || SysState.Debug.bDisableLineDevCorrection)
    {
        return;
    }

    SysState.Mot.Deviation.FOffset = SysState.Mot.Deviation.Offset * 0.001f ;  // Caution: check correct units
    if ( fabsf(SysState.Mot.Deviation.FOffset) > 0.4f )
    { // Remove nonsensical lateral errors
        return ;
    }

    SysState.Mot.Deviation.FAzimuthDev  = AngletoF ( SysState.Mot.Deviation.AzimuthDev ) ;

        if ( fabsf(SysState.Mot.Deviation.FAzimuthDev) > 0.35f )
        { // Remove nonsensical azimuth errors
            return ;
        }


        //Now = IsrTimer.UsecTimer  ;
        //TStamp = SysState.Mot.Deviation.TStamp ;

        if ( GetPosWithDelay ( pos , &eta , &LineSpeed ,&RouteLog,  SysState.Mot.Deviation.TStamp ) )
        {
            return ;
        }

        mask = BlockInts();
        pQ = &SegQ[0];
        segtype = pQ->seg[SegRun.SegIndex].Type;
        pSeg = & pQ->seg[SegRun.SegIndex] ; // Get current executing segment
        tht = pSeg->tht1;
        RestoreInts(mask) ;
        c1 = Ycos( tht) ;
        s1 = Ysin( tht) ; // (c1,s1) = cosines of nominal route


        if ( (RouteLog.RouteValid == 0 ) || (RouteLog.RouteType != SegType_Straight ) ||
                (segtype != SegType_Straight ) )
        {
            return ; // line correction invalid - nothing more to do
        }
        else
        {
            // Get robot assumed coordinates at the time
            CorrectByLine.dx  =  (float) pos[0] * LONG_2_M_FAC - RouteLog.RouteLocation[0];
            CorrectByLine.dy  =  (float) pos[1] * LONG_2_M_FAC - RouteLog.RouteLocation[1];

            // Take the azimuth error, but limit it to about 3 degrees at a time, avoiding jumps by stray photos
            AzError =  __fmax( __fmin ( mod2piS ( mod2piS(RouteLog.RouteTangent + SysState.Mot.Deviation.FAzimuthDev ) - eta ) , 0.05f ) , -0.05f)    ;

            // The  nominal "Should be" travel direction
            s =  Ysin(RouteLog.RouteTangent ) ; // Unit vector from course point , to the y if the  course is x
            c =  Ycos(RouteLog.RouteTangent ) ;

            // Take the errors to line coordinates (xi along tangent)
            //xi  =  CorrectByLine.dx * c +  CorrectByLine.dy * s ;
            etay = -CorrectByLine.dx * s +  CorrectByLine.dy * c ;

            // Position correction above limited innovation, avoiding jumps by stray photos
            delta_eta =  GyroInt.kKalmanLineOpticalCorrect * __fmax( __fmin(SysState.Mot.Deviation.FOffset - etay , 0.1f), -0.1f ) ;


            // Position correction
            dp[0] = (long) (-s1 * delta_eta *  M_2_LONG_FAC );
            dp[1] = (long) ( c1 * delta_eta *  M_2_LONG_FAC );
            dp[2] = 0 ;
            UpdateDeltaPos( dp );

            mask = BlockInts( );
                // Correct the angular.
                SysState.Nav.yaw = mod2piS( SysState.Nav.yaw + GyroInt.kKalmanLineOpticalCorrectAngle * mod2piS(AzError) ) ;
                SysState.Nav.pitch = 0 ;
                SysState.Nav.roll  = 0 ;
                Euler2Quat ( SysState.Nav.yaw , SysState.Nav.pitch , SysState.Nav.roll , GyroInt.BodyQuat) ;
                UpdateRobotPos();
            RestoreInts( mask) ;

            // Take statistics for process tracking
             stat = float2field(HYpot(CorrectByLine.dx + s * SysState.Mot.Deviation.FOffset,CorrectByLine.dy - c * SysState.Mot.Deviation.FOffset) * 500.0f,0xff,0 ) +
                    float2field(SysState.Mot.Deviation.FOffset * 500, 0xff , 8) + float2field(SysState.Mot.Deviation.FAzimuthDev * 500, 0xff , 16) +
                    float2field(AzError * 500, 0xff , 24);

             CorrectByLine.Statistics1 = stat ;

             stat = float2field((float)((CorrectByLine.Statistics2+1)&0xff),0xff,0) +
                    float2field( (IsrTimer.UsecTimer - SysState.Mot.Deviation.TStamp ) * 0.00005f , 0xff, 8 ) +
                    float2field( CorrectByLine.dx * 500 , 0xff, 8 ) +
                    float2field( CorrectByLine.dy * 500 , 0xff, 8 ) ;
            CorrectByLine.Statistics2 = stat ;
        }
}

/*
 * \brief Manage "moving" indications. Called each idle cycle
 */
void SetRobotStationaryIndication(void)
{
    //short unsigned ucr , ucl ;
    float WheelEncoder2Meter ;
    float  dw ;

    if (ManRouteCmd.ShelfMode == 0)
    {
        WheelEncoder2Meter = Geom.Calc.WheelEncoder2MeterGnd;
    }
    else
    {
        WheelEncoder2Meter = Geom.Calc.WheelEncoder2MeterShelfHoriz ;
    }


    dw =  __fmax( fabsf  ((WheelEncL.Position - SysState.StationaryTest.Wheels[LOGICAL_LW]  ) * WheelEncoder2Meter) ,
                  fabsf((WheelEncR.Position - SysState.StationaryTest.Wheels[LOGICAL_RW]  ) * WheelEncoder2Meter ) ) ;
    if ( dw > 0.002f )
    {
        SetSysTimerTargetSec( TIMER_INMOT , 0.1f , &SysTimerStr) ;
        SysState.StationaryTest.Wheels[LOGICAL_LW] = WheelEncL.Position ;
        SysState.StationaryTest.Wheels[LOGICAL_RW] = WheelEncR.Position ;
        SysState.StationaryTest.bStationary = 0 ;
        return ;
    }
    if (IsSysTimerElapse( TIMER_INMOT , &SysTimerStr  ) )
    {
        SetSysTimerTargetSec( TIMER_INMOT , 0.1f , &SysTimerStr) ;
        SysState.StationaryTest.Wheels[LOGICAL_LW] = WheelEncL.Position ;
        SysState.StationaryTest.Wheels[LOGICAL_RW] = WheelEncR.Position ;
        SysState.StationaryTest.bStationary = 1 ;
    }

}



void DealRelativePosReport( void )
{
    SysState.ManRouteState.WaitRelativePosReport += 1 ; // Something new
}


/*
 * \brief Use reports coming from the camera
 */
void DealCameraReports(void)
{
    short unsigned mask ;
    if (ManRouteCmd.ShelfMode == 0)
    {
        // Check for QR code reports
        if ( SysState.Mot.PosReport.CmdCntr )
        {
        mask = BlockInts() ;
            SysState.Mot.PosReport.CmdCntr = 0 ;
            SysState.Mot.BgPosReport = SysState.Mot.PosReport;
            //SysState.Mot.BgPosReport.Azimuth = -(SysState.Mot.BgPosReport.Azimuth - AZ_OFFSET_IN_REPORT); // Yahali Vandal: Correct here a bug in the RBP transformations ...
        RestoreInts(mask) ;
            DealPosReport( ) ;
            SysState.Nav.OldestNavUpdIndex =  SysState.Nav.NavBufferIndex ;
        }

        // Check for QR code reports
        if ( SysState.Mot.RelativePosReport.CmdCntr )
        {
            mask = BlockInts() ;
                SysState.Mot.RelativePosReport.CmdCntr = 0 ;
                SysState.Mot.BgRelativePosReport = SysState.Mot.RelativePosReport;

            RestoreInts(mask) ;

            DealRelativePosReport( ) ;
        }

        // Check the deviation report
        if  ( SysState.Mot.Deviation.CmdCntr )
        {
            if ( GyroInt.GyroQuatListReady )
            {
                CheckDeviationRpt() ;
            }
            SysState.Mot.Deviation.CmdCntr = 0 ;
        }
    }
    else
    {
        SysState.Mot.PosReport.CmdCntr  = 0 ;
        SysState.Mot.Deviation.CmdCntr  = 0 ;
    }
}

/**
 * \brief RT Odometry
 */
void RTOdometry ( void )
{
    long  UsecSamp  , eR , eL ;
    float facw ;
    long DeltaR, DeltaL; 
    float sxc[3] , dr , dl ;
    //long ldelta;
    //float delta;

    // Read the quadrature encoder (for odometry)
    eR = WheelEncR.Position ;
    eL = WheelEncL.Position ;
    DeltaR = eR - SysState.Nav.Robot.RWheelEnc ;
    DeltaL = eL - SysState.Nav.Robot.LWheelEnc ;
    SysState.Nav.Robot.RWheelEnc = eR ;
    SysState.Nav.Robot.LWheelEnc = eL ;

    // Gyro is ready - periodic navigation, task runs

    { // Sample the RT values
        SysState.Nav.Robot.RSteer = -SysState.CanAxis[LOGICAL_RSTEER].OuterPos ;
        SysState.Nav.Robot.LSteer = -SysState.CanAxis[LOGICAL_LSTEER].OuterPos ;
        // Vandal: Must test the signs
        //SysState.Nav.Robot.RSteer = SysState.CanAxis[LOGICAL_RSTEER].OuterPos;
        //SysState.Nav.Robot.LSteer = SysState.CanAxis[LOGICAL_LSTEER].OuterPos;
        //CtrSamp = IsrTimer.IsrCounter ;
        UsecSamp = IsrTimer.UsecTimerOnFork  ;
        //dvx = GyroInt.dVx ;
        //dvy = GyroInt.dVy ;
        //yaw = SysState.Nav.yaw ;
        //GyroInt.dVx = 0 ;
        //GyroInt.dVy = 0 ;
    }


    //cyaw = Ycos(yaw) ;
    //syaw = Ysin(yaw) ;


    if (ManRouteCmd.ShelfMode == 0)
    {
        // Verify basic assumptions: Track width is enough near the nominal
        if ( ( SysState.TrackWidthCtl.WheelArmState > E_LExtendGood2Go ) && ( SysState.Debug.bAllowMotionUndeterminedWheelArm == 0  )
                && (SysState.Debug.bDebugWheelArm == 0) && (SysState.Mot.mode > E_SysMotionModePerAxis) )
        {
            LogException( OWN_EXP_ID,EXP_SAFE_FATAL,exp_incorrect_shoulderwidth  )  ;
        }

        facw = Geom.Calc.WheelEncoder2MeterGnd ;
        /*
        // Accelerometer dv is brought to robot body coordinates
        AccDv[0] = ax * cyaw + ay * syaw ;
        AccDv[1] = -ax * syaw + ay * cyaw ;
        AccDv[2] = 0 ;
        */
        // Deliver accelerometry do odometry in world frame

        dr = DeltaR * facw ;
        dl = DeltaL * facw ;
/*
        delta = SysState.Nav.VirtualWheelEncoderDebt[0] + dr * 1.043037835047045e+04f ;
        ldelta = (long) delta ;
        SysState.Nav.VirtualWheelEncoderDebt[0] -= (float) ldelta ;
        SysState.Nav.VirtualWheelEncoder[0] += ldelta  ;


        delta = SysState.Nav.VirtualWheelEncoderDebt[1] + dl * 1.043037835047045e+04f ;
        ldelta = (long) delta ;
        SysState.Nav.VirtualWheelEncoderDebt[1] -= (float) ldelta ;
        SysState.Nav.VirtualWheelEncoder[1] += ldelta ;

        SysState.fDebug[1] = dr ;
        SysState.fDebug[2] = dl ;
        lDebug[1] = DeltaR ;
        lDebug[1] = DeltaL ;
        SysState.fDebug[3] = facw ;
*/

        GroundNavOdometry( dr , dl , UsecSamp);

        // Force roll and pitch to zero
        // QuattoEuler(GyroInt.BodyQuat, &SysState.Nav.yaw, &SysState.Nav.pitch, &SysState.Nav.roll);

        //SysState.Nav.pitch  = 0 ;
        //SysState.Nav.roll  = 0 ;
        //Euler2Quat ( SysState.Nav.yaw , SysState.Nav.pitch , SysState.Nav.roll , GyroInt.BodyQuat) ;
        //UpdateRobotPos();
    }
    else
    {
        DisableGyroDriftCorrection() ;
        sxc[0] = SysState.Nav.Robot.xc[0];
        sxc[1] = SysState.Nav.Robot.xc[1];
        sxc[2] = SysState.Nav.Robot.xc[2];

        ShelfNavOdometry(DeltaR , DeltaL);

        SysState.Nav.FiltLineSpeed[0] = SysState.Nav.FiltLineSpeed[0] + 0.1f * ( (SysState.Nav.Robot.xc[0] - sxc[0])* ( 1.0f/ CONTROL_TS_F )   - SysState.Nav.FiltLineSpeed[0]) ;
        SysState.Nav.FiltLineSpeed[1] = SysState.Nav.FiltLineSpeed[1] + 0.1f * ( (SysState.Nav.Robot.xc[1] - sxc[1])* ( 1.0f/ CONTROL_TS_F )   - SysState.Nav.FiltLineSpeed[1]) ;
        SysState.Nav.FiltLineSpeed[2] = SysState.Nav.FiltLineSpeed[2] + 0.1f * ( (SysState.Nav.Robot.xc[2] - sxc[2])* ( 1.0f/ CONTROL_TS_F )   - SysState.Nav.FiltLineSpeed[2]) ;

        SysState.Nav.OldestNavUpdIndex =  SysState.Nav.NavBufferIndex ;
    }
}







short WakeupFailReason ;
short WakeupFatalFailReason ;


/**
 * \Wakeup sequence for the PD. The entire work is made by CPU2 so here we just flag it to work
 *
 */
    short unsigned PsState ;
short PdWakeUpPs( void )
{
// Work at periods

    if ( SysState.Status.PdInTest ==  1 )
    {
        return -1 ;
    }
    PsState = S2M.Items.ActStatus.stat.PsStatus.bit.PsWakeState ;
    if ((  PsState != SYSSTAT_WAKE_WAIT_OPER) && (SysState.Status.WakeUp  == SYSSTAT_WAKE_WAIT_OPER))
    {
        ESTOP0 ;
    }

    SysState.Status.WakeUp = S2M.Items.ActStatus.stat.PsStatus.bit.PsWakeState ;
    if ( (SysState.Status.WakeUp  == SYSSTAT_WAKE_WAIT_OPER) && ( SysState.WakeupState != E_CAN_WAKEUP_SLEEP ) )
    {
        if ( M2S.Items.ActCmd.cmd.AxesActive == 0)
        {
            SysState.YDebug[0] += 1 ;
            M2S.Items.ActCmd.cmd.AxesActive = 1 ;
        }
    }
    else
    {
        if ( M2S.Items.ActCmd.cmd.AxesActive )
        {
            SysState.YDebug[1] += 1 ;
            M2S.Items.ActCmd.cmd.AxesActive = 0 ;
        }
    }

    return 0 ;
}


short GetExpFatality(void)
{
    long unsigned *pLongexp ;
    pLongexp = (long unsigned *) & SysState.Mot.ExceptionTab[(SysState.Mot.ExceptionCnt - 1) & (EXCEPTION_TAB_LENGTH-1)];
    return (- ( (( short unsigned)( pLongexp[1] & 0xf0)) >> 4 ) );
}


//long tdiffLastGyroOkTime();


/**
 * \brief Modulo difference of two wheel encoder readings
 * returns: mod(w1-w2,2^18) ;
 */
long MotorWheelDifference( long w1 , long w2 )
{
     return (( (  w1 - w2 ) << 14 ) >> 14 ) ;
}


short MalinkiProcessTxPdo1(struct CCanMsg *pMsg);



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





/**
 * \brief Initiate the time outs of the system
 */
void InitTimeOuts ( void )
{
    short unsigned cnt ;

    for ( cnt = 0 ; cnt < NSYS_TIMER_CMP_ARRAY ; cnt++)
    {
        SetSysTimerTargetSec(cnt, 0.1f, &SysTimerStr);
    }
    SetSysTimerTarget( TIMER_I2C_TLC_TRANSMIT , 10000 , &SysTimerStr) ; // 10msec till first touching the LEDS
    SetSysTimerTarget( TIMER_LASER_ON , 200000 , &SysTimerStr) ; // Laser requires 200 msec to set
    SetSysTimerTargetSec( TIMER_PS_MNGR_PERIOD, 0.01f, &SysTimerStr) ; // PS wake up timer
    SetSysTimerTarget ( TIMER_INACC , 200000 , &SysTimerStr);
    SetSysTimerTargetSec ( TIMER_OBSTACLE_AVOIDANCE_CMD, 0.00001f ,  &SysTimerStr);
    SetSysTimerTarget ( TIMER_INROT , 200000 , &SysTimerStr);
    SetSysTimerTarget ( TIMER_NECK_STRETCH_ALARM, 200000, &SysTimerStr );
    SetSysTimerTarget ( TIMER_BRAKE_DELAY_4_SHELF, 1000, &SysTimerStr) ;
    SetSysTimerTargetSec (TIMER_CRAB_ACTION , 0.6f , &SysTimerStr );
    SetSysTimerTargetSec (TIMER_PD_DATA_RX_TOUT, 0.5f, &SysTimerStr ) ;
    SetSysTimerTargetSec ( TIMER_BIT, 0.01f, &SysTimerStr ) ;
//    SetSysTimerTargetSec (TIMER_IN_PACK_EXIT, 0.001f, &SysTimerStr ) ;
    SetSysTimerTargetSec (TIMER_WHEELS_MOVING, 0.001f, &SysTimerStr ) ;
    SetSysTimerTarget( TIMER_MAN_CMD_TOUT , 1000 , &SysTimerStr) ;
    SetSysTimerTargetSec ( TIMER_STATUS_TX , 0.01f , &SysTimerStr );
    SetSysTimerTargetSec( TIMER_SHUTCAN_BLINK , 0.25f , &SysTimerStr) ;
    SetSysTimerTargetSec (TIMER_GYRO_PROG , 0.005f  , &SysTimerStr);
//    SetSysTimerTarget ( TIMER_DONT_EST_GYRO_OFFSET , 2.0f , &SysTimerStr ) ;

}

// Transformation is self nverse because its 180 degrees
const float qEnuToNed[4] = {0  , 0.707106781186548f  ,0.707106781186548f,  0}  ;
void ProcessIMUTransformation(void)
{
    short unsigned mask ;
    mask = BlockInts() ;
    //QuatOnQuat( qEnuToNed , Calib.qImu2ZeroENUPos , SysState.Nav.QPreImu) ;
    //InvQuatOnQuat( Calib.qImu2ZeroENUPos , qEnuToNed , SysState.Nav.qChip2Body);
    QuatOnQuat( qEnuToNed,Calib.qImu2ZeroENUPos, SysState.Nav.qChip2Body);
    RestoreInts(mask) ;
}

/**
 * \brief Get calibration conversion factors
 * \param:
 *  0: Zero calibration 1: Read from flash and apply 2: From programmed calibration
 *
 */
struct CCalib CalibTmp ;
short DealCalibration (short unsigned rd)
{
    short unsigned mask ;
    //float m[3][3] ;
    short cnt ;
    short RetVal = 0 ;
    switch ( rd)
    {
    case 0:
        ClearMemRpt( (short unsigned * ) &CalibTmp , sizeof(Calib)  ) ;
        for ( cnt = 0 ; cnt < 4 ; cnt++ )
        {
            CalibTmp.qImu2ZeroENUPos[cnt] = Geom.DefaultqImu2ZeroENUPos[cnt] ;
        }
        break ;
    case 1:
        if ( ReadCalibFromFlash ( (long unsigned*) &CalibTmp ,   FlashCalib   ) < 0 )
        {
            RetVal = -1 ;
        }
        break ;
    case 2:
        CalibTmp = CalibProg.Calib ;
        break ;
    }

    NormalizeQuat( CalibTmp.qImu2ZeroENUPos , CalibTmp.qImu2ZeroENUPos);

    mask = BlockInts( ) ;
    Calib.RSteerPotCenter = CalibTmp.RSteerPotCenter +  Geom.SteerFinalRatCenter ;
    Calib.LSteerPotCenter = CalibTmp.LSteerPotCenter + Geom.SteerFinalRatCenter ;
    Calib.RSteerPotGainFac = CalibTmp.RSteerPotGainFac + Geom.SteerFinalRatRev ;
    Calib.LSteerPotGainFac = CalibTmp.LSteerPotGainFac + Geom.SteerFinalRatRev ;

    Calib.RNeckPotCenter = CalibTmp.RNeckPotCenter + Geom.Neck1RatCenter ;
    Calib.LNeckPotCenter = CalibTmp.LNeckPotCenter + Geom.Neck2RatCenter ;
    Calib.RNeckPotGainFac = CalibTmp.RNeckPotGainFac + Geom.Neck1RatRad ;
    Calib.LNeckPotGainFac = CalibTmp.LNeckPotGainFac + Geom.Neck2RatRad ;

    Calib.AccOffsetX  = CalibTmp.AccOffsetX;
    Calib.AccOffsetY  = CalibTmp.AccOffsetY;
    Calib.AccOffsetZ  = CalibTmp.AccOffsetZ;
    Calib.GyroOffsetX  = CalibTmp.GyroOffsetX;

    Calib.qImu2ZeroENUPos[0]  = CalibTmp.qImu2ZeroENUPos[0];
    Calib.qImu2ZeroENUPos[1]  = CalibTmp.qImu2ZeroENUPos[1];
    Calib.qImu2ZeroENUPos[2]  = CalibTmp.qImu2ZeroENUPos[2];
    Calib.qImu2ZeroENUPos[3]  = CalibTmp.qImu2ZeroENUPos[3];

    //Calib.LaserGainCorrection   = CalibTmp.LaserGainCorrection ;
    //Calib.LaserOffsetCorrection = CalibTmp.LaserOffsetCorrection ;
    //Calib.LaserMinimumVolts = CalibTmp.LaserMinimumVolts ;
    Calib.WheelRadiCorrection = CalibTmp.WheelRadiCorrection ;

    ProcessIMUTransformation() ;

    //Calib.NeckGainAddFac = CalibTmp.NeckGainAddFac ;
    //Calib.RobotConfig    = CalibTmp.RobotConfig    ;

    SysState.WheelArm.LWheelArmGain = ( CalibTmp.LWheelArmGain + 1.0f ) * Geom.WheelArmPotGain ;
    SysState.WheelArm.RWheelArmGain = ( CalibTmp.RWheelArmGain + 1.0f ) * Geom.WheelArmPotGain ;

    SysState.WheelArm.LWheelArmOffset =  CalibTmp.LWheelArmOffset + Geom.LWheelArmPotOffset ;
    SysState.WheelArm.RWheelArmOffset =  CalibTmp.RWheelArmOffset + Geom.RWheelArmPotOffset ;

    SysState.WheelArm.WheelArmLZeroCnt  = CalibTmp.WheelArmLZeroCnt ;
    SysState.WheelArm.WheelArmRZeroCnt  = CalibTmp.WheelArmRZeroCnt ;

    Calib.RWheelArmLatchTravel = CalibTmp.RWheelArmLatchTravel ;
    Calib.LWheelArmLatchTravel = CalibTmp.LWheelArmLatchTravel ;
    if  ( ( fabsf(CalibTmp.RWheelArmLatchTravel) < 1  ) && ( fabsf(CalibTmp.LWheelArmLatchTravel) < 1  ))
    {
        SysState.WheelArm.RWheelArmLatchTravel = 170 ;
        SysState.WheelArm.LWheelArmLatchTravel = 170 ;
    }
    else
    {
        SysState.WheelArm.RWheelArmLatchTravel = CalibTmp.RWheelArmLatchTravel ;
        SysState.WheelArm.LWheelArmLatchTravel = CalibTmp.LWheelArmLatchTravel ;
    }

    CalcGeomData() ;

    RestoreInts(mask) ;
    return RetVal ;
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
    short cnt ;
    struct CSegQueue * pSegQ ;
    struct CFloatParRecord *pPar ;
    struct CMotionItem JunkItem ;
    // struct CCanAxis *pAxis ;
    // float m[3][3] ;
#ifdef _LPSIM
    memset ( (void *) &SysState , 0 , sizeof( SysState) ) ;
    memset ( (void *) &LLimitSwRegs , 0 , sizeof( LLimitSwRegs) ) ;
    memset ( (void *) &RLimitSwRegs , 0 , sizeof( RLimitSwRegs) ) ;
    memset ( (void *) &GyroInt,0 , sizeof( GyroInt) );
    memset ( (void *) &SimPackageItem,0 , sizeof( SimPackageItem) );
    memset ( (void *) &JunkItem,0 , sizeof( JunkItem) );

#else

    ClearMemRpt((short unsigned *) &IsrTimer,sizeof( IsrTimer) );
    ClearMemRpt((short unsigned *) &SysState,sizeof( SysState) );
    ClearMemRpt((short unsigned *) &GyroInt,sizeof( GyroInt) );
    ClearMemRpt((short unsigned *) &SimPackageItem,sizeof( SimPackageItem) );
    ClearMemRpt((short unsigned *) &JunkItem,sizeof( JunkItem) );
    ClearMemRpt((short unsigned *) &HostMessageStr,sizeof( HostMessageStr) );
    ClearMemRpt((short unsigned *) &GyroMessageStr,sizeof( GyroMessageStr) );
    ClearMemRpt((short unsigned *) &ClaState,sizeof( ClaState) );
    ClearMemRpt((short unsigned *) &ClaInput,sizeof( ClaInput) );

    ClearMemRpt((short unsigned *) &CanSlaveInQueue,sizeof( CanSlaveInQueue) );
    ClearMemRpt((short unsigned *) &CanSlaveManipQueue,sizeof( CanSlaveManipQueue) );
    ClearMemRpt((short unsigned *) &SlaveSdo,sizeof( SlaveSdo) );
    ClearMemRpt((short unsigned *) &ManipSdo,sizeof( ManipSdo) );
    ClearMemRpt((short unsigned *) &M2S,sizeof( M2S) );
    //ClearMemRpt((short unsigned *) &S2M,sizeof( S2M) );
    ClearMemRpt((short unsigned *) &ManRouteCmdImage,sizeof( ManRouteCmdImage) );
    ClearMemRpt((short unsigned *) &Config,sizeof( Config) );


    ProtocolRev = ProtocolSubverPatch ;
    PROJ_CAN_ID = LP_CAN_ID ;

    UnityQuat(GyroInt.BodyQuat) ;
    UnityQuat(GyroInt.GyroQuat) ;
    UnityQuat(ManRouteCmd.RefQuat) ;
    for ( cnt = 0 ; cnt < 16 ; cnt++ )
    {
        UnityQuat(GyroInt.GyroQuatList[cnt].Quat) ;
    }
#endif
    InvertSpeed4Shelf(0) ; // Start straight

#ifdef SP_SER_FLASH
    FlashCalib =   SER_FLASH_ADD_CALIB_MAIN ; // Flash sector for calibration
    FlashConfig = SER_FLASH_ADD_CONFIG_MAIN ;
#else
    FlashCalib =   0x0BC000; // Sector M
#endif
    // Load the parameters
    for ( cnt = 0 ; cnt < (signed short)N_ParTable; cnt++ )
    {
        pPar = (struct CFloatParRecord  *) &ParTable[cnt];
        if ( pPar->ptr == (float*) 0 )
        {
            break ;
        }
        *pPar->ptr = pPar->dflt ;
    }


    //TrackWidthAdjustDir = TRACK_WIDTH_ADJUST_DIR ;

    ClaInput.CpuFrqMHz = CPU_CLK_MHZ ;
    ClaInput.OneOverCpuFrqMHz = (1.0f/ClaInput.CpuFrqMHz);


    SlaveSdo.SlaveBuf = (unsigned long* ) SlaveSdoBuf ;
    ManipSdo.SlaveBuf = (unsigned long* ) ManipSdoSlaveBuf ;
    SlaveSdo.SlaveID = LP_CAN_ID ;
    ManipSdo.SlaveID = PD_CAN_ID ;
    DummySdoFromSpi.SlaveBuf = DummySdoFromSpiBuf ;

    InitCanAxes() ;

    SysState.CanAxis[LOGICAL_RW].MotCntRad = Geom.WheelMotCntRadGnd ; // Something ; Don't know any better right now
    SysState.CanAxis[LOGICAL_LW].MotCntRad = SysState.CanAxis[LOGICAL_RW].MotCntRad;
    SysState.CanAxis[LOGICAL_RSTEER].MotCntRad = Geom.RSteerMotCntRad ;
    SysState.CanAxis[LOGICAL_LSTEER].MotCntRad = Geom.LSteerMotCntRad ;
    SysState.CanAxis[LOGICAL_NECK].MotCntRad = Geom.NeckMotCntRad ;

    SyncMsg.LogicId = 0 ;
    SyncMsg.cobId = 0x80;
    SyncMsg.dLen = 0 ;
    SyncMsg.data[0] = 0 ;
    SyncMsg.data[1] = 0 ;

    //SysState.AxesActive = 0 ; // Must be inactive till power supplies boot
    M2S.Items.ActCmd.cmd.AxesActive = 0 ;
    SysState.CanRxEnable = 1 ;

    SysState.ProcCtrMax = 2 ; // About 8.2 msec

    SysState.PdCmd2 = 2 ; // blower on
/*
    HeartBeat.CtrMax = 8   ; // About 64msec

    HeartBeat.Msg.LogicId = 0 ;
    HeartBeat.Msg.cobId = 0x700; // Heart beat + (ID = 0)
    HeartBeat.Msg.dLen = 1 ;
    HeartBeat.Msg.data[0] = 5 ; // Operational
    HeartBeat.Msg.data[1] = 0 ;

    HeartBeat.HeartBeatInhibit = 1 ; // Vandal
*/
    //IsrTimer.OneOver1000Iq32 = 4294968L ; // ceil(2^32/1000)
    CanSlaveOutQueue.nQueue = N_SLAVE_QUEUE ;
    CanSlaveInQueue.nQueue =  N_SLAVE_QUEUE ;
    CanSlaveManipQueue.nQueue =  N_SLAVE_QUEUE ;
    CanSlavePdInQueue.nQueue =  N_SLAVE_QUEUE ;
    //ExtWorldQueue.nQueue = N_SLAVE_QUEUE ;
    //CanSlaveSpiHostQueue.nQueue = N_SLAVE_QUEUE ;
    CanSlavePdOutQueue.nQueue = N_SLAVE_QUEUE ;
    CanPDInMsgQueue.nQueue =  N_SLAVE_QUEUE ;
    CanSrvInMsgQueue.nQueue =  N_SLAVE_QUEUE ;

    HostHandleStr.Tx2HostCtr = 0  ;
    HostHandleStr.CCanMsgSize = sizeof( struct CCanMsg) ;

    SysPars.Imu.GyroGain[0] = GYRO_DEC_FACTOR * 8.7266e-05F; // 0.005 / 57.29
    SysPars.Imu.GyroGain[1] = SysPars.Imu.GyroGain[0];
    SysPars.Imu.GyroGain[2] = SysPars.Imu.GyroGain[0];

    ImuAccGain[0] = GYRO_DEC_FACTOR * 9.81F / 4000.0F ;
    ImuAccGain[1] = 1e-6f ; // -usec to sec
    ImuAccGain[2] = 0.25f ; // Filter constant, about 100Hz

    GyroInt.Vertical[2] = -1 ;

    InitCbitCounter( &ManRxPdoBitStr , 6 /*MaxCount*/, 3 /*ErrorThold*/,  1 /*UpStep*/, 2 /*DnStep*/);
    InitCbitCounter( &RxPdoBitStr , 6 /*MaxCount*/, 4 /*ErrorThold*/,  1 /*UpStep*/, 2 /*DnStep*/);
    InitCbitCounter( &TxPdoBitStr , 6 /*MaxCount*/, 4 /*ErrorThold*/,  1 /*UpStep*/, 2 /*DnStep*/);
    InitCbitCounter( &ManTxPdoBitStr , 6 /*MaxCount*/, 4 /*ErrorThold*/,  1 /*UpStep*/, 2 /*DnStep*/);
    InitCbitCounter( &ImuBitStr , 20  /*MaxCount*/, 16 /*ErrorThold*/,  1 /*UpStep*/,2 /*DnStep*/);

    SysState.Status.Failure.bit.PDAbsent = 1 ; // Until proven otherwise

    //ManRouteCmdImage.WheelPosOnPoleGain = 4.0f ; // 0.6Hz
    //ManRouteCmd.ArcCurrent  = 4.0f ;
    //ManRouteCmdImage.RescueCurrent  = 5.0f ;

    ManRouteCmd.LineAcc = 1.0f ;
    ManRouteCmd.CurvatureAcc = ManRouteCmdImage.CurvatureAcc ;

    Calib.AccOffsetX = -0.083f ;
    Calib.AccOffsetY = -0.083f ;


    ClearMemRpt ((unsigned short *) &SegRun , sizeof(struct CSegRun ) )  ;
    SegRun.pExp = & RExp ;
    SegRun.Init = 1 ;

    SegQ[0].pExp = &QExp ;
    //SegQ[1].pExp = &QExp ;

    // Deal withe configuration
    if ( ReadConfigFromFlash (  ) )
    {
        SysState.CBit.bit.NoConfig = 1 ;
    }
    else
    {
        SysState.CBit.bit.NoConfig = 0 ;
    }


    // Deal with calibration
    DealCalibration (1) ; // Read from flash
    if  (ReadCalibFromFlash ( (long unsigned*) &CalibProg.Calib ,   FlashCalib   ) )
    {
        SysState.CBit.bit.NoCalib = 1 ;
        for ( cnt = 0 ; cnt < 4 ; cnt++ )
        {
            Calib.qImu2ZeroENUPos[cnt]  = Geom.DefaultqImu2ZeroENUPos[cnt];
        }
        ProcessIMUTransformation() ;
    }

    // Robot configuration
    //Config.ManipConfig        = (short)  (Calib.RobotConfig & 0xf      );
    //Config.WheelArmType       = (short) ((Calib.RobotConfig & 0xf0     ) >> 4)  ;
    //Config.RailPitchType      = (short) ((Calib.RobotConfig & 0x700    ) >> 8)  ;

    InitSci( 0 , 460800L ); // Host comm

    // 0 is no wheel arm
    // 1 and 2 are 28 and 24 inch
    // 3 is - see width elsewhere
    ConfigWheelArm() ;

    CalcGeomData() ;


    // Read default gyro calibration
    //GyroInt.GyroOffset[0] = Calib.GyroOffsetX ;

    if  ( ( fabsf(Calib.RWheelArmLatchTravel) < 1  ) && ( fabsf(Calib.LWheelArmLatchTravel) < 1  ))
    {
        SysState.WheelArm.RWheelArmLatchTravel = 170 ;
        SysState.WheelArm.LWheelArmLatchTravel = 170 ;
    }
    else
    {
        SysState.WheelArm.RWheelArmLatchTravel = Calib.RWheelArmLatchTravel ;
        SysState.WheelArm.LWheelArmLatchTravel = Calib.LWheelArmLatchTravel ;
    }


    SysState.Nav.QRcu2LpW_StartPostShare[0] = 0 ;
    SysState.Nav.QRcu2LpW_StartPostShare[1] = 0.707106781186548f;
    SysState.Nav.QRcu2LpW_StartPostShare[2] = 0.707106781186548f;
    SysState.Nav.QRcu2LpW_StartPostShare[3] = 0 ;

    //SysState.Nav.QVru2LpW_StartPostShare[0] = 0 ;
    //SysState.Nav.QVru2LpW_StartPostShare[1] = 1 ;
    //SysState.Nav.QVru2LpW_StartPostShare[2] = 0;
    //SysState.Nav.QVru2LpW_StartPostShare[3] = 0 ;


    SysState.Nav.QRcu2Lp[0] = 0.707106781186548f ;
    SysState.Nav.QRcu2Lp[1] = 0 ;
    SysState.Nav.QRcu2Lp[2] = 0 ;
    SysState.Nav.QRcu2Lp[3] = 0.707106781186548f ;

    pSegQ = &SegQ[0] ;
    JunkItem.OpCode = 1 ; JunkItem.cx = 1 ;
    InitSegQueue( pSegQ , &Constraint , & QExp, &JunkItem) ;

    ClearMemRpt((unsigned short *)&YawHistory, sizeof(struct CYawHistory));
    for (cnt = N_YAWHIST_ITEM-1; cnt > 0; cnt--)
    {
        YawHistory.Item[cnt].x = YawHistory.Item[(cnt - 1)&(N_YAWHIST_ITEM - 1)].x - 500;
    }

    LedBrightness = 20 ;

    // ? ControlPars.NeckAccSlaveGain = 0

    // Crab profiler forever
    CrabProfiler.PosMin = -1e6f ;
    CrabProfiler.PosMax =  1e6f ;
    WheelProfiler[0].PosMin = -1e6f ;
    WheelProfiler[0].PosMax =  1e6f ;
    WheelProfiler[1].PosMin = -1e6f ;
    WheelProfiler[1].PosMax =  1e6f ;


    // Assign roles
    pSw[LOGICAL_RW] = & SysState.CanAxis[LOGICAL_RW].BH.LimitSw ;
    pSw[LOGICAL_LW] = & SysState.CanAxis[LOGICAL_LW].BH.LimitSw;

    SysState.BlockUpload.InBlockMsg.cobId = (0xb<<7)+LP_CAN_ID  ;
    SysState.BlockUpload.InBlockMsg.dLen  = 8 ;

    SysState.BlockUpload.StartBlockMsg.cobId = (0xb<<7)+LP_CAN_ID  ;
    SysState.BlockUpload.StartBlockMsg.dLen  = 8 ;
    SysState.BlockUpload.StartBlockMsg.data[0] = 0x64 + (0x2006L<<8) + (1L<<24);

    SysState.BlockUpload.EndBlockMsg.cobId = (0xb<<7)+LP_CAN_ID  ;
    SysState.BlockUpload.EndBlockMsg.dLen  = 8 ;

    SysState.BlockUpload.AbortBlockMsg.cobId = (0xb<<7)+LP_CAN_ID  ;
    SysState.BlockUpload.AbortBlockMsg.dLen  = 8 ;
    SysState.BlockUpload.AbortBlockMsg.data[0] = (4L<<5) + ( (long unsigned)02006 ) + ( (long unsigned)1 << 24 );
    SysState.BlockUpload.AbortBlockMsg.data[1] = Invalid_sequence_number ;

    ResetSciStateMachine();

    SysState.EEF.bIssueMsg2EEF = 0 ;

    SysState.Nav.Robot.WheelTouchDist = Geom.Center2WheelDist * 2 ; // Stam, avoiding danger of zero division

    // Max number of close loop pole homing attempts
    SysState.RelCrabState.LoopCntMax = 5 ;

    SysState.CanRxEnable = 1 ;
    Pdo1TxScoreBoard = 0;

    SysState.RelCrabState.CameraDelayCounter = 0;
    SysState.RelCrabState.CamDelayRegistered = 0;
    SysState.RelCrabState.CalibCorrectedPosXBeforeCrab = 0;
    SysState.RelCrabState.CalibCorrectedPosXAfterCrab = 0;

    TERMINAL_LENGTH_THEETH_BASE_2_TIP[0] = LONG_TERMINAL_LENGTH_M; //for type=1, Type A
    TERMINAL_LENGTH_THEETH_BASE_2_TIP[1] = SHORT_TERMINAL_LENGTH_M; //for type=2, Type B //TODO: Update length
    TERMINAL_LENGTH_THEETH_BASE_2_TIP[2] = SHORT_TERMINAL_LENGTH_M; //for type=3, type C
}


short CheckAlign ( short unsigned * ptr , short unsigned pw )
{
#ifndef _LPSIM
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
#else
    (void)ptr;
    (void)pw;
#endif
    return 0 ;
}


/**
 * \brief Validate and read calibration struct from the flash
 * \param Dest: Destination of calibration (cleared if Src is not valid)
 * \param Src : Address in flash of presumably valid calibration
 * \param len : Size of calibration record, in words
 *
 * \return 0: Ok, -1: Calibration record not valid
 *
 */


#ifdef SP_SER_FLASH

#else
short ReadCalibFromFlash ( long unsigned *Dest , long unsigned Src_in   )
{

#ifdef _LPSIM
    ClearMemRpt( (short unsigned * ) Dest , len ) ;
/*
    short cnt;
    for (cnt = 0; cnt < 4; cnt++)
    {
        Calib.qImu2Body[cnt] = Geom.DefaultqImu2Body[cnt];
    }
*/

#else
    long unsigned cs ;
    short unsigned cnt ;
    long unsigned *Src ;
    long unsigned *uPtr ;
    short unsigned len = sizeof( struct CCalib ) ;

    Src  = (unsigned long *) Src_in ;
    uPtr = Src ;

    ClearMemRpt( (short unsigned * ) Dest , len ) ;

    if ( CheckAlign( (short unsigned *) Dest , 1 ) || CheckAlign( (short unsigned *) Src , 1 ) )
    { // Check both are on long boundary
        return -1 ;
    }

    len = ( len >> 1 ) ; // Because of shorts

    if ( uPtr[len-2] != 0x12345678)
    {
        return -1 ;
    }
    cs = 0 ;
    for ( cnt = 0 ; cnt < len ; cnt++)
    {
        cs -= *uPtr++  ;
    }
    if ( cs )
    {
        return -1 ;
    }
    for ( cnt = 0 ; cnt < len ; cnt++)
    {
        *Dest++ = *Src++  ;
    }
#endif
    return 0 ;
}
#endif



/**
\brief Initialize the SPI buffers and counters
*/
void InitHostComm(void)
{
    MemClr((short unsigned *)&HostHandleStr,sizeof(struct CHostHandleStr)  );
    HostTxBufPutPtr = 0 ;
    HostTxBufFetchPtr = 0 ;
    HostRxBufPutPtr = 0 ;
    HostRxBufFetchPtr = 0 ;
}


/*
 * \brief Initialize the application
 */
void InitApp()
{
    SysState.bPeriodicProcRunning = 0 ;
    InitSystemTimer( &SysTimerStr);
    InitHostComm() ;
    InitGyroComm() ;
    //InitRecorder() ;
    InitRecorder(FAST_INTS_IN_C, FAST_TS_USEC, SDO_BUF_LEN_LONGS);

    InitSysData() ; // Initialize system data

    InitTimeOuts( ); // Initiate time outs
#ifdef TUNNEL_MSG
    InitTunnelMsg() ; // Initialize tunneling to BIT service
#endif
}


long unsigned GetSamplingTime( short unsigned ind)
{
    if ( ind == 0 ) return FAST_TS_USEC ;
    return ( (long unsigned)SPI_CYC_IN_C * FAST_TS_USEC ) ;
}

float GetUnalignedFloat( short unsigned *uPtr )
{
    union
    {
        short us[2] ;
        float f ;
    } u;
    short unsigned e ;

    u.us[0] = uPtr[0] ;
    u.us[1] = uPtr[1] ;

    e = (u.us[1] >> 7 ) & 0xff ;
    if ( e < 1 || e > 254 )
    { // Illegal number
        u.f = 0 ;
    }
    return u.f ;
}
/*
void InterpreterSession ( struct CAxisState *ax )
{

}
*/

