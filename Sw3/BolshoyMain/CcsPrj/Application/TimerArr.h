/*
 * TimerArr.h
 *
 *  Created on: Dec 20, 2016
 *      Author: Yahali Theodor
 */

#ifndef APPLICATION_TIMER_H_
#define APPLICATION_TIMER_H_

// Total allocated timers
#define NSYS_TIMER_CMP_ARRAY 64


struct CSysTimerStr
{
    long long unsigned SysTimer ;
    long long unsigned SysTimerCmpArray[NSYS_TIMER_CMP_ARRAY] ;
};


/**
 * \struct for CBIT error counting
 */
struct CBitCountStr
{
    short unsigned ErrorCond ; // !< 1 if error condition
    short unsigned ErrorThold ; // !< Counter value that brings error condition
    short unsigned ErrorCount ; // !< The error counter
    short unsigned MaxCount ; // !< Maximum counter count
    short unsigned UpStep ; // !< Counter stepping when error occurs
    short unsigned DnStep ; // !< Counter stepping when error occurs
} ;

/**
 * \struct for CBIT continuous error integration
 */
struct CBitIntegrateStr
{
    float State ;
    float GainUp ; // Relative BW for up direction
    float GainDn ; // Relative BW for down direction
    float bw ;     // Basic BW z = 1 - bw*T
    float maxtime ; // Maximum time for consecutive handler calls
    float MaxState ;
    float ErrorThold ;
    long long LastTime ;
    short ErrorCond ;
    short Algn ;
};

// Get the IPC system timer (SYSCLK rate)
void GetIpcTimer( unsigned long long *p);

// Get the timer at full 64 bit
long long unsigned GetLongTimer ( struct CSysTimerStr *pT );

// Initialize the system timer module
void InitSystemTimer( struct CSysTimerStr *pT);

// Update the time of the system timer, using the hardware clock
void UpdateSysTimer (struct CSysTimerStr *pT);

// Set a comparison target, at comparator of index tInd, WaitUsec microseconds ahead
void SetSysTimerTarget ( short unsigned tInd , long unsigned WaitUsec  ,struct CSysTimerStr *pT);

// Set a comparison target, at comparator of index tInd, sec seconds ahead
void SetSysTimerTargetSec ( short unsigned tInd , float sec ,  struct CSysTimerStr *pT  );

// Increment a comparison target, at comparator of index tInd, sec seconds
void IncrementSysTimerTargetSec ( short unsigned tInd , float sec , struct CSysTimerStr *pT  );

// Set minimum comparator target on a given timer
void SetAtLeastSysTimerTargetSec(short unsigned tInd, float sec, struct CSysTimerStr *pT);


// Limit the comparison target, at comparator of index tInd, to sec seconds ahead
void LimitSysTimerTargetSec(short unsigned tInd, float sec, struct CSysTimerStr *pT);

// Detect if the comparison time for comparator of index tInd arrived already
short unsigned IsSysTimerElapse( short unsigned tInd ,  struct CSysTimerStr *pT  );

// Wait timer to elapse
short WaitTimerElapse(short unsigned tInd , long unsigned MaxWait ,  struct CSysTimerStr *pT ) ;

// Wait for a given amount of microseconds
void WaitStam( long unsigned WaitUsec ,  struct CSysTimerStr *pT);

// Wait least 32 bits of timer now()
long unsigned GetShortTimer (  struct CSysTimerStr *pT );

// Get time until elapse
long unsigned GetRemainTime( short unsigned tInd ,  struct CSysTimerStr *pT  );

// Initialize a CBIT error counter
void InitCbitCounter( struct CBitCountStr * pBit , short unsigned MaxCount , short unsigned ErrorThold ,  short unsigned UpStep , short unsigned DnStep );

// Reset a CBIT error counter
void ResetCbitCounter( struct CBitCountStr * pBit );

// Update a CBIT error counter
short CbitCounterUpdate ( short error , struct CBitCountStr * pBit  );

// Reset and initialize CBIT integrator
void InitCbitIntegrator( struct CBitIntegrateStr * pBit ,float MaxIntegral , float ErrorThold , float bw , float GainUp , float GainDn , struct CSysTimerStr * pTimer);
void ResetCbitIntegrator(struct CBitIntegrateStr * pBit , struct CSysTimerStr * pTimer);

//Update an error integrator
short CbitIntegratorUpdate ( float Abserror , struct CBitIntegrateStr * pBit , struct CSysTimerStr * pTimer );


#endif /* APPLICATION_TIMER_H_ */
