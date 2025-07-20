#include "StructDef.h"
#include "ItNav.h"
#include "Gyro.h"

#ifdef _LPSIM
#include <math.h>
#else
float fabsf(float x) ;
#endif

/*
 * Check that a matrix is a rotation
 */
short CheckMat(float m[3][3])
{
    float rslt ;
    short c1 , c2 ;
    // Check that matrix is unitary
    for ( c1 = 0 ; c1 < 3 ; c1++ )
    {
        for ( c2 = 0 ; c2 < 3 ; c2++)
        {
            rslt = m[c1][0] * m[0][c2]  +  m[c1][1] * m[1][c2] +  m[c1][2] * m[2][c2]  ;
            if ( c1== c2 )
            {
                rslt = rslt -1 ;
            }
            if ( fabs( rslt) > 1e-4 )
            {
                return -1 ;
            }
        }
    }
    return 0 ;
}


/**
* \brief Clear a 3D vector
* \param c = a - b
*/
void ZeroVec ( float *a )
{
    a[0] = 0 ; a[1] = 0 ; a[2] = 0 ;
}



/**
* \brief Add two vectors
* \param c = a + b
*/
void AddVec ( float *a , float *b , float *c )
{
    c[0] = a[0] + b[0] ;
    c[1] = a[1] + b[1] ;
    c[2] = a[2] + b[2] ;
}

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( SubtractVec, "--opt_level=3" );
#endif

/**
* \brief Subtract two vectors
* \param c = a - b
*/
void SubtractVec ( float *a , float *b , float *c )
{
    c[0] = a[0] - b[0] ;
    c[1] = a[1] - b[1] ;
    c[2] = a[2] - b[2] ;
}

/**
* \brief Find the mean between two angles, in the short way
*
*/
float MeanAngle( float a , float b )
{
    return mod2piS ( a + mod2piS ( b - a ) * 0.5f ) ;
}



/**
* \brief Mean of two vectors
* \param c = (a + b )/2
*/
void MeanVec ( float *a , float *b , float *c )
{
    c[0] = ( a[0] + b[0] ) * 0.5f;
    c[1] = ( a[1] + b[1] ) * 0.5f;
    c[2] = ( a[2] + b[2] ) * 0.5f;
}

/**
\brief Multiply a vector by a scalar
*/
void ScaleVec( float a[] , float s , float b[])
{
    b[0] = a[0] * s;
    b[1] = a[1] * s ;
    b[2] = a[2] * s;
}


/**
* \brief Generate a unity matrix
*/
void UnityMat3( float m[3][3] )
{
    m[0][0] = 1;
    m[0][1] = 0;
    m[0][2] = 0;
    m[1][0] = 0;
    m[1][1] = 1;
    m[1][2] = 0;
    m[2][0] = 0;
    m[2][1] = 0;
    m[2][2] = 1;
}


/**
* \brief Generate a unity quaternion
*/
void UnityQuat( float q[4])
{
    q[0] = 1 ; q[1] = 0 ; q[2] = 0 ;  q[3] = 0 ;
}


/**
* \brief Get the norm of a 3D vector
* \param a: The 3D vector
* \return : |a|
*/
float VecMag( float *a)
{
    return sqrtf( a[0] * a[0] + a[1] * a[1] + a[2] * a[2] ) ;
}

/**
* \brief Get distance between 2 points
* \param a,b: The 3D vectors
* \return : |a-b|
*/
float VecDist( float *a , float *b )
{
    float v[3] ;
    v[0] = a[0] - b[0] ;
    v[1] = a[1] - b[1] ;
    v[2] = a[2] - b[2] ;
    return VecMag(v)  ;
}

/*
 * \brief Find proximal point on a line w.r.t. given point
 * The point is x0,y0
 * the line is x = x1 + cos(tht) * t , y = y1 + sin(tht)
 *
 * \param x2,y2-> Closest point on the target line
 * \return distance to traverse on the line for closest proximity to the point
 */
float FindProximalPoint( float x0 , float y0 , float x1 , float y1 , float tht , float *x2 , float *y2 , short unsigned bArcLengtCompensation )
{
    float a , b , c  , d ,  fac , x2raw , y2raw  ;

    a = -__sin(tht) ;
    b = __cos(tht) ;
    c = a * x1 + b * y1 ;

    x2raw = -(a*b*y0-b*b*x0-a*c) ;
    y2raw = (a*a*y0-a*b*x0+b*c);
    if (bArcLengtCompensation)
    {
        d     = HYpot(x2raw-x0, y2raw-y0) ;
        if ( d > 1e-3f )
        {
            fac   = GetArcEntryLength()  / d ;
            y2raw = y2raw - ( y2raw - y0) * fac ; //   += b *  GetArcEntryLength()  ;
            x2raw = x2raw - ( x2raw - x0) * fac ; ;
        }
    }
    *x2 = x2raw ;
    *y2 = y2raw ;

    return ( b *( x2raw-x1) - a *( y2raw - y1)  ) ;
}

/*
 * \brief Find the arc route from (x1,y1) with the radius direction of tht to (x2,y2)
 *
 * \param slen -> Resulting travel length
 * \return Required curvature
 */
float FindArcRoute(float x1, float y1, float tht, float x2, float y2, float * slen)
{
    float rr, xx, yy, c, tht2, s, m, d , curv;
    s = Ysin(tht); c = Ycos(tht);
    // Rotate so that the tangent will parallel x
    xx = (x2 - x1) * c + (y2 - y1) * s;
    yy = (y2 - y1) * c - (x2 - x1) * s;

    if (fabsf(yy) <= 1e-3)
    { // Trivial case - straight segment
        *slen = HYpot(x2 - x1, y2 - y1);
        return 0; // No curvature
    }
    else
    {
        m = xx * xx + yy * yy;
        d = sqrtf(m);
        if (d < 1e-3f)
        {// Points identical , nothing to do
            *slen = 0;
            return 0; // No curvature
        }

        rr = 0.5f * m / yy;

        curv = 1.0f / rr;

        tht2 = 2.0f * aYsin(0.5f * d * curv);

        *slen =  fabsf(rr *tht2);
        return curv;
    }
}


/*
 * \brief Find the spline route
 * \param x1,y1: The initial point
 * \param tht1 : The initial angle
 * \param x2,y2: The final point
 * \param tht2 : The final angle
 * \param slen -> Resulting STRAIGHT travel length
 * \param Fail -> Failure in calculation
 * \return Required initial curvature
 */
float FindSplineRoute(float x1, float y1, float tht1, float x2, float y2, float tht2 , float * slen, struct CSpline * pS , short *Fail)
{
    float curv, tht , s1 , c1 , s2, c2, x0 , d1, d2 , junk  ;

    // The reference frame is the line connecting the start point and the end point
    tht = atan2f( y2 - y1 , x2 - x1 ) ;

    // Make the entry and exit angles relative to the connection line
    tht1 = tht1 - tht ;
    tht2 = tht2 - tht ;

    s1 = Ysin(tht1) ; c1 = Ycos(tht1) ;
    s2 = Ysin(tht2) ; c2 = Ycos(tht2) ;

    if ( fabsf(c1) < 0.01f || fabsf(c2) < 0.01f  )
    { // Thats impossible
        *Fail = -1;
        * slen = 0 ;
        return 0 ;
    }
    d1 = s1 / c1 ;
    d2 = s2 / c2 ;

    x0 = HYpot ( x2 - x1, y2 - y1) ;
    if (fabsf(x0) <= 1e-3)
    { // Trivial case - straight segment
        *slen = 0 ;
        return 0; // No curvature
    }
    pS->a = (d1+d2)/(x0*x0) ;
    pS->b =  -(2*d1+d2)/x0 ;
    pS->c = d1 ;

    junk = ( 1 + d1 * d1 );
    *slen = x0 ;
    curv = 2.0f *pS->b / ( junk * sqrtf(junk) ) ;
    *Fail = 0;
    return curv ;
}





/*
    t = -0.5f*(x1*x1-2*x1*x2+x2*x2+y1*y1-2*y1*y2+y2*y2)/(c*x1-c*x2+s*y1-s*y2) ;
    *xc = x1 + t * c  ; *yc = y1 + t * s ;
    tht2 = atan2f( y2 - *yc , x2 - *xc  );
    *slen = (float) fabs( mod2piS( tht2 - tht) * t  );
    return -1.0f/ t ;
*/

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( Interpolate, "--opt_level=3" );
#endif

/**
* \brief interpolate a line
* \param a1 : see a3
* \param a2 : see a3
* \param k  : see a3
* \param a3 : a3 = (1-k) * a1 + k * a2
*/
void Interpolate (float *a1 , float *a2 , float k , float * a3 )
{
    float p ;
    p = 1.0f - k ;
    a3[0] = a1[0] * p + a2[0] * k ;
    a3[1] = a1[1] * p + a2[1] * k ;
    a3[2] = a1[2] * p + a2[2] * k ;
}


#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( DecomposeQuat, "--opt_level=3" );
#endif


/**
* \brief  Decompose quaternion to an axis and a rotation angle
* \param: q   : Quaternion
* \param: ang : Rotation angle
* \param: axis: Rotation axis
*/
void DecomposeQuat (float *q  , float * ang, float * axis )
{
    float hang;
    NormalizeQuat( q , q ) ;
    if (fabsf(q[0]) > 0.707106781186548f)
    {
        hang = aYcos(q[0]) ;
    }
    else
    {
        hang = aYsin(sqrtf(q[1] * q[1] + q[2] * q[2] + q[3] * q[3])) ;
    }
    *ang = 2 * hang ;
    NormalizeVec ( &q[1] , axis ) ;
}

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( ScaleQuat, "--opt_level=3" );
#endif

/**
* \brief Scale the rotation angle in a quaternion
* \param qSrc : source quaternion
* \param qDst : destination quaternion
* \param k    : The scaling gain
*/
void ScaleQuat ( float *qSrc  , float * qDst ,float k  )
{
    float axis[3] ;
    float ang ;

    DecomposeQuat( qSrc , & ang , axis ) ;
    BuildQuat ( axis , k * ang , qDst)  ;
}


#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( CopyQuat, "--opt_level=3" );
#endif


/**
* \brief Copy a quaternion
* \param qSrc : source quaternion
* \param qDst : destination quaternion
*/
void CopyQuat ( float *qSrc  , float * qDst  )
{
    qDst[0] = qSrc[0] ;
    qDst[1] = qSrc[1] ;
    qDst[2] = qSrc[2] ;
    qDst[3] = qSrc[3] ;
}

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( InvertQuat, "--opt_level=3" );
#endif

/**
* \brief Invert a quaternion
* \param qSrc : source quaternion
* \param qDst : Inverted destination quaternion
*/
void InvertQuat ( const float *qSrc  , float * qDst  )
{
    qDst[0] = qSrc[0] ;
    qDst[1] = -qSrc[1] ;
    qDst[2] = -qSrc[2] ;
    qDst[3] = -qSrc[3] ;
}



/**
* \brief Build a quaternion from an axis and a rotation angle
* \param: axis: Rotation axis
* \param: ang : Rotation angle
* \param: qt  : Resulting quaternion
*/
void BuildQuat ( float * axis , float ang , float *qt)
{
    float shalf ,n ;

    n = VecMag( axis ) ;
    if ( n < 1e-8f )
    {
        qt[0] = 1 ; qt[1] = 0 ; qt[2] = 0 ; qt[3] = 0 ;
        return ;
    }

    qt[0] = Ycos( ang * 0.5f  ) ;

    shalf = Ysin (ang * 0.5f  ) / n ;

    qt[1] = axis[0] * shalf ;
    qt[2] = axis[1] * shalf ;
    qt[3] = axis[2] * shalf ;
}

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( QuatOnInvQuat, "--opt_level=3" );
#endif

/**
* \brief Quaternion * Inv Quaternion
*
* \param q3 = q1 * q2^(-1) , q3 may be replacing either the multiplicands
*/
void QuatOnInvQuat( float * q1, float * q2 , float * q3 )
{
    float q2i[4]  ;
    InvertQuat ( q2, q2i ) ;
    QuatOnQuat( q1, q2i , q3 );
}

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( InvQuatOnQuat, "--opt_level=3" );
#endif

/**
* \brief  Inv Quaternion * Quaternion
*
* \param q3 = q1^(-1) * q2 , q3 may be replacing either the multiplicands
*/
void InvQuatOnQuat( const float * q1, const float * q2 , float * q3 )
{
    float q1i[4]  ;
    InvertQuat ( q1, q1i ) ;
    QuatOnQuat( q1i, q2 , q3 );
}

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( QuatSimilarity, "--opt_level=3" );
#endif


/**
* \brief Multiply two quaternions
*
* \param q3 = q1 * q2 , q3 may be replacing either the multiplicands
*/
void QuatSimilarity( float * q1, float * q2 , float * q3 )
{
    float q3t[4]    ;
    q3t[0] =  q2[0]*q3[0] + q2[1]*q3[1] + q2[2]*q3[2] + q2[3] * q3[3] ;
    q3t[1] = -q2[0]*q3[1] + q2[1]*q3[0] - q2[2]*q3[3] + q2[3] * q3[2] ;
    q3t[2] = -q2[0]*q3[2] + q2[2]*q3[0] - q2[3]*q3[1] + q2[1] * q3[3] ;
    q3t[3] = -q2[0]*q3[3] + q2[3]*q3[0] - q2[1]*q3[2] + q2[2] * q3[1] ;

    q3[0] = q1[0]*q3t[0] - q1[1]*q3t[1] - q1[2]*q3t[2] - q1[3] * q3t[3] ;
    q3[1] = q1[0]*q3t[1] + q1[1]*q3t[0] + q1[2]*q3t[3] - q1[3] * q3t[2] ;
    q3[2] = q1[0]*q3t[2] + q1[2]*q3t[0] + q1[3]*q3t[1] - q1[1] * q3t[3] ;
    q3[3] = q1[0]*q3t[3] + q1[3]*q3t[0] + q1[1]*q3t[2] - q1[2] * q3t[1] ;

    NormalizeQuat ( q3 , q3 ) ;
}

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( QuatOnQuat, "--opt_level=3" );
#pragma FUNCTION_OPTIONS ( QNED2ENU, "--opt_level=3" );
#endif

/*
 * Transform a quaternion NED-ENU and vice versa
 */
void QNED2ENU( const float * q1, float * q2  )
{
    q2[0] = q1[0] ;
    q2[1] = q1[2] ;
    q2[2] = q1[1] ;
    q2[3] = -q1[3] ;
}

/**
* \brief Multiply two quaternions
*
* \param q3 = q1 * q2 , q3 may be replacing either the multiplicands
*/
void QuatOnQuat( const float * q1, const float * q2 , float * q3 )
{
    float q3t[4]    ;
    q3t[0] = q1[0]*q2[0] - q1[1]*q2[1] - q1[2]*q2[2] - q1[3] * q2[3] ;
    q3t[1] = q1[0]*q2[1] + q1[1]*q2[0] + q1[2]*q2[3] - q1[3] * q2[2] ;
    q3t[2] = q1[0]*q2[2] + q1[2]*q2[0] + q1[3]*q2[1] - q1[1] * q2[3] ;
    q3t[3] = q1[0]*q2[3] + q1[3]*q2[0] + q1[1]*q2[2] - q1[2] * q2[1] ;
    NormalizeQuat ( q3t , q3 ) ;
}


/**
* \brief Rotate a quaternion by yaw
*
* \param q3 = [cos(y/2),0,0,sin(y/2)] * q2 , q3 may be replacing either the multiplicands
*/
void ApplyYaw2Quat( const float y, const float * q2 , float * q3 )
{
    float q3t[4] , q10, q13   ;
    q10 = __cos(y * 0.5f) ;
    q13 = __sin(y * 0.5f) ;

    q3t[0] = q10*q2[0] - q13 * q2[3] ;
    q3t[1] = q10*q2[1] - q13 * q2[2] ;
    q3t[2] = q10*q2[2] + q13 * q2[1] ;
    q3t[3] = q10*q2[3] + q13 * q2[0] ;
    NormalizeQuat ( q3t , q3 ) ;
}


#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( QuatEnu2Ned, "--opt_level=3" );
#endif


/**
* \brief Transform quaternion from ENU to NED , actually q2 = sqrt(0.5) * [0 1 1 0] * q1
*
* \param q2 = T * q1 , q2 may be replacing q1
*/
void QuatEnu2Ned( float * q1 , float *q2  )
{
    float q3t[4]    ;
    q3t[0] =  - q1[1] - q1[2]  ;
    q3t[1] =    q1[0] + q1[3]  ;
    q3t[2] =    q1[0] - q1[3] ;
    q3t[3] =    q1[2] - q1[1] ;
    NormalizeQuat ( q3t , q2 ) ;
}



#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( IntegrateQuat, "--opt_level=3" );
#endif

/**
* \brief Integrate angular speed to quaternions
*
* \param q3 = q1 + [0;w*dT*0.5]*q1 , q3 may be replacing either the multiplicands
*/
void IntegrateQuat( float * q1, float * w , float dT , float * q3 )
{
    float q3t[4] , q2[4]    ;
    /*
    q1[1] = w[0] * dT * 0.5f ; q1[2] = w[1] * dT * 0.5f ; q1[3] = w[2] * dT * 0.5f ;
    q3t[0] = q2[0] - q1[1]*q2[1] - q1[2]*q2[2] - q1[3] * q2[3] ;
    q3t[1] = q2[1] + q1[1]*q2[0] + q1[2]*q2[3] - q1[3] * q2[2] ;
    q3t[2] = q2[2] + q1[2]*q2[0] + q1[3]*q2[1] - q1[1] * q2[3] ;
    q3t[3] = q2[3] + q1[3]*q2[0] + q1[1]*q2[2] - q1[2] * q2[1] ;
    */

    q2[1] = w[0] * dT * 0.5f ; q2[2] = w[1] * dT * 0.5f ; q2[3] = w[2] * dT * 0.5f ;
    q3t[0] = q1[0]       - q1[1]*q2[1] - q1[2]*q2[2] - q1[3] * q2[3] ;
    q3t[1] = q1[0]*q2[1] + q1[1]       + q1[2]*q2[3] - q1[3] * q2[2] ;
    q3t[2] = q1[0]*q2[2] + q1[2]       + q1[3]*q2[1] - q1[1] * q2[3] ;
    q3t[3] = q1[0]*q2[3] + q1[3]       + q1[1]*q2[2] - q1[2] * q2[1] ;

    NormalizeQuat ( q3t , q3 ) ;
}


#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( NormalizeQuat, "--opt_level=3" );
#endif



/**
\brief Normalize a quaternion for unity norm and positive real part
\param q3t: Un normalized input
\param q3 : Normalized output (can coincide with q3t)
\return n  : resulting inverse norm
*/
float NormalizeQuat ( float q3t[3] , float q3[3] )
{
    float n ;
    n = __sqrt( q3t[0]*q3t[0] + q3t[1]*q3t[1] + q3t[2]*q3t[2] + q3t[3]*q3t[3]) ;
    if ( n < 1e-6f )
    { // Exception - can't be normalized
        q3[0] = 1 ; q3[1] = 0 ; q3[2] = 0 ; q3[3] = 0 ;
        return 1e6f ;
    }
    n = ( (q3t[0]>=0)? 1.0f:-1.0f) / n ;
    q3[0] = q3t[0] * n ;
    q3[1] = q3t[1] * n ;
    q3[2] = q3t[2] * n ;
    q3[3] = q3t[3] * n ;
    return n ;
}

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( NormalizeVec, "--opt_level=3" );
#endif

/**
\brief Normalize a 3D vector for unity norm and positive real part
\param q3t: Un normalized input
\param q3 : Normalized output (can coincide with q3t)
\param n  : resulting inverse norm
*/
float NormalizeVec ( float q3t[3] , float q3[3] )
{
    float n ;
    n = VecMag( q3t)  ;
    if ( n < 1e-6f )
    { // Exception - can't be normalized
        q3[0] = 1 ; q3[1] = 0 ; q3[2] = 0 ;
        return 1e6f;
    }
    n = 1.0f / n ;
    q3[0] = q3t[0] * n ;
    q3[1] = q3t[1] * n ;
    q3[2] = q3t[2] * n ;
    return n ;
}


/**
* \brief Vector cross product
* \param a : a cross b = c
* \param b : a cross b = c
* \param c : a cross b = c
*/
void CrossProd( float * a, float *b , float *c)
{
    float c0 , c1 , c2 ;
    c2   = a[0] * b[1] - a[1] * b[0] ;
    c0   = a[1] * b[2] - a[2] * b[1] ;
    c1   = a[2] * b[0] - a[0] * b[2] ;
    c[0] = c0 ; c[1] = c1 ; c[2] = c2 ;
}



/**
* \brief Vector dot product
* \param a : a dot b = returned c
* \param b : see a
* \return c : c, see a
*/
float DotProduct( float * a, float *b )
{
    return  a[0] * b[0] + a[1] * b[1] + a[2] * b[2] ;
}

/**
* \brief Scalar angle
* \param a : c = angle between a and b
* \return angle
*/
float ScalarAngle( float * a, float *b )
{
    float c , mag ;
    mag = VecMag(a) * VecMag(b) ;
    if ( mag < 1e-7 )
    {
        return 0 ;
    }

    c = aYcos( DotProduct( a , b ) / mag ) ;
    return c ;
}

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( CorrectZQuatByMeasVec, "--opt_level=3" );
#endif

/**
* \brief Correct a quaternion so that rotation axis will align to z
*
* \param q2   : quaternion to correct
* \param ameas: The measured direction in the local frame
* \param k    : The correction gain (0 for no correction to 1 of full correction)
* \param q2 (ret)   : The corrected quaternion
*/
void CorrectZQuatByMeasVec ( float * q2, float * vert , float k  )
{
    float   a1[3] , a2[3] , shalf  ,  hang ,  q1[4] , s, n ;

    n = VecMag( &q2[1]  )  ;
    if ( n < 1e-6f )
    { // This is practically no rotation , do nothing
        return ;
    }

    // Get the rotation axis of the quaternion
    s = 1 ;
    if ( q2[1] * vert[0] + q2[2] * vert[1] + q2[3] * vert[2] < 0 )
    {
        s = -1 ;
    }
    n = s / n ;

    // Original axis
    a1[0] = q2[1] * n;
    a1[1] = q2[2] * n;
    a1[2] = q2[3] * n;

    a2[0] = a1[0] * ( 1 - k ) + k * vert[0]  ;
    a2[1] = a1[1] * ( 1 - k ) + k * vert[1]  ;
    a2[2] = a1[2] * ( 1 - k ) + k * vert[2]  ;

    n = sqrtf( a2[0] * a2[0] + a2[1] * a2[1] + a2[2] * a2[2] ) ;

    // Cosine is by scalar product. The rotation will be reversed if the travel is too long
    if (fabsf(q2[0]) < 0.707106781186548f)
    {
        hang = aYcos(q2[0]) * s;
    }
    else
    {
        hang = aYsin( sqrtf(q2[1]* q2[1]+ q2[2]* q2[2]+ q2[3]* q2[3]) ) * s;
    }

    q1[0]  = q2[0] ;
    shalf  = Ysin(hang) / n ;

    q1[1] = a2[0] * shalf ;
    q1[2] = a2[1] * shalf ;
    q1[3] = a2[2] * shalf ;

    NormalizeQuat( q1 , q2 ) ;
}


#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( CorrectQuatByMeasVec, "--opt_level=3" );
#endif

/**
* \brief Correct of quaternion by measured vector
*
* \param q1   : quaternion to correct
* \param anom : Nominal direction in local frame
* \param ameas: The measured direction in the local frame
* \param k    : The correction gain (0 for no correction to 1 of full correction)
* \param q3   : The corrected quaternion
*/
void  CorrectQuatByMeasVec ( float * q1, float *anom , float *ameas , float k , float *q3 )
{
    float axis [3] , a1[3] , a2[3] , n  ,  ang ,  qt[4] ;
    NormalizeVec( anom  , a1 ) ;
    NormalizeVec( ameas , a2 ) ;

    CrossProd( a1 , a2  , axis ) ;
    n = VecMag ( axis) ;
    if ( n < 0.0000015 )
    { // Axes were very near parallel, thats enough and we do no correction
        CopyQuat( q1 , q3 ) ;
        return ;
    }

    // Cosine is by scalar product
    ang   = -aYcos ( a1[0]*a2[0] + a1[1]*a2[1]+a1[2]*a2[2] ) ;
    BuildQuat ( axis , ang * k , qt) ;
    QuatOnQuat ( qt , q1 , q3 );
}


#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( Rot2Quat, "--opt_level=3" );
#endif

/**
 * Get a quaternion from a rotation matrix
 * \param Q: Matrix to transform
 * \param q: Requlting quaternion
 */
void Rot2Quat(float Q[3][3],float q[4]   )
{
    float t , r ;
    t = Q[0][0]+Q[1][1]+Q[2][2] ; //  (trace of Q)
    r = sqrtf(1+t) ;
    q[0] = 0.5f*r ;
    q[1] = 0.5f*sqrtf(1+Q[0][0]-Q[1][1]-Q[2][2]) *  (( Q[2][1]-Q[1][2] > 0 ) ? 1 : -1 ) ;
    q[2] = 0.5f*sqrtf(1-Q[0][0]+Q[1][1]-Q[2][2]) *  (( Q[0][2]-Q[2][0] > 0 ) ? 1 : -1 ) ;
    q[3] = 0.5f*sqrtf(1-Q[0][0]-Q[1][1]+Q[2][2]) *  (( Q[1][0]-Q[0][1] > 0 ) ? 1 : -1 ) ;
}

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( Quat2Rot, "--opt_level=3" );
#endif


/**
\brief Get a rotation matrix from a quaternion
*/
void Quat2Rot( float q[4] , float r[3][3])
{
    float qri , qrj , qrk , qii , qij , qik , qjj , qjk , qkk ;
    qri = 2 * q[0] * q[1] ;
    qrj = 2 * q[0] * q[2] ;
    qrk = 2 * q[0] * q[3] ;
    qii = 2 * q[1] * q[1] ;
    qij = 2 * q[1] * q[2] ;
    qik = 2 * q[1] * q[3] ;
    qjj = 2 * q[2] * q[2] ;
    qjk = 2 * q[2] * q[3] ;
    qkk = 2 * q[3] * q[3] ;

    r[0][0] = 1 - qjj - qkk ;
    r[0][1] = qij - qrk ;
    r[0][2] = qik + qrj ;
    r[1][0] = qij + qrk ;
    r[1][1] = 1 - qii - qkk ;
    r[1][2] = qjk - qri ;
    r[2][0] = qik - qrj ;
    r[2][1] = qjk + qri ;
    r[2][2] = 1 - qii - qjj ;
}


#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( RotateYByQuat, "--opt_level=3" );
#endif


/**
 * \brief Rotate y axis [0,1,0] by quaternion
* \param q : Acting quaternion
* \param v2: Rotation result

* !NOTE! No normalizations are made, so that the input quaternion is assumed NORNALIZED!!
 */
void RotateYByQuat(float q1[] , float v2[])
{
    v2[0] = q1[2]*q1[1] - q1[3]*q1[0] - q1[0]*q1[3] + q1[1] * q1[2] ;
    v2[1] = q1[2]*q1[2] + q1[0]*q1[0] - q1[1]*q1[1] - q1[3] * q1[3] ;
    v2[2] = q1[2]*q1[3] + q1[1]*q1[0] + q1[3]*q1[2] + q1[0] * q1[1] ;
}


#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( RotateXByQuat, "--opt_level=3" );
#endif


/**
 * \brief Rotate X axis [1, 0 ,0] by quaternion
* \param q : Acting quaternion
* \param v2: Rotation result

* !NOTE! No normalizations are made, so that the input quaternion is assumed NORNALIZED!!
 */
void RotateXByQuat ( float q1[] , float v2[])
{
    v2[0] = q1[1]*q1[1] + q1[0]*q1[0] - q1[3]*q1[3] - q1[2] * q1[2] ;
    v2[1] = q1[1]*q1[2] + q1[3]*q1[0] + q1[2]*q1[1] + q1[0] * q1[3] ;
    v2[2] = q1[1]*q1[3] - q1[2]*q1[0] - q1[0]*q1[2] + q1[3] * q1[1] ;
}


#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( RotateZByQuat, "--opt_level=3" );
#endif

/**
 * \brief Rotate Z axis [0, 0 ,1] by quaternion
* \param q : Acting quaternion
* \param v2: Rotation result

* !NOTE! No normalizations are made, so that the input quaternion is assumed NORNALIZED!!
 */
void RotateZByQuat ( float q1[] , float v2[])
{
    v2[0] = q1[3] *q1[1] + q1[2]*q1[0] + q1[1]*q1[3] + q1[0] * q1[2] ;
    v2[1] = q1[3] *q1[2] - q1[1]*q1[0] - q1[0]*q1[1] + q1[2] * q1[3] ;
    v2[2] = q1[3] *q1[3] + q1[0]*q1[0] - q1[2]*q1[2] - q1[1] * q1[1] ;
}

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( RotateVecByQuat, "--opt_level=3" );
#endif


/**
* \brief Rotate a vector by a quaternion
*
* \param q : Acting quaternion
* \param v1: Vector to rotate
* \param v2: Rotation result
*
* !NOTE! No normalizations are made, so that the input quaternion is assumed NORNALIZED!!
*
*/
void RotateVecByQuat ( float q1[] , float v1[] , float v2[])
{
    float q3[4] ;

    q3[0] = -q1[1]*v1[0] - q1[2]*v1[1] - q1[3] * v1[2] ;
    q3[1] =  q1[0]*v1[0] + q1[2]*v1[2] - q1[3] * v1[1] ;
    q3[2] =  q1[0]*v1[1] + q1[3]*v1[0] - q1[1] * v1[2] ;
    q3[3] =  q1[0]*v1[2] + q1[1]*v1[1] - q1[2] * v1[0] ;

    v2[0] = -q3[0]*q1[1] + q3[1]*q1[0] - q3[2]*q1[3] + q3[3] * q1[2] ;
    v2[1] = -q3[0]*q1[2] + q3[2]*q1[0] - q3[3]*q1[1] + q3[1] * q1[3] ;
    v2[2] = -q3[0]*q1[3] + q3[3]*q1[0] - q3[1]*q1[2] + q3[2] * q1[1] ;
}
#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( RotateVecByMat, "--opt_level=3" );
#endif

/**
* \brief Rotate a vector by a matrix
*
* \param r : Acting matrix
* \param v1: Vector to rotate
* \param v2: Rotation result
*/
void RotateVecByMat( float r[3][3] , float v1[3] , float v2[3] )
{
    float b[3] ;
    b[0] = r[0][0] * v1[0] + r[0][1] * v1[1] + r[0][2] * v1[2];
    b[1] = r[1][0] * v1[0] + r[1][1] * v1[1] + r[1][2] * v1[2];
    b[2] = r[2][0] * v1[0] + r[2][1] * v1[1] + r[2][2] * v1[2];
    v2[0] = b[0] ; v2[1] = b[1] ; v2[2] = b[2] ;
}

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( RotateVecByVecMat, "--opt_level=3" );
#endif

/**
* \brief Rotate a vector by a matrix
*
* \param r : Acting matrix
* \param v1: Vector to rotate
* \param v2: Rotation result
*/
void RotateVecByVecMat( float r[9] , float v1[3] , float v2[3] )
{
    float b[3] ;
    b[0] = r[0] * v1[0] + r[1] * v1[1] + r[2] * v1[2];
    b[1] = r[3] * v1[0] + r[4] * v1[1] + r[5] * v1[2];
    b[2] = r[6] * v1[0] + r[7] * v1[1] + r[8] * v1[2];
    v2[0] = b[0] ; v2[1] = b[1] ; v2[2] = b[2] ;
}

/**
* \brief make a matrix from one stored in a vector
*
*/
void VecMat2Mat( float r[9] , float M[3][3] )
{
    M[0][0] = r[0] ;
    M[0][1] = r[1] ;
    M[0][2] = r[2] ;

    M[1][0] = r[3] ;
    M[1][1] = r[4] ;
    M[1][2] = r[5] ;

    M[2][0] = r[6] ;
    M[2][1] = r[7] ;
    M[2][2] = r[8] ;
}


/**
* \brief Rotate a vector by a transposed matrix
*
* \param r : Acting matrix
* \param v1: Vector to rotate
* \param v2: Rotation result
*/
void RotateVecByVecTransposeMat(float r[9], float v1[3], float v2[3])
{
    float b[3];
    b[0] = r[0] * v1[0] + r[3] * v1[1] + r[6] * v1[2];
    b[1] = r[1] * v1[0] + r[4] * v1[1] + r[7] * v1[2];
    b[2] = r[2] * v1[0] + r[5] * v1[1] + r[8] * v1[2];
    v2[0] = b[0]; v2[1] = b[1]; v2[2] = b[2];
}



/**
* \brief Rotate a vector by a transposed matrix
*
* \param r : Acting matrix
* \param v1: Vector to rotate
* \param v2: Rotation result
*/
void RotateVecByTransposeMat( float r[3][3] , float v1[3] , float v2[3] )
{
    float b[3] ;
    b[0] = r[0][0] * v1[0] + r[1][0] * v1[1] + r[2][0] * v1[2];
    b[1] = r[0][1] * v1[0] + r[1][1] * v1[1] + r[2][1] * v1[2];
    b[2] = r[0][2] * v1[0] + r[1][2] * v1[1] + r[2][2] * v1[2];
    v2[0] = b[0] ; v2[1] = b[1] ; v2[2] = b[2] ;
}





/**
 * \brief Given qBt2ToB0,t2,qBtkToB0, tk , qBtkpToB0, tkp , t1 ,  (t2 > tkp > t1 > tk) , find qBt2ToBt1
 */
short InterpolateQuat ( float *qBt2ToB0, float * qBtkToB0, long tk , float * qBtkpToB0, long tkp , long t1 , float *qBt2ToBt1)
{
    float rho ;
    float axis[3] ;
    float ang ;
    float qBt1ToBtkp [4] , qBt2ToBtkp[4] , qBtkToBtkp[4] ;

    if (tkp <= (tk+1e-6f) )
    {
        axis[0] = 0 ; axis[1] = 0 ; axis[2] =-1;
        BuildQuat (axis , 0 , qBt2ToBt1) ;
        return -1 ;
    }

    // Interpolation ratio
    rho = (float)( tkp - t1 ) / (float) ( tkp - tk ) ;
    rho = fSat( rho , 2 ) ;


    InvQuatOnQuat( qBtkpToB0  , qBtkToB0 , qBtkToBtkp) ;

    DecomposeQuat( qBtkToBtkp , & ang , axis ) ;
    BuildQuat ( axis , rho * ang , qBt1ToBtkp)  ;

    InvQuatOnQuat(  qBtkpToB0 ,  qBt2ToB0   , qBt2ToBtkp ) ;
    InvQuatOnQuat(  qBt1ToBtkp,  qBt2ToBtkp , qBt2ToBt1  ) ;
    return 0 ;
}


/**
* \brief Get the position and the azimuth at given time, by interpolation of history log
*
* \param pos : History position
* \param eta : History direction
* \param LineSpeed: Line speed estimate
* \param pRoute: Route record interpolated or extrapolated to the relevant time (if 0, dont calculate)
* \param TimeValid : The validity time of the measurement
*
* \warning:
* On error exit, don't rely any of the outputs
*/
short GetPosWithDelay ( long pos[3]  , float * eta , float * LineSpeed , struct CRouteLogItem *pRoute, long unsigned TimeValid )
{
    long tDelta  ;
    short unsigned nRecent, nPut , nFetch , nvalid , n1 , n2 , nback ;
    short cnt , n  , next , ok  ;
    long t1, t2 , tprd , delta ;
    float  rho , oneOverT  , QBNowToBtvalid[4] ;
    struct CRouteLogItem * pn1;
    struct CRouteLogItem * pn2;
    short unsigned mask;

    if ( GyroInt.GyroQuatListReady == 0 ) return -1 ; // Protection: Nothing to do if queue is not ready

    // Interpolate history
    nRecent = ( GyroInt.nGyroQuatListPut - 1) & 0xf ;
    tDelta = (long signed) (TimeValid - GyroInt.GyroQuatList[nRecent].Time)  ;

    if ( tDelta >= 0 )
    { // Measurement is very new
        next = nRecent ;
        n   = ( nRecent - 1 ) & ( N_GYRO_LIST  - 1 ) ;
        t1  = GyroInt.GyroQuatList[nRecent].Time - GyroInt.GyroQuatList[n].Time ;
        if ( t1 < 1000 )
        {
            return -1 ; // Error in timing data
        }
        oneOverT = 1.0f / (float)t1 ;
        rho =  (float) ( (TimeValid - GyroInt.GyroQuatList[nRecent].Time) * oneOverT )  ;
        pos[0] = (long) ( -GyroInt.GyroQuatList[n].iPos[0] * rho + GyroInt.GyroQuatList[nRecent].iPos[0] * ( 1.0f + rho) ) ;
        pos[1] = (long) ( -GyroInt.GyroQuatList[n].iPos[1] * rho + GyroInt.GyroQuatList[nRecent].iPos[1] * ( 1.0f + rho) ) ;
        pos[2] = (long) ( -GyroInt.GyroQuatList[n].iPos[2] * rho + GyroInt.GyroQuatList[nRecent].iPos[2] * ( 1.0f + rho) ) ;

        // GyroQuat is qBNowToB0
        InterpolateQuat ( GyroInt.GyroQuat , GyroInt.GyroQuatList[n].Quat , GyroInt.GyroQuatList[n].Time ,
            GyroInt.GyroQuat, GyroInt.Time , TimeValid , QBNowToBtvalid);
        * eta = mod2piS (SysState.Nav.yaw - 2 * atan2f (QBNowToBtvalid[3],QBNowToBtvalid[0]) ) ;
    }
    else
    {
        n       = GyroInt.nGyroQuatListPut ;
        tDelta = (long signed) ( TimeValid -  GyroInt.GyroQuatList[n].Time ) ;
        if ( tDelta <= 0 )
        { // Too old to be useful
            return -1 ;
        }

        ok = 0 ;
        for ( cnt = 0 ; cnt < (N_GYRO_LIST-1) ; cnt++ )
        {
            next    = (n+1) & ( N_GYRO_LIST-1) ;
            t1 = (long)  ( TimeValid - GyroInt.GyroQuatList[n].Time ) ;
            t2 = (long)  ( GyroInt.GyroQuatList[next].Time - TimeValid ) ;
            if ( t1 >= 0 && t2 >= 0 )
            {
                tprd = GyroInt.GyroQuatList[next].Time - GyroInt.GyroQuatList[n].Time ;
                if ( tprd > 1000 )
                {
                    ok = 1 ;
                }
                break ;
            }
            n = next ;
        }
        if ( ok == 0 )
        {
            return -1 ; // Programming bug , don't proceed
        }
        oneOverT = 1.0f / (float)tprd ;
        rho =  (float) t1 * oneOverT ;
        pos[0] = (long) ( GyroInt.GyroQuatList[n].iPos[0] * rho + GyroInt.GyroQuatList[next].iPos[0] * ( 1.0f - rho) ) ;
        pos[1] = (long) ( GyroInt.GyroQuatList[n].iPos[1] * rho + GyroInt.GyroQuatList[next].iPos[1] * ( 1.0f - rho) ) ;
        pos[2] = (long) ( GyroInt.GyroQuatList[n].iPos[2] * rho + GyroInt.GyroQuatList[next].iPos[2] * ( 1.0f - rho) ) ;

        InterpolateQuat ( GyroInt.GyroQuat , GyroInt.GyroQuatList[n].Quat , GyroInt.GyroQuatList[n].Time ,
                          GyroInt.GyroQuatList[next].Quat , GyroInt.GyroQuatList[next].Time , TimeValid , QBNowToBtvalid);
        * eta = mod2piS (SysState.Nav.yaw - 2 * atan2f(QBNowToBtvalid[3],QBNowToBtvalid[0]) ) ;
    }
    * LineSpeed = HYpot((float)(GyroInt.GyroQuatList[next].iPos[0] - GyroInt.GyroQuatList[n].iPos[0]) ,
                    (float)( GyroInt.GyroQuatList[next].iPos[1] - GyroInt.GyroQuatList[n].iPos[1]) ) * oneOverT * (1e6f * LONG_2_M_FAC)   ;

    if (pRoute ==  (struct CRouteLogItem *)0 )
    {  // Did not ask any route info, don't calculate it
        return 0 ;
    }


    // Get the route log
    // We shall ignore the two oldest logs, it can be killed while we deal
    mask = BlockInts();
    nPut   = SysState.Nav.RouteLog.PutCounter;
    nFetch = SysState.Nav.RouteLog.FetchCounter;
    RestoreInts(mask);

    nRecent = ( nPut - 1) & (N_LOG_BUFFER_SIZE-1);
    nvalid = (nPut - nFetch) & (N_LOG_BUFFER_SIZE - 1);
    if (nvalid < 3 )
    {
        mask = BlockInts();
        * pRoute = SysState.Nav.RouteLog.Buf[nRecent];
        RestoreInts(mask);
        return -1; // Log is empty or nearly
    }

    // Drop the two oldest
    nvalid -= 2;
    nFetch = (nPut - nvalid) & (N_LOG_BUFFER_SIZE - 1);

    delta       = (long signed) ( IsrTimer.UsecTimer - TimeValid ) ;

    if (delta < 0 || (nvalid==1) )
    { // Dont extrapolate
        mask = BlockInts();
        *pRoute = SysState.Nav.RouteLog.Buf[nRecent];
        RestoreInts(mask);
        return  pRoute->RouteValid;
    }

    if (delta >= ((long)nvalid - 1) * ROUTE_LOG_TS_USEC)
    { // Too old in the past, can't interpolate
        mask = BlockInts();
        * pRoute = SysState.Nav.RouteLog.Buf[nFetch];
        RestoreInts(mask);
        return -1 ;
    }

    nback = (short) ( delta / ROUTE_LOG_TS_USEC) ;
    rho   = (delta - (long) nback * ROUTE_LOG_TS_USEC) / (float)ROUTE_LOG_TS_USEC; // Relative importance of n1
    n2    = (nRecent - nback) & (N_LOG_BUFFER_SIZE - 1);
    n1    = (n2 - 1) & (N_LOG_BUFFER_SIZE - 1);
    pn1 = &SysState.Nav.RouteLog.Buf[n1];
    pn2 = &SysState.Nav.RouteLog.Buf[n2];
    if (pn1->RouteValid == 0)
    {
        mask = BlockInts();
        *pRoute = *pn2;
        RestoreInts(mask);
        if (pn2->RouteValid == 0)
        { // Time was not on valid frame
            return -1 ;
        }
        return 0;
    }
    else
    {
        if (pn2->RouteValid == 0)
        { // Time was not on valid frame
            mask = BlockInts();
            *pRoute = *pn1;
            RestoreInts(mask);
            return 0;
        }
    }

    // Finally interpolate
    mask = BlockInts();
    pRoute->RouteLocation[0] = pn1->RouteLocation[0] * rho + pn2->RouteLocation[0] * (1 - rho);
    pRoute->RouteLocation[1] = pn1->RouteLocation[1] * rho + pn2->RouteLocation[1] * (1 - rho);
    pRoute->RouteTangent = pn1->RouteTangent * rho + pn2->RouteTangent * (1 - rho);
    pRoute->RouteTime = TimeValid;
    pRoute->RouteValid = 1;
    pRoute->RouteType = pn2->RouteType;
    RestoreInts(mask);

    return 0 ;
}


/**
* \brief Correct the orientation estimate based on a measured direction that has a non-negligible age
*
* \param pItem -> The motion item of a straight line
* \param d  : detected distance
* \parak k    : The Kalman correction gain
* \param TimeValid : The validity time of the measurement
*/
short CorrectPosWithDelay ( struct CMotionItem * pItem , float d , float k , long unsigned TimeValid )
{
    short RetVal ;
    float bx, by , bz , ceta , seta , a11 , a22 , a12  , b1 , b2 , det , dtrim ,  eta , dls ,  LineSpeed;
    long  pos[3]; 
    short unsigned mask;
    struct CRouteLogItem Route;
    RetVal = GetPosWithDelay ( pos  , & eta ,  &LineSpeed , & Route , TimeValid );

    if ( RetVal ) return RetVal ;

    bx = (pos[0] - pItem->x) * 1.e-4f ;
    by = (pos[1] - pItem->y ) * 1.e-4f ;
    bz = (pos[2] - pItem->z_or_lModeData ) * 1.e-4f ; //ok
    ceta = Ycos( eta ) ;
    seta = Ysin( eta ) ;


    a11  = pItem->cx * pItem->cx + pItem->cy * pItem->cy + pItem->cz_or_fModeData * pItem->cz_or_fModeData ;
    a22  = 1.0f ;
    a12  = pItem->cx * seta - pItem->cy * ceta ;
    b1   = pItem->cx * bx + pItem->cy * by + pItem->cz_or_fModeData * bz ;
    b2   = seta * bx - ceta * by ;

    det = a11 * a22 - a12 * a12 ;
    if ( det < 1e-6f )
    { // For some shit this problem is singular
        return -1 ;
    }

    dls   = (-a12 * b1 + a11 * b2 ) / det ;
    dtrim = k * ( d - dls) ;

    mask = BlockInts() ;
    SysState.Nav.iPos[0] = SysState.Nav.iPos[0] - (long) (seta * dtrim * 1.0e4f ) ;
    SysState.Nav.iPos[1] = SysState.Nav.iPos[1] + (long) (ceta * dtrim * 1.0e4f ) ;
    RestoreInts(mask) ;

    return 0 ;
}




/**
* \brief Correct the orientation estimate based on a measured direction that has a non-negligible age
*
* \param xnom : The nominal position of the measured vector
* \param xact : The actual position of the measured vector
* \parak k    : The Kalman correction gain
* \param TimeValid : The validity time of the measurement
*/
short CorrectImuWithDelay ( float xnom[] , float xact[] , float k , long unsigned TimeValid )
{
    short RetVal ;
    extern short CorrectImuWithDelayBody ( float xnom[] , float xact[] , float k , long unsigned TimeValid );
    if ( GyroInt.GyroQuatListReady == 0 ) return -1 ; // Protection: Nothing to do if queue is not ready
    GyroInt.ListProtect = 1 ;
    RetVal = CorrectImuWithDelayBody ( xnom,  xact ,  k ,  TimeValid ) ;
    GyroInt.ListProtect = 0 ;
    return RetVal ;
}


short CorrectImuWithDelayBody ( float xnom[] , float xact[] , float k , long unsigned TimeValid )
{
    long tDelta  ;
    short unsigned nRecent ;
    short cnt , n  , next , ok ;
    long t1, t2 ;
    float QBt2ToBt1[4] , QBt1ToN[4] ;


    nRecent = ( GyroInt.nGyroQuatListPut - 1) & 0xf ;
    tDelta = (long signed) (TimeValid - GyroInt.GyroQuatList[nRecent].Time)  ;

    if ( tDelta >= 0 )
    { // Measurement is very new
        InterpolateQuat ( GyroInt.GyroQuat , GyroInt.GyroQuatList[nRecent].Quat , GyroInt.GyroQuatList[nRecent].Time , GyroInt.GyroQuat, GyroInt.Time , TimeValid , QBt2ToBt1);
    }
    else
    {
        n       = GyroInt.nGyroQuatListPut ;
        tDelta = (long signed) ( TimeValid -  GyroInt.GyroQuatList[n].Time ) ;
        if ( tDelta <= 0 )
        { // Too old to be useful
            return -1 ;
        }

        ok = 0 ;
        for ( cnt = 0 ; cnt < (N_GYRO_LIST-1) ; cnt++ )
        {
            next    = (n+1) & ( N_GYRO_LIST-1) ;
            t1 = (long)  ( TimeValid - GyroInt.GyroQuatList[n].Time ) ;
            t2 = (long)  ( GyroInt.GyroQuatList[next].Time - TimeValid ) ;
            if ( t1 >= 0 && t2 >= 0 )
            {
                ok = 1 ;
                break ;
            }
            n = next ;
        }
        if ( ok == 0 )
        {
            return -1 ; // Programming bug , don't proceed
        }
        // Note that below t2 is "now"
        InterpolateQuat ( GyroInt.GyroQuat  , GyroInt.GyroQuatList[n].Quat , GyroInt.GyroQuatList[n].Time , GyroInt.GyroQuatList[next].Quat,  GyroInt.GyroQuatList[next].Time , TimeValid , QBt2ToBt1);
    }
    QuatOnInvQuat ( GyroInt.BodyQuat , QBt2ToBt1 ,  QBt1ToN ) ;
    CorrectQuatByMeasVec ( QBt1ToN, xnom , xact , k , QBt1ToN ) ;
    QuatOnQuat (  QBt1ToN , QBt2ToBt1 ,  GyroInt.BodyQuat ) ;

    return 0 ;
}


/*
void IntegrateWheels()
{
    if ( Running a straight segment of type 0 )
    {
        // S integrates as r * (encR + EncL ) / 2
    }
    else
    {  // Reset the S integration

    }

    // Expected angular speed = (VLeft-Vright) * (2a) + 0.5 (wSteer1 + Lsteer)
}
*/

void InitGyroIntegration( void)
{

    GyroInt.AccOffset[0] =  Calib.AccOffsetX;
    GyroInt.AccOffset[1] =  Calib.AccOffsetY;
    GyroInt.AccOffset[2] =  Calib.AccOffsetZ;
    UnityQuat ( GyroInt.GyroQuat ) ;
}

#define nAccumMax 1024
long labs( long) ;
//float ImuQuatFromNominalPosition[4];
float ImuQuatENUFromNominalPos[4];
/*
 * \brief Make gyro integration, given inertial measurement
 * \param w: Angular speed before offset correction
 * \param dT     : Time interval to integrate
 */
void GyroAction ( float w_in[3] , float newQ[]  , float dt )
{
    //short AccValid ;

    // float nG ,accb[3] ;
    //float caz , saz      ;
    struct CGyroQuatListItem * pList , *pList1 ;
    float newyaw , oldyaw , Gpitch ,Groll, junk , win_o[3] ; // , qdif[4] ;
    float byaw , bpitch, broll, dyaw , ang , inov  , inovdt , daz , dest ;

    //SubtractVec ( acc_in , GyroInt.AccOffset , SysState.Nav.Imu.LinAccCorrect ) ;

    //w[0] = w_in[0] ; w[1] = w_in[1] ; w[2] = w_in[2] ;


    // Correct for gyro offset. This is done only on startup


/*
    if (GyroInt.nOffsetCalibAttempts > MAX_GYRO_CALIB_ATTEMPTS)
    {
        GyroInt.bOffsetCalibDone = 0;
        GyroInt.OffsetAccumCtr = nAccumMax ;
        GyroInt.GyroOffset[0] =  Calib.GyroOffsetX ;
        GyroInt.GyroOffset[1] =  Calib.GyroOffsetY ;
        GyroInt.GyroOffset[2] =  Calib.GyroOffsetZ ;
    }
    else
*/
    if ( ImuStartMgr.Good  == 0  )
    {
        DisableGyroDriftCorrection() ;
        return ;
    }

    //InvertQuat(newQ_In,newQ) ; // as XSENS measures Top->Bottom transform, while the conventions here are bottom->top

    // Legitimate gyro readout
    // SubtractVec ( w_in , GyroInt.GyroOffset , win_o) ;
    win_o[0] = w_in[0] ;
    win_o[1] = w_in[1] ;
    win_o[2] = w_in[2] ;

    // Pass to coordinate frame via correction matrix
    RotateVecByQuat( SysState.Nav.qChip2Body , win_o , GyroInt.Wbody ) ;

    // Transform to local coordinates
    oldyaw = QuattoYew (GyroInt.GyroQuat);
    if ( GyroInt.bHardwareTestMode)
    {
        CopyQuat ( newQ, GyroInt.GyroQuat );
    }
    else
    {
        // The <IMU system, body axes of robot for IMU> set is such that in its unrotated place is also unrotated in <NAV system, body axes of robot for NAV>
        QuatOnQuat ( newQ, Calib.qImu2ZeroENUPos , ImuQuatENUFromNominalPos) ;
        QNED2ENU( ImuQuatENUFromNominalPos ,  GyroInt.GyroQuat  );

        //QuatOnQuat ( newQ, SysState.Nav.QPreImu ,  ImuQuatFromNominalPosition) ;
        //QuatEnu2Ned(ImuQuatFromNominalPosition,GyroInt.GyroQuat ) ; //GyroQuat = ENUNED * Qr1 = ENUNED * newQ * SysState.Nav.QPreImu = ENUNED * newQ * ENUNED * qImu2ZeroENUPos
    }

    newyaw = QuattoYew (GyroInt.GyroQuat);
    if ( ImuStartMgr.New  )
    {
        oldyaw =  newyaw ;
    }
    //IntegrateQuat( GyroInt.GyroQuat, GyroInt.Wbody , dT , GyroInt.GyroQuat ) ;


    // Integrate accelerometer. Note that the accelerometer is integrated in world coordinates
    if (SysState.WakeupState != E_CAN_WAKEUP_SLEEP)
    {

        QuattoEuler(GyroInt.GyroQuat , &junk , &Gpitch, &Groll);
        QuattoEuler(GyroInt.BodyQuat , &byaw , &bpitch, &broll);
        dyaw = mod2piS(newyaw-oldyaw) + GyroInt.YawComp * dt;
        SysState.Nav.RawYaw = mod2piS ( SysState.Nav.RawYaw + dyaw  )  ;

        if ( ManRouteCmd.ShelfMode == 0 )
        {
            // If on the shelf, there is no tilt
            //if ( SysState.Nav.WheelsStopped == 0 )
            //{
            //    IntegrateQuat( GyroInt.BodyQuat, GyroInt.Wbody , dT , GyroInt.BodyQuat ) ;
            //}

            //CorrectZQuatByMeasVec ( GyroInt.BodyQuat , GyroInt.Vertical , 0.0003f   ) ;

            // !SysState.Nav.yaw = mod2piS ( SysState.Nav.yaw + mod2piS(newyew-oldyew) * 0.95f )  ;

            // On ground: accept pitch and roll from IMU as is , take only yaw difference
            // Filter the angular speed
            SysState.Nav.dyaw = SysState.Nav.dyaw +  0.2f * ( dyaw / dt - SysState.Nav.dyaw )  ;


            // If robot is not moving, don't change the yaw at all
            if ( SysState.Nav.DontIntegrateYaw == 0 )
            {
                SysState.Nav.yaw = mod2piS ( byaw + dyaw + SysState.Nav.GyroZOffsetEst * dt  )  ;
            }

            SysState.Nav.pitch = Gpitch ;
            SysState.Nav.roll  = Groll  ;
        }
        else
        {
            // On the shelfs, the yaw remains fixed
            // The pitch is zero
            // Only the roll changes
            SysState.Nav.pitch = Gpitch  ; // We need the pitch to identify robot skewing on the rail
            SysState.Nav.roll  = Groll  ;
            SysState.Nav.yaw   = byaw  ;
            SysState.Nav.dyaw  = 0 ;
        }

        // !Euler2Quat(SysState.Nav.yaw, SysState.Nav.pitch,SysState.Nav.roll, GyroInt.BodyQuat);
        Euler2Quat(SysState.Nav.yaw, SysState.Nav.pitch,SysState.Nav.roll, GyroInt.BodyQuat);
    }

    // Once in 128msec put in history vector
    if ( GyroInt.ListProtect == 0 )
    {
        GyroInt.GyroQuatInterTime += 1 ;
        if ( GyroInt.GyroQuatInterTime >= 4 ) // Changed as gyro updates only once in 10msec
        {
            GyroInt.GyroQuatInterTime = 0  ;
            pList = & GyroInt.GyroQuatList[GyroInt.nGyroQuatListPut];

            // Copy to the next vacant: current navigation info
            CopyQuat ( GyroInt.GyroQuat , pList->Quat ) ;
            pList->iPos[0] = SysState.Nav.iPos[0] ;
            pList->iPos[1] = SysState.Nav.iPos[1] ;
            pList->iPos[2] = SysState.Nav.iPos[2] ;
            //pList->Yaw = SysState.Nav.yaw ;
            pList->Time = GyroInt.Time ;

            pList->AzSample     = SysState.Nav.AzInt ;
            pList->AzSampleTime = SysState.Nav.UsecOfiPos ;
            pList->YawSample = SysState.Nav.RawYaw ;

            GyroInt.nGyroQuatListPut = ( GyroInt.nGyroQuatListPut + 1 ) & 0xf ;
            if ( GyroInt.nGyroQuatListPut == 0 )
            {
                GyroInt.GyroQuatListReady = __min( GyroInt.GyroQuatListReady + 1 , 127)  ;
            }

            // Gyro offset correction
            if ( ( SysState.Nav.bGyroDriftDisable == 0 ) && GyroInt.GyroQuatListReady && GyroInt.bEnableGyroOffsetEst )
            {
                pList1 = & GyroInt.GyroQuatList[GyroInt.nGyroQuatListPut]; // The PUT pointer points to the oldest
                //InvQuatOnQuat(  pList1->Quat , GyroInt.GyroQuat ,qdif  );
                //ang = 2 * aYcos( qdif[0]  ) * (qdif[3] >= 0 ? 1 : -1  ) ;
                ang  = mod2piS(pList->YawSample-pList1->YawSample) ;
                daz = mod2piS(pList->AzSample-pList1->AzSample);
                inov = mod2piS( daz - ang ) ;
                inovdt =  ( pList->AzSampleTime - pList1->AzSampleTime ) * 1e-6f  ;

                /*
                SysState.fDebug[0] = ang ;
                SysState.fDebug[1] = inov ;
                SysState.fDebug[2] = inovdt ;
                */

                if ( (fabsf(inov) < 0.25f) && (fabs(daz) < 0.03f )  && inovdt > 0.5f &&  inovdt < 0.7f) // 2 degree over 2 seconds
                {
                    dest =  ( inov - SysState.Nav.GyroZOffsetEst * inovdt)  *
                                (128 - GyroInt.GyroQuatListReady  ) * GyroInt.kKalmanOffsetCorrect ;
                    SysState.Nav.GyroZOffsetEst = SysState.Nav.GyroZOffsetEst + __fmax(__fmin( dest , 0.02),-0.02) ;

                }
                else
                {
                    DisableGyroDriftCorrection();
                }
            }
        }
    }

    if ( GyroInt.GyroQuatListReady == 0 )
    { // Buffer must be full before game really starts
        return ;
    }

    /*
    AccValid = ( IsInBodyAcc() ? 0 : 1 )  ; // Inquiry to motion manager (not in acceleration of wheels, not in turn Type=2)
    nG = VecMag ( SysState.Nav.Imu.LinAccCorrect) ;
    if ( nG < 9.6f || nG > 10.0f )
    { // Accelerometer reads significant acceleration
        AccValid = 0 ;
    }

    if ( AccValid )
    {
        RotateVecByQuat ( GyroInt.BodyQuat , SysState.Nav.Imu.LinAccCorrect, accb) ;
        CorrectQuatByMeasVec ( GyroInt.BodyQuat , GyroInt.gNom , accb , GyroInt.kKalmanAcc * dT  , GyroInt.BodyQuat ) ;
    }
    */



    // - Gyro speed is not too big
    // - Not in body acceleration
    // - Not in differential drive command, and timeout for it
    // - No  planned steering application , and timeout for it
    // - No planned neck motion, and timeout for it
    /*
    if ( VecMag(GyroInt.Wbody) < GyroInt.WThold4GyroOffsetCorrect  && IsInBodyRot() == 0 && IsInBodyAcc() == 0  )
    {
        Interpolate (GyroInt.GyroOffset , w , GyroInt.kKalmanOffsetCorrect * dT  , GyroInt.GyroOffset ) ;
    }
    */
}

/*
* \brief Get the  Euler angles from quaternion
*
* \param q : quaternion
* \param roll  -> roll angle
* \param pitch -> pitch angle
* \param yaw    -> yaw angle
*/
void Euler2Quat(float yaw, float pitch,float roll, float q[])
{
    float q2[4] ;
    float cy , sy , cp , sp , cr , sr ;

    cy = Ycos(yaw/2) ;
    sy = Ysin(yaw/2) ;

    cp = Ycos(pitch/2);
    sp = Ysin(pitch/2);

    cr = Ycos(roll/2);
    sr = Ysin(roll/2);

    q2[0] = cp*cr ;
    q2[1] = cp*sr ;
    q2[2] =  sp *cr ;
    q2[3] = -sp * sr ;

    q[0] = cy*q2[0] - sy * q2[3] ;
    q[1] = cy*q2[1] - sy * q2[2] ;
    q[2] = cy*q2[2] + sy*q2[1] ;
    q[3] = cy*q2[3] + sy*q2[0] ;

    if ( q[0] < 0 )
    {
        q[0] = -q[0] ; q[1] = -q[1] ; q[2] = -q[2] ; q[3] = -q[3] ;
    }
}



#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( QuattoEuler, "--opt_level=3" );
#endif
/*
 * \brief Get the Euler angles from a quaternion
 *
 * \param q : quaternion
 * \param roll  -> roll angle
 * \param pitch -> pitch angle
 * \param yaw   -> yaw angle
 */
void QuattoEuler(float q[4], float * yaw, float *pitch, float * roll)
{
    float ysqr , t0 , t1 , t2 ,t3 , t4 ;
    ysqr = q[2] * q[2] ;

    // roll (x-axis rotation)
    t0 = +2.0f * (q[0] * q[1] + q[2] * q[3]);
    t1 = +1.0f - 2.0f * (q[1] * q[1] + ysqr);
    * roll = atan2f(t0, t1);

    // pitch (y-axis rotation)
    t2 = +2.0f * (q[0] * q[2] - q[3] * q[1]);
    * pitch = aYsin(t2) ;

    // yaw (z-axis rotation)
    t3 = +2.0f * (q[0] * q[3] + q[1] * q[2]);
    t4 = +1.0f - 2.0f * (ysqr + q[3] * q[3]);
    * yaw = atan2f(t3, t4);
}

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( QuattoYew, "--opt_level=3" );
#endif
float QuattoYew(float q[4])
{
    float t3 , t4 ;
    t3 = +2.0f * (q[0] * q[3] + q[1] * q[2]);
    t4 = +1.0f - 2.0f * (q[2] * q[2] + q[3] * q[3]);
    return  atan2f(t3, t4);
}


#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( QuattoRoll, "--opt_level=3" );
#endif
/*
 * \brief Get the roll from a quaternion
 *
 * \param q : quaternion
 * \return roll  -> roll angle
 */
float QuattoRoll(float q[4])
{
    float t0 , t1 ;

    // roll (x-axis rotation)
    t0 = +2.0f * (q[0] * q[1] + q[2] * q[3]);
    t1 = +1.0f - 2.0f * (q[1] * q[1] + q[2] * q[2] );
    return  atan2f(t0, t1);
}


