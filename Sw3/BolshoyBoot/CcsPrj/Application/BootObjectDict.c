/*
 * ObjectDict.c
 *
 *  Created on: Dec 21, 2016
 *      Author: Yahali Theodor
 */

#include "StructDef.h"


long unsigned  SetTest(   struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetTest(   struct CSdo * pSdo ,short unsigned *nData);
long unsigned  SetFwData(   struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetFwData(   struct CSdo * pSdo ,short unsigned *nData);
long unsigned  SetFwCmd(    struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetFwCmd(    struct CSdo * pSdo ,short unsigned *nData);
long unsigned  SetFwBuffer(    struct CSdo * pSdo ,short unsigned nData);


short FlashSectorClear( short unsigned sec  );
short FlashDataBurn( short unsigned *uData , long unsigned FlashAddress , short unsigned WordsInBuffer   );

#define BURN_DATA_BUFFER RecorderBuffer
#define PROG_BUF_LEN 2048
#if REC_BUF_LEN < PROG_BUF_LEN
#error "Allocation failure for program buffer"
#endif

const struct CObjDictionaryItem ObjDictionaryItem [] =
{
    { 0x2300 , 4 , SetFwData , GetFwData },
    { 0x2301 , 4 , SetFwCmd , GetFwCmd },
    { 0x2303 , 4 , SetFwBuffer , NoSuchGetObject },
    { 0x2304 , 4 , SetTest , GetTest },
    { 0xfff , 4 , NoSuchSetObject , (GetDictFunc) 0 }
};


struct CFlashProg
{
    long PassWord ; // !< Must be 0x12345678 to work
    long unsigned AddressInFlash ; // !< Address in flash
    short unsigned InternalBufOffset ;
};
struct CFlashProg  FlashProg ;

long unsigned  GetFwData(   struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si ;
    si = pSdo->SubIndex ;
    * ((unsigned long *) pSdo->SlaveBuf) = BURN_DATA_BUFFER[FlashProg.InternalBufOffset + si ]  ;
    *nData = 4 ;
    return 0 ;
}

/*
 * \brief Use the recorder buffer
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

short TestFlashAddress( unsigned long ul )
{
    if ( ul < 0x82000 || ul >= 0xc0000 || ( ul & (PROG_BUF_LEN-1) ) )
    {
        return -1 ;
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
    case 4:
        * ulPtr = BOOT_VER  ;
        break ;
    case 5: // Program identifier
        * ulPtr = PROJ_TYPE  ;
        break ;

    case 6: // Program identifier
        * ulPtr = SubverPatch  ;
        break ;
    default:
        return Sub_index_does_not_exist;
    }

    return 0;
}

long unsigned  SetFwBuffer(    struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si ;
    si = pSdo->SubIndex ;
    if ( si != 0 )
    {
        return Sub_index_does_not_exist;
    }
    if ( nData > ( PROG_BUF_LEN * 4) )
    {
        return Out_of_memory ;
    }
    if ( nData & 0x3 )
    {
        return Invalid_block_size ;
    }

    ProgramBufferLength = nData / 4  ;
    return 0 ;
}

//typedef void (*StamVoid)(void);
typedef void ( *VoidFun) (void) ;

void KillCLA(void);
volatile short WaitForEver ;

long unsigned  SetFwCmd(    struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si ;
    short stat ;
    unsigned long ul , pw , sect_len ;
    si = pSdo->SubIndex ;
    ul =* ((unsigned long *) pSdo->SlaveBuf);

    if ( si == 1 )
    {
        pw = ul  ;
        ProgramBufferLength = 0 ;
    }
    else
    {
        pw = FlashProg.PassWord ;
    }
    if ( pw != 0x12345678 || nData != 4 )
    {
        return General_parameter_incompatibility_reason ;
    }
    switch ( si )
    {
    case 1:
        stat = PrepFlash4Burn();
        if ( stat )
        {
            return General_parameter_incompatibility_reason ;
        }
        FlashProg.PassWord  = 0x12345678 ;
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
        switch ( ul)
        {
        case  3:
            ul = Bzero_Sector3_start;
            sect_len = ((Bzero_Sector4_start - ul ) >> 1 ) ;
            break ;
        case 4:
            ul = Bzero_Sector4_start;
            sect_len = ((Bzero_Sector5_start - ul ) >> 1 ) ;
            break ;
        case 5:
            ul = Bzero_Sector5_start;
            sect_len = ((Bzero_Sector6_start - ul ) >> 1 ) ;
            break ;
        case 6:
            ul = Bzero_Sector6_start;
            sect_len = ((Bzero_Sector7_start - ul ) >> 1 ) ;
            break ;
        case 7:
            ul = Bzero_Sector7_start;
            sect_len = ((Bzero_Sector8_start - ul ) >> 1 ) ;
            break ;
        case 8:
            ul = Bzero_Sector8_start;
            sect_len = ((Bzero_Sector9_start - ul ) >> 1 ) ;
            break ;
        case 9:
            ul = Bzero_Sector9_start;
            sect_len = ((Bzero_Sector10_start - ul ) >> 1 ) ;
            break ;
        case 10:
            ul = Bzero_Sector10_start;
            sect_len = ((Bzero_Sector11_start - ul ) >> 1 ) ;
            break ;
        case 11:
            ul = Bzero_Sector11_start;
            sect_len = ((Bzero_Sector12_start - ul ) >> 1 ) ;
            break ;
        case 12:
            ul = Bzero_Sector12_start;
            sect_len = ((Bzero_Sector13_start - ul ) >> 1 ) ;
            break ;
        case 13:
            ul = Bzero_Sector13_start;
            sect_len = ((FlashEndAddress+1 - ul ) >> 1 ) ;
            break ;
        default:
            return General_parameter_incompatibility_reason ;
        }
        stat = EraseSector( (long unsigned) ul , sect_len  );
        if ( stat )
        {
            return General_parameter_incompatibility_reason ;
        }
        break ;
    case 131: // Program buffer
        if ( TestFlashAddress(FlashProg.AddressInFlash) < 0   )
        {
            return General_parameter_incompatibility_reason ;
        }

        stat = ProgramPageAutoECC((short unsigned * ) BURN_DATA_BUFFER ,FlashProg.AddressInFlash  , PROG_BUF_LEN*2 ) ;

        if ( stat )
        {
            return General_parameter_incompatibility_reason ;
        }
        break ;
    case 150: // Restart
        if ( TestProgramValid() < 0  )
        {
            return General_parameter_incompatibility_reason ;
        }
        KillCLA() ;
        EALLOW;
        //Cla1Regs.MVECT8 = 678 ; // Mark NOT to re-initialize PLL
        ReleaseFlashBurn() ;
        DINT ;
        EDIS ;
        //((StamVoid) 0x80000)();
        WaitForEver = 0;
        EnableDog() ;
        while ( WaitForEver == 0 ) ;

        //((VoidFun) Sector_Mainprog_start)() ;

        break ;// Formal for compiler, never arrived
    default:
        return Sub_index_does_not_exist;
    }
    return 0 ;
}



/**
 * \brief Get size of object dictionary
  * \detail This function is here because only in the scope of this file the size of
 * the object dictionary is known
 */
short unsigned GetOdSize( void )
{
    return sizeof(ObjDictionaryItem)/sizeof(struct CObjDictionaryItem) ;
}

long TestValue ;
long unsigned  GetTest(    struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si ;
    long unsigned * ulPtr ;
    ulPtr =  ((unsigned long *) pSdo->SlaveBuf);
    si = pSdo->SubIndex ;
    *nData = 4 ;
    switch ( si )
    {
    case 1:
        * ulPtr = TestValue  ;
        break ;
    default:
        return Sub_index_does_not_exist;
    }

    return 0;
}


long unsigned  SetTest(    struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si ;
    unsigned long ul ;

    if ( nData != 4 )
    {
        return  General_parameter_incompatibility_reason ;
    }

    si = pSdo->SubIndex ;
    ul =* ((unsigned long *) pSdo->SlaveBuf);


    switch ( si )
    {
    case 1:
        TestValue = ul ;
        break ;
    default:
        return Sub_index_does_not_exist;
    }
    return 0 ;
}

