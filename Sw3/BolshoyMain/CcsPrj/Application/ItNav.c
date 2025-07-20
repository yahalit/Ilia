//#include "stdafx.h"
// C:\Yahali\Nav\ItNav.c
#define IT_NAV_OWNER

#include "StructDef.h"
#include "ItNav.h"
#include "Gyro.h"

#ifdef _LPSIM
#include <math.h>
#else
float fabsf(float x) ;
#ifndef NULL
#define NULL 0
#endif
#endif







/*************************************************************************************
Routines in this file:

InitSegQueue :  Initialize a motion segments queue
QueueBuildExceptionHandler : Exception handler for motion queue administration problems
InitNextSeg : Initialize the next segment in a queue
UpdatepQinitCond : Initialize the initial conditions data in the segments queue
ProcSeg : From the segment description by the user, build a true sequence of straights and arcs
RegulateSpeedBackwards : Having an end constrain, limit all the previous queue entries so that the end speed would not violate
ProcQueueTimes: Time a queue of geometries (straight lines and arcs)

*************************************************************************************/



/*
\brief Get the derivative of the action radius in a standard Clothoid

float GetClothDr(float x)
{
    short n;
    float fr , d0 , d1 , x1 ;
    IsInRange(&x, 7.999f, 0.00001f);
    n = (short) x;
    fr = x - n;

    x1 = ClothDr[n+1]- ClothDr[n];
    d0 = ClothDDr[n];
    d1 = ClothDDr[n+1];

    fr = x - n;

    return   (((d0 - 2 * x1 + d1) * fr - 2 * d0 + 3 * x1 - d1) *fr + d0) * fr + ClothDr[n];
}
*/
/*
\brief Get the ratio dr/dtheta given curvature and its rate
\param c    : Curvature
\param cdot : Curvature rate

float GetDrDtheta(float cin, float cdot_in)
{
    float alpha , dr , cdot ;
    cdot = (float) fabs(cdot_in);
    IsInRange(&cdot, 8.0f, 0.00001f);
    float c = (float) fabs(cin);
    if (c < 0.00001)
    {
        return 0;
    }
    alpha = sqrtf(cdot / 2);
    dr = GetClothDr(alpha * c / cdot );
    return (cin * cdot_in > 0) ? dr : -dr;
}
*/


unsigned short IsNear( float x , float y)
{
    float r0 = fabsf(x - y) ;
    float r1 = __fmax ( fabsf(x), fabsf(y) ) ;
    if ( 16384.0f * r0  <= r1  || r1 < 1e-6f )
    {
        return 1 ;
    }
    return 0 ;
}


float HYpot( float x, float y)
{
    return sqrtf( x * x + y * y ) ;
}

float aYcos( float x)
{
    return atan2f ( sqrtf( __fmax( 1 - x * x, 0.0f) ),x);
}

float aYsin( float x)
{
    return atan2f ( x , sqrtf( __fmax( 1 - x * x, 0.0f) ));
}




#define TEYLOR_TERMS_NUM (7)
#define AUX_TERMS_NUM (9)
#define TEYLOR_THR (1.6)

/*
 * \brief Colothoid function , adapted from mex file by Peter L. Volegov (volegov@unm.edu)
 * Algorithm:
 This function uses an improved method for computing Fresnel integrals
 with an error of less then 1x10-6, described in:

 Klaus D. Mielenz, Computation of Fresnel Integrals. II
 J. Res. Natl. Inst. Stand. Technol. 105, 589 (2000), pp 589-590
 *
 */
void FresnelSC ( float x , float *Fs , float *Fc )
{
    float xa, xn, yc, ys, f, g, sx, cx;
    short j ;

      if(x<0.0)
          xa = -x;
      else
          xa = x;


      if(xa < TEYLOR_THR)
      {
          /* Use Teylor approximation */
          xn = xa*xa;
          xn = xn*xn;
          yc = FresnelCn[TEYLOR_TERMS_NUM-1];
          ys = FresnelSn[TEYLOR_TERMS_NUM-1];
          for(j = TEYLOR_TERMS_NUM-2; j >= 0; j--)
          {
              yc = FresnelCn[j]+xn*yc;
              ys = FresnelSn[j]+xn*ys;
          }
          yc = xa*yc;
          ys = xa*xa*xa*ys;

      }
      else
      {

          /* Use auxiliary function approximation */
          xn = xa*xa;
          xn = 1.0f /xn;
          f = Fresnelfn[AUX_TERMS_NUM-1];
          g = Fresnelgn[AUX_TERMS_NUM-1];
          for(j = AUX_TERMS_NUM-2; j >= 0; j--)
          {
              f = Fresnelfn[j]+xn*f;
              g = Fresnelgn[j]+xn*g;
          }
          f = f/xa;
          g = g/xa;

          xn = pi /2*xa*xa;
          cx = Ycos(xn);
          sx = Ysin(xn);

          yc = 0.5f + f*sx - g*cx;
          ys = 0.5f - f*cx - g*sx;
      }

      /* Copy to output variables */
      if(x < 0.0)
      {
          *Fc = -yc;
          *Fs = -ys;
      }
      else
      {
          *Fc = yc;
          *Fs = ys;
      }
}




/**
 * \brief Calculate clothoid parameters for a curve
 * \param thtTot : Angle to cover
 * \param d0     : Distance between arc ends
 * \param pCl-> Parameters of computed clothoid
 *
 * \return: 0 ok, -1 fuck
 *
 */
short  CalcClothoidTurn( float thtTot , float d0 , struct CClothoid *pCl )
{
    float c , Rpt , dir, thtCenter, fs ,fc , tte, ttm ;
    float cMax , thtFix, tht , c0 , x , y , a , fac, d;

    if  ( fabsf( thtTot ) < 1e-4f  || fabsf( thtTot) > 4 )
    {
        QueueProcException.SegType = SegType_Clothoid ;
        QueueProcException.Code = -1 ;
        return QueueProcException.Code ;
    }

    if ( thtTot < 0 )
    {
        thtTot = -thtTot ;
        dir = -1 ;
    }
    else
    {
        dir = 1 ;
    }

    cMax = Constraint.MaxCurvature   ;

    Rpt = 0.5f * d0 / Ysin(thtTot * 0.5f )  ;

    thtFix  = thtTot * 0.75f ;
    if ( thtTot - thtFix > 0.5f )
    {
        thtFix = thtTot - 0.5f ;
    }
    c =  thtTot / thtFix / Rpt ;

    if ( c > cMax )
    {
        thtFix  =  fabsf(thtTot) * 0.75f * c / cMax ;
        if ( thtFix > thtTot )
        {
            QueueProcException.SegType = SegType_Clothoid ;
            QueueProcException.Code = -2 ;
            return QueueProcException.Code ;
        }
    }

    thtCenter = thtFix  ;
    tht = ( thtTot-thtCenter)/2;
    c0 = c*c / ( 2 * tht ) ;

    FresnelSC( sqrtf(tht) , &fs , &fc );

    y = sqrtf( 2 / c0 ) * fs ;
    x = sqrtf( 2 / c0 ) * fc  ;

    pCl->radarc = 1/c ;
    a = tht + pi / 2 ;
    pCl->centerx = x + Ycos(a) * pCl->radarc ;
    pCl->centery = y + Ysin(a) * pCl->radarc ;

    // Distance between two end points
    ttm = pi + a + thtCenter/2 ;
    d = 2 * fabsf( Ycos(ttm) * pCl->centery - Ysin(ttm) * pCl->centerx  ) ;

    // Scale by d/d0
    // Here, even if cMax is violated, this is minor, ignore.
    fac = d0 / d ;
    x = x * fac  ;
    y = y * fac * dir;
    c = c / fac ;
    c0 = c*c / ( 2 * tht ) ;
    pCl->radarc *= fac ;
    pCl->centerx = pCl->centerx * fac ;
    pCl->centery = pCl->centery * fac * dir   ;

    // Find end of arc
    tte = pi + a + thtCenter ;
    pCl->arcendx = pCl->centerx + Ycos(tte) * pCl->radarc ;
    pCl->arcendy = pCl->centery + Ysin(tte) * pCl->radarc * dir ;

    // Finalize output to struct
    pCl->c0 = c0 * dir ;
    pCl->Curvature = c * dir ;
    pCl->x = x ;
    pCl->y = y ;
    pCl->L = c / c0 ;
    pCl->ClothAngle = tht * dir ;
    pCl->ArcAngle = thtCenter * dir ;

    return 0 ;
}


/*
 * Solve the problem a * cos x + b * sin x = c
 * x will provide one solution ; also pi-x solves as well
 */
short SolveLTrig(float a , float b , float c , float *theta )
{
    float r , alpha;
    r       = __sqrt(a*a+b*b) ;
    alpha   = atan2f( a , b ) ;

    if ( r <= fabsf(c) * 0.999999f)
    {
        *theta = 1.570796326794897f - alpha ;
        if ( r > 0 && r >= fabsf(c) )
        {
            return 0 ;
        }
        else
        {
            return -1 ;
        }
    }
    *theta = aYsin( c / r ) - alpha ;
    return 0 ;
}

/*
 * Solve the arm opening angle for a given shelf distance of M
 * L : Nominal shoulder distance
 * r : Leg length
 */
short SolveArmOpen( float L , float M , float r , float * theta )
{
    float a , b , c ;
    short stat ;
    c = M * M - L * L - 2 * r * r ;
    a = -2 * r ;
    b = 2 * r * L ;
    stat = SolveLTrig( a ,  b ,  c , theta );
    return stat ;
}




/**
* \brief Queue build exception handler
*/
short unsigned QueueBuildExceptionHandler(struct CSegQueue *pQ , short unsigned ErrCode)
{
    struct CQueueBuildExp *pExp ;
    pExp = pQ->pExp ;
    if ( ErrCode == 0 ) return 0;
    if ( pExp->InError == 0 )
    {
        pExp->InError = 1 ;
        pExp->nPutFirst = pQ->nPut ;
        pExp->ErrCodeFirst = ErrCode ;
    }
    pExp->nPut = pQ->nPut ;
    pExp->ErrCode = ErrCode ;
    return ErrCode ;
}


/**
* \brief Queue runtime exception handler
*/
short unsigned QueueRunExceptionHandler( struct CSegRun * pRun , short unsigned ErrCode)
{
    struct CQueueBuildExp *pExp ;

    if ( ErrCode == 0 ) return 0;

    pExp = pRun->pExp ;
    if ( pExp->InError == 0 )
    {
        pExp->InError = 1 ;
        pExp->nPutFirst = pRun->SegIndex ;
        pExp->ErrCodeFirst = ErrCode ;
    }
    pExp->nPut = pRun->SegIndex ;
    pExp->ErrCode = ErrCode ;
    return ErrCode ;
}


/**
* \brief Initialize a motion segments queue
*
* \param pQ -> The queue to initialize
*/
void InitSegQueue(  struct CSegQueue *pQ , struct CConstraint *pCons, struct CQueueBuildExp *pExp , struct CMotionItem *pItem )
{
    short cnt ;
    ClearMemRpt ( (short unsigned *) pQ , sizeof ( struct CSegQueue) ) ;
    ClearMemRpt ( (short unsigned *) pExp , sizeof ( struct CQueueBuildExp) ) ;
    pQ->NumElements = N_MOTION_SEG_IN_SQ ;
    pQ->pCons = pCons ;
    pQ->pGeom = &Geom ;
    pQ->pExp = pExp ;
    pExp->InError = 0 ; // Start fresh tomato

    for ( cnt = 0 ; cnt < N_MOTION_SEG_IN_SQ ; cnt++ )
    {
        pQ->seg[cnt].OwnIndex = cnt ;
        pQ->seg[cnt].NextIndex = 0xffff ;
        pQ->seg[cnt].PrevIndex = 0xffff ;
    }
    // pItem was SysState.Mot.LastPositionItem.
    pQ->seg[0].x1 = pItem->x * POS_UNIT_2_M  ;
    pQ->seg[0].y1 = pItem->y * POS_UNIT_2_M  ;
    pQ->seg[0].tht1 = atan2f( pItem->cy ,  pItem->cx ) ;
    pQ->cx1 = pItem->cx ;
    pQ->cy1 = pItem->cy ;
    pQ->x1 = pQ->seg[0].x1 ;
    pQ->y1 = pQ->seg[0].y1 ;
}

/**
* \brief Initialize the next segment in a queue
* \param   pQ : The queue to open new segment in
* \return  -> New segment, or NULL on failure
*/
struct CMotSegment * InitNextSeg(  struct CSegQueue *pQ , short unsigned PrevSegment)
{
    struct CMotSegment *pSeg ;
    struct CMotSegment *pPrev ;
    short unsigned next ;
    if ( pQ->nPut + 1 >=  N_MOTION_SEG_IN_SQ ) // Test place in queue
    {
        QueueBuildExceptionHandler(pQ , QERR_QUEUE_IS_FULL );
        return (struct CMotSegment *) NULL ;
    }
    pSeg = & pQ->seg[pQ->nPut] ; // Next segment
    // ClearMemRpt ( pSeg , sizeof( struct CMotSegment) ) ; // And clear it , not needed , Queue should be initialized to zero before the start

    pSeg->PrevIndex = 0xffff ; // Default , first segment in history
    if ( (PrevSegment & 0x8000) == 0 )
    { // If there was a previous segment, mark the inter-relations
        pPrev = & pQ->seg[PrevSegment];
        next = pPrev->NextIndex ;
        pPrev->NextIndex =  pQ->nPut ;
        pSeg->PrevIndex = PrevSegment ;
        pSeg->NextIndex = next ;
        if ( next < pQ->nPut )
        {
            pQ->seg[next].PrevIndex = pQ->nPut;
        }

        // Property inheritance
        pSeg->tht1 = pPrev->tht2 ;
        pSeg->x1 = pPrev->x2 ;
        pSeg->y1 = pPrev->y2 ;
        pSeg->xc = pPrev->xc ;
        pSeg->yc = pPrev->yc ;
        pSeg->radius_or_c0 = pPrev->radius_or_c0 ;
    }
    else
    {  // Fully new segment
        pSeg->NextIndex = 0xffff  ;
        pSeg->PrevIndex = pQ->nPut-1 ;
        pSeg->x1 = pQ->x1 ;
        pSeg->y1 = pQ->y1 ;
        pSeg->tht1 = atan2f( pQ->cy1,pQ->cx1);
        if ( pQ->nPut >= 1 )
        {
            pPrev = & pQ->seg[pQ->nPut-1];
            pPrev->NextIndex =  pQ->nPut ;
        }
    }


    pQ->nPut += 1 ; // Increase place for next motion
    return pSeg ;
}


/*
\brief Initialize the initial conditions data in the segments queue

* \return 0 on success or an error code
*/
short unsigned UpdatepQinitCond( struct CSegQueue *pQ)
{
    struct CMotSegment *pSegOld ;
    if ( pQ->nPut ==  0 ) // Cant get any lower
    {
        return QueueBuildExceptionHandler(pQ , QERR_QUEUE_IS_FULL );
    }
    pSegOld = & pQ->seg[pQ->nPut-1] ;

    pQ->cx1  = Ycos(pSegOld->tht2);
    pQ->cy1 = Ysin(pSegOld->tht2);
    pQ->x1 = pSegOld->x2 ;
    pQ->y1 = pSegOld->y2 ;
    return 0 ;
}


 /**
* \brief Push a straight line segment into place
* \param x2 , y2 : exit point
* \param pQ  : Queue to put result into
* \param PrevSeg: If this segments extends a previous segment, set its index. Otherwise, 0xffff means to just add at the end of queue
*/
short unsigned PushStraight( float x2 , float y2 , struct CSegQueue *pQ, short unsigned PrevSeg  )
{
    struct CMotSegment *pSeg ;

    pSeg = InitNextSeg (  pQ, PrevSeg) ; // Get a new initialized segment
    if ( pSeg == NULL ) return pQ->pExp->ErrCode ;

    pSeg->tht2 = atan2f( y2 - pSeg->y1 , x2 - pSeg->x1) ;
    pSeg->x2 = x2 ;
    pSeg->y2 = y2 ;
    pSeg->Type = 1 ;
    pSeg->s = HYpot( y2-pSeg->y1 ,x2-pSeg->x1 )  ;

    UpdatepQinitCond(pQ) ;
    return 0 ;
}


short unsigned PushDiffdrive(float tht2, struct CSegQueue * pQ, short unsigned PrevSeg)
{
    short unsigned PrevSegIn;
    float  x1, y1 , tht1 ;
    struct CMotSegment *pSeg;
    if (pQ->nPut == 0)
    {
        PrevSegIn = PrevSeg;
    }
    else
    {
        PrevSegIn = pQ->nPut - 1;
    }
    pSeg = InitNextSeg(pQ, PrevSegIn); // Get a new initialized segment
    if (pSeg == NULL) return pQ->pExp->ErrCode;
    //cx2 = Ycos(tht2);
    //cy2 = Ysin(tht2);
    x1 = pQ->x1; y1 = pQ->y1; // Remember section start
    tht1 = atan2f(pQ->cy1, pQ->cx1);

    // Push first clothoid part. Parameters are
    pSeg->radius_or_c0 = 0 ;
    pSeg->xc = 0;
    pSeg->yc = 0;

    pSeg->tht2 = tht2;
    //c = Ycos(tht1);
    //s = Ysin(tht1);
    pSeg->x2 = x1;
    pSeg->y2 = y1;
    pSeg->s   = fabsf ( mod2piS( tht2 - tht1 ) ) ;
    pSeg->xc_turn = 0;
    pSeg->yc_turn = 0;
    pSeg->Type = SegType_Differential;

    UpdatepQinitCond(pQ);

    return 0;
}


/**
* \brief Push an arc segment into place
* \param x2 , y2 : exit point
* \param tht2: Exit angle
* \param pQ  : Queue to put result into
* \param PrevSeg: If this segments extends a precious segment, set its index. Otherwise, 0xffff means to just add at the end of queue
*/
short unsigned PushShortArc(  float x2 , float y2 , float tht2 , struct CSegQueue * pQ , short unsigned PrevSeg )
{
    struct CMotSegment *pSeg ;
    float cx2 , cy2 , chord , tht1 ,  x1 , y1 ,thetaDiff , c , s ;
    float arccenter_x , arccenter_y , delta ;
    short stat ;
    short unsigned PrevSegIn ;

    if ( pQ->nPut == 0 )
    {
        PrevSegIn = PrevSeg ;
    }
    else
    {
        PrevSegIn = pQ->nPut-1 ;
    }

    pSeg = InitNextSeg (  pQ, PrevSegIn ) ; // Get a new initialized segment

    if ( pSeg == NULL ) return pQ->pExp->ErrCode ;
    cx2 = Ycos( tht2) ;
    cy2 = Ysin( tht2) ;

//    xc = pQ->cy1  ;
//    yc = -pQ->cx1 ;
//    if ( xc * cx2 + yc * cy2 < 0 )
//    {
//        xc = -xc ; yc = -yc ;
//    }
    tht1 = atan2f(pQ->cy1 , pQ->cx1) ;

    if ( IsNear( mod2piS ( tht1 - tht2 ) , 0 ) )
    {
        return QueueBuildExceptionHandler(pQ , QERR_ARC_IS_STRAIGHT );
    }

    // Find total arc center
    x1 = pQ->x1 ; y1 = pQ->y1 ; // Remember section start
    delta = pQ->cx1 * cy2 - cx2 * pQ->cy1 ;
    arccenter_x = ( pQ->cx1*cy2*x1-cx2*pQ->cy1*x2+pQ->cy1*cy2*y1-pQ->cy1*cy2*y2 ) / delta ;
    arccenter_y = (-pQ->cx1*cx2*x1+pQ->cx1*cx2*x2+pQ->cx1*cy2*y2-cx2*pQ->cy1*y1 ) / delta ;

    chord = HYpot( x2 - x1 , y2 - y1 )  ;

    // Convert segment into clothoid are sqrt(c0/2)
    thetaDiff = mod2piS( tht2 - tht1 ) ;

    stat = CalcClothoidTurn( mod2piS(thetaDiff) , chord , &Cloth );
    if ( stat )
    {
        QueueProcException.SegIndex = pSeg->OwnIndex ;
        return  *(short unsigned *) &stat ;
    }

    // Push first clothoid part. Parameters are
    pSeg->radius_or_c0 =  Cloth.c0 ;
    pSeg->xc = 0 ; // pQ->x1 + xc * pSeg->radius ;
    pSeg->yc = 0 ; // pQ->y1 + yc * pSeg->radius ;

    pSeg->tht2 = mod2piS( tht1 + Cloth.ClothAngle  );
    c = Ycos(tht1) ;
    s = Ysin(tht1) ;
    pSeg->x2 = x1 + Cloth.x * c - Cloth.y * s  ;
    pSeg->y2 = y1 + Cloth.x * s + Cloth.y * c  ;
    pSeg->s  = Cloth.L  ;
    pSeg->xc_turn = arccenter_x ;
    pSeg->yc_turn = arccenter_y ;
    pSeg->Type = SegType_Clothoid ;

    UpdatepQinitCond(pQ) ;

    // Push arc part
    PrevSegIn = pQ->nPut-1 ;
    pSeg = InitNextSeg (  pQ, PrevSegIn ) ; // Get a new initialized segment

    if ( pSeg == NULL )
    {
        return QueueBuildExceptionHandler(pQ , QERR_QUEUE_IS_FULL );
    }

    pSeg->radius_or_c0 = Cloth.radarc ; //     chord * 0.5f / Ysin ( absangle * 0.5F ) ;
    pSeg->xc = x1 + Cloth.centerx * c - Cloth.centery * s  ;
    pSeg->yc = y1 + Cloth.centerx * s + Cloth.centery * c  ;

    //pSeg->xc = pQ->x1 + xc * pSeg->radius ;
    //pSeg->yc = pQ->y1 + yc * pSeg->radius ;
    pSeg->tht2 = tht1 + Cloth.ClothAngle + Cloth.ArcAngle ;
    pSeg->x2 = x1 + Cloth.arcendx * c - Cloth.arcendy * s  ; ;
    pSeg->y2 = y1 + Cloth.arcendx * s + Cloth.arcendy * c  ;  ;
    pSeg->s  = pSeg->radius_or_c0 * fabsf(Cloth.ArcAngle)   ;
    pSeg->xc_turn = arccenter_x ;
    pSeg->yc_turn = arccenter_y ;
    pSeg->Type = SegType_Circular ;

    //PrevSegIn = pQ->nPut-1 ;
    UpdatepQinitCond(pQ) ;

    // Exit clothoid
    pSeg = InitNextSeg (  pQ, PrevSeg) ; // Get a new initialized segment

    if ( pSeg == NULL )
    {
        return QueueBuildExceptionHandler(pQ , QERR_QUEUE_IS_FULL );
    }

    pSeg->radius_or_c0 =  -Cloth.c0 ;
    pSeg->xc = Cloth.Curvature ; // pQ->x1 + xc * pSeg->radius ;
    pSeg->yc = 0 ; // pQ->y1 + yc * pSeg->radius ;

    pSeg->tht2 = tht2 ; //  + 2 * Cloth.ClothAngle + Cloth.ArcAngle ;
    pSeg->x2 = x2 ;
    pSeg->y2 = y2 ;
    pSeg->s  = Cloth.L  ;
    pSeg->xc_turn = arccenter_x ;
    pSeg->yc_turn = arccenter_y ;
    pSeg->Type = SegType_Clothoid ;
    UpdatepQinitCond(pQ) ;

    return 0 ;
}

/**
* \brief Push a point rotation into place
* \param cx2 , cy2 : exit direction
* \param pQ  : Queue to put result into
* \param PrevSeg: If this segments extends a precious segment, set its index. Otherwise, 0xffff means to just add at the end of queue
*/
short unsigned PushRotate( float cx2 , float cy2 , struct CSegQueue *pQ , short unsigned PrevSeg )
{
    float  tht2   ;
    tht2 = atan2f( cy2,cx2);
    //tht1 = atan2f(pQ->cy1 , pQ->cx1) ;

    //dTheta = mod2piS( tht2 - tht1 ) ;
    //xlocal = Ysin( (float)fabs( dTheta)) / Geom.MaxCurvature ;
    //ylocal = Ycos( dTheta) / Geom.MaxCurvature ;
    //if (dTheta < 0 ) ylocal = -ylocal ;

    //x2 = pQ->x1 + pQ->cx1 * xlocal + pQ->cy1 * ylocal ;
    //y2 = pQ->y1 - pQ->cy1 * xlocal + pQ->cx1 * ylocal ;

    // The point turn really boils down to a minimum radius turn
    return PushDiffdrive(    tht2 ,  pQ ,   PrevSeg ) ;
}


/*
\brief Get the distance between two motion items
*/
float GetItemDistance(struct CMotionItem *pItem1, struct CMotionItem *pItem2 , float * dTheta )
{
    float dx, dy, dz;
    dx = (pItem1->x - pItem2->x) * LONG_2_M_FAC;
    dy = (pItem1->y - pItem2->y) * LONG_2_M_FAC;
    dz = (pItem1->z_or_lModeData - pItem2->z_or_lModeData) * LONG_2_M_FAC; //ok

    *dTheta = aYcos( fSat ( sqrtf(pItem1->cx * pItem2->cx + pItem1->cy * pItem2->cy + pItem1->cz_or_fModeData * pItem2->cz_or_fModeData),1.0f));
    return sqrtf( dx * dx + dy * dy + dz * dz  );
}


/**
* \brief From the segment description by the user, build a true sequence of straight segments and arcs
* Every motion segment has a start point and an end point, both points are required for generation of a segment

* \param pItem1 -> entrance boundary of segment
* \param pItem2 -> exit boundary of segment
* \param pQ -> Queue to put resulting motion segments
*/
short ProcSeg(struct CMotionItem *pItem1 , struct CMotionItem *pItem2 , struct CSegQueue *pQ)
{
    short unsigned halt, stat  ;
    float dy, dx , dyn , dxn ; // Motion increments and their normalized values
    float x1, x2 , y1 , y2 ;
    float tht1 , tht2   ;
    float c1, c2 , xintersect, yintersect ;
    float lseg ,detinv , d1 , d2 ;
    float a  ,  px , py  , n ;
    float cx1 , cy1 , cx2 , cy2 ;

    cx1 = pItem1->cx ;
    cx2 = pItem2->cx ;
    cy1 = pItem1->cy ;
    cy2 = pItem2->cy ;

    n = HYpot( cx1 , cy1 ) ;
    if ( n < 0.0001 )
    {
        return QERR_IMPOSSIBLE_ANGLE_COSINES ;
    }
    cx1 /= n ; cy1 /= n ; // (cx1, cy1) is the start direction vector of the segment (of the trajectory)

    n = HYpot( cx2 , cy2 ) ;
    if ( n < 0.0001 )
    {
        return QERR_IMPOSSIBLE_ANGLE_COSINES ;
    }
    cx2 /= n ; cy2 /= n ; // (cx2, cy2) is the end direction vector of the segment (of the trajectory)


    // Local naming, and conversion to Meters
    x1 = pItem1->x * LONG_2_M_FAC;
    x2 = pItem2->x * LONG_2_M_FAC;
    y1 = pItem1->y * LONG_2_M_FAC;
    y2 = pItem2->y * LONG_2_M_FAC;

    tht1 = atan2f( pItem1->cy , pItem1->cx ) ;  // Entry angle
    tht2 = atan2f( pItem2->cy , pItem2->cx ) ;   // Exit angle
    dy = y2 - y1;
    dx = x2 - x1 ;
    //thtc = atan2f( dy , dx ) ; // Advance angle between entry and exit

    halt = 0  ; // Assumption: No need to halt ...

    // Trivial segment - tear it up and throw it away ...
    lseg = sqrtf( dx * dx + dy * dy ) ;
    if ( lseg < 1e-3 )
    {
        // Segment is trivial - the only possibility is to rotate in place
        if ( fabsf( mod2piS ( tht1 -tht2 ) ) < 1e-3 )
        {
            return 0; // Do nothing
        }
        return PushRotate( cx2 , cy2 , pQ , 0xffff ) ; // The spin in place
    }
    dyn = dy / lseg  ; // Normalized (unity vector) distances (current to new point vector)
    dxn = dx / lseg ;

    // If no significant breaks...
    c1 = dxn * cx1 + dyn * cy1;  // cosine( entry dir - advance dir)
    c2 = dxn * cx2 + dyn * cy2;  // cosine( exit dir - advance dir)

    if ( c1 > NEAR_ZERO_COS && c2 > NEAR_ZERO_COS )
    { // Simply proceeds without noticeable direction change
        return PushStraight( x2 , y2 , pQ , 0xffff) ;
    }

    if  ( c1 < 0 )
        halt = 1;  // Test entrance not against connecting line
    if  ( c2 < 0 )
        halt = 1;  // Test exit not against connecting line
    if  ( ( dxn * cy1 - dyn * cx1 ) * ( dxn * cy2 - dyn * cx2 )  >= 0 ) //vector multiplication --> sin(angle)
        halt = 1 ; // If the entry and the exit are at the same side of the connecting line
    if ( halt )
    { // Rotate as needed at entry and exit, move in straight line
        if ( c1 < NEAR_ZERO_COS )
        {
            stat = PushRotate(dxn, dyn, pQ, 0xffff ) ;
            if ( stat )
            {
                return stat ;
            }
        }
        stat = PushStraight( x2 , y2 , pQ,  0xffff  ) ;
        if ( stat )
        {
            return stat ;
        }

        if ( c2 < NEAR_ZERO_COS )
        {
            stat = PushRotate(cx2,cy2, pQ , 0xffff ) ;
            if ( stat )
            {
                return stat ;
            }
        }
        return 0 ;
    }

    // Find intersection between entry and exit lines
    detinv = 1/(cx1*cy2-cx2*cy1);
    xintersect = ( cx1*cx2*y1-cx1*cx2*y2+cx1*cy2*x2-cx2*cy1*x1) * detinv ;
    yintersect = ( cx1*cy2*y1-cx2*cy1*y2-cy1*cy2*x1+cy1*cy2*x2) * detinv ;

    d1 = HYpot( xintersect-x1 , yintersect - y1  ) ; // Distance of each point from the interection
    d2 = HYpot( xintersect-x2 , yintersect - y2  ) ;

    if ( d1 < d2 )
    { // First point is steeper
        a = d1 ;
        px = xintersect + a * cx2 ; // Start of straight segment
        py = yintersect + a * cy2 ;
        stat =PushShortArc(  px , py , atan2f( cy2, cx2),  pQ , 0xffff ) ;
        if ( stat ) return stat ;
        if ( fabsf(d1-d2) > 1e-3 ) // Ignore <1mm segments
        {
            stat = PushStraight (x2 , y2 , pQ , 0xffff) ;
            if ( stat ) return stat ;
        }
    }
    else
    { // Second point is steeper
        if ( fabsf(d1-d2) > 1e-3f ) // Ignore <1mm segments
        {
            stat = PushStraight (x1 + (d1-d2)*cx1  , y1 + (d1-d2) * cy1 , pQ , 0xffff ) ;
            if ( stat ) return stat ;
        }
        stat =PushShortArc(  x2 , y2 , atan2f( cy2, cx2),  pQ , 0xffff ) ;
        if ( stat ) return stat ;
    }
    return 0;
}




/**
* \brief Having an end constrain, limit all the previous queue entries so that the end speed would not violate
* This function assumes that the worked-back segment queue is already regulate in the sense that nowhere within
* speeds and accelerations exceed their permitted value for the point.

* \param pQ     : The processed motion queue
* \param cnt    : The element in pQ for whose start vmax is specified (the regulated elements shall be 0 to cnt-1)
* \param vmax   : The max speed at the start of [cnt] motion element
*/
short unsigned RegulateSpeedBackwards(struct CSegQueue *pQ , short unsigned endcnt , float vmax)
{
    struct CMotSegment *pSeg ;
    struct CMotSegment *pNew ;
    short unsigned cnt   ;
    float vend , v0 , dmax ,  sh , dsh , rho   ;
    struct CMotSegment MemSeg;

    if ( endcnt < 1 ) return 0 ; // No segment to work - nothing to do
    pSeg = & pQ->seg[endcnt];

    if ( vmax >= pQ->seg[pSeg->PrevIndex].ds2 ) return 0 ; // Speed is already regulated - nothing to do
    //amax = pQ->pCons->amax ;

    cnt = endcnt ;
    v0 = vmax ;
    while ( cnt > 0 )
    {


        cnt  = pQ->seg[cnt].PrevIndex ;
        if  ( cnt > pQ->NumElements)
        {
            return QueueBuildExceptionHandler(pQ , QERR_IMPOSSIBLE_SEG_INDEX) ;
        }

        pSeg = & pQ->seg[cnt] ;

        dmax = pQ->pCons->dmax ;
        if ( pSeg->Type == SegType_Clothoid)
        {
            if ( pSeg->radius_or_c0 == 0 )
            {
                return QueueBuildExceptionHandler(pQ , QERR_ZERO_GRAD_CLOTHOID) ;
            }
            dmax = __fmin( Constraint.MaxSteerSpeedCmd / ( fabsf(pSeg->radius_or_c0) * Constraint.SOverC ) , dmax ) ;
        }

        vend = v0 ;
        v0   = sqrtf( v0 * v0 +  2 * dmax * pSeg->s)  ; // Biggest speed that could legitimately start this segment
        if ( v0 <= pSeg->ds1 )
        { // Could not complete the deceleration in this segment, this segment will be full acceleration and the problem passes to the next
            pSeg->ds1 = v0 ;
            pSeg->ds2 = vend ;
            pSeg->dds1 = -dmax ;
            continue ;
        }

        // We shall reach after this iteration the starting speed of this segment
        v0 = pSeg->ds1 ;

        // If the segment is curved, dont break it to sub segments
        // If we fall into a decelerating segment, also it does not make sense to merge any further

        if ( (pSeg->Type == SegType_Clothoid) || (pSeg->Type == SegType_Circular) || ( pSeg->dds1 < 0 )  )
        {
            if ( pSeg->s > 0 )
            {
                dmax = ( pSeg->ds1 * pSeg->ds1 - vend * vend  ) / ( 2.0f * pSeg->s )  ;
            }
            pSeg->ds2  = vend ;
            pSeg->dds1 = -dmax ;
            continue ;
        }


        // Segment can be back integrated to reach constraint. Split it and terminate

        // The segment we merge into may have its own acceleration ...
        sh = 0.5f*(2.0f*dmax*pSeg->s-pSeg->ds1*pSeg->ds1+vend*vend)/(pSeg->dds1+dmax) ;

        // Small numerical error - forget it
        if ( (sh >= pSeg->s) && (sh <= pSeg->s * 1.0001 ) )
        {
            return 0 ; // Gamarnu, nothing more to do
        }

        if ( sh <= 0 || sh >= pSeg->s )
        {
            return QueueBuildExceptionHandler(pQ , QERR_COULD_NOT_FIND_SPLITCOND) ;
        }
        dsh = sqrtf( pSeg->ds1 * pSeg->ds1 + 2 * pSeg->dds1 * sh ) ;
        MemSeg = *pSeg ;
        rho = sh/pSeg->s;

        if ( pSeg->Type == SegType_Straight)
        {
            pSeg->x2  = pSeg->x1 + rho * ( MemSeg.x2 - pSeg->x1  ) ;
            pSeg->y2  = pSeg->y1 + rho * ( MemSeg.y2 - pSeg->y1  ) ;
        }
        else
        {
            pSeg->x2  = pSeg->xc + pSeg->radius_or_c0 * Ycos( pSeg->tht2  ) ;
            pSeg->y2  = pSeg->yc + pSeg->radius_or_c0 * Ysin( pSeg->tht2  ) ;
        }
        pSeg->s = sh ;
        pSeg->ds2 = dsh ;
        pSeg->tht2 = mod2piS( pSeg->tht1 + mod2piS (pSeg->tht2 - pSeg->tht1 ) * rho ) ;

        pNew = InitNextSeg( pQ ,  pSeg->OwnIndex );
        if ( pNew == NULL )
        {
            return QueueBuildExceptionHandler(pQ , pQ->pExp->ErrCode) ;
        }

        pNew->s = MemSeg.s - sh ;
        pNew->ds1 = pSeg->ds2 ;
        pNew->ds2 = vend ;
        pNew->dds1 = -dmax ;

        pNew->tht2 = MemSeg.tht2 ;
        pNew->x2   = MemSeg.x2 ;
        pNew->y2   = MemSeg.y2 ;

        pNew->Type = pSeg->Type ;

        return 0 ;
    }
    return QueueBuildExceptionHandler(pQ , QERR_COULD_NOT_BACKREGULATE) ;
}

/*
\brief Cleanup consecutive segments that have similar types and accelerations
       and also segments of too short duration
*/
#define MIN_SEG_TIME 50e-3f
short QueueCleanup( struct CSegQueue *pQ)
{
    struct CMotSegment *pSeg ;
    struct CMotSegment *pSegNext ;
    short unsigned cnt ;
    float tdur1 , tdur2  , sp1 , sp2 , dtot;
    cnt = 0;
    while(cnt <  pQ->NumElements)
    {
        pSeg = & pQ->seg[cnt] ;
        if ( pSeg->NextIndex >= pQ->NumElements )
        {
            break ;
        }
        pSegNext = & pQ->seg[pSeg->NextIndex] ;
        if (  ( pSeg->Type == pSegNext->Type ) && ( pSeg->xc == pSegNext->xc ) && ( pSeg->yc == pSegNext->yc ) && ( pSeg->radius_or_c0 == pSegNext->radius_or_c0 )
            && ( pSeg->slope1 == pSegNext->slope1 ) && ( pSeg->slope2 == pSegNext->slope2 ))
        {
            if ( IsNear( pSeg->dds1, pSegNext->dds1  ) )
            {
                pSeg->ds2 = pSegNext->ds2 ;
                pSeg->NextIndex = pSegNext->NextIndex ;
                if ( (pSegNext->NextIndex & 0x8000) == 0 )
                { // If the next index is not the last in the queue ...
                    pQ->seg[pSegNext->NextIndex].PrevIndex = pSeg->OwnIndex ;
                }
                pSeg->tht2 = pSegNext->tht2;
                if (pSeg->Type == SegType_Differential)
                {// It is possible that a rotation of length zero remains; it will be skipped on runtime
                    pSeg->s = fabsf(mod2piS(pSeg->tht2- pSeg->tht1) );
                }
                else
                {
                    pSeg->s += pSegNext->s;
                }
                pSeg->x2  = pSegNext->x2 ;
                pSeg->y2  = pSegNext->y2 ;
                pSeg->z2  = pSegNext->z2 ;
            }
            else
            {  // Clear too short segments
                sp1 = ( pSeg->ds1 + pSeg->ds2 ) * 0.5f ;
                sp2 = ( pSegNext->ds1 + pSegNext->ds2 ) * 0.5f ;
                dtot = pSeg->s + pSegNext->s ;
                if ( (sp1 > 1e-6f) && (sp2 > 1e-6f) && ( dtot > 1e-6f ))
                { // Avoid zero divisions
                    tdur1 = pSeg->s / sp1 ;
                    tdur2 = pSeg->s / sp2 ;
                    if ( (tdur1 < MIN_SEG_TIME || tdur2 < MIN_SEG_TIME ) )
                    {
                        pSeg->ds2 = pSegNext->ds2 ;
                        pSeg->NextIndex = pSegNext->NextIndex ;

                        if ( (pSegNext->NextIndex & 0x8000) == 0 )
                        { // If the next index is not the last in the queue ...
                            pQ->seg[pSegNext->NextIndex].PrevIndex = pSeg->OwnIndex ;
                        }

                        pSeg->s =  dtot ;
                        pSeg->tht2 = pSegNext->tht2 ;
                        pSeg->x2  = pSegNext->x2 ;
                        pSeg->y2  = pSegNext->y2 ;
                        pSeg->z2  = pSegNext->z2 ;
                        pSeg->dds1 = ( pSeg->ds2 * pSeg->ds2 - pSeg->ds1 * pSeg->ds1 ) * 0.5f / dtot ;
                    }
                }
            }
        }

        cnt = pSeg->NextIndex ;
    }
    return 0 ;
}

/**
* \brief Time a queue of geometries (straight lines and arcs)
*
* \param pQ -> The motion queue to treat
* \param v0 : The initial speed of the queue
* \param vfin: The final speed of the queue
*/
short ProcQueueTimes( struct CSegQueue *pQ , float v0  , float vfin )
{
    short unsigned lastcnt;
    short unsigned cnt , ind , ForceZeroExit ;
    short unsigned stat ;
    struct CMotSegment *pSeg ;
    struct CMotSegment *pNew ;
    struct CConstraint *pCons;
    struct CRobotGeom *pGeom;
    float vmax , vm , rho , wmax ,vmax1 ;
    struct CMotSegment MemSeg;

    pCons = pQ->pCons  ;
    pGeom = pQ->pGeom  ;
    lastcnt = pQ->nPut ;
    cnt = 0 ;
    pSeg = & pQ->seg[0] ;
    vmax = 0 ;
    for ( ind = 0 ; ind < lastcnt  ; ind++ )
    {
        pSeg = & pQ->seg[cnt] ;
        ForceZeroExit = 0 ;
        switch ( pSeg->Type )
        {
        case 0: // Rotate in place
        case SegType_Differential:
            vmax = 0 ;
            break ;
        case 1:
            vmax = pCons->vmax ;
            break ;
        case 2:
            if ( pSeg->radius_or_c0 <= pGeom->Center2WheelDist )
            {
                v0 = 0 ; // Force zero start speed
                wmax = pCons->MaxSteerSpeedCmd;
                vmax = wmax * pSeg->radius_or_c0 ;
                vmax1 = pCons->vmax * pSeg->radius_or_c0/ ( pGeom->Center2WheelDist +  pSeg->radius_or_c0) ;
                if ( vmax > vmax1 )
                {
                    vmax = vmax1 ;
                }
                ForceZeroExit = 1 ; // Force terminate
            }
            else
            { // Consider radial acceleration limit
                wmax = sqrtf( pCons->aradmax / (pSeg->radius_or_c0 + pGeom->Center2WheelDist) ) ;
                if ( wmax > pCons->MaxSteerSpeedCmd )
                {
                    wmax = pCons->MaxSteerSpeedCmd;
                }
                vmax = wmax * pSeg->radius_or_c0 ;
                vmax1 = pCons->vmax * pSeg->radius_or_c0/ ( pSeg->radius_or_c0 + pGeom->Center2WheelDist ) ;
                if ( vmax > vmax1 )
                {
                    vmax = vmax1 ;
                }
            }
            break ;
        }
        if ( v0 > vmax) v0 = vmax ;
        stat = RegulateSpeedBackwards(pQ , cnt , vmax) ;
        if ( stat ) return stat ;  ;

        cnt  = pSeg->NextIndex ;

        switch ( pSeg->Type )
        {
        case 0: // Rotate in place
        case SegType_Differential:
            v0 = 0 ;
            pSeg->ds1 = v0 ;
            pSeg->ds2 = v0 ;
            pSeg->dds1 = 0 ;
            break ;
        case SegType_Straight: // Straight line
        case SegType_Circular: // Arc
        case SegType_Clothoid: // Clothoid curve entry / exit

            if ( v0 < vmax )
            {
                vm = sqrtf ( v0 * v0 + 2 * pSeg->s * pCons->amax ) ;
                if ( vm <= pCons->vmax )
                {// Entire section is acceleration
                    pSeg->ds1 = v0 ;
                    pSeg->ds2 = vm ;
                    pSeg->dds1 = pCons->amax  ;
                    v0 = vm ;
                }
                else
                {// Accelerate till max speed, then remain top speed
                    MemSeg = *pSeg;
                    pSeg->s  = ( vmax * vmax - v0 * v0  ) * 0.5f / pCons->amax ;
                    rho = pSeg->s / MemSeg.s ;

                    pSeg->ds1 = v0 ;
                    pSeg->ds2 = vmax ;
                    pSeg->dds1 = pCons->amax  ;
                    pSeg->tht2 = mod2piS ( pSeg->tht1 + mod2piS (pSeg->tht2 - pSeg->tht1 ) * rho ) ;

                    if ( pSeg->Type == SegType_Straight)
                    {
                        pSeg->x2  = pSeg->x1 + rho * ( MemSeg.x2 - pSeg->x1  ) ;
                        pSeg->y2  = pSeg->y1 + rho * ( MemSeg.y2 - pSeg->y1  ) ;
                    }
                    else
                    {
                        pSeg->x2  = pSeg->xc + pSeg->radius_or_c0 * Ycos( pSeg->tht2  ) ;
                        pSeg->y2  = pSeg->yc + pSeg->radius_or_c0 * Ysin( pSeg->tht2  ) ;
                    }

                    v0 = pCons->vmax ;

                    pNew = InitNextSeg( pQ , pSeg->OwnIndex);
                    if ( pNew == NULL )
                    {
                        return QueueBuildExceptionHandler(pQ , pQ->pExp->ErrCode ) ;
                    }


                    pNew->tht2 = MemSeg.tht2 ;
                    pNew->x2   = MemSeg.x2 ;
                    pNew->y2   = MemSeg.y2 ;

                    pNew->ds1 = v0 ;
                    pNew->ds2 = v0 ;
                    pNew->dds1 = 0 ;
                    pNew->s = MemSeg.s - pSeg->s ;
                    pNew->Type = pSeg->Type ;

                    pSeg = pNew ; // For last speed regulation
                }
            }
            else
            { // Already in the final speed, no need to accelerate
                pSeg->ds1 = v0 ;
                pSeg->ds2 = v0 ;
                pSeg->dds1 = 0 ;
            }
            if ( ForceZeroExit )
            {
                v0 = 0 ;
                break ;
            }
            break;
        default:
            return QueueBuildExceptionHandler(pQ , QERR_NO_SUCH_SEGTYPE);
        }
    }

    // Once more force termination condition

    if ( vfin > v0 )
    {
        vfin = v0 ;
    }
    pQ->seg[pQ->nPut].PrevIndex = pSeg->OwnIndex;
    stat = RegulateSpeedBackwards(pQ , pQ->nPut , vfin) ;
    return stat;
}

/**
 * \brief Get the intended travel direction of the robot
 *
 * \param TimeValid : The validity time (ignored, taken always as now())
 * \param NomDir   -> The direction in which the robot should go
 *
 * \return: 0 if ok , -1 if not running an automatic straight line

short GetNominalLineDirection( long unsigned TimeValid , float *NomDir )
{
    float c ;
    (void) TimeValid ;

    // Nominal direction exists only if navigating in automatic mode and while moving a traight line
    if (  ( SysState.Mot.mode != E_SysMotionModeAutomatic ) || ( SysState.Mot.InGroundNav == 0 ) || (SysState.Mot.RunType != 0 ) )
    {
        return -1 ;
    }

    c = Ycos ( SegRun.Slope ) ;
    NomDir[0] = c * Ycos (SegRun.Theta) ; // Get the nominal direction
    NomDir[1] = c * Ysin (SegRun.Theta) ; // Get the nominal direction
    NomDir[2] = -Ysin( SegRun.Slope ) ;

    return 0 ;
}
*/
//long tdiff( long) ;


//static short unsigned BenEl ;
/**
* \brief Go a time sequence
*
* \param pQ   -> The motion queue to treat
* \param pRun -> Trajectory run management
* \param dT   -> Time increment to go
* \param RunType -> The type of segment in action (0: rotate In place, 1: Linear, 2: Circle , -1: Error)
*
* \return 0: Normal , 1: done , Negative: Error code
*/
short unsigned GoMotionQueue( struct CSegQueue *pQ  , struct CSegRun *pRun , float dT , short  *RunType  )
{
    struct CMotSegment *pSeg , *pSegNext ;
    //struct CConstraint *pCons;
    //struct CRobotGeom *pGeom;
    float deltas , s   ,ds  , arcangle  , dx , dy , dtheta, q[4] , qdif[4], ang  ;//,acc
    long  d1  ;
    short unsigned mask; 
    struct CQueueBuildExp * pExp ;
    //static float azError ;
    short NextState ;
    short unsigned RetVal ;
    extern short RecorderStartFlag ;

    RetVal = 0 ;
    // float go , goSign , dtmax , anorm, vnorm , totalgo , dtht;

    //pCons = pQ->pCons ;
    //pGeom = pQ->pGeom ;


    // Initialize a new run if needed
    if ( pRun->Init == 1 )
    {
        pExp= pRun->pExp ;
        ClearMemRpt ((short unsigned *) pRun , sizeof(struct CSegRun ) )  ;
        pRun->pExp = pExp;
        ClearMemRpt ( (short unsigned *)pExp , sizeof(struct CQueueBuildExp ) )  ;

        pRun->Init = 0;
        pRun->Theta  = pQ->seg[0].tht1 ;
        pRun->ds = pQ->seg[0].ds1 ;
        ManRouteCmd.LineAcc = 1.3f * fMax(pQ->pCons->dmax, pQ->pCons->amax ) ;
        ManRouteCmd.CurvatureAcc = 1.5f * Constraint.MaxSteerSpeedCmd / Constraint.SOverC ;
        mask = BlockInts();
        // Vandal
        //mask = BlockInts();
        //GyroInt.GyroQuat[0] = 1 ;
        //GyroInt.GyroQuat[1] = 0 ;
        //GyroInt.GyroQuat[2] = 0 ;
        //GyroInt.GyroQuat[3] = 0 ;
        //RestoreInts(mask) ;
        // End Vandal
        CopyQuat( GyroInt.GyroQuat , ManRouteCmd.RefQuat) ;
        CopyQuat( GyroInt.GyroQuat , ManRouteCmd.MonitorQuat) ;
        RestoreInts(mask) ;
        SetSysTimerTargetSec(TIMER_GET_2_QR, ControlPars.TimeLimitForArrivalTillQrCode, &SysTimerStr);
    }

    // Exception handling
    if ( pRun->pExp->ErrCode )
    {
        ManRouteCmd.LineSpeedCmd = 0 ;
        ManRouteCmd.CurvatureCmd = 0 ;
        ManRouteCmd.dCurvatureCmd = 0 ;
        *RunType = -1 ;
        return pRun->pExp->ErrCode ;
    }

    // Observe trivial case - queue is done
    if ( pQ->nPut <= pRun->SegIndex )
    {
        ManRouteCmd.LineSpeedCmd = 0 ;
        ManRouteCmd.CurvatureCmd = 0 ;
        ManRouteCmd.dCurvatureCmd = 0 ;
        // Dont change *RunType
        return 1 ; // Queue is done
    }

    s = pRun->s ;
    pSeg = & pQ->seg[pRun->SegIndex] ; // Get current executing segment

    //lDebug[0] = ((( lDebug[0] & 15 ) + 1 ) & 15 ) +  ( ( pSeg->Type & 15 ) << 4 ) +  ( ( pRun->State & 15 ) << 8 ) +
    //        +  ( ( (long)pRun->SegIndex & 127 ) << 16 ) + ( ( (long)MQ.nGet & 31) << 22 ) + ( ( (long)MQ.nPut & 31) << 27 ) ;

    //lDebug[0] =(pRun->State & 15 ) + ( SysState.ManRouteState.TurnGoesOnGyro ? 16 : 1 ) ;

    switch ( pSeg->Type )
    {
    case 0: // Mode no more supported
        ManRouteCmd.LineSpeedCmd = 0 ;
        ManRouteCmd.CurvatureCmd = 0 ;
        ManRouteCmd.dCurvatureCmd = 0 ;
        return 0xffff ;
    case SegType_Differential:
        // Rotate wheels differentially
        // Path correction is automatically cut off in this mode
        // If on differential motion, update the monitor quaternion to present position
        mask = BlockInts() ;
        CopyQuat( GyroInt.GyroQuat , ManRouteCmd.MonitorQuat) ;
        RestoreInts(mask) ;

        if (  pRun->State != E_CornerStateInit)
        {
            d1 =  WheelEncR.Position  - SysState.ManRouteState.WheelOnStart[0];
            d1 = ( d1 >= 0 ) ? d1 : -d1 ;
            if ( d1 > SysState.ManRouteState.CountPerTurn + 2 * Geom.WheelCntRad  )
            {
                LogException(OWN_EXP_ID, EXP_ABORT, exp_bad_enc_count_on_diff_turn);
            }
            d1 =  WheelEncL.Position  - SysState.ManRouteState.WheelOnStart[1];
            d1 = ( d1 >= 0 ) ? d1 : -d1 ;
            if ( d1 > SysState.ManRouteState.CountPerTurn + 2 * Geom.WheelCntRad  )
            {
                LogException(OWN_EXP_ID, EXP_ABORT, exp_bad_enc_count_on_diff_turn);
            }
            if (GyroInt.GyroQuatListReady == 0  )
            {
                SysState.ManRouteState.TurnGoesOnGyro = 0 ;
            }
        }


        switch ( pRun->State )
        {
        case E_CornerStateInit : // Arm catch of QR code


            mask = BlockInts();
            CopyQuat( GyroInt.GyroQuat , ManRouteCmd.RefQuat) ;
            RestoreInts(mask) ;

            pRun->s = 1e-6f ; // Just something to avoid continuous resetting
            SysState.Mot.AzError = 0 ;

            dtheta = mod2piS(pSeg->tht2 - pSeg->tht1) ;

            SysState.ManRouteState.CountPerTurn = fabsf((Geom.SteerColumn2WheelDist+ Geom.Center2WheelDist ) * dtheta / Geom.rg) * Geom.WheelCntRad ;
            SysState.ManRouteState.WheelOnStart[0] = WheelEncR.Position ;
            SysState.ManRouteState.WheelOnStart[1] = WheelEncL.Position ;

            SysState.ManRouteState.TurnGoesOnGyro  = ( GyroInt.GyroQuatListReady ) ? 1 : 0 ;


            if ( fabsf( dtheta) < 0.08f  )
            {
                pRun->State = E_CornerStateCorrectJustDoIt1 ;
                break;
            }

            NextState = E_CornerStateCorrectWaitQR1 ; // Default

            // If steering not zero, go to steering correction
            if ( GetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_RSTEER]) ||  GetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_LSTEER]) )
            {
                NextState = E_CornerStateCorrectWaitSteering ;
            }
            if ( SysState.CanAxis[LOGICAL_RSTEER].PositionReached *  SysState.CanAxis[LOGICAL_LSTEER].PositionReached == 0 )
            {
                NextState = E_CornerStateCorrectWaitSteering ;
            }

            SetCanAxisPosTarget(&SysState.CanAxis[LOGICAL_RSTEER], 0) ;
            SetCanAxisPosTarget(&SysState.CanAxis[LOGICAL_LSTEER] ,0);

            ManRouteCmd.LineSpeedCmd = 0 ;
            SysState.ManRouteState.LineSpeed = 0 ;
            SysState.Mot.SmallCorrect = 0 ;

            if ( NextState == E_CornerStateCorrectWaitQR1)
            {
                SetPosReportCatchReduced (0) ; // Ambush the QR code
            }

            pRun->State = NextState ;
            break ;

        case E_CornerStateCorrectWaitSteering:
            // If steering correction is needed , do it now
            if ( SysState.CanAxis[LOGICAL_RSTEER].PositionReached  &&  SysState.CanAxis[LOGICAL_LSTEER].PositionReached  )
            {
                SetPosReportCatchReduced (0) ; // Ambush the QR code
                pRun->State = E_CornerStateCorrectWaitQR1 ;
            }
            break ;

        case E_CornerStateCorrectWaitQR1:

            // Time out wait
            if ( IsSysTimerElapse(TIMER_GET_2_QR, &SysTimerStr) )
            {
                LogException(OWN_EXP_ID, EXP_WARN, exp_too_long_wait_end_straight);
                if ( SysState.Debug.RecordOnLineDeviation)
                {
                    lDebug[7] = 1 ;
                }
            }

            // Wait QR code before actual turn start
            if ( CatchPosReport()  )
            {
                break ;
            }

            // Take gyro reference

            SysState.ManRouteState.WaitPosReport = -1; // If catch done, expect no more
            // Lateral differences from expected position. LastPositionItem is where we should be now
            dx      = pSeg->x1 - SysState.ManRouteState.NavX ;
            dy      = pSeg->y1 - SysState.ManRouteState.NavY ;
            SysState.Mot.AzError = mod2piS ( pSeg->tht1 -  SysState.ManRouteState.NavAz) ;
            SysState.Mot.DistError  = dx * Ycos(pSeg->tht1) + dy * Ysin(pSeg->tht1)  ;  ;


            // Unexpectedly large error prohibits further action
            if (fabsf(SysState.Mot.AzError) > 105.0e-3 )
            { // If angle is too big, its hopeless
                LogException( OWN_EXP_ID,EXP_ABORT,exp_bad_angle_at_qr_arrival  )  ;
                break ;
            }

            if (( float) fabsf(SysState.Mot.DistError) > 0.25f )
            {
                LogException( OWN_EXP_ID,EXP_ABORT,exp_bad_pos_at_qr_arrival  )  ;
                break ;
            }

            if ( (float) fabsf(SysState.Mot.DistError) > 0.005f )
            {// If there is a significant lateral deviation, correct it now by additional segment
                ProgramProfiler( &CrabProfiler , AutomaticRunPars.CrabSpeed ,
                              AutomaticRunPars.CrabAcceleration , AutomaticRunPars.CrabAcceleration ,
                                   0.01f , EProfile_PerAxis  ) ;
                ResetProfiler ( &CrabProfiler , 0 , 0 , 1 );
                mask = BlockInts();
                {
                    CrabProfiler.Done = 0;
                    CrabProfiler.PosTarget = SysState.Mot.DistError;
                    SysState.ManRouteState.DifferenceDrive = 2;
                    SysState.ManRouteState.Curvature = 0;
                    ManRouteCmd.CurvatureCmd = 0;
                    ManRouteCmd.dCurvatureCmd = 0;
                }
                RestoreInts(mask);
                SetSysTimerTargetSec (TIMER_GEN_TIME_ACTION , 0.3f  , &SysTimerStr);
            }
            else
            {
                ResetProfiler ( &CrabProfiler , 0 , 0 , 1 );
                KillDifferenceDrive() ;
                SetSysTimerTargetSec (TIMER_GEN_TIME_ACTION , 0.01f  , &SysTimerStr);
            }

            pRun->State = E_CornerStateCorrectWaitLateralCorrect1 ;

            break ;
        case E_CornerStateCorrectWaitLateralCorrect1: //
            if ( CrabProfiler.Done == 0 || ( IsSysTimerElapse(TIMER_GEN_TIME_ACTION, &SysTimerStr) == 0 ) )
            { // Waiting completion of profiler or timing
                break ;
            }
            KillDifferenceDrive() ;
            SysState.Mot.AzError = mod2piS( SysState.Mot.AzError + mod2piS(pSeg->tht2 - pSeg->tht1) )  ;
            pRun->State = E_CornerStateCorrectAz ;
            // Intentionally no break

        case E_CornerStateCorrectAz:


            if (fabsf(SysState.Mot.AzError) < 1e-3f)
            {  // Trivial segment - just skip it
                ResetProfiler(&CrabProfiler, 0 , 0, 1);
            }
            else
            {
                // Take gyro reference
                mask = BlockInts();
                CopyQuat( GyroInt.GyroQuat , ManRouteCmd.RefQuat) ;
                RestoreInts(mask) ;

                // Program profiler speed, acceleration , deceleration , delay and mode
                ProgramProfiler(&CrabProfiler, AutomaticRunPars.DiffModeSpeed,
                                AutomaticRunPars.DiffModeAcc, AutomaticRunPars.DiffModeAcc,
                0.01f, EProfile_PerAxis);
                // Reset profile to zero position and speed
                ResetProfiler(&CrabProfiler, 0 , 0, 1);

                // Turn angle
                CrabProfiler.PosTarget = SysState.Mot.AzError;

                //pRun->s = fabs(CrabProfiler.ProfilePos) ;
                CrabProfiler.Done = 0;
                SysState.ManRouteState.DifferenceDrive = 1; // Make difference drive from the next step on.
            }
            pRun->State = E_CornerStateWaitTurnDone ;
            break ;

        case E_CornerStateWaitTurnDone:

            DisableGyroDriftCorrection() ;

            // Manage gyro - corrected turn
            if (CrabProfiler.Done)
            { // Catch exit QR code
                if ( SysState.Mot.SmallCorrect  == 0 )
                { // No need for further catch
                    SetPosReportCatchReduced (0) ;
                }
                pRun->State = E_CornerStateWaitQrExit ;
                break;
            }

            // Go the entire turn with gyro correction of the path, until profile is done
            if ( SysState.ManRouteState.TurnGoesOnGyro )
            {
                mask = BlockInts() ;
                    CopyQuat(GyroInt.GyroQuat , q ) ;
                RestoreInts(mask) ;
                InvQuatOnQuat(  ManRouteCmd.RefQuat , q ,qdif  );

                // Quaternion angle is more or less about the local z. We assume that Z is located down, so that
                // angle direction is by the Z component of the rotation vector
                ang = 2 * aYcos( qdif[0]  ) * (qdif[3] >= 0 ? 1 : -1  ) ;

                //SysState.fDebug[0] = ang ;
                ReposRotProfiler( &CrabProfiler , ang , 0.01f , 0.3f );
            }
            break ;
        case E_CornerStateWaitQrExit:
            if ( SysState.Mot.SmallCorrect == 0 )
            { // Wait till QR is seen
                if ( CatchPosReport()  )
                {
                    break ;
                }
                dx      = pSeg->x2 - SysState.ManRouteState.NavX ;
                dy      = pSeg->y2 - SysState.ManRouteState.NavY ;
                SysState.Mot.AzError = mod2piS ( pSeg->tht2 -  SysState.ManRouteState.NavAz) ;
                SysState.Mot.DistError  = dx * Ycos(pSeg->tht2) + dy * Ysin(pSeg->tht2)  ;
            }
            else
            {
                SysState.Mot.AzError = 0 ; // Kill it to avoid further correction
                SysState.Mot.DistError = 0 ;
            }

            SysState.ManRouteState.WaitPosReport = -1; // If catch done, expect no more


            if (fabsf(SysState.Mot.AzError) > 105.0e-3 )
            { // If angle is too big, its hopeless
                LogException( OWN_EXP_ID,EXP_ABORT,exp_gyro_turn_failed  )  ;
                break ;
            }
            if ( fabsf(SysState.Mot.DistError) > 0.15f )
            {
                LogException( OWN_EXP_ID,EXP_ABORT,exp_gyro_turn_dist_misplaced_exit  )  ;
                break ;
            }

            // Program final correction  - only if this is the last segment
            if ( pSeg->NextIndex < pQ->nPut ) // Of the last segment, the next is 0xffff = 65535 > nPut
            {
                SetSysTimerTargetSec (TIMER_GEN_TIME_ACTION , 0.01f  , &SysTimerStr);
                KillDifferenceDrive() ;
                pRun->State = E_CornerStateWaitFinalLateral ;
                break ;
            }


            if (fabsf(SysState.Mot.AzError) > 9.0e-3 )
            { // If angle did not come up accurate, repeat small correction without recheck
                SysState.Mot.SmallCorrect = 1 ;
                pRun->State = E_CornerStateCorrectAz ;
                break ;
            }

            if ( pSeg->NextIndex < pQ->nPut )
            { // Route will continue, so we make also lateral correction
                if ( (float) fabsf(SysState.Mot.DistError) > 0.005f )
                {
                     ProgramProfiler( &CrabProfiler , AutomaticRunPars.CrabSpeed ,
                                   AutomaticRunPars.CrabAcceleration , AutomaticRunPars.CrabAcceleration ,
                                        0.01f , EProfile_PerAxis  ) ;
                     ResetProfiler ( &CrabProfiler , 0 , 0 , 1 );
                     mask = BlockInts();
                     {
                         CrabProfiler.Done = 0;
                         CrabProfiler.PosTarget = SysState.Mot.DistError;
                         SysState.ManRouteState.DifferenceDrive = 2;
                         SysState.ManRouteState.Curvature = 0;
                         ManRouteCmd.CurvatureCmd = 0;
                         ManRouteCmd.dCurvatureCmd = 0;
                     }
                     RestoreInts(mask);
                 }
                 else
                 {
                     KillDifferenceDrive() ;
                 }
                 SetSysTimerTargetSec (TIMER_GEN_TIME_ACTION , 0.01f  , &SysTimerStr);
                 pRun->State = E_CornerStateWaitFinalLateral ;
                 break;
            }
            else
            { // End of route
                KillDifferenceDrive() ;
                pSeg->x2 = SysState.ManRouteState.NavX ; // Set the XY actual as segment end  for later recollection
                pSeg->y2 = SysState.ManRouteState.NavY ;
                pRun->TerminateSeg = 1;
                pRun->s = pSeg->s;
            }

            break;
        case E_CornerStateWaitFinalLateral:
            if ( CrabProfiler.Done  )
            { // Lateral correction done, ready to go
                KillDifferenceDrive() ;
                pRun->TerminateSeg = 1;
                pRun->s = pSeg->s;
            }
            break ;

        case E_CornerStateCorrectJustDoIt1:
            // Small corner that may occur in the start
                SysState.Mot.AzError = mod2piS(  mod2piS(pSeg->tht2 - pSeg->tht1) )  ;
                pRun->State = E_CornerStateCorrectJustDoIt2 ;
                // Intentionally no break

        case E_CornerStateCorrectJustDoIt2:

            if (fabsf(SysState.Mot.AzError) < 1e-3f)
            {  // Trivial segment - just skip it
                CrabProfiler.Done = 1;
            }
            else
            {
                // Program profiler speed, acceleration , deceleration , delay and mode
                ProgramProfiler(&CrabProfiler, AutomaticRunPars.DiffModeSpeed,
                                AutomaticRunPars.DiffModeAcc, AutomaticRunPars.DiffModeAcc,
                0.01f, EProfile_PerAxis);
                // Reset profile to zero position and speed
                ResetProfiler(&CrabProfiler, 0 , 0, 1);

                // Turn angle
                CrabProfiler.PosTarget = SysState.Mot.AzError;

                //pRun->s = fabs(CrabProfiler.ProfilePos) ;
                CrabProfiler.Done = 0;
                SysState.ManRouteState.DifferenceDrive = 1; // Make difference drive from the next step on.
            }
            pRun->State = E_CornerStateWaitFinalLateral ;
            break ;
        }

        ManRouteCmd.TangentDir = pSeg->tht1 ; // Stam, not used anyway

        break ;



    default:
    // Go straight or curve line

        ds = pRun->ds; // Speed of previous step
        deltas = pSeg->s - pRun->s ; // Remained distance of previous step

        // Check segment termination - very close to segment end
        if ( deltas < 0.0005f * pSeg->s )
        {
            pRun->ds = pSeg->ds2 ;
            pRun->TerminateSeg = 1 ;
        }
        else
        {
            // The acceleration required at the conditions of the previous step
            //acc = ( pSeg->ds2 * pSeg->ds2 - pRun->ds1 * pRun->ds1 ) / ( 2.0f * () ) ;
            pRun->ds = sqrtf( __fmax( pSeg->ds2 * pSeg->ds2 - 2.0f * deltas * pSeg->dds1 , 0.0001f)  )  ; // ds + acc * dT  ; // The next step is now

        }


        if ( SysState.Mot.bPauseFlag )
        {
            ds = __fmax( 0 ,  ManRouteCmd.LineSpeedCmd - ControlPars.PauseDeceleration * dT ) ;
            ManRouteCmd.LineSpeedCmd = ds ;
        }
        else
        {
            ds = ( ds + pRun->ds) * 0.5f ;
            ManRouteCmd.LineSpeedCmd = ds ;
        }
        pRun->s += ds * dT ; // The next position

        switch ( pSeg->Type)
        { // Straight
        case SegType_Straight:
            // Test total rotation since start of motion
            mask = BlockInts() ;
                CopyQuat(GyroInt.GyroQuat , q ) ;
            RestoreInts(mask) ;
            InvQuatOnQuat(  ManRouteCmd.MonitorQuat , q ,qdif  );

            // Quaternion angle is more or less about the local z. We assume that Z is located down, so that
            // angle direction is by the Z component of the rotation vector
            ang = 2 * aYcos( qdif[0]  ) * (qdif[3] >= 0 ? 1 : -1  ) ;

            if ( fabsf(ang) > ControlPars.AngularMotionLimitForStraightLine)
            {
                LogException(OWN_EXP_ID, EXP_WARN , exp_too_big_angular_on_straight);
                if ( SysState.Debug.RecordOnLineDeviation)
                {
                    lDebug[7] = 1 ;
                }
            }


            ManRouteCmd.CurvatureCmd  = 0 ;
            ManRouteCmd.dCurvatureCmd  = 0 ;
            ManRouteCmd.TangentDir = atan2f(pSeg->y2- pSeg->y1, pSeg->x2 - pSeg->x1);
            break ;
        case SegType_Circular: // Circular arc
            mask = BlockInts() ;
            CopyQuat( GyroInt.GyroQuat , ManRouteCmd.MonitorQuat) ;
            RestoreInts(mask) ;
            arcangle = mod2piS(pSeg->tht2 - pSeg->tht1);
            ManRouteCmd.CurvatureCmd   = ((arcangle > 0 ) ? 1.0f : -1.0f )  / pSeg->radius_or_c0 ;
            ManRouteCmd.dCurvatureCmd  = 0 ;
            ManRouteCmd.TangentDir = pSeg->tht1 + ManRouteCmd.CurvatureCmd * pRun->s ;
            break ;
        case SegType_Clothoid: // Clothoid section
            mask = BlockInts() ;
            CopyQuat( GyroInt.GyroQuat , ManRouteCmd.MonitorQuat) ;
            RestoreInts(mask) ;
            ManRouteCmd.CurvatureCmd   = pSeg->xc + pRun->s  *  pSeg->radius_or_c0 ;
            ManRouteCmd.dCurvatureCmd  = pSeg->radius_or_c0 * ManRouteCmd.LineSpeedCmd ;
            ManRouteCmd.TangentDir = pSeg->tht1 + (pSeg->xc  + ManRouteCmd.CurvatureCmd)  * 0.5f * pRun->s;
            break ;
        };
        break;
    }


    // Exception catch
    if ( pRun->ds < 0 )
    {  // Interval exhausted
        pRun->TerminateSeg = 1 ;
        //QueueRunExceptionHandler( pRun ,QERR_LINE_SPEED_NEGATIVE) ;
    }

    // At the end, advance the segment counter
    if ( pRun->TerminateSeg )
    { // Switch to the next segment
        SegRun.FullSegsDone += pSeg->s ; // Statistics
        pRun->SegIndex = pSeg->NextIndex ;

        if ( pRun->SegIndex < pQ->nPut )
        {
            pSegNext = & pQ->seg[pRun->SegIndex] ;
            s -= pSeg->s ;
            if ( s > pSegNext->s * 0.01f )
            {
                s = pSegNext->s * 0.01f ;
            }
            if (pSeg->Type == SegType_Differential || pSegNext->Type == SegType_Differential)
            {
                s = 0;
                pRun->ds = 0 ;
                ManRouteCmd.LineSpeedCmd = 0 ;
            }

            if ( pSegNext->Type == SegType_Differential )
            { // Going to differential , take time till passage
                SetSysTimerTargetSec(TIMER_GET_2_QR, ControlPars.TimeLimitForArrivalTillQrCode, &SysTimerStr);
            }

            pRun->s     = s ;
            pRun->Theta = pSegNext->tht1 ;
            pRun->dTheta = 0 ;
            pRun->DecFlag = 0 ;
            pRun->ds = pSegNext->ds1 ;
            pRun->TerminateSeg = 0 ;
            SysState.Mot.LastPositionItem.x = (long) (pSegNext->x1 * M_2_LONG_FAC) ;
            SysState.Mot.LastPositionItem.y = (long) (pSegNext->y1 * M_2_LONG_FAC) ;
            SysState.Mot.LastPositionItem.z_or_lModeData = (long) (pSegNext->z1 * M_2_LONG_FAC) ; //ok
            SysState.Mot.LastPositionItem.cx = Ycos( pSegNext->tht1) ;
            SysState.Mot.LastPositionItem.cy = Ysin( pSegNext->tht1) ;
            SysState.Mot.LastPositionItem.cz_or_fModeData = 0 ;
            pRun->Slope = pSegNext->slope1 ;

            SysState.ManRouteState.DifferenceDrive = 0; // Next mode starts with no difference drive
        }
        else
        {
            pRun->s = 0 ; // Done
            pRun->ds = 0 ;
            ManRouteCmd.LineSpeedCmd = 0 ; // Stop
            SysState.ManRouteState.DifferenceDrive = 0; // Motion terninates with no diff drive
            SysState.Mot.LastPositionItem.x = (long) (pSeg->x2 * M_2_LONG_FAC) ;
            SysState.Mot.LastPositionItem.y = (long) (pSeg->y2 * M_2_LONG_FAC) ;
            SysState.Mot.LastPositionItem.z_or_lModeData = (long) (pSeg->z2 * M_2_LONG_FAC) ; //ok
            SysState.Mot.LastPositionItem.cx = Ycos( pSeg->tht2) ;
            SysState.Mot.LastPositionItem.cy = Ysin( pSeg->tht2) ;
            SysState.Mot.LastPositionItem.cz_or_fModeData = 0 ;
            RetVal = 1 ; // Communicate end of motion
        }
        pRun->State     = 0 ; // Initialize any state machine of new profile
        pRun->SubState  = 0 ;


    }
    SegRun.SegDone = SegRun.FullSegsDone + pRun->s ; // Statistics
    // SegRun.LineSpeed = pRun->ds ;

    if (pRun->SegIndex < pQ->nPut )
    {
        *RunType = pQ->seg[pRun->SegIndex].Type ;
    }
    return RetVal;
}

/**
* \brief Issue curvature correction
* \param DeltaS Look ahead distance
*
* \return  Desired curvature correction
*/

float CurveCorrection( float DeltaS  )
{
    float xr , yr , dx , dy , y1 , ct , st , tht1 , tht2 , dang ;
    float c, d ;
// Rotate to the route tangent frame
    xr =  (float) SysState.Nav.iPos[0] * POS_UNIT_2_M ; // + SysState.Nav.Robot.CenterFrac[0] ;
    yr =  (float) SysState.Nav.iPos[1] * POS_UNIT_2_M ; // + SysState.Nav.Robot.CenterFrac[1] ;

    ct = Ycos( SysState.Nav.Robot.RouteTangent ) ;
    st = Ysin( SysState.Nav.Robot.RouteTangent) ;

    dx  = (xr - SysState.Nav.Robot.RouteLocation[0] ) ;
    dy  = (yr - SysState.Nav.Robot.RouteLocation[1] ) ;

    SysState.Nav.Robot.TangentialDeviation =  dx * ct + dy * st ;
    y1 = - dx * st + dy * ct ;

    // Robot angle relative to course
    tht1 = mod2piS ( SysState.Nav.yaw - SysState.ManRouteState.YewCommand - SysState.Nav.Robot.RouteTangent ) ;

    tht2 = atan2f( -y1, DeltaS ) ;
    d = HYpot ( DeltaS , y1  ) ;

    if ( d == 0 )
    {
        c = 0  ;
    }
    else
    {
        dang = fSat ( tht1 - tht2 , pi/2 - 0.001f) ;

        if ( dang >= 0 )
        {
            c = -2 * Ycos( pi/2 - dang ) / d ;
        }
        else
        {
            c = 2 * Ycos( pi/2 + dang ) / d ;
        }
    }
    return c ;
}

/**
* \brief Decide the place on route from which we get the deviation
*           and also the deviation from route
*
* \param pQ   -> The motion queue to treat
* \param pRun -> Trajectory run management
* \param pS -> Line position estimate at the segment
* \param pTangent -> Tangent angle at segment position
* \param pX  -> Position on route, X
* \param pY: Positionon route, Y
**
*
* \return 0: Normal , 1: done , Negative: Error code
*/
short WhereAmI( struct CSegQueue *pQ  , struct CSegRun *pRun , float *pS , float *pTangent , float *pX , float *pY ,struct CMotSegment **ppSeg )
{
    struct CMotSegment *pSeg  ;
    //struct CConstraint *pCons;
    //struct CRobotGeom *pGeom;
    float xr, yr  ;
    float x1 , x2 , y1 , y2 , yh , r , xh ,  ah , bh , d , xi , yi , ro  ;
    float ct , st , c_rot[2] , thtr  , ac , bc , xs , ys , thts ,tht1 , tht2 , tht_ray , xc , yc , p_arc_t ;
    float c0_orig , xhr , yhr , sk , fac  , dsdtheta , fs , fc ;
    float x1r , x2r , y1r, y2r , xrr, yrr , c0 , L , arg ;
    short niter , NRcnt , curvedir ;

    pSeg = & pQ->seg[pRun->SegIndex] ; // Get current executing segment
    *ppSeg = pSeg ;

    xr =  (float) SysState.Nav.iPos[0] * POS_UNIT_2_M ; // + SysState.Nav.Robot.CenterFrac[0] ;
    yr =  (float) SysState.Nav.iPos[1] * POS_UNIT_2_M ; // + SysState.Nav.Robot.CenterFrac[1] ;

    tht1 = pSeg->tht1 ;
    tht2 = pSeg->tht2 ;

    xc = pSeg->xc ;
    yc = pSeg->yc ;


    switch ( pSeg->Type )
    {
    case SegType_Straight:
        xh = xr - pSeg->x1 ;
        yh = yr - pSeg->y1 ; // (xh,yh) = robot position w.r.t. segment start
        ct = Ycos( pSeg->tht1) ;
        st = Ysin( pSeg->tht1) ; // (ct,st) = cosines of nominal route


        // Rotate so that the nominal route is x axis
        x1 =  xh * ct  + yh * st ; // Travel along line
        //y1 = -xh * st  + yh * ct  ; // Orthogonal deviation

        *pS = fMaxMin ( x1 , pSeg->s , 0 ) ;

        *pX = x1 * ct + pSeg->x1;
        *pY = x1 * st + pSeg->y1;

        *pTangent = pSeg->tht1 ;
        break ;

    case SegType_Clothoid:
        // Pre-condition the clothoid

        L = pSeg->s ;
        c0_orig = pSeg->radius_or_c0 ;
        if ( c0_orig == 0 )
        {
            return -7 ; // Clothoid requires non-trivial curvature gradient
        }

        // If a segment is from curve to straight, so swap it
        if ( pSeg->xc )
        {
            tht1 = mod2piS( pSeg->tht2 + pi ) ; // Direction must be inverted because inside is now out
            tht2 = mod2piS( pSeg->tht1 + pi ) ;
            x1 = pSeg->x2 ;
            x2 = pSeg->x1 ;
            y1 = pSeg->y2 ;
            y2 = pSeg->y1 ;
            c0 = c0_orig ;
        }
        else
        {
            tht1 = pSeg->tht1 ;
            tht2 = pSeg->tht2 ;
            x1 = pSeg->x1 ;
            x2 = pSeg->x2 ;
            y1 = pSeg->y1 ;
            y2 = pSeg->y2 ;
            c0 = c0_orig ;
        }

        ct = Ycos( tht1) ;
        st = Ysin( tht1) ;


        xhr = 0 ;
        yhr = HYpot ( x1-pSeg->xc_turn , y1 - pSeg->yc_turn ) ;

        // Rotate everything so that the start will aligned with x
        x1r =  0;   // Starting point goes to origin
        y1r =  0 ;

        x2r =  (x2 - x1) * ct + ( y2 - y1) * st ; // New termination loci
        y2r = -(x2 - x1) * st + ( y2 - y1) * ct ;

        xrr =  (xr - x1) * ct + ( yr - y1) * st ; // New robot loci
        yrr = -(xr - x1) * st + ( yr - y1) * ct ;

        // Take the up turn; if it was down, invert problem ( over the X reflection)
        curvedir = 1 ;
        if ( c0 < 0 )
        {
            curvedir = -1 ;
            c0 =  -c0 ;
            y2r = -y2r ;
            yrr = -yrr ;
        }

        // Chord parameters
        ac = y2r - y1r ;
        bc = x1r - x2r ;

        // Angle to robot
        thtr = atan2f( yrr - yhr , xrr - xhr)  ;

        // Line from xc_arc to robot
        ah =  Ysin(thtr) ;
        bh = -Ycos(thtr) ;

        d = ac * bh - bc * ah ;
        if ( d == 0 )
        {
            return -5 ; // error ( 'Problem singular') ;
        }

        // Find where the ray intersects the chord
        xi =  ( ac*bh*x1r-ah*bc*xhr+bc*bh*y1r-bc*bh*yhr ) / d ;
        yi = -(ac*ah*x1r-ac*ah*xhr-ac*bh*yhr+ah*bc*y1r ) / d  ;

        // Find the intersection proportion between its vertices
        d = ( x1r-x2r) * ( x1r-x2r)  + (y1r-y2r) *  (y1r-y2r) ;
        if ( d == 0 )
        {
            return -6 ; // error ( 'Problem singular #2') ;
        }

        ro = (( x1r-x2r)*(xi-x2r)+(y1r-y2r)*(yi-y2r))/d ;

        if ( ro < 0 )
        {
            xs = x2r ;
            ys = y2r ;
            sk = L ;
        }
        else
        {
            if ( ro > 1 )
            {
                xs = x1r  ;
                ys = y1r ;
                sk = 0 ;
            }
            else
            {
                //% Falls within
                //% We will make few Newton iterations , starting guess on matching chord point
                sk   = ( 1 - ro)  * L ;

                niter = 3 ;
                fac = sqrtf( 2 / c0 );

                // Newton-Raphson guess improvement
                for ( NRcnt = 0 ; NRcnt < niter ; NRcnt++ )
                {
                    FresnelSC(  sk / fac, &fs,&fc) ;
                    ys    = fac * fs ;
                    xs    = fac * fc  ;

                    thts = atan2f( ys- yhr , xs ) ;

                    arg = sk * sk * c0 * 0.5f ;
                    dsdtheta = (xs*xs+(ys-yhr)*((ys-yhr)))/( Ysin(arg) * xs - Ycos(arg) * (ys-yhr) ) ;
                    sk  = sk - ( thts - thtr ) * dsdtheta ;
                }
            }
        }
        // If curvature was inverted, re-invert
        if ( curvedir < 0 )
        {
            ys   = -ys ;
        }

        // Complement the length if coming from the "wrong" side
        if ( pSeg->xc )
        {
            *pS = fMaxMin ( L - sk , L , 0  )  ;
        }
        else
        {
            *pS = fMaxMin ( sk , L , 0  )  ;
        }

        // Back rotate to original frame
        *pX =  xs * ct - ys * st + x1 ;
        *pY =  xs * st + ys * ct + y1 ;

        *pTangent =  pSeg->tht1 + ( pSeg->xc+ 0.5f * pSeg->radius_or_c0 * (*pS)  ) * ( *pS) ;

        break ;


    case SegType_Circular:
        // Angles w.r.t. center
        //tht1_c = pSeg->tht1 - pi/2 ;
        //tht2_c = pSeg->tht2 - pi/2 ;
        r = pSeg->radius_or_c0 ;

        if ( r == 0 )
        {
            return -9  ;
        }

        // Find arc ends
        x1 = pSeg->x1 ; // pSeg->xc + r * Ycos( tht1_c) ;
        y1 = pSeg->y1 ; // pSeg->yc + r * Ysin( tht1_c) ;

        x2 = pSeg->x2 ; // pSeg->xc + r * Ycos( tht2_c) ;
        y2 = pSeg->y2 ; // pSeg->yc + r * Ysin( tht2_c) ;

        // Coordinates of turn center
        xh = pSeg->xc_turn ;
        yh = pSeg->yc_turn ;

        // Robot angle w.r.t center
        thtr = atan2f( yr - yh , xr - xh )  ;

        // Line from xc_arc to robot
        ah =  Ysin(thtr) ;
        bh = -Ycos(thtr) ;

        // Chord between two arc end points
        ac = y2 - y1 ;
        bc = x1 - x2 ;

        //Find where the ray intersects the chord
        d = ac * bh - bc * ah ;
        if ( d == 0 )
        {
            return -2 ; // error ( 'Problem singular') ;
        }

        xi =  ( ac*bh*x1-ah*bc*xh+bc*bh*y1-bc*bh*yh ) / d ;
        yi = -(ac*ah*x1-ac*ah*xh-ac*bh*yh+ah*bc*y1 ) / d  ;

        // find linear combination between end points where the ray intersection occurs
        d = ( x1-x2)*(x1-x2) + (y1-y2)*(y1-y2) ;
        if ( d == 0 )
        {
            return -3 ; // error ( 'Problem singular #2') ;
        }

        ro = (( x1-x2)*(xi-x2)+(y1-y2)*(yi-y2))/ d;

        arg = mod2piS(tht2-tht1) ;
        curvedir = (arg >= 0 ) ? 1 : -1 ;

        // If intersection is out of chord, use chord's end. Otherwise interpolate exact point
        if ( ro <= 0 )
        {
            thts = tht2 ;
            xs = x2 ; // xc + cos( thts - pi/2) * r ;
            ys = y2 ; // yc + sin( thts - pi/2) * r ;
            *pS = pSeg->s ;
        }
        else {
            if ( ro >= 1)
            {
                thts = tht1 ;
                xs = x1 ; //% xc + cos( thts - pi/2) * r ;
                ys = y1 ;// % yc + sin( thts - pi/2) * r ;
                *pS = 0 ;
            }
            else {
                // Falls within
                tht_ray = atan2f( yi - yh , xi - xh ) ;

                // Rotate the tray to parallel x, so distance to circle is easy to find
                ct = Ycos(tht_ray) ;
                st = Ysin(tht_ray) ;
                //mat = [ cos( tht_ray ) , sin(tht_ray) ; -sin(tht_ray) , cos(tht_ray)  ] ;
                c_rot[0] =  ct * (xc - xh) + st * (yc-yh) ; //    = mat * [xc - xh; yc-yh] ;
                c_rot[1] = -st * (xc - xh) + ct * (yc-yh) ;

                // Distance from turn center to the arc position
                p_arc_t = c_rot[0] + sqrtf( r*r - c_rot[1] * c_rot[1]) ;

                // Interpolate that distance on the ray to the robot
                d = HYpot( xr-xh , yr-yh) ;
                if ( d == 0 )
                {
                    return -4 ;
                }
                ro = p_arc_t / d ;
                xs = ro * xr + (1-ro) * xh ;
                ys = ro * yr + (1-ro)*yh ;

                d = atan2f( ys-yc , xs -xc );


                thts = mod2piS ( d + ( pi * 0.5f * curvedir ) );
                *pS =  fabsf( mod2piS( thts - tht1 ) ) * r ;

            }
        }
        *pX = xs ;
        *pY = ys ;
        *pTangent = pSeg->tht1 + curvedir * (*pS) / r ;

        break ;
    }
    return 0;
}

