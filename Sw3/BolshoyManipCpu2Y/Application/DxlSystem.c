#include "StructDef2.h"
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>






void InitDynState( short unsigned net , const struct CDynControlTableLine * pTable )
{
    struct CDxInitState  * pState ;
    switch ( net )
    {
    case 12:
        pState = &DxInitState12;
        pState->TimerId =TMR_DYN12_CYCLE;
        pState->TimeBetweenComsUsec = 12000 ;
        pState->pProt = &Dynamixel12;
        break ;
    case 24:
        pState = &DxInitState24;
        pState->TimerId =TMR_DYN24_CYCLE;
        pState->TimeBetweenComsUsec = 16000 ;
        pState->pProt = &Dynamixel24;
        Dynamixel24.State = DYN_MANUAL_EXT ; // Disable the standard IDLE loop management
        break;
    default:
        return ;
    }
    pState->MaxFails = 8 ;
    pState->ProgCnt = 0 ;
    pState->ProgState = 0 ;
    pState->FailStat = 0 ;
    pState->Net = net ;
    pState->pTable = (struct CDynControlTableLine *) pTable ;
    SetSysTimerTarget ( pState->TimerId , pState->TimeBetweenComsUsec , &SysTimerStr) ;

}

/**
 *  Initialization of Dynamixel servo mechanism
 */
short InitDxl24( struct CDxInitState *pState )
{
    struct CDynControlTableLine * pLine ; // !< Dictionary for initial programming
    long lstat ;
    short unsigned nData , cnt  ;
    short idx  ;
    long unsigned LRslt ;

    if ( ManipulatorType != SCARA_Manipulator)
    {
        return 1 ;
    }

    // Minimum time between consecutive activation, allow enough time for serial communication
    if ( IsSysTimerElapse (pState->TimerId, &SysTimerStr) == 0 )
        return 0 ;

    SetSysTimerTarget ( pState->TimerId , pState->TimeBetweenComsUsec , &SysTimerStr) ;

    // Initial guess for next program line to send
    pLine = pState->pTable + pState->ProgCnt ; // Current line
    while (1)
    { // Loop for selecting the next useful programming table entry
        if ( pLine->Rights == 0xffff || pLine->Offset == 0xffff)
            return 1 ; // Done

        // Get the axis whose ID we look for
        idx = -1 ;
        for ( cnt = 0 ; cnt < pState->pProt->nMembers ; cnt++)
        {
            if ( pState->pProt->IDList[cnt] == pLine->TargetId )
            {
                idx = cnt ;
                break ;
            }
        }
        if ( idx < 0 )
        { // Unidentified
            return 0 ; // Clear bug , all stuck
        }

        if ( pLine->TargetType == TARGET_TYPE_ANY )
        {
            break ; // Go on with it, we need find who we are
        }

        if ( pState->pProt->ModelList[idx] == 0 )
        {
            return 0 ; // Serious bug - uninitialized motor type
        }

        if ( pLine->TargetType != pState->pProt->ModelList[idx] )
        { // This line does not refer the actual motor type, just proceed one line further
            pState->ProgCnt += 1 ;
            pLine = pState->pTable + pState->ProgCnt ; // Current line
        }
        else
        {
            break ;
        }
    }

    if ( pState->FailStat > pState->MaxFails )
    {
        //return -1 ; // Failure
    }



#ifndef _LPSIM
    if ( pState->Stop4Debug )
    {
        asm( " ESTOP0");
    }
#endif



    switch ( pState->ProgState )
    {
    case 0: // Read the parameter - program readout
        ConstructReadMsg ( & pState->InitMsg , pLine->Offset, pLine->LenBytes , pLine->TargetId, pState->pProt->Net );

        //ConstructReadSyncMsg ( & pState->InitMsg , pLine->Offset , pLine->LenBytes ,
        //      1 , & pLine->TargetId , pState->pProt->Net)  ;
        DynamixelTx ( pState->pProt , &  pState->InitMsg  ) ;
        pState->ProgState = 1;
        break;
    case 1: // Get the parameter and compare it to desired value
#ifdef _LPSIM
        lstat = 0;
        nData = pLine->LenBytes;
        LRslt = pLine->Data;
#else
        lstat = GetDxlPayload( pLine->TargetId , &nData, pState->pProt , &LRslt );
#endif
        if ( lstat )
        { // did not receive well formatted message
            pState->FailStat += 1 ;
            pState->ProgState = 0 ; // Retry
            break ;
        }

        if ( nData != pLine->LenBytes)
        { // Match expected message length
            pState->FailStat += 1 ;
            pState->ProgState = 0 ; // Retry
            break ;
        }

        // If this is the ID ......
        if ( pLine->TargetType == TARGET_TYPE_ANY )
        {
            pState->pProt->ModelList[cnt] = (unsigned short)LRslt ;
            switch( LRslt)
            {
            case TARGET_TYPE_HP: // Old unit
                pState->pProt->IndirectReadAdd = 634 ;
                pState->pProt->TorqueEnableAdd[idx] = 512 ;
                pState->pProt->SpeedGoalAdd[idx] = 552 ;
                pState->pProt->CurrentGoalAdd[idx] = 550 ;

                DynStat24[idx].PositionScale = MAN_POS_SCALE_HP ;
                DynStat24[idx].SpeedScale    = MAN_SPEED_SCALE_HP ;
                DynStat24[idx].CurrentScale  = MAN_CUR_SCALE_HP ;
                DynStat24[idx].InvCurrentScale  = (1.0f/MAN_CUR_SCALE_HP) ;

                DynStat24[idx].MaxArmCurrent = MAX_ARM_CURRENT_HP ;

                DynStat24[idx].NominalEncoderOffset = 0 ;

                switch(ManipulatorType)
                {
                case SCARA_Manipulator:
                    switch ( idx )
                    {
                    case 0:
                        DynStat24[idx].PositionScale = -DynStat24[idx].PositionScale ;
                        DynStat24[idx].SpeedScale    = -DynStat24[idx].SpeedScale;
                        break ;
                    case 1:
                        break ;
                    case 2:
                        break ;
                    }
                    break ;
                default:
                    SevereBugUnknownManipualtor() ;
                }

                break ;
            case TARGET_TYPE_LP: // New unit
                pState->pProt->IndirectReadAdd = 634 ;
                pState->pProt->TorqueEnableAdd[idx] = 562 ;
                pState->pProt->SpeedGoalAdd[idx] = 600;
                pState->pProt->CurrentGoalAdd[idx] = 604 ;

                DynStat24[idx].PositionScale = MAN_POS_SCALE_LP ;
                DynStat24[idx].SpeedScale    = MAN_SPEED_SCALE_LP ;
                DynStat24[idx].CurrentScale  = MAN_CUR_SCALE_LP ;
                DynStat24[idx].InvCurrentScale  = (1.0f/MAN_CUR_SCALE_LP) ;

                DynStat24[idx].MaxArmCurrent = MAX_ARM_CURRENT_LP ;

                DynStat24[idx].NominalEncoderOffset = 0 ;

                switch(ManipulatorType)
                {
                case SCARA_Manipulator:
                    switch ( idx )
                    {
                    case 0:
                        DynStat24[idx].NominalEncoderOffset = -91752 ;
                        DynStat24[idx].PositionScale = -DynStat24[idx].PositionScale ;
                        DynStat24[idx].SpeedScale    = -DynStat24[idx].SpeedScale;
                        break ;
                    case 1:
                        DynStat24[idx].NominalEncoderOffset = 90051 ;
                        break ;
                    case 2:
                        DynStat24[idx].NominalEncoderOffset = 181089 ;
                        break ;
                    }
                    break ;
                default:
                    SevereBugUnknownManipualtor() ;
                }
               break ;

            default:
                pState->FailStat += 1 ;
                pState->ProgState = 0 ; // Retry
                return 0 ;
            }

            pState->FailStat = 0  ;
            pState->ProgState = 0 ; // Done
            pState->ProgCnt += 1 ;
            break ;
        }

        if ( LRslt == pLine->Data )
        { // Done good
            pState->FailStat = 0  ;
            pState->ProgState = 0 ; // Retry
            pState->ProgCnt += 1 ;
            break ;
        }
        else
        {
            pState->FailStat += 1 ;
            if ( pLine->Rights == 0 )
            { // Can't write this object
                pState->ProgState = 0 ; // Retry
            }
            pState->ProgState = 2; // Try program it
        }
        break ;
    case 2:
        ConstructWriteSyncMsgSingleItem ( & pState->InitMsg , pLine->Offset , pLine->LenBytes ,
                1 , & pLine->TargetId , &pLine->Data , pState->pProt->Net ) ;
        DynamixelTx ( pState->pProt , &  pState->InitMsg  ) ;
        pState->ProgState = 0; // Retry verify
        SetSysTimerTarget ( pState->TimerId , pState->TimeBetweenComsUsec * 10  , &SysTimerStr) ;
        break ;
    }

    return 0 ;
}



/**
 *  Initialization of Dynamixel servo mechanism
 */
short InitDxl12( struct CDxInitState *pState )
{
    struct CDynControlTableLine * pLine ; // !< Dictionary for initial programming
    long lstat ;
    short unsigned nData ;
    long unsigned LRslt ;

    // Minimum time between consecutive activation, allow enough time for serial communication
    if ( IsSysTimerElapse (pState->TimerId, &SysTimerStr) == 0 )
        return 0 ;


    SetSysTimerTarget ( pState->TimerId , pState->TimeBetweenComsUsec , &SysTimerStr) ;

    // Initial guess for next program line to send
    pLine = pState->pTable + pState->ProgCnt ; // Current line

    if ( pLine->Rights == 0xffff || pLine->Offset == 0xffff)
    {
       return 1 ; // The last "line" of programming is NULL, so on meeting it we are Done
    }


    if ( pState->FailStat > pState->MaxFails )
    {
        //return -1 ; // Failure
    }



#ifndef _LPSIM
    if ( pState->Stop4Debug )
    {
        asm( " ESTOP0");
    }
#endif



    switch ( pState->ProgState )
    {
    case 0: // Read the parameter - program readout
        ConstructReadMsg ( & pState->InitMsg , pLine->Offset, pLine->LenBytes , pLine->TargetId, pState->pProt->Net );

        //ConstructReadSyncMsg ( & pState->InitMsg , pLine->Offset , pLine->LenBytes ,
        //      1 , & pLine->TargetId , pState->pProt->Net)  ;
        DynamixelTx ( pState->pProt , &  pState->InitMsg  ) ;
        pState->ProgState = 1;
        break;
    case 1: // Get the parameter and compare it to desired value
#ifdef _LPSIM
        lstat = 0;
        nData = pLine->LenBytes;
        LRslt = pLine->Data;
#else
        lstat = GetDxlPayload( pLine->TargetId , &nData, pState->pProt , &LRslt );
#endif
        if ( lstat )
        { // did not receive well formatted message
            pState->FailStat += 1 ;
            pState->ProgState = 0 ; // Retry
            break ;
        }

        if ( nData != pLine->LenBytes)
        { // Match expected message length
            pState->FailStat += 1 ;
            pState->ProgState = 0 ; // Retry
            break ;
        }


        if ( LRslt == pLine->Data )
        { // Done good
            pState->FailStat = 0  ;
            pState->ProgState = 0 ; // Retry
            pState->ProgCnt += 1 ;
            break ;
        }
        else
        {
            pState->FailStat += 1 ;
            if ( pLine->Rights == 0 )
            { // Can't write this object
                pState->ProgState = 0 ; // Retry
            }
            pState->ProgState = 2; // Try program it
        }
        break ;
    case 2:
        ConstructWriteSyncMsgSingleItem ( & pState->InitMsg , pLine->Offset , pLine->LenBytes ,
                1 , & pLine->TargetId , &pLine->Data , pState->pProt->Net ) ;
        DynamixelTx ( pState->pProt , &  pState->InitMsg  ) ;
        pState->ProgState = 0; // Retry verify
        SetSysTimerTarget ( pState->TimerId , pState->TimeBetweenComsUsec * 10  , &SysTimerStr) ;
        break ;
    }

    return 0 ;
}



// Commands:
// Torque    enable 64
// Position  116
// Readback:
// Shutdown = 63, 1 byte
// Moving   = 122, 1 byte
// Moving status = 123, 1 byte
// Current = 126, 2 byte
// Velocity = 128 , 2 byte
// Position = 132 , 4 byte
// Input volts = 144 , 2 byte






/**
 *  File for system management functions
 */


/*
 * Run power on BIT
 */
void RunPBit( void)
{
    extern void ComposeDyn12Tab( short unsigned ManType ,  short unsigned IsWheelArm  ) ;
    switch ( PBit.State )
    {
    case 0: // Start system
        if ( SevereBug )
        {
            break ;
        }
        InitDynState( 12 , pDyn12Setup );
        InitDynState( 24 , pDyn24Setup );
        Dynamixel24.InitState = 0 ;
        Dynamixel12.InitState  = 0 ;
        ComposeDyn12Tab( ManipulatorType  , (WheelArmExists ? 1 : 0 ) ) ;
        SetSysTimerTarget ( TIMER_PBIT, 2000000, &SysTimerStr) ;
        PBit.State = 1 ;
        break ;
    case 1:
        // Wait communication from LP to
        // - Wake PS
        // - Start talk with axes

        if (IsPsActive() == 0 )
        {
            SetSysTimerTarget ( TIMER_PBIT, 2000000, &SysTimerStr) ;
        }
        if ( IsSysTimerElapse( TIMER_PBIT, &SysTimerStr)  )
        {
            PBit.State = 2 ;
        }
        break ;

    case 2:
        if ( Dynamixel12.InitState == 0 ) // && PBit.Dynamixel12On)
        {
            Dynamixel12.InitState =  InitDxl12( &DxInitState12 ) ;
        }
        if ( IsGen3() )
        {
            Dynamixel24.SubState = 0 ; // Wait initialization done
            Dynamixel12.SubState = 0 ; // Wait initialization done
            Dynamixel24.State = DYN_NET_WAKE_WAIT ;

            if ( ( Dynamixel12.InitState == 1) || Dynamixel12.NetByPass )
            {
                Dynamixel12.State = DYN_RUN_RT ;
                SetSysTimerTargetSec( TIMER_RS485_12V_TOUT , Dynamixel12.CommCycleTimeSec , &SysTimerStr) ;
                PBit.State = 3 ;
            }
        }
        else
        {
            if ( Dynamixel24.InitState == 0 ) // && PBit.Dynamixel24On)
            {
                Dynamixel24.InitState =  InitDxl24( &DxInitState24 ) ;
            }

            if ( (( Dynamixel12.InitState == 1) || Dynamixel12.NetByPass ) && ( (Dynamixel24.InitState == 1 )  || Dynamixel24.NetByPass ))
            {
                Dynamixel12.SubState = 0 ; // Wait initialization done
                Dynamixel24.SubState = 0 ; // Wait initialization done
                Dynamixel24.State = DYN_RUN_RT ;
                Dynamixel12.State = DYN_RUN_RT ;
                SetSysTimerTargetSec( TIMER_RS485_12V_TOUT , Dynamixel12.CommCycleTimeSec , &SysTimerStr) ;
                SetSysTimerTargetSec( TIMER_RS485_24V_TOUT , Dynamixel24.CommCycleTimeSec , &SysTimerStr) ;
                PBit.State = 3 ;
            }
        }
        break ;

    case 3:
        if (( ManipulatorType != Flex_Manipulator ) || (SysState.WakeupState == E_CAN_WAKEUP_OPERATIONAL) )
        { // Flex manipulator must wait CAN initialization done
            PBit.State = 10 ;
        }
        break;

    default:
        if ( ( PBit.DynRebootRequest & 3 ) == 3 )
        { // Within rebooting of manipulator axes - wait sending reboot message to servoes is complete
            PBit.State = 2 ;
            PBit.DynRebootRequest = 0 ;
        }
        break;
    }
}


short PowerOnSetup(void)
{
    short unsigned PState, cnt  ;
    PState =  PBit.State ;


     RunPBit() ;

     if ( (M2S.Items.ActCmd.cmd.ModeWord.bit.CommRestart & PBit.State) > 1 )
     { // Restart if so commanded by host
          PBit.State = 0;
          RunPBit() ;
          //PBit.State = 2;
     }

     if ( PBit.State < 10 )
     {
         return 0 ;
     }

     if ( PState < 10 )
     { // Operational start: Command initiating the accumulated position to the encoder of Dynamixel
         for ( cnt = 0 ; cnt < DEF_NUM_MAX_24V_AXES ; cnt++ )
         {
             DynStat24[cnt].PosInit = 0  ;
         }
         for ( cnt = 0 ; cnt < DEF_NUM_MAX_12V_AXES ; cnt++ )
         {
             DynStat12[cnt].PosInit = 0 ;
         }
     }
     return 1 ;
}



/*
 * Run the system logics
 */
void RunDynamixelSystem( void )
{
    if ( M2S.Items.ActCmd.cmd.StateResetCnt != SysState.ManResetCounter)
    {
        SysState.ManResetCounter = M2S.Items.ActCmd.cmd.StateResetCnt ;
        ManCmd.State = 0 ;
    }

    if ( M2S.Items.ActCmd.cmd.ResetMotors)
    {
        ResetManipulatorMotors()  ;
    }
    else
    {
        SetManipulatorControlWord( M2S.Items.ActCmd.cmd.ControlWord);
    }

    if ( NUM_12V_WHEELARM_AXES  )
    {
        ManageWheelArmPin() ;
    }


    // Run the dynamixel management state machines
    if ( Dynamixel24.NetByPass == 0 )
    {
        Dyn24StateMachine() ;
    }

    if ( Dynamixel12.NetByPass == 0 )
    {
        Dyn12StateMachine() ;
    }
}


