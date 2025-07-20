#include "BootStructdef.h"
#include <math.h>





long unsigned  SetFwData(   struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetFwData(   struct CSdo * pSdo ,short unsigned *nData);

long unsigned  SetFwDataBuf(   struct CSdo * pSdo ,short unsigned nData);

long unsigned  NoSuchGetObject( struct CSdo * pSdo ,short unsigned *nData);
long unsigned  NoSuchSetObject( struct CSdo * pSdo ,short unsigned nData);

long unsigned  SetFwCmd(    struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetFwCmd(    struct CSdo * pSdo ,short unsigned *nData);



const struct CObjDictionaryItem ObjDictionaryItem [] =
{
{ 0x2300 , 4 , SetFwData , GetFwData },
{ 0x2301 , 4 , SetFwCmd , GetFwCmd },
{ 0x2302 , 4 , SetFwDataBuf , NoSuchGetObject },
{ 0x7fff , 4 , NoSuchSetObject , (GetDictFunc) 0 }
};

const short unsigned SizeofObjDict =  sizeof(ObjDictionaryItem)/sizeof(struct CObjDictionaryItem) ;

#define PROG_BUF_LEN 2048
#pragma DATA_SECTION(BURN_DATA_BUFFER, "ramgs0to3"); // Assure in DMA-accesible RAM
unsigned long volatile BURN_DATA_BUFFER[PROG_BUF_LEN]; //<! Recorder buffer



short SafePrepFlash(void)
{
    short stat ;
    short unsigned mask ;
    PauseInts() ;
    mask = BlockInts() ;
    SysState.Mot.DisablePeriodicService = 1 ;
    stat = PrepFlash4Burn();
    SysState.Mot.DisablePeriodicService = 0 ;
    RestoreInts(mask) ;
    UnpauseInts() ;
    return stat ;
}

short SafeEraseFlash(long unsigned sect)
{
    short stat ;
    short unsigned mask ;
    PauseInts() ;
    mask = BlockInts() ;
    SysState.Mot.DisablePeriodicService = 1 ;
    stat = EraseSector( sect   );
    SysState.Mot.DisablePeriodicService = 0 ;
    RestoreInts(mask)  ;
    UnpauseInts() ;
    return stat ;
}

short SafeProgramFlash( short unsigned * Buffer_in , long unsigned FlashAddress , long unsigned buflen)
{
    short stat ;
    short unsigned mask ;
    PauseInts() ;
    mask = BlockInts() ;
    SysState.Mot.DisablePeriodicService = 1 ;
    stat = ProgramPageAutoECC(Buffer_in , FlashAddress , buflen ) ;
    SysState.Mot.DisablePeriodicService = 0 ;
    RestoreInts(mask)  ;
    UnpauseInts() ;
    return stat ;
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

/*
 * \brief 0x2300 Use the recorder buffer
 *
 */
long unsigned  SetFwData(   struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si ;
    long unsigned ul ;
    (void) nData ;
    si = pSdo->SubIndex ;
    ul =* ((unsigned long *) pSdo->SlaveBuf);
    BURN_DATA_BUFFER[FlashProg.InternalBufOffset + si ] = ul  ;
    return 0 ;
}

long unsigned  GetFwData(   struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si ;
    si = pSdo->SubIndex ;
    * ((unsigned long *) pSdo->SlaveBuf) = BURN_DATA_BUFFER[FlashProg.InternalBufOffset + si ]  ;
    *nData = 4 ;
    return 0 ;
}


/*
 * \brief Object 0x2302 Use the recorder buffer to load programming data
 *
 */
long unsigned  SetFwDataBuf(   struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si ;
    short unsigned  nLong , cnt ;

    si = pSdo->SubIndex ;
    if ( si != 1 )
    {
        return Sub_index_does_not_exist;
    }
    nLong = nData >> 2 ;
    if  ( ( ( nLong << 2 ) != nData ) || nLong > 1024 )
    {
        return length_of_service_parameter_does_not_match ;
    }
    for ( cnt = 0 ; cnt < nLong ; cnt++ )
    {
        BURN_DATA_BUFFER[cnt] = SlaveSdoBuf[cnt]  ;
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
        return (long)(SysState.Timing.TsTraj * 1e6f ) ;
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




/*
 * Set object 0x6098
 */
long unsigned  SetHomingMethod( struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si = pSdo->SubIndex ;
        if ( si )
        {
            return Sub_index_does_not_exist ;
        }
        if (  (*(short unsigned*) &pSdo->SlaveBuf[0] ) != 35 )
        {
            return General_parameter_incompatibility_reason ;
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
 //       * ulPtr = PROJ_TYPE  ;
        *ulPtr = Proj_Type ;
        break ;

    case 6:
        * ulPtr = 1 ;
        break ;

    case 7:
        * ulPtr = SubverPatch ;
        break ;

    default:
        return Sub_index_does_not_exist;
    }

    return 0;
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
    if ( ul < 0x83000 || ul >= 0x09B000 || ( ul & 511 ) )
    {
        return -1 ;
    }
    return 0 ;
}


#pragma FUNCTION_OPTIONS ( SetFwCmd, "--opt_level=0" );
/*
 * \brief Object 0x2301
 *
 */
long unsigned  SetFwCmd(    struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si , cnt ;
    short stat ;
    unsigned long ul , pw ;
    long unsigned EraseAdd ;
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

    // Services that do not require flash preparation
    switch ( si)
    {
        case 244: // Back home to boot
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
        stat = SafePrepFlash();

        FlashProg.PassWord = ul ;
        if ( stat )
        {
            return General_parameter_incompatibility_reason ;
        }
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
        if ( ul == 31 )
        {

            stat = SafeEraseFlash( Sector_AppVerify_start    );

            if ( stat )
            {
                return General_parameter_incompatibility_reason ;
            }

            for ( cnt = 0 ; cnt < 31 ; cnt++)
            {
                EraseAdd = CodeStartAddress + cnt * 0x1000UL;
                // Do no erase past the parameters
                if ( EraseAdd == Sector_AppParams_start)
                {
                    break  ;
                }
                stat = SafeEraseFlash( EraseAdd    );
                if ( stat )
                {
                    return General_parameter_incompatibility_reason ;
                }
            }
        }
        else
        {
            return General_parameter_incompatibility_reason ;
        }
        break ;
    case 131: // Program buffer
        if ( TestFlashAddress(FlashProg.AddressInFlash) < 0   )
        {
            return General_parameter_incompatibility_reason ;
        }

        if ( ( ul & 511 ) ||( ul > PROG_BUF_LEN))
        {
            return General_parameter_incompatibility_reason ;
        }

        //stat = FlashDataBurn( (short unsigned * ) BURN_DATA_BUFFER , FlashProg.AddressInFlash , PROG_BUF_LEN*2   );


        stat = SafeProgramFlash((short unsigned * ) BURN_DATA_BUFFER ,FlashProg.AddressInFlash  , ul * 2 ) ;

        if ( stat )
        {
            return General_parameter_incompatibility_reason ;
        }
        break ;

    case 132: // Program statistics

        if ( ( ul & 7 ) ||( ul > PROG_BUF_LEN))
        {
            return General_parameter_incompatibility_reason ;
        }

        stat = SafeProgramFlash((short unsigned * ) BURN_DATA_BUFFER ,Sector_AppVerify_start  , ul * 2 ) ;

        if ( stat )
        {
            return General_parameter_incompatibility_reason ;
        }
        break ;

    case 245: // Back home to boot

        WaitStam(20000, &SysTimerStr) ; // Wait interrupts to complete SDO send

        // Time to commit suicide
        ResetCpu( ); // ((VoidFun)0x80000 )() ; // Fat Bertha from which nobody ever returned
        break ; //Formal
    default:
        return Sub_index_does_not_exist;
    }
    return 0 ;
}



