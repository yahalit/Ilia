#include "..\Application\StructDef2.h"
#include "TrapezeProfiler2.h"

#include "SysUtils2.h"


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
    short unsigned  mask ;
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
 * \brief Reposition the profiler of an active axis, for modular rotations
 * \param pProf-> Profiler to reset
 * \param pos:  now position
 *
 */
void ReposRotProfiler ( struct CProfiler * pProf , float pos , float maxdelta  , float deltagain )
{
    short cnt ;
    float delta ;
    short unsigned  mask ;

    delta = mod2piS ( pos - pProf->ProfilePos)  ;
    delta = __fmax( __fmin( delta, maxdelta ), -maxdelta) ;

    if ( (float) fabs(delta) < 0.001f)
    {
        return ;// Nothing to do
    }

    mask = BlockInts() ;

    pos   = pProf->ProfilePos + delta  * deltagain ;
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

void ReposProfiler ( struct CProfiler * pProf , float pos , float maxdelta  , float deltagain )
{
    short cnt ;
    float delta ;
    short unsigned  mask ;

    delta =  ( pos - pProf->ProfilePos)  ;
    delta = __fmax( __fmin( delta, maxdelta ), -maxdelta) ;

    if ( (float) fabs(delta) < 0.001f)
    {
        return ;// Nothing to do
    }

    mask = BlockInts() ;

    pos   = pProf->ProfilePos + delta  * deltagain ;
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
    short unsigned mask ;
    //if ( vmax > 3 || amax > 4 || dmax > 4 )
    //{ // Completely insane
        //return -1 ;
    //}

    vmax = __fmin( vmax , 3) ;
    amax = __fmin( amax , 4) ;
    dmax = __fmin( dmax , 4) ;

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


/*
 * \brief Pause the profiler
 */
short unsigned  PauseProfiler(struct CProfiler * pProf , float dt )
{
    float err , vold  , v , p ;
    float * fPtr ;
    pProf->UnfilteredPos  = pProf->ProfilePosBuf[pProf->BufCnt] ;
    err = pProf->PosTarget - pProf->UnfilteredPos ;

    pProf->PosDiff = err ;
    v = pProf->ProfileSpeedBuf[pProf->BufCnt] ;
    p = pProf->ProfilePosBuf[pProf->BufCnt] ;
    vold = v ;
    if ( v > 0 )
    {
        v = __fmax( v - dt * pProf->dec , 0 ) ;
    }
    else
    {
        v = __fmin( v + dt * pProf->dec , 0 ) ;
    }

    pProf->BufCnt = ( pProf->BufCnt + 1) & 7 ;
    pProf->ProfilePosBuf[pProf->BufCnt] = p + ( ( v + vold) * 0.5f * dt)  ;
    pProf->ProfileSpeedBuf[pProf->BufCnt] = v ;

    // Output by jerk limiting filter
    fPtr = pProf->ProfilePosBuf ;
    pProf->ProfilePos = 0.125f * ( fPtr[0] + fPtr[1] + fPtr[2] + fPtr[3] + fPtr[4] + fPtr[5] + fPtr[6] + fPtr[7] ) ;
    fPtr = pProf->ProfileSpeedBuf ;
    pProf->ProfileSpeed = 0.125f * ( fPtr[0] + fPtr[1] + fPtr[2] + fPtr[3] + fPtr[4] + fPtr[5] + fPtr[6] + fPtr[7] ) ;

    return 0 ;
}




/*
 * \brief Advance the profiler
 */
short unsigned  AdvanceProfiler(struct CProfiler * pProf , float dt )
{
    float err , vold  , dir , vm , v , p , vk , a , d , b ,c , s2 , delta , sol ;
    float * fPtr ;
    short unsigned done ;
    pProf->UnfilteredPos  = pProf->ProfilePosBuf[pProf->BufCnt] ;
    err = pProf->PosTarget - pProf->UnfilteredPos ;

    pProf->PosDiff = err ;
    v = pProf->ProfileSpeedBuf[pProf->BufCnt] ;
    p = pProf->ProfilePosBuf[pProf->BufCnt] ;
    vold = v ;

    if ( err >= 0 )
    {
        dir = 1 ;
    }
    else
    {
        v   = -v;
        err = -err ;
        dir = -1;
    }

    // Find the done condition
    if ( ( fabs(v) < 1.6f * pProf->dec * dt)  && (err < 5 * pProf->dec * dt * dt  ) )
    {
        done = 1 ;
    }
    else
    {
        done = 0 ;


       d = pProf->dec * 0.93f ;
       vm = Ysqrt(2.0f * d * err ) ;
        if ( v < 0 || v < vm  )
        {
            s2  = 1.414213562373095f ;
            //tau = 0.05f ;
            b = (s2*d*dt-2*s2*d*pProf->tau);
            c = 2*d*dt*v-4*d*err ;
            delta = b * b - 4 * c ;
            if ( delta < 0 )
            {
                a = (2*d*err+v*v-2*dt*d*v)/(dt*dt*d) ;
            }
            else
            {
                sol = (-b+Ysqrt(delta))* 0.5f ;
                a =  0.5f*(s2*sol-2*v)/dt ;
                if ( a < -pProf->dec )
                {
                    a = -pProf->dec ;
                }
            }
            if ( a > pProf->accel)
            {
                a = pProf->accel ;
            }


            v = v + dt * a ;

            if ( v > pProf->vmax )
            {
                v = pProf->vmax ;
            }
        }
        else
        {
            vk  = v ;
            v   = v - dt * pProf->dec ;
            err = err - 0.5f *( v + vk ) * dt ;

            if ( ( fabs(v) < 1.1f * pProf->dec * dt)  && ( fabs(err) < 1.7f * pProf->dec * dt * dt  ) )
            {
                done = 1 ;
            }
        }
    }

    pProf->BufCnt = ( pProf->BufCnt + 1) & 7 ;
    if ( done )
    {
        pProf->ProfilePosBuf[pProf->BufCnt]   = pProf->PosTarget ;
        pProf->ProfileSpeedBuf[pProf->BufCnt] = 0 ;
        fPtr = pProf->ProfileSpeedBuf ;
        if ( fPtr[0] || fPtr[1] || fPtr[2] || fPtr[3] || fPtr[4] || fPtr[5] || fPtr[6] || fPtr[7] )
        { // Done only if FIR converged
            done = 0 ;
        }
    }
    else
    {
        v = v * dir ;
        pProf->ProfilePosBuf[pProf->BufCnt] = p + ( ( v + vold) * 0.5f * dt)  ;
        pProf->ProfileSpeedBuf[pProf->BufCnt] = v ;
    }

    // Output by jerk limiting filter
    fPtr = pProf->ProfilePosBuf ;
    pProf->ProfilePos = 0.125f * ( fPtr[0] + fPtr[1] + fPtr[2] + fPtr[3] + fPtr[4] + fPtr[5] + fPtr[6] + fPtr[7] ) ;
    fPtr = pProf->ProfileSpeedBuf ;
    pProf->ProfileSpeed = 0.125f * ( fPtr[0] + fPtr[1] + fPtr[2] + fPtr[3] + fPtr[4] + fPtr[5] + fPtr[6] + fPtr[7] ) ;

    pProf->Done = done  ;
    return done ;
}
