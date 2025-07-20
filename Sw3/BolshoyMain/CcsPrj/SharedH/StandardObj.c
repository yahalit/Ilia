// Standard objects
#include "SysUtils.h"
#include "..\Application\CanSlave.h"
#include <math.h>


/**
 * \brief Place holder in object dictionary for non-existing "Get" service
 */
long unsigned  NoSuchGetObject( struct CSdo * pSdo ,short unsigned *nData)
{
    (void) pSdo ;
    (void) nData ;
    return Unsupported_access_to_an_object ;
}



/**
 * \brief Place holder in object dictionary for non-existing "Set" service
 */
long unsigned  NoSuchSetObject( struct CSdo * pSdo ,short unsigned nData)
{
    (void) pSdo ;
    (void) nData ;
    return Unsupported_access_to_an_object ;
}


/**
 * \brief Get size of object dictionary
  * \detail This function is here because only in the scope of this file the size of
 * the object dictionary is known
 */
short unsigned GetOdSize( void )
{
    extern const short unsigned SizeofObjDict ;
    return SizeofObjDict ; // sizeof(ObjDictionaryItem)/sizeof(struct CObjDictionaryItem) ;
}


/**
 * \brief Find the dictionary item that fits a given index
 *
 * \detail Because of short dictionary, just running over all the records is cheapest
 *
 * \param TargetIndex   : The index to search
 * \param pObject   : The found object record
 * \return index in dictionary if OK, -1 no such object
 *
 * Remark: This routine is reentrant.
 *
 */
short GetObjIndex(short unsigned TargetIndex , struct CObjDictionaryItem **pObject, const struct CObjDictionaryItem *Dict)
{
    short L,R,m ;
    short unsigned Am  ;
    extern short unsigned GetOdSize( void ) ;

    L = 0 ; R = GetOdSize() ;

    for ( ; ; )
    {
        if ( L > R ) return -1 ;
        m = (L+R)>>1 ;
        Am = Dict[m].Index ;
        if ( Am < TargetIndex )
        {
            L = m + 1 ;
            continue ;
        }
        if ( Am > TargetIndex )
        {
            R = m - 1 ;
            continue ;
        }
        break ;
    }
    *pObject =  (struct CObjDictionaryItem *) &Dict[m]  ;
    return m ;
}


/**
 * \brief Test if a floating point number is legal
 * \param x : Tested number
 * \return  : 1 if illegal, 0 if good
 */
short isNan(float * x)
{
    long unsigned l = * ( ( long unsigned*)  x) ;
    l = ( l >> 23 ) & 0xff ;
    if  (l == 0xff )
        return 1 ; // Was NaN or Inf
    if ( l < 1) // Kill denormalized
        *x = 0 ;
    return 0 ;
}


/**
 * \brief Test if a variable is within the range, clamp it to range if necessary
 *
 * \param x-> Tested (possibly clamped) variable
 * \param xmax : Upper limit
 * \param xmin : Lower limit
 */
short IsInRange( float *x , float xmax , float xmin )
{
    if ( isNan( x) ) return -1 ;
    if ( *x > xmax )
    {
        *x = xmax ; return 1 ;
    }
    if ( *x < xmin )
    {
        *x = xmin ; return 1 ;
    }
    return 0 ;
}
