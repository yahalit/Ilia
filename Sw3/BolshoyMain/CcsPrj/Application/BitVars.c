/*
 * BitVars.h
 *
 *  Created on: Jan 30, 2023
 *      Author: yahal
 */

//#ifndef APPLICATION_BITVARS_C_
//#define APPLICATION_BITVARS_C_
#include "StructDef.h"
#include "BitVars.h"
/*
 * BitVars.h
 *
 *  Created on: Jan 30, 2023
 *      Author: yahali
 */
extern const struct CObjDictionaryItem ObjDictionaryItem[] ;


#ifdef TUNNEL_MSG


void InitTunnelMsg(void)
{
    struct CObjectReads *sPtr ;
    struct CObjDictionaryItem *pOdObject;
    short unsigned cnt ;
    sPtr = FloatObjectReads ;
    for ( cnt = 0 ; cnt < N_FLOAT_BITOBJ_READ ; cnt++)
    {
        *sPtr = ConstFloatObjectReads[cnt] ;
        GetObjIndex(sPtr->index , & pOdObject , &ObjDictionaryItem[0] ) ;
        sPtr->GetFun = pOdObject->GetFunc ;
        sPtr+=1 ;
    }
    sPtr = (struct CObjectReads *) ULongObjectReads ;
    for ( cnt = 0 ; cnt < N_ULONG_BITOBJ_READ ; cnt++)
    {
        *sPtr = ConstULongObjectReads[cnt] ;
        GetObjIndex(sPtr->index , & pOdObject , &ObjDictionaryItem[0] ) ;
        sPtr->GetFun = pOdObject->GetFunc ;
        sPtr+=1 ;
    }
    TunnelSdo.SlaveBuf = (long  unsigned *) & TunnelSdo.Lpayload ;

    USZero = 0 ;
}

short MakeBitBuffer( long unsigned *buf)
{
    short unsigned cnt  , n ;
    float *fPtr , *fnext ;
    unsigned long *lPtr , *lnext ;
    unsigned short *unext , nwords;
    float **fPtrPtr ;
    long unsigned **lPtrPtr ;
    short unsigned **uPtrPtr ;
    struct CObjectReads *sPtr ;
    //buf[0] =  0x64400000 ;
    fPtr = (float*) & buf[0] ;
    fPtrPtr = (float **) FloatBitPtrs ;
    nwords = 2 * ( N_FLOAT_BIT_READ + N_FLOAT_BITOBJ_READ + N_ULONG_BIT_READ  +N_ULONG_BITOBJ_READ+  N_USHORT_BIT_READ )  ;

     for ( cnt = 0 ; cnt < N_FLOAT_BIT_READ ; cnt++ )
    {
        fnext = * fPtrPtr++ ;
        *fPtr++ = *fnext ;
    }
    for ( cnt = 0 ; cnt < N_FLOAT_BITOBJ_READ ; cnt++)
    {
        sPtr = & (FloatObjectReads[cnt]);
        TunnelSdo.Index    = sPtr->index ;
        TunnelSdo.SubIndex = sPtr->subindex ;
        sPtr->GetFun(&TunnelSdo,&n) ;
        *fPtr++ = *((float *) TunnelSdo.SlaveBuf ) ;
    }

    lPtr = (unsigned long *) fPtr ;
    lPtrPtr = (long unsigned **) ULongBitPtrs ;
    for ( cnt = 0 ; cnt < N_ULONG_BIT_READ ; cnt++)
    {
        lnext = *lPtrPtr++ ;
        *lPtr++ = *lnext ;
    }

    for ( cnt = 0 ; cnt < N_ULONG_BITOBJ_READ ; cnt++)
    {
        sPtr = &( ULongObjectReads[cnt]);
        TunnelSdo.Index    = sPtr->index ;
        TunnelSdo.SubIndex = sPtr->subindex ;
        sPtr->GetFun(&TunnelSdo,&n) ;
        *lPtr++ = *((unsigned long *) TunnelSdo.SlaveBuf ) ;
    }

    uPtrPtr = (short unsigned **) UShortBitPtrs ;
    for ( cnt = 0 ; cnt < N_USHORT_BIT_READ ; cnt++)
    {
        unext = *uPtrPtr++ ;
        *lPtr++ = (long) (*unext) ;
    }

    return nwords ;
}

#else
short MakeBitBuffer( long unsigned *buf)
{
    (void) buf ;
    return 0 ;
}
#endif
//#endif /* APPLICATION_BITVARS_C_ */
