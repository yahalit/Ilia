#include "TrapezeProfiler.h"
#include "SysUtils.h"


#ifdef _LPSIM
#include <math.h> 
#endif

/*
 * \brief Reset the profiler of an inactive axis
 * \param pProf-> Profiler to reset
 * \param pos:  Initial position
 * \param v  :  Initial speed
 *
 * \param reset: if 0 , pos just sets the position target and v is ignored.
 *               if 1 , pos and v fully initializes the state
 */
void ResetProfiler ( struct CProfiler * pProf , float pos , float v , short unsigned reset )
{
    long mask ;
    short cnt ;
    mask = BlockInts();
    if ( pos > pProf->PosMax )
    {
        pos = pProf->PosMax ;
    }
    if ( pos < pProf->PosMin )
    {
        pos = pProf->PosMin ;
    }

    pProf->PosTarget = pos ;
    if ( reset )
    {
        pProf->ProfilePos = pos ;
        pProf->ProfileSpeed = v ;
        pProf->BufCnt = 0 ;
        for ( cnt = 0 ; cnt < 8 ; cnt++ )
        {
            pProf->ProfilePosBuf[cnt] = pos ;
            pProf->ProfileSpeedBuf[cnt] = v ;
        }
        pProf->UnfilteredPos = pos ;
        pProf->Done = 1 ;
    }
    else
    {
        pProf->Done = 0 ;
    }
    RestoreInts(mask) ;
}


/*
 * \brief Reposition the profiler of an active axis
 * \param pProf-> Profiler to reset
 * \param pos:  now position
 *
 */
void ReposProfiler ( struct CProfiler * pProf , float pos  )
{
    short cnt ;
    float delta ;
    long mask ;

    delta = pos - pProf->ProfilePos ;
    if ( (float) fabs(delta) < 0.001f)
    {
        return ;// Nothing to do
    }

    mask = BlockInts() ;
    if ( ( ( pProf->ProfilePos - pProf->PosTarget) * ( pos - pProf->PosTarget)  < 0 ) ||
            ( (float) fabs( pos - pProf->PosTarget) < 1e-3 ) )
    { // If go past target - profile is done
        ResetProfiler (pProf , pProf->PosTarget , 0 , 1 );
    }
    else
    {
        pProf->ProfilePos = pos ;
        for ( cnt = 0 ; cnt < 8 ; cnt++ )
        {
            pProf->ProfilePosBuf[cnt] += delta ;
        }
    }
    RestoreInts( mask) ;
}




/*
 * \brief Program a profiler to its limitations
 */
short ProgramProfiler(  struct CProfiler * pProf , float vmax , float amax , float dmax , float tau , short unsigned mode )
{
    long mask ;
    if ( vmax > 3 || amax > 4 || dmax > 4 )
    { // Completely insane
        return -1 ;
    }
    mask = BlockInts() ;
    if ( vmax > 0 )
    {
        pProf->vmax = vmax ;
    }

    if ( amax > 0 )
    {
        pProf->accel = amax ;
    }
    if ( dmax > 0 )
    {
        pProf->dec = dmax ;
    }

    if ( tau >= 0 )
    {
        pProf->tau = tau ;
    }
    pProf->ProfilerMode = mode ;
    RestoreInts( mask) ;
    return 0;
}



