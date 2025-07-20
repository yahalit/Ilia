/*
 * TimerArr.c
 *
 *  Created on: Aug 13, 2021
 *      Author: Yahali
 */


//#include "F2837x_Device.h"
//#include "../Drivers/DriverDefs.h"

//#include <SysUtils.h>
#include "StructDef2.h"

extern void UpdateSysTimerAsm ( unsigned long long  * pTime );

//void ResetHardwareSysTimer(void) ;

#ifndef TIMER_ARR_STAM_WAIT_IDLE
#define TIMER_ARR_STAM_WAIT_IDLE 0
#endif

long long unsigned GetLongTimer ( struct CSysTimerStr *pT )
{
    return (long long unsigned) pT->SysTimer ;
}

//Get the IPC timer - its in SYSCLK rate, i.e. 200MHz
void GetIpcTimer( unsigned long long *p)
{
    short unsigned mask ;
    mask = BlockInts()  ;
#ifdef WINSIM 
    * p = 0; 
#else
    * (unsigned long *) p  = Cpu2toCpu1IpcRegs.IPCCOUNTERL ;
    ((unsigned long *) p)[1]  = Cpu2toCpu1IpcRegs.IPCCOUNTERH ;
#endif
    RestoreInts(mask) ;
}


void UpdateSysTimer( struct CSysTimerStr *pT )
{// RT safe: Timer update in the assembler is in critical section
    short unsigned mask; 
    long dd, dd2;
    long long unsigned llTimer , delta ;
    mask = BlockInts() ;
    GetIpcTimer (& llTimer);
    delta = llTimer - pT->IpcTimer ;
    pT->IpcTimer = llTimer ;
    if ( delta < CPU_CLK_MHZ * 100000 )
    {
         dd = (long unsigned) delta + pT->TimeDebt ;
         dd2 = dd / CPU_CLK_MHZ ;
         pT->SysTimer += dd2 ;
         pT->TimeDebt  = dd - dd2 * CPU_CLK_MHZ ;
    }
    RestoreInts( mask) ;
}


long unsigned GetShortTimer ( struct CSysTimerStr *pT )
{
    return * ( (long unsigned *) & pT->SysTimer ) ;
}

void InitSystemTimer( struct CSysTimerStr *pT )
{
    short unsigned cnt ;
    //CpuTimer1Regs.TIM.all = 0 ;

    //ResetHardwareSysTimer() ;
#ifndef WINSIM
    pT->SysTimer = ECap6Regs.TSCTR ;
#else
    pT->SysTimer = 0; 
#endif

    // Send all the timer comparison array to hell
    for ( cnt = 0 ; cnt < NSYS_TIMER_CMP_ARRAY ; cnt++)
    {
        pT->SysTimerCmpArray[cnt] = 0x7fffffffffffffff ; // They will never elapse until explicitly set
    }
}

/*
 * \brief Set a comparator target on a given timer
 * \param  tInd : Index of timer
 * \param  sec  : Seconds ahead for timer elapse
 */
void SetSysTimerTargetSec ( short unsigned tInd , float sec , struct CSysTimerStr *pT  )
{
    short unsigned mask ;
        if ( tInd < NSYS_TIMER_CMP_ARRAY )
        {
            mask = BlockInts() ;
            pT->SysTimerCmpArray[tInd] = pT->SysTimer + (long long unsigned) ( 1.0e6f * sec ) ;
            RestoreInts( mask) ;
        }
}

/*
 * \brief Set a comparator target on a given timer
 * \param  tInd : Index of timer
 * \param  sec  : Seconds ahead for timer elapse
 * \returns : Time between consecutive activations, sec
 */
float SetSysTimerTargetSecGetDelta ( short unsigned tInd , float sec , struct CSysTimerStr *pT  )
{
    unsigned short mask ;
    float delta ;
    long long tnext ;
    delta = 0 ;
        if ( tInd < NSYS_TIMER_CMP_ARRAY )
        {
            tnext = (long long unsigned) ( 1.0e6f * sec ) ;
            mask  = BlockInts() ;
            tnext =  pT->SysTimer + tnext ;
            RestoreInts( mask) ;
            delta = (float) ( tnext - pT->SysTimerCmpArray[tInd] ) * 1.e-6f  ;
            pT->SysTimerCmpArray[tInd] = tnext  ;
        }
        return delta ;
}


/*
 * \brief Set a comparator target on a given timer for as its previous target + increment
 * \param  tInd : Index of timer
 * \param  sec  : Seconds ahead for timer elapse
 */
void IncrementSysTimerTargetSec ( short unsigned tInd , float sec , struct CSysTimerStr *pT  )
{
    short unsigned mask ;
    long long unsigned next ;
    if ( tInd < NSYS_TIMER_CMP_ARRAY )
    {
        mask = BlockInts() ;
        next = pT->SysTimerCmpArray[tInd] + (long long unsigned) ( 1.0e6f * sec ) ;
        pT->SysTimerCmpArray[tInd] = next ;
        RestoreInts( mask) ;
    }
}

/*
* \brief Limit the comparator target on a given timer
* \param  tInd : Index of timer
* \param  sec  : Seconds ahead for maximum timer elapse
*/
void LimitSysTimerTargetSec(short unsigned tInd, float sec, struct CSysTimerStr *pT)
{
    short unsigned mask;
    long long unsigned MaxTTarget;
    if (tInd < NSYS_TIMER_CMP_ARRAY)
    {
        mask = BlockInts();
        MaxTTarget = pT->SysTimer + (long long unsigned) (1.0e6f * sec);
        if (MaxTTarget < pT->SysTimerCmpArray[tInd])
        {
            pT->SysTimerCmpArray[tInd] = MaxTTarget ;
        }
        RestoreInts(mask);
    }
}



void SetSysTimerTarget ( short unsigned tInd , long unsigned WaitUsec , struct CSysTimerStr *pT )
{
    short unsigned mask ;
        if ( tInd < NSYS_TIMER_CMP_ARRAY )
        {
            mask = BlockInts() ;
            pT->SysTimerCmpArray[tInd] = pT->SysTimer + (long long unsigned) WaitUsec ;
            RestoreInts( mask) ;
        }
}

/**
 * \brief Ask if timer elapsed
 * \param tInd : Timer index
 * \return 1 if elapsed, 0 otherwise
 */
short unsigned IsSysTimerElapse( short unsigned tInd , struct CSysTimerStr *pT  )
{
    short unsigned mask ;
    short RetVal ;
    RetVal = 0 ;
    if ( tInd < NSYS_TIMER_CMP_ARRAY )
    {
        mask = BlockInts() ;
        if ( pT->SysTimer >= pT->SysTimerCmpArray[tInd] )
        {
            RetVal = 1 ;
        }
        RestoreInts( mask) ;
    }
    return RetVal  ;
}

/**
 * \brief Wait until timer elapses. If the time that remains exceeds MaxWait, return immediately
 * \param tInd : Timer index
 * \param MaxWait : Maximum wait time in usec
 * \return 0 if timer elapsed, -1 on time too long to wait
 */
short WaitTimerElapse(short unsigned tInd , long unsigned MaxWait, struct CSysTimerStr *pT )
{
    UpdateSysTimer( pT ) ;
    if ( GetRemainTime(tInd,pT) > MaxWait )
    {
        return -1 ;
    }
    while (  IsSysTimerElapse(tInd,pT) == 0 )
    {
        UpdateSysTimer( pT ) ;
    }
    return 0 ;
}

/**
 * \brief Get the remaining time till timer elapse
 * \param tInd Index od considered timer
 *
 * \return: 0 if timer already elapsed
 *          0x7fffffff if time until elapse is greater or equal to 2^31-1 usec
 *          value in usec otherwise
 *
 */
long unsigned GetRemainTime( short unsigned tInd ,  struct CSysTimerStr *pT)
{
    long long unsigned delta ;
    if ( tInd < NSYS_TIMER_CMP_ARRAY )
    {
        if ( pT->SysTimer > pT->SysTimerCmpArray[tInd] ){
            return 0 ; // Already elapsed
        }
        delta = pT->SysTimerCmpArray[tInd] - pT->SysTimer ; // Time remained
        if ( delta > 0x7fffffff )
        {
            return 0x7fffffff ; // Too long
        }
        return (long unsigned) delta ; // return true elapse time
    }
    return 0 ;
}


#ifdef _LPSIM
    void RtCycle( ) ;
    void PDSimulator() ;
    void SimulateRobotComm ( void ) ;
#endif

void WaitStam( long unsigned WaitUsec ,  struct CSysTimerStr *pT)
{
    short done ;
    if ( WaitUsec < 2 )
    {
        WaitUsec = 2 ;
    }
    UpdateSysTimer (pT ) ;
    SetSysTimerTarget ( TIMER_ARR_STAM_WAIT_IDLE , WaitUsec , pT ) ;
    do {
        UpdateSysTimer ( pT ) ;
        done = IsSysTimerElapse(TIMER_ARR_STAM_WAIT_IDLE , pT ) ;
    } while ( done == 0 );
}


/**
 * \brief Reset an error counter
 *
 * \param pBit-> Error counter struct to initialize
 */
void ResetCbitCounter( struct CBitCountStr * pBit )
{
    pBit->ErrorCond = 0 ;
    pBit->ErrorCount = 0 ;
}



/**
 * \brief Initialize an error counter
 *
 * \param pBit-> Error counter struct to initialize
 * \param MaxCount : Maximum counter count
 * \param ErrorThold : Counter value that brings error condition
 * \param UpStep : Counter stepping when error occurs
 * \param DnStep : Counter stepping when error occurs
 */
void InitCbitCounter( struct CBitCountStr * pBit , short unsigned MaxCount , short unsigned ErrorThold ,  short unsigned UpStep , short unsigned DnStep )
{
    pBit->ErrorCond = 0 ;
    pBit->ErrorCount = 0 ;
    pBit->ErrorThold = ErrorThold ;
    pBit->MaxCount = MaxCount ;
    pBit->DnStep = DnStep ;
    pBit->UpStep = UpStep ;
}


void InitCbitIntegrator( struct CBitIntegrateStr * pBit ,float MaxIntegral , float ErrorThold , float bw , float GainUp , float GainDn , struct CSysTimerStr * pTimer)
{
    ResetCbitIntegrator(pBit,pTimer);
    pBit->ErrorThold = ErrorThold ;
    pBit->MaxState = MaxIntegral ;
    pBit->GainUp = GainUp ;
    pBit->GainDn  = GainDn ;
    pBit->bw = bw ;
    pBit->maxtime = 0.9f / __fmax(bw,0.0001f );
}

extern  struct CSysTimerStr PDSysTimerStr ;

void ResetCbitIntegrator(struct CBitIntegrateStr * pBit , struct CSysTimerStr * pTimer)
{
    short unsigned mask ;
    mask = BlockInts() ;
    pBit->State  =0 ;
    pBit->ErrorCond = 0 ;
    pBit->LastTime = pTimer->SysTimer ;
    RestoreInts( mask) ;
}

/**
 * \brief Update an error counter
 *
 * \param error : Non zero if error condition occurred , 0 if OK
 * \param pBit-> Error counter struct to update
 */
short CbitCounterUpdate ( short error , struct CBitCountStr * pBit  )
{
    if ( error )
    {
        pBit->ErrorCount += pBit->UpStep ;
        if ( pBit->ErrorCount > pBit->MaxCount)
        {
            pBit->ErrorCount = pBit->MaxCount;
        }
    }
    else
    {
        if ( pBit->ErrorCount <= pBit->DnStep )
        {
            pBit->ErrorCount = 0 ;
        }
        else
        {
            pBit->ErrorCount -= pBit->DnStep ;
        }
    }
    if ( pBit->ErrorCount >= pBit->ErrorThold )
    {
        pBit->ErrorCond = 1 ;
    }
    else
    {
        pBit->ErrorCond = 0 ;
    }
    return pBit->ErrorCond ;

}



/**
 * \brief Update an error integrator
 *
 * \param error : Non zero if error condition occurred , 0 if OK
 * \param pBit-> Error integrator struct to update
 */
short CbitIntegratorUpdate ( float Abserror , struct CBitIntegrateStr * pBit , struct CSysTimerStr * pTimer)
{
    long long tt ;
    float dt , a , g ;
    short unsigned mask ;
    Abserror = fabsf( Abserror ) ;
    mask = BlockInts() ;
    tt = pTimer->SysTimer ;
    RestoreInts( mask) ;

    dt = __fmax( __fmin ( (tt-pBit->LastTime ) * 1e-6f , pBit->maxtime ) , 0 ) ;
    pBit->LastTime = tt ;
    a = pBit->bw * dt ;

    g =  ( Abserror > pBit->State ) ? pBit->GainUp : pBit->GainDn ;
    pBit->State = __fmax( __fmin ( pBit->State + g * a * ( Abserror - pBit->State)   , pBit->MaxState ) , 0 )  ;

    if ( pBit->ErrorThold )
    {
        pBit->ErrorCond =  ( pBit->State >= pBit->ErrorThold ) ? 1 : 0 ;
    }
    else
    {
        pBit->ErrorCond = 0 ;
    }
    return pBit->ErrorCond ;
}



