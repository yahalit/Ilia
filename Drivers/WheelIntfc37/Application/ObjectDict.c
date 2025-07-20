/*
 * ObjDict.c
 *
 *  Created on: Jun 28, 2023
 *      Author: yahal
 */


#include "Structdef.h"
#include <math.h>

long unsigned  SetConfigPar( struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetConfigPar( struct CSdo * pSdo ,short unsigned *nData);


long unsigned  SetFloatPar( struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetFloatPar( struct CSdo * pSdo ,short unsigned *nData);

long unsigned  SetRecorder( struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetRecorder( struct CSdo * pSdo ,short unsigned *nData);
long unsigned  GetSignalFlags(  struct CSdo * pSdo ,short unsigned *nData);

long unsigned  SetSignal(   struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetSignal(   struct CSdo * pSdo ,short unsigned *nData);

long unsigned  SetMotionPar(   struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetMotionPar(   struct CSdo * pSdo ,short unsigned *nData);

long unsigned  SetCalibCmd( struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetCalibCmd( struct CSdo * pSdo ,short unsigned *nData);

long unsigned  SetMiscTest( struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetMiscTest( struct CSdo * pSdo ,short unsigned *nData);

long unsigned  SetFwCmd(    struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetFwCmd(    struct CSdo * pSdo ,short unsigned *nData);

long unsigned  SetParamCmd( struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetParamCmd( struct CSdo * pSdo ,short unsigned *nData);

long unsigned  SetIdentityCmd( struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetIdentityCmd( struct CSdo * pSdo ,short unsigned *nData);


long unsigned  NoSuchGetObject( struct CSdo * pSdo ,short unsigned *nData);
long unsigned  NoSuchSetObject( struct CSdo * pSdo ,short unsigned nData);

long unsigned  GetRecorderCRC( struct CSdo * pSdo ,short unsigned *nData);

long unsigned  GetAtpData( struct CSdo * pSdo ,short unsigned *nData);


const struct CObjDictionaryItem ObjDictionaryItem [] =
{
{ 0x2000 , 2 , SetRecorder , GetRecorder } ,
{ 0x2001 , 2 , NoSuchSetObject , GetSignalFlags } ,
{ 0x2002 , 4 , SetSignal , GetSignal } ,
{ 0x2006 , 2 , NoSuchSetObject , GetRecorderCRC } ,
{ 0x2208  , 4 , SetFloatPar , GetFloatPar },
{ 0x220d  , 4 , SetConfigPar , GetConfigPar },
{ 0x2220  , 2 , SetMiscTest , GetMiscTest },
{ 0x2222  , 2 , NoSuchSetObject , GetAtpData },
{ 0x2301 , 4 , SetFwCmd , GetFwCmd },
{ 0x2302 , 4 , SetCalibCmd , GetCalibCmd },
{ 0x2303 , 4 , SetIdentityCmd , GetIdentityCmd },
{ 0x2304 , 4 , SetParamCmd , GetParamCmd },
{ 0x7fff , 4 , NoSuchSetObject , (GetDictFunc) 0 }
};

const short unsigned SizeofObjDict =  sizeof(ObjDictionaryItem)/sizeof(struct CObjDictionaryItem) ;



#define BURN_DATA_BUFFER RecorderBuffer
#define PROG_BUF_LEN 2048
#if REC_BUF_LEN < PROG_BUF_LEN
#error "Allocation failure for program buffer"
#endif



/**
 * \brief Get the index of parameter in the parameters table , brute force search
 *
 * \param TargetIndex: The index of the parameter to look for
 */
short unsigned GetParIndex ( short unsigned TargetIndex )
{
    short unsigned L , R, m , Am , cnt ;

    L = 0 ; R = N_ParTable ;

    for ( cnt = 0 ; cnt < 10000; cnt++  )
    {
        if ( L > R ) return UNSIGNED_MINUS1_S ;
        m = (L+R)>>1 ;
        Am = ParTable[m].ind ; ;
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
        return m ;
    }
    return UNSIGNED_MINUS1_S ; // Search too long
}

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


void KillCLA(void)
{
    // kill CLA
    EALLOW;

    MV8 = HWREGH(CLA1_BASE + (uint16_t)CLA_MVECT_8) ;


    NOP ;
    NOP ;
    NOP ;
    NOP ;
    CLA_performHardReset(CLA1_BASE) ;
    NOP ;
    NOP;
    CLA_performSoftReset(CLA1_BASE) ;
    NOP ;
    NOP ;

    //Master Select for LSx RAM:
    // 00: Memory is dedicated to CPU.
    // 01: Memory is shared between CPU and CLA1.
    // 10: Reserved.
    // 11: Reserved.
    EALLOW ;
    HWREG(MEMCFG_BASE + MEMCFG_O_LSXMSEL) = 0 ;
    //Selects LS5 RAM as program or data memory for CLA:
    // 0: CLA Data memory.
    // 1: CLA Program memory.
    HWREG(MEMCFG_BASE + MEMCFG_O_LSXCLAPGM) = 0x0 ; // CLAPGM_LS3..CLAPGM_LS5


    NOP ;
    NOP ;

    //Cla1Regs.MVECT8   = MV8;

    //Cla1Regs.MMEMCFG.all = 0x0 ;
    //asm ("    NOP") ;
    //asm ("    NOP") ;
    EDIS;
}



short SafePrepFlash(void)
{
    short stat ;
    short unsigned mask ;
    mask = InformDrivesCutOff() ;
    PauseInts() ;
    SysState.Mot.DisablePeriodicService = 1 ;
    stat = PrepFlash4Burn();
    SysState.Mot.DisablePeriodicService = 0 ;
    InformDrivesCutOn(mask) ;
    UnpauseInts() ;
    return stat ;
}


short SafeEraseFlash(long unsigned sect)
{
    short stat ;
    short unsigned mask ;
    mask = InformDrivesCutOff() ;
    PauseInts() ;
    SysState.Mot.DisablePeriodicService = 1 ;
    stat = EraseSector( sect   );
    SysState.Mot.DisablePeriodicService = 0 ;
    InformDrivesCutOn(mask)  ;
    UnpauseInts() ;
    return stat ;
}

short SafeProgramFlash( short unsigned * Buffer_in , long unsigned FlashAddress , long unsigned buflen)
{
    short stat ;
    short unsigned mask ;
    mask = InformDrivesCutOff() ;
    PauseInts() ;
    SysState.Mot.DisablePeriodicService = 1 ;
    stat = ProgramPageAutoECC(Buffer_in , FlashAddress , buflen ) ;
    SysState.Mot.DisablePeriodicService = 0 ;
    InformDrivesCutOn(mask)  ;
    UnpauseInts() ;
    return stat ;
}




long unsigned TestCfgPar( const struct CFloatConfigParRecord *pPar  , long rawvalue )
{
    float f ;
    long  l ;
    float *fPtr;

    if ( (pPar->Flags & CFG_FLOAT) == 0 )
    {
        l = rawvalue  ;
        f = (float) l ;
    }
    else
    {
        f =* ((float *) &rawvalue );
        if ( isnan( f) )
        {
            return General_parameter_incompatibility_reason ;
        }
    }

    if ( f < pPar->lower ||  f > pPar->upper )
    {
        return GetManufacturerSpecificCode(ERR_OUT_OF_RANGE)  ;
    }

    fPtr = pPar->ptr ;
    if ( (pPar->Flags & CFG_FLOAT) == 0 )
    {
        * ((long*) fPtr) = l ;
    }
    else
    {
        *fPtr = f;
    }
    return 0 ;
}




void ResetCpu( void  )
{
    EALLOW ;
    DINT   ;
    NOP ; // Allow DINT to effect
    KillCLA();
    EALLOW ;
    CLA_mapTaskVector(CLA1_BASE, CLA_MVECT_8, 234) ;
    //((VoidFun)0x80000 )() ; // Fat Bertha from which nobody ever returned
    SysCtl_enableWatchdog() ; // Enable WD
    for (;; );
}



short TestFlashAddress( unsigned long ul )
{
    if ( ul < 0x82000 || ul >= 0xc0000 || ( ul & (PROG_BUF_LEN-1) ) )
    {
        return -1 ;
    }
    return 0 ;
}




void ResetConfigPars(void)
{
    short unsigned cnt ;
    struct CFloatConfigParRecord *pPar ;
    for ( cnt = 0 ; cnt < nConfigPars ; cnt++)
    {
        pPar = ( struct CFloatConfigParRecord * ) &ConfigTable[cnt] ;
        if ( pPar->Flags & 2)
        {
            * pPar->ptr = pPar->defaultVal ;
        }
        else
        {
            * (long *)pPar->ptr = pPar->defaultVal ;
        }
    }
}


/**
 * \brief Get a floating point parameter . Object 0x2008
 *   Object 0x220d Get
 */
long unsigned  GetConfigPar( struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si  ;
    float f ;
    long  l ;
    struct CFloatConfigParRecord *pPar ;

    si = pSdo->SubIndex ;

    if ( si >= nConfigPars )
    {
        return Sub_index_does_not_exist ;
    }

    pPar = ( struct CFloatConfigParRecord * ) &ConfigTable[si] ;
    if ( pPar->Flags & 2 )
    {
        f = *  pPar->ptr ;
        * ((float *) &pSdo->SlaveBuf[0] ) = f ;
    }
    else
    {
        l = * (long *)pPar->ptr ;
        * ((long *) &pSdo->SlaveBuf[0] ) = l ;
    }


    *nData = 4 ;

    return 0 ;
}


/**
 * \brief Set a floating point configuration parameter .
 * Object 0x220d Set
 */
long unsigned  SetConfigPar( struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si ;
    float f ;
    long  l ;
    struct CFloatConfigParRecord *pPar ;

    si = pSdo->SubIndex ;

    if ( nData != 4 )
        return length_of_service_parameter_does_not_match;

    if ( si >= nConfigPars )
    {
        return Sub_index_does_not_exist ;
    }

    pPar = ( struct CFloatConfigParRecord * ) &ConfigTable[si] ;
    if ( (pPar->Flags &2) == 0 )
    {
        l = (float) (* ((long *) pSdo->SlaveBuf));
        f = (float) l ;
    }
    else
    {
        f =* ((float *) pSdo->SlaveBuf);
        if ( isnan( f) )
        {
            return General_parameter_incompatibility_reason ;
        }
    }

    if ( f < pPar->lower ||  f > pPar->upper )
    {
        return GetManufacturerSpecificCode(ERR_OUT_OF_RANGE)  ;
    }

    if ( (pPar->Flags &2) == 0 )
    {
        * ((long*) pPar->ptr) = l ;
    }
    else
    {
        * pPar->ptr = f;
    }
    InitControlParams() ;
    return 0 ;
}


/**
 * \brief object 0x2220: Miscellaneous services
 *
 */

long unsigned  GetMiscTest( struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si  ;

    union
    {
        short us[2] ;
        long l ;
        long ul ;
    } u ;

    //short unsigned *pUs ;
    si = pSdo->SubIndex ;
    *nData = 4 ;
    u.l = 0 ;
    switch ( si )
    {
    case 0:
        break ;


    default:
        return Sub_index_does_not_exist ;
    }
    * ((long *) &pSdo->SlaveBuf[0] ) = u.l ;
    return 0 ;
}


void SetMotorOff()
{

}

void SafeSetMotorOff()
{
    SetMotorOff();
}

/**
 * \brief object 0x2220: Miscellaneous services
 *
 */
short bcnt ;
long unsigned  SetMiscTest( struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si, YesNo ;
    //, us  ;
    //long unsigned ul ;
    //float f ;
    (void) nData ;
    //us =* ((short unsigned *) pSdo->SlaveBuf);
    //ul =* ((long unsigned *) pSdo->SlaveBuf);
    //f =* ((float *) pSdo->SlaveBuf);
    union MultiType u ;

    si = pSdo->SubIndex ;
    u.ul =* ((long unsigned *) pSdo->SlaveBuf);

    YesNo = (u.us[0]) ? 1 : 0 ;

    switch ( si )
    {
    case 0:
         break  ;

    case 12:
        // Do not delete case  FirmDW uses it to "Set Manual mode"
        break ;

    case 17:
        if ( YesNo )
        {// Stop reacting sync and PDO. NMT will be blocked in the idle loop, so master can't use NMT to restore action.
            SysState.MCanSupport.NodeStopped = 1 ;
            SysState.CBit2.bit.bAutoBlocked =  1  ;
        }
        else
        {
            SysState.CBit2.bit.bAutoBlocked = 0 ;
        }

        break ;

    case 18:
        if ( u.us[0] ==1234 )
        {// Do not delete case  FirmDW uses it to "Set Manual mode"
            SysState.MCanSupport.NodeStopped = 1 ;
            SetMotorOff();
        }
        break ;

    case 19:
        if ( !isnan(u.f))
        {
            SysState.Mot.LocalModeBrakeReleaseVolts = u.f ;
        }
        break ;

    case 20:
        SysState.Mot.BrakeRelease = YesNo ;
        break  ;


    case 23:
        if ( SysState.Mot.BrakeControlOverride == u.us[0] )
        {
            break ; // Nothing to do
        }
        SysState.Mot.BrakeControlOverride = u.us[0] ;
        SysState.Mot.BrakeRelease = 0 ;
        break ;

        /*
    case 19:
        EnableBrake(us);
        break;
    case 20:
        OutBrakeVolts( f  );
        break  ;
*/
    default:
        return Sub_index_does_not_exist ;
    }
    return 0 ;
}






/**
 * \brief Set a floating point parameter  . Object 0x2208.
 *
 */
long unsigned  SetFloatPar( struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si ;
    float f ;
    short unsigned stat ;
    struct CFloatParRecord *pPar ;

    si = pSdo->SubIndex ;
    f =* ((float *) pSdo->SlaveBuf);
    if ( isnan( f) )
    {
        return General_parameter_incompatibility_reason ;
    }

    if ( nData != 4 )
        return length_of_service_parameter_does_not_match;

    stat = GetParIndex( si ) ;
    if ( stat & 0x8000 ) return Sub_index_does_not_exist ;
    pPar = ( struct CFloatParRecord * ) &ParTable[stat] ;
    if ( f >= pPar->lower &&  f <= pPar->upper )
    {
        * pPar->ptr = f;
    }
    else
    {
        return General_parameter_incompatibility_reason ;
    }
    return 0 ;
}

/**
 * \brief Get a floating point parameter . Object 0x2208
 *
 */
long unsigned  GetFloatPar( struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si  ;
    short unsigned stat ;
    float f ;
    struct CFloatParRecord *pPar ;

    si = pSdo->SubIndex ;
    stat = GetParIndex( si ) ;
    if ( stat & 0x8000) return Sub_index_does_not_exist ;
    pPar = ( struct CFloatParRecord * ) &ParTable[stat] ;
    f = *  pPar->ptr ;

    *nData = 4 ;
    * ((float *) &pSdo->SlaveBuf[0] ) = f ;

    return 0 ;
}

/**
 * \brief Object 0x2302
 */
long unsigned  GetCalibCmd( struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si ;
    long unsigned ul ;
    long unsigned * pCalib ;

    si = pSdo->SubIndex ;

    if ( si == 0 )
    {
        ul = N_CALIB_RECS ;
    }

    else
    {
        if ( si < 100  )
        {
            pCalib = ((long unsigned *) &CalibProg.C.Calib) ;
        }
        else
        {
            pCalib = ((long unsigned *) &Calib);
            si -= 100 ;
        }

        if ( si == 0 || si > N_CALIB_RECS )
        {
            return Sub_index_does_not_exist ;
        }
        ul = pCalib[si-1] ;
    }

    * nData = 4 ;
    * ((long *) &pSdo->SlaveBuf[0] ) = ul ;
    return 0 ;
}


/**
 * \brief Object 0x2302 Set calibration
 */
long unsigned  SetCalibCmd( struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si , cnt ,CalibFileVer ;
    short stat ;
    unsigned long ul ;
    unsigned long * uPtr;
    float f ;
    const struct CCalibRecord *pCr ;
    struct CCmdMode cmd ;
    //long mask ;

    si = pSdo->SubIndex ;
    ul =* ((unsigned long *) pSdo->SlaveBuf);
    f =* ((float *) pSdo->SlaveBuf);

    // Reject if motor is on
    if ( SysState.CBit.bit.MotorOn )
    {
        return GetManufacturerSpecificCode(ERR_ONLY_FOR_MOTOROFF) ;

    }

    if ( si == 1 )
    {
        CalibProg.C.PassWord = ul ;
    }
    if ( (( CalibProg.C.PassWord != (0x12345600 + N_CALIB_RECS) ) && (si > 251) ) || nData != 4 )
    {
        return General_parameter_incompatibility_reason ;
    }
    if ( si == 1 )
    {
        ClearMemRpt( (short unsigned *) &CalibProg.C.Calib , sizeof(CalibProg.C.Calib ) );
        stat = SafePrepFlash() ;
        if ( stat )
        {
            return General_parameter_incompatibility_reason ;
        }
    }
    if (si >= 1 && si <= N_CALIB_RECS)
    {
        pCr = &CalibPtrTable[si-1] ;
        cmd = * (( struct CCmdMode *) &  pCr->flags ) ;
        if ( cmd.IsFloat )
        {
            stat = IsInRange( &f , pCr->limit , -pCr->limit );
            if ( stat )
            {
                return General_parameter_incompatibility_reason ;
            }
        }
        ((long unsigned*) &CalibProg.C.Calib)[si-1] = ul ;
        return 0 ;
    }

    switch ( si )
    {

    case 249:
    //case 29: // Apply calibration
        DealCalibration(2) ;
        stat = 0 ;
        break ;
    case 250:
    //case 30:
        // Clear the calibration
        DealCalibration(0) ;
        stat = 0 ;
        break ;
    case 251:
    //case 31:
        stat = ReadCalibFromFlash ( (long unsigned*) &CalibProg.C.Calib ,  FlashCalib    ) ;
        if ( stat == 0 )
        {
            SysState.CBit.bit.NoCalib = 0 ;
        }
        else
        {
            SysState.CBit.bit.NoCalib = 1 ;
        }
        break ;
    case 252:
    //case 32:// Clear sector of calibration
        SafeEraseFlash(Sector_AppCalib_start) ;
        break ;

    case 253:
    //case 33: // Write and verify calibration
        if ( ul == CalibProg.C.Calib.CalibData)
        {
            CalibFileVer = 0 ;
        }
        else
        {
            if ( ul == ~CalibProg.C.Calib.CalibData)
            {
                CalibFileVer = 1 ;
            }
            else
            {
                return General_parameter_incompatibility_reason;
            }
        }
        if ( CheckAlign ( (short unsigned *) &CalibProg.C.Calib , 1 ))
        {
            return General_parameter_incompatibility_reason ;
        }
        CalibProg.C.Calib.Password0x12345678 = 0x12345678  + CalibFileVer ;
        CalibProg.C.Calib.cs = 0 ;
        uPtr = (unsigned long *) & CalibProg.C.Calib ;
        for ( cnt = 0 ; cnt < ((sizeof(CalibProg.C.Calib)>>1)-1) ; cnt++ )
        {
            CalibProg.C.Calib.cs -= *uPtr++  ;
        }

        stat = SafeEraseFlash(Sector_AppCalib_start) ;

        if ( stat )
        {
            return GetManufacturerSpecificCode(ERR_COULD_NOT_ERASE_OLD_CALIB) ; ;
        }

        SafeProgramFlash((short unsigned * ) & CalibProg.C.Calib ,Sector_AppCalib_start  , 64 ) ;

        //mask = InformDrivesCutOff() ;

        //stat = ProgramPageAutoECC((short unsigned * ) & CalibProg.C.Calib ,Sector_AppCalib_start  , 64 ) ;
        //InformDrivesCutOn(mask) ;
        if ( stat )
        {
            SysState.CBit.bit.NoCalib = 1 ;
            return GetManufacturerSpecificCode(ERR_COULD_NOT_BURN_CALIB) ;
//            break ;
        }
        if ( DealCalibration(1) == 0 )
        {
            SysState.CBit.bit.NoCalib = 0 ;
        }
        else
        {
            SysState.CBit.bit.NoCalib = 1 ;
            return GetManufacturerSpecificCode(ERR_COULD_NOT_READ_CALIB) ;
        }

        break ;
    default:
        return Sub_index_does_not_exist ;
    }
    if ( stat )
    {
        return General_parameter_incompatibility_reason ;
    }
    return 0 ;
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


long unsigned GetSamplingTime( short unsigned ind)
{
/*
    if ( ind == 1 )
    {
        return (long)(SysState.Timing.Ts * 1e6f *2 ) ;
    }
*/
    return (long)(SysState.Timing.Ts * 1e6f ) ;
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
    if ( isnan( *x) ) return -1 ;
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

long unsigned GetManufacturerSpecificCode (long code)
{
    return ( ( code) ? Manufacturer_error_detail +  *(long unsigned*) &code : 0 ) ;
}


// Object 0x2006
long unsigned  GetRecorderCRC( struct CSdo * pSdo ,short unsigned *nData)
{
    long unsigned stat ;
    short unsigned crc , cnt , c , r  ;
    short unsigned * uPtr ;
    stat = GetRecorder( pSdo ,nData);
    if ( stat )
    {
         return stat ;
    }
    uPtr = (short unsigned *) pSdo->SlaveBuf ;
    crc  = 0xffff ;
    SysState.BlockUpload.nBytes = *nData ;
    for ( cnt = 0 ; cnt < (SysState.BlockUpload.nBytes>>1) ; cnt++ )
    {
        c = *uPtr++ ;
        crc = crc_ccitt_byte( crc, c & 0xff );
        crc = crc_ccitt_byte( crc, c >> 8   );
    }
    SysState.BlockUpload.crc = crc ;
    r = SysState.BlockUpload.nBytes % 7 ;
    SysState.BlockUpload.BytesEmptyAtEnd = ( r ? 7 - r : 0 );
    return 0 ;
}

__interrupt void Timer0InterruptKillFsi( void)
{

}
void KillFsiComm()
{
    short unsigned mask ;
    mask = BlockInts() ;
    Interrupt_register(INT_TIMER0, &Timer0InterruptKillFsi);
    RestoreInts(mask) ;
}
/*
 * \brief Object 0x2301
 *
 */
long unsigned  SetFwCmd(    struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si ;
    short stat ;
    unsigned long ul , pw ;
    //long mask ;
    si = pSdo->SubIndex ;
    ul =* ((unsigned long *) pSdo->SlaveBuf);

    if ( si == 1 )
    {
        pw = ul ;
    }
    else
    {
        pw = FlashProg.PassWord  ;
    }

//    if ( (IsMotorOn(0) | IsMotorOn(1) ) && ( SysState.MCanSupport.NodeStopped == 0 ) )
//    {
//        return GetManufacturerSpecificCode(ERR_ONLY_FOR_MOTOROFF)  ;
//    }

    // Services that do not require flash preparation
    switch ( si)
    {
        case 244: // Back home to boot
            KillFsiComm() ;
            ResetCpu( ) ;
            //((VoidFun)0x80000 )() ; // Fat Bertha from which nobody ever returned
            break ; // Formal
    }

    if ( pw != 0x12345678 || nData != 4 )
    {
        return General_parameter_incompatibility_reason ;
    }

    switch ( si )
    {
    case 1:
        KillFsiComm() ;
        stat = SafePrepFlash();
        if ( stat )
        {
            return General_parameter_incompatibility_reason ;
        }
        FlashProg.PassWord = ul ;
        break ; // Already accepted
    case 2:
        if ( ul > PROG_BUF_LEN - 256 )
        {
            return General_parameter_incompatibility_reason ;
        }
        FlashProg.InternalBufOffset = (short unsigned) ul ;
        break;
    case 100:
        if ( TestFlashAddress(ul) < 0   )
        {
            return General_parameter_incompatibility_reason ;
        }
        FlashProg.AddressInFlash = ul ;
        break ;
    case 130: // Clear section
        if ( ul != 31 )
        {
             return General_parameter_incompatibility_reason ;
        }
        KillFsiComm() ;

        stat = SafeEraseFlash(Sector_AppVerify_start) ;

        if ( stat )
        {
            return General_parameter_incompatibility_reason ;
        }
        break ;
    case 131: // Program buffer
        //if ( stat )
        {
            return General_parameter_incompatibility_reason ;
        }
        //break ;


    case 245: // Back home to boot, Reset PD first

        //WaitStam(20000, &SysTimerStr) ; // Wait interrupts to complete SDO send

        // Time to commit suicide
        KillFsiComm() ;
        ResetCpu( ); // ((VoidFun)0x80000 )() ; // Fat Bertha from which nobody ever returned
        break ; //Formal
    default:
        return Sub_index_does_not_exist;
    }
    return 0 ;
}

/* Object 0x2301 */
long unsigned  GetFwCmd(    struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si ;
    long unsigned * ulPtr ;
    ulPtr =  ((unsigned long *) pSdo->SlaveBuf);
    si = pSdo->SubIndex ;
    *nData = 4 ;

    switch ( si )
    {
    case 1:
        * ulPtr = FlashProg.PassWord  ;
        break ;
    case 2:
        * ulPtr = FlashProg.InternalBufOffset ;
        break ;
    case 3:
        * ulPtr = PROG_BUF_LEN ;
        break ;

    case 5: // Program identifier
        * ulPtr = PROJ_TYPE  ;
        break ;

    case 6:
        * ulPtr = 1 ;
        break ;

    case 7:
        * ulPtr = SubverPatch ;
        break ;

    case 8:
        * ulPtr = THISCARD ;
        break ;

    default:
        return Sub_index_does_not_exist;
    }

    return 0;
}



/**
 * \brief Object 0x2303
 */
long unsigned  GetIdentityCmd( struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si ;
    long unsigned ul ;

    si = pSdo->SubIndex ;
    if ( si == 0 )
    {
        ul = 16 ;
    }
    else
    {
        switch (si )
        {
        case 2:
            ul =  pUIdentity->C.Identity.HardwareRevision ;
            break ;
        case 3:
            ul =  pUIdentity->C.Identity.ProductionDate ;
            break ;
        case 4:
            ul =  pUIdentity->C.Identity.RevisionDate ;
            break ;
        case 5:
            ul =  pUIdentity->C.Identity.HardwareType ;
            break ;
        case 6:
            ul =  pUIdentity->C.Identity.SerialNumber ;
            break ;
        case 7:
            ul =  pUIdentity->C.Identity.ProductionBatchCode ;
            break ;

        case 32:
            ul = ProjId ;
            break  ;

        case 251:
            ul = DBaseConf.IsValidIdentity ;
            break ;
        case 252:
            ul = DBaseConf.IsValidDatabase ;
            break ;
        case 253:
            ul = pUIdentity->C.Identity.cs ;
            break ;
        case 254:
            ul = IdentityParametersRevision ;
            break ;
        default:
            return Sub_index_does_not_exist ;
        }
    }


    * nData = 4 ;
    * ((long *) &pSdo->SlaveBuf[0] ) = ul ;
    return 0 ;
}



/**
 * \brief Object 0x2303 Set identity
 */
long unsigned  SetIdentityCmd( struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si , cnt  ;
    short stat ;
    unsigned long ul ;
    unsigned long * uPtr;

    si = pSdo->SubIndex ;
    ul =* ((unsigned long *) pSdo->SlaveBuf);

    // Reject if motor is on
    SetMotorOff();

    if ( si == 1 )
    {
        IdentityProg.C.PassWord = ul ;
    }
    if ( (( IdentityProg.C.PassWord !=  0x12345678  ) && (si > 251) ) || nData != 4 )
    {
        return General_parameter_incompatibility_reason ;
    }
    if ( si == 1 )
    {
        ClearMemRpt( (short unsigned *) &IdentityProg.C.Identity , sizeof(IdentityProg.C.Identity ) );
        stat = SafePrepFlash();
        if ( stat )
        {
            return General_parameter_incompatibility_reason ;
        }
        return 0 ;
    }


    switch ( si )
    {
    case 2:
        IdentityProg.C.Identity.HardwareRevision = ul ;
        break ;
    case 3:
        IdentityProg.C.Identity.ProductionDate = ul ;
        break ;
    case 4:
        IdentityProg.C.Identity.RevisionDate = ul ;
        break ;
    case 5:
        IdentityProg.C.Identity.HardwareType = ul ;
        break ;
    case 6:
        IdentityProg.C.Identity.SerialNumber = ul ;
        break ;
    case 7:
        IdentityProg.C.Identity.ProductionBatchCode = ul  ;
        break ;
    case 252:
    //case 32:// Clear sector of calibration
        stat = SafeEraseFlash(Sector_AppIdentity_start) ;
        if ( stat )
        {
            return GetManufacturerSpecificCode(ERR_COULD_NOT_ERASE_OLD_IDENTITY) ; ;
        }

        break ;
    case 253:
        IdentityProg.C.Identity.PassWord = 0x12345678  ;
        IdentityProg.C.Identity.IdentityRevision =  IdentityParametersRevision ;
        IdentityProg.C.Identity.cs = 0 ;
        uPtr = (unsigned long *) & IdentityProg.C.Identity ;
        for ( cnt = 0 ; cnt < ((sizeof(IdentityProg.C.Identity)>>1)-1) ; cnt++ )
        {
            IdentityProg.C.Identity.cs -= *uPtr++  ;
        }
         stat = SafeEraseFlash(Sector_AppIdentity_start) ;

        if ( stat )
        {
            return GetManufacturerSpecificCode(ERR_COULD_NOT_ERASE_OLD_IDENTITY) ; ;
        }

        stat = SafeProgramFlash((short unsigned * ) & IdentityProg.C.Identity ,Sector_AppIdentity_start  , 64 ) ;

        if ( stat )
        {
            return GetManufacturerSpecificCode(ERR_COULD_NOT_BURN_IDENTITY) ;
        }
        ApplyIdentity(pUIdentity,pUNVParams);

        break ;
    default:
        return Sub_index_does_not_exist ;
    }
    return 0 ;
}

/**
 * \brief Object 0x2304
 */
long unsigned  GetParamCmd( struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si ;
    long unsigned ul ;

    si = pSdo->SubIndex ;
    if ( si == 0 )
    {
        ul = 1024 ;
    }
    else
    {
        if ( si >= 2 && si < 130 )
        {
            ul = RecorderBuffer[SysState.ParamProgSector*128 + si-2] ;
            return 0 ;
        }
        else
        {
            return Sub_index_does_not_exist ;
        }
    }

    * nData = 4 ;
    * ((long *) &pSdo->SlaveBuf[0] ) = ul ;
    return 0 ;
}

short IsBufferUsedForProgramming(void)
{
    return SysState.IsInParamProgramming ;
}


/**
 * \brief Object 0x2304 Set non volatile parameters
 */
long unsigned  SetParamCmd( struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si , cnt  ;
    short stat ;
    unsigned long ul ;
    unsigned long * uPtr;
    union UNVParams *pLocalParams ;

    si = pSdo->SubIndex ;
    ul =* ((unsigned long *) pSdo->SlaveBuf);
    pLocalParams = (union UNVParams *) & RecorderBuffer[0] ;

    // Reject if motor is on
    //if ( ClaState.MotorOnRequest)
    //{
    //    return GetManufacturerSpecificCode(ERR_ONLY_FOR_MOTOROFF) ;
    //}
    SetMotorOff() ;

    if ( Recorder.Stopped == 0 )
    {
        return GetManufacturerSpecificCode(ERR_RECORDER_BUFF_IN_USE) ;
    }


    if ( si == 1 )
    {
        NVParamsPassWord = ul ;
    }
    if ( (( NVParamsPassWord !=  0x12345678  ) && (si > 249) ) || nData != 4 )
    {
        return General_parameter_incompatibility_reason ;
    }
    SysState.IsInParamProgramming = 1 ;
    if ( si == 1 )
    {
        stat = SafePrepFlash();
        SysState.ParamProgSector = 0 ;
        if ( stat )
        {
            return General_parameter_incompatibility_reason ;
        }
        return 0 ;
    }

    if ( si >= 2 && si < 130 )
    {
        RecorderBuffer[SysState.ParamProgSector*128 + si-2] = ul ;
        return 0 ;
    }

    switch ( si )
    {
    case 250:
        // Do the most idiotic thing:  Select one desired project and leave all the rest empty
        if ( ul < PROJ_TYPE_WH_INTFC_R || ul > PROJ_TYPE_WH_INTFC_L )
        {
            return General_parameter_incompatibility_reason ;
        }
        for ( cnt = 0 ; cnt < 1024 ; cnt++)
        {
            pLocalParams->Buf[cnt] = 0xffffffff ;
        }
        pLocalParams->NVParams.Password = 0x12345678  ;
        pLocalParams->NVParams.ProjIndex = ul ;
        pLocalParams->NVParams.UseParsConfig = 0 ;
        break ;

    case 251:
        if ( ul >= 8 )
        {
            SysState.ParamProgSector = ul ;
        }
        else
        {
            return General_parameter_incompatibility_reason ;
        }
        // Determine sub-sector
        break ;
    case 252:
        //case 32:// Clear sector of parameters
            if ( ul == 12345  )
            {
                stat = SafeEraseFlash(Sector_AppParams_start) ;
            }
            else
            {
                return General_parameter_incompatibility_reason ;
            }
            if ( stat )
            {
                return GetManufacturerSpecificCode(ERR_COULD_NOT_ERASE_OLD_PARAMS) ; ;
            }

            break ;
    case 253:
        pLocalParams->NVParams.Password= 0x12345678  ;
        pLocalParams->NVParams.cs = 0 ;
        uPtr = (unsigned long *) &  RecorderBuffer[0]  ;
        for ( cnt = 0 ; cnt < 1023 ; cnt++ )
        {
            pLocalParams->NVParams.cs -= *uPtr++  ;
        }

        stat = SafeEraseFlash(Sector_AppParams_start) ;

        if ( stat )
        {
            return GetManufacturerSpecificCode(ERR_COULD_NOT_ERASE_OLD_PARAMS) ; ;
        }

        stat = SafeProgramFlash((short unsigned * ) & RecorderBuffer[0] ,Sector_AppParams_start  , 2048 ) ;

        if ( stat )
        {
            return GetManufacturerSpecificCode(ERR_COULD_NOT_BURN_PARAMS) ;
        }
        SysState.IsInParamProgramming = 0 ; // Release recorder buffer for use
        break ;

    case 254:
        // This will never return correctly because SDO mechanism is destroyed
        SafeSetMotorOff() ;
        ApplyIdentity(pUIdentity,pUNVParams);
        SetProjectId() ;
        FlushCanQueues() ;
#ifdef ON_BOARD_CAN
        setupMCAN();
#endif
        break ;
    default:
        return Sub_index_does_not_exist ;
    }
    return 0 ;
}


const float * pAtpRslt[] =  {
                             & ClaState.Analogs.PotentiometerRef, // 0
                             & ClaState.Analogs.Pot1, // 1
                             & ClaState.Analogs.ID ,// 2
                             & ClaState.Analogs.RailSensor, // 3
                             & ClaState.Analogs.BrakeVolts // 4
                             };

const unsigned short nAtpData = sizeof(pAtpRslt) / sizeof(float *) ;

long unsigned  GetAtpData( struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si ;
//    struct CShortDesc *pSd ;
    si = pSdo->SubIndex ;
    if ( si < nAtpData )
    {
        * ((float *) pSdo->SlaveBuf) = *pAtpRslt[si];
        return 0 ;
    }
    return Sub_index_does_not_exist ;
}

