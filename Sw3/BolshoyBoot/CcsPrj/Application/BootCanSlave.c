//#include "F28x_Project.h"     // DSP28x Headerfile


#include "StructDef.h"


extern const struct CObjDictionaryItem ObjDictionaryItem [];

long BlockDloadLen ;
short unsigned seqno ;
short unsigned blockdatano ;

long unsigned nextBlockLong ;
short unsigned inlongcnt  ;
short unsigned longcnt  ;
short unsigned crc ;
short unsigned cv[7] ;


typedef  short unsigned u16 ;
typedef  char unsigned u8 ;


const u16 crc_ccitt_table[256] = {
    0x0000, 0x1189, 0x2312, 0x329b, 0x4624, 0x57ad, 0x6536, 0x74bf,
    0x8c48, 0x9dc1, 0xaf5a, 0xbed3, 0xca6c, 0xdbe5, 0xe97e, 0xf8f7,
    0x1081, 0x0108, 0x3393, 0x221a, 0x56a5, 0x472c, 0x75b7, 0x643e,
    0x9cc9, 0x8d40, 0xbfdb, 0xae52, 0xdaed, 0xcb64, 0xf9ff, 0xe876,
    0x2102, 0x308b, 0x0210, 0x1399, 0x6726, 0x76af, 0x4434, 0x55bd,
    0xad4a, 0xbcc3, 0x8e58, 0x9fd1, 0xeb6e, 0xfae7, 0xc87c, 0xd9f5,
    0x3183, 0x200a, 0x1291, 0x0318, 0x77a7, 0x662e, 0x54b5, 0x453c,
    0xbdcb, 0xac42, 0x9ed9, 0x8f50, 0xfbef, 0xea66, 0xd8fd, 0xc974,
    0x4204, 0x538d, 0x6116, 0x709f, 0x0420, 0x15a9, 0x2732, 0x36bb,
    0xce4c, 0xdfc5, 0xed5e, 0xfcd7, 0x8868, 0x99e1, 0xab7a, 0xbaf3,
    0x5285, 0x430c, 0x7197, 0x601e, 0x14a1, 0x0528, 0x37b3, 0x263a,
    0xdecd, 0xcf44, 0xfddf, 0xec56, 0x98e9, 0x8960, 0xbbfb, 0xaa72,
    0x6306, 0x728f, 0x4014, 0x519d, 0x2522, 0x34ab, 0x0630, 0x17b9,
    0xef4e, 0xfec7, 0xcc5c, 0xddd5, 0xa96a, 0xb8e3, 0x8a78, 0x9bf1,
    0x7387, 0x620e, 0x5095, 0x411c, 0x35a3, 0x242a, 0x16b1, 0x0738,
    0xffcf, 0xee46, 0xdcdd, 0xcd54, 0xb9eb, 0xa862, 0x9af9, 0x8b70,
    0x8408, 0x9581, 0xa71a, 0xb693, 0xc22c, 0xd3a5, 0xe13e, 0xf0b7,
    0x0840, 0x19c9, 0x2b52, 0x3adb, 0x4e64, 0x5fed, 0x6d76, 0x7cff,
    0x9489, 0x8500, 0xb79b, 0xa612, 0xd2ad, 0xc324, 0xf1bf, 0xe036,
    0x18c1, 0x0948, 0x3bd3, 0x2a5a, 0x5ee5, 0x4f6c, 0x7df7, 0x6c7e,
    0xa50a, 0xb483, 0x8618, 0x9791, 0xe32e, 0xf2a7, 0xc03c, 0xd1b5,
    0x2942, 0x38cb, 0x0a50, 0x1bd9, 0x6f66, 0x7eef, 0x4c74, 0x5dfd,
    0xb58b, 0xa402, 0x9699, 0x8710, 0xf3af, 0xe226, 0xd0bd, 0xc134,
    0x39c3, 0x284a, 0x1ad1, 0x0b58, 0x7fe7, 0x6e6e, 0x5cf5, 0x4d7c,
    0xc60c, 0xd785, 0xe51e, 0xf497, 0x8028, 0x91a1, 0xa33a, 0xb2b3,
    0x4a44, 0x5bcd, 0x6956, 0x78df, 0x0c60, 0x1de9, 0x2f72, 0x3efb,
    0xd68d, 0xc704, 0xf59f, 0xe416, 0x90a9, 0x8120, 0xb3bb, 0xa232,
    0x5ac5, 0x4b4c, 0x79d7, 0x685e, 0x1ce1, 0x0d68, 0x3ff3, 0x2e7a,
    0xe70e, 0xf687, 0xc41c, 0xd595, 0xa12a, 0xb0a3, 0x8238, 0x93b1,
    0x6b46, 0x7acf, 0x4854, 0x59dd, 0x2d62, 0x3ceb, 0x0e70, 0x1ff9,
    0xf78f, 0xe606, 0xd49d, 0xc514, 0xb1ab, 0xa022, 0x92b9, 0x8330,
    0x7bc7, 0x6a4e, 0x58d5, 0x495c, 0x3de3, 0x2c6a, 0x1ef1, 0x0f78
};


inline u16 crc_ccitt_byte(u16 _crc, u8 c)
{
    return (_crc >> 8) ^ crc_ccitt_table[(_crc ^ c) & 0xff];
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





/**
 * \brief Find the dictionary item that fits a given index
 *
 * \detail Because of short dictionary, just running over all the records is cheapest
 *
 * \param Index         : The index to search
 * \param pObject_in    : The found object record
 * \return index in dict if ok, -1 no such object
 */
short GetObjIndex(short unsigned Index , struct CObjDictionaryItem **pObject_in)
{
    short unsigned cnt ;
    extern short unsigned GetOdSize( void ) ;
    const struct CObjDictionaryItem *pObject;
    for ( cnt = 0 ; cnt < GetOdSize() ; cnt++)
    {
        pObject = &ObjDictionaryItem[cnt] ;
        if ( pObject->Index == Index )
        {
            *pObject_in =  (struct CObjDictionaryItem *) pObject ;
            return cnt ;
        }
    }
    return -1 ;
}



/**
 * \brief: Put record into CAN slave output queue
 *
 * \param pMsg-> Message to insert
 * \return 0 if ok, -1 if queue was full
 */
short PutCanSlaveQueue( struct CCanMsg * pMsg)
{
    long unsigned sr ;
    short unsigned Next ;
    short RetVal ;
    struct CCanQueue * pQueue ;

    pQueue = &CanSlaveOutQueue ;

    RetVal = 0 ;
    sr  = BlockInts() ;
    Next = ( pQueue->nPut + 1 ) & (pQueue->nQueue-1);
    if ( Next == pQueue->nGet )
    {
        RetVal =-1 ;
        pQueue->nGet  = ( pQueue->nGet  + 1 )& (pQueue->nQueue-1);
    }
    pQueue->Msg[pQueue->nPut] = *pMsg ;
    pQueue->nPut = Next ;
    RestoreInts(sr ) ;
    return RetVal ;
}

/**
 * \brief Prepare and send an SDO abort message for a given code
 *
 * \param Error code
  */
short AbortSlaveSdo( long unsigned code,  struct CSdo * pSdo )
{
    struct CCanMsg  Msg ;
    pSdo->Status = -1 ; // Kill Sdo
    Msg.UseLongId = 0 ;
    Msg.cobId = ( 0xb << 7 ) + pSdo->SlaveID ;
    Msg.dLen = 8 ;
    Msg.data[0] = (4L<<5) + ( (long unsigned)pSdo->Index << 8 ) + ( (long unsigned)pSdo->SubIndex << 24 );
    Msg.data[1] = code ;
    return PutCanSlaveQueue( &Msg);
}

short SlaveSdoConfirmInitDload( struct CSdo *pSdo  )
{
    struct CCanMsg  Msg ;
    Msg.UseLongId = 0 ;
    Msg.cobId = ( 0xb << 7 )  + pSdo->SlaveID;
    Msg.dLen = 8 ;
    Msg.data[0] = (3L<<5) + ( (long unsigned)pSdo->Index << 8 ) + ( (long unsigned)pSdo->SubIndex << 24 );
    Msg.data[1] = 0 ;
    return PutCanSlaveQueue( &Msg);
}

short SlaveSdoConfirmInitDloadBlock( struct CSdo *pSdo  , long unsigned nBytes )
{
    struct CCanMsg  Msg ;
    BlockDloadLen = nBytes ;
    if ((BlockDloadLen & 0xffffc) !=  BlockDloadLen  || ( BlockDloadLen > 2048 * 4)  )
    {
        return AbortSlaveSdo ( Invalid_block_size, pSdo  );
    }

    Msg.UseLongId = 0 ;
    Msg.cobId = ( 0xb << 7 )  + pSdo->SlaveID;
    Msg.dLen = 8 ;
    Msg.data[0] = (5L<<5) + 4 + ( (long unsigned)pSdo->Index << 8 ) + ( (long unsigned)pSdo->SubIndex << 24 );
    Msg.data[1] = 127 ; // Block length
    return PutCanSlaveQueue( &Msg);
}


short SlaveSdoConfirmInitUploadExpedit(struct CSdo * pSdo , long unsigned data , short unsigned n )
{
    struct CCanMsg  Msg ;
    Msg.UseLongId = 0 ;
    Msg.cobId = ( 0xb << 7 )  + pSdo->SlaveID;
    Msg.dLen = 8 ;
    Msg.data[0] = 0x43 + (((4-n )<<2) & 0xc )
            + (((long unsigned) pSdo->Index ) << 8 )
            + (((long unsigned) pSdo->SubIndex ) << 24 ) ;
    Msg.data[1] = data ;
    return PutCanSlaveQueue( &Msg);
}

short SlaveSdoConfirmInitUploadSegmented(struct CSdo * pSdo , short unsigned n )
{
    struct CCanMsg  Msg ;
    Msg.UseLongId = 0 ;
    Msg.cobId = ( 0xb << 7 )  + pSdo->SlaveID ;
    Msg.dLen = 8 ;
    Msg.data[0] = 0x41
    + (((long unsigned) pSdo->Index ) << 8 )
    + (((long unsigned) pSdo->SubIndex ) << 24 ) ;
    Msg.data[1] = (long unsigned) n  ;
    return PutCanSlaveQueue( &Msg);
}

short SlaveSdoEndOfBlock (struct CSdo * pSdo )
{
    struct CCanMsg  Msg ;
    Msg.UseLongId = 0 ;
    Msg.cobId = ( 0xb << 7 )  + pSdo->SlaveID ;
    Msg.dLen = 8 ;
    Msg.data[0] = (0x5<<5)+1 ;
    Msg.data[1] = 0  ;
    return PutCanSlaveQueue( &Msg);
}

short SlaveSdoEndOfSubBlock (struct CSdo * pSdo )
{
    struct CCanMsg  Msg ;
    Msg.UseLongId = 0 ;
    Msg.cobId = ( 0xb << 7 )  + pSdo->SlaveID ;
    Msg.dLen = 8 ;
    Msg.data[0] = (0x5<<5)+2 + (seqno<<8) + ( 127L << 16 )  ; ;
    Msg.data[1] = 0 ;
    return PutCanSlaveQueue( &Msg);
}




short SlaveSdoUploadSegmented(struct CSdo * pSdo )
{
    struct CCanMsg  Msg ;
    short unsigned remain , cnt  ;
    short unsigned * pload ;
    short unsigned * pdat  ;
    short unsigned odat ;
    short unsigned oload , next ;

    Msg.UseLongId = 0 ;
    Msg.cobId = ( 0xb << 7 )  + pSdo->SlaveID ;
    Msg.dLen = 8 ;

    remain = pSdo->Bytes2Dload - pSdo->ByteCnt ;

    if ( remain <= 7 )
    {
        Msg.data[0] = pSdo->toggle + 1 + ((7-remain)<<1) ;
        pSdo->Status = 0 ; // Gamarnu
    }
    else
    {
        Msg.data[0] = pSdo->toggle ;
        remain = 7 ;
    }
    Msg.data[1] = 0;
    pSdo->toggle = 0x10 - pSdo->toggle ;

    pdat = (short unsigned *) & Msg.data[0] ;
    odat = 1 ;
    pload = ((short unsigned*)SlaveSdoBuf) + ( pSdo->ByteCnt >> 1 ) ;
    oload = pSdo->ByteCnt & 1 ;
    for ( cnt = 0 ; cnt < remain ; cnt++ )
    {
        if ( oload )
        {
            next = *pload >> 8 ;
            oload = 0 ;
            pload += 1 ;
        }
        else
        {
            next = *pload & 0xff ;
            oload = 1 ;
        }

        if ( odat )
        {
            *pdat |= (next<<8) ;
            pdat += 1 ;
            odat = 0 ;
        }
        else
        {
            *pdat = next ;
            odat  = 1 ;
        }
    }
    pSdo->ByteCnt += remain ;
    return PutCanSlaveQueue( &Msg);
}


/**
 * \brief Add a new SDO data to buffer.
 *
 * \warning buf storage sufficiency is not checked, it is user responsibility
 * \param data: Data to add
 * \param Last: The number of bytes already filled into buf
 * \param NextBytes: The amount of bytes to insert
 * \param buf      : buffer to which we append the new bytes
 *
 * \return New amount of filled bytes in buffer
 */
long unsigned AddSdo2Buf ( struct CSdo * pSdo , struct CCanMsg* pMsg )
{
    struct CCanMsg  Msg ;
    short unsigned remain , in_mess , cnt , c , t ;
    short unsigned * pload ;
    short unsigned * pdat  ;
    short unsigned odat ;
    short unsigned oload , next ;

    Msg.UseLongId = 0 ;
    Msg.cobId = ( 0xb << 7 )  + pSdo->SlaveID ;
    Msg.dLen = 8 ;

    t   = ( pMsg->data[0] & (1<<4) )  ;
    if ( t != SlaveSdo.toggle)
    {
        return Toggle_bit_not_alternated;
    }

    c = ((  pMsg->data[0] & 0x1 ) ? 1 : 0 ) ;

    if ( pSdo->ByteCnt > pSdo->Bytes2Dload)
    {
        return General_parameter_incompatibility_reason ;
    }

    remain = pSdo->Bytes2Dload - pSdo->ByteCnt ;
    in_mess = 7 - (( pMsg->data[0] >> 1 ) & 0x7 ) ;

    if ( in_mess > remain )
    {
        return General_parameter_incompatibility_reason ;
    }

    if ( c )
    {
        pSdo->Bytes2Dload = pSdo->ByteCnt + in_mess ;
        pSdo->Status = 0 ; // Gamarnu
    }



    Msg.data[0] = pSdo->toggle + (1<<5) ;
    Msg.data[1] = 0;
    pSdo->toggle = 0x10 - pSdo->toggle ;

    pdat = (short unsigned *) & pMsg->data[0] ;
    odat = 1 ;
    pload = ((short unsigned*)SlaveSdoBuf) + ( pSdo->ByteCnt >> 1 ) ;
    oload = pSdo->ByteCnt & 1 ;

    for ( cnt = 0 ; cnt < in_mess ; cnt++ )
    {
        if ( odat )
        {
            next = (*pdat) >> 8 ;
            odat = 0 ;
            pdat += 1 ;
        }
        else
        {
            next = *pdat & 0xff ;
            odat = 1 ;
        }
        if ( oload )
        {
            *pload |= (next<<8) ;
            pload += 1 ;
            oload = 0 ;
        }
        else
        {
            *pload = next ;
            oload  = 1 ;
        }
    }
    pSdo->ByteCnt += in_mess ;
    return PutCanSlaveQueue( &Msg);
}

/**
 * \brief Very limited CAN slave, purposed for debugging only
 *
 * \detail CAN ID is 124 (LP) or 126 (PD)
 *         Most of the objects are very simple expedit type downloads
 *
 *         Set commands normally replicate the code mode and index
 *         They return the response code as long.
 *
 *
 */
short SetExtendedBootUpMessage( void );
void CanSlave ()
{
    long unsigned sr , cnt ;
    short unsigned CobType ;
    short unsigned cs , exp , n , s  , byte0  ;
    long  stat ;
    struct CCanMsg  Msg ;
    struct CSdo * pSdo ;
    struct CObjDictionaryItem *pOdObject ;

    pSdo = & SlaveSdo ;

    if ( NMTService == NMT_CODE_IDENTIFY )
    {
        if ( SetExtendedBootUpMessage() == 0 )
        {
            NMTService = 0 ;
        }
    }

    if ( CanSlaveInQueue.nPut == CanSlaveInQueue.nGet)
    {
        return   ;
    }
    else
    {
        sr  = BlockInts() ;
        Msg = CanSlaveInQueue.Msg[CanSlaveInQueue.nGet] ;
        CanSlaveInQueue.nGet = ( CanSlaveInQueue.nGet + 1 )  & (CanSlaveInQueue.nQueue-1) ;
        RestoreInts(sr ) ;
    }

    CobType = (short unsigned) ( (Msg.cobId & 0x7fffffff ) >> 7) ;

    // SDO
    if ( CobType == 0xc ) // 0xc is SDO RX , 0xb is SDO TX
    {
        if ( SlaveSdo.Status <= 0 )
        { // Waiting start of new SDO
            cs = ( Msg.data[0] & 0xe0 ) >> 5 ;
            exp = ( Msg.data[0] & 0x2 ) >> 1 ;
            n   = ( Msg.data[0] & 0xc ) >> 2 ;
            s   = (short unsigned) ( Msg.data[0] & 0x1 ) ;
            SlaveSdo.Index = ( Msg.data[0] >> 8 ) & 0xffff ;
            SlaveSdo.SubIndex = ( Msg.data[0] >> 24 ) & 0xff  ;
            SlaveSdo.toggle = 0 ;
            SlaveSdo.SlaveID  = Msg.cobId & 0x8000007f ;

            if ( GetObjIndex(SlaveSdo.Index , & pOdObject ) < 0 )
            {
                AbortSlaveSdo ( Object_does_not_exist_in_the_object_dictionary ,&SlaveSdo);
                return ;
            }

            // If previous SDO terminated by error , forget it
            SlaveSdo.Status = 0 ;

            switch ( cs)
            {
            case 1: // Download SDO

                // Initiate download
                if ( pOdObject->SetFunc == (SetDictFunc) 0  )
                {
                    AbortSlaveSdo ( Unsupported_access_to_an_object ,&SlaveSdo);
                    return ;
                }
                if (exp)
                {
                    SlaveSdoBuf[0] = Msg.data[1] ;

                    if ( s == 0 )
                    {
                        n = 4 - pOdObject->bytelen ;
                    }
                    stat = pOdObject->SetFunc(&SlaveSdo,4-n) ;
                    if ( stat )
                    {
                        AbortSlaveSdo( stat ,&SlaveSdo);
                        return ;
                    }
                }
                else
                {
                    if ( s  )
                    {
                        SlaveSdo.Bytes2Dload = (unsigned short) Msg.data[1] ;
                        if ( SlaveSdo.Bytes2Dload > ( 4 * sizeof( SlaveSdoBuf) - 1 ))
                        {
                            AbortSlaveSdo( Out_of_memory,&SlaveSdo);
                            return ;
                        }
                    }
                    else
                    {// Size not specified: allow maximum
                        SlaveSdo.Bytes2Dload =  4 * sizeof( SlaveSdoBuf) - 1 ;
                    }
                    SlaveSdo.ByteCnt = 0; // Nothing sent yet
                    SlaveSdo.Status = 1 ; // Go to the download stage
                    SlaveSdo.ExpectedCs = 0; // Next code sequence should be 3
                }
                SlaveSdoConfirmInitDload(&SlaveSdo ) ;
                break ;
            case 2: // Upload SDO
                // Initiate upload
                if ( pOdObject->GetFunc == (GetDictFunc) 0  )
                {
                    AbortSlaveSdo ( Unsupported_access_to_an_object ,&SlaveSdo);
                    return ;
                }

                stat = pOdObject->GetFunc(&SlaveSdo,&n) ;
                if ( stat )
                {
                    AbortSlaveSdo( stat ,&SlaveSdo);
                    return ;
                }
                SlaveSdo.Bytes2Dload = n ;

                // Slave SDO function did not export any message. It simply wrote n bytes
                // into SlaveSdoBuf. We next have to decide if expedit it.
                if ( n <= 4)
                { // That will be expedit
                    SlaveSdoConfirmInitUploadExpedit(&SlaveSdo,SlaveSdoBuf[0],n) ;
                    SlaveSdo.Status = 0 ; // Go to the download stage
                }
                else
                { // That will be segmented
                    SlaveSdoConfirmInitUploadSegmented(&SlaveSdo,n) ;
                    SlaveSdo.Status = 1 ; // Go to the download stage
                    SlaveSdo.ByteCnt = 0 ;
                    SlaveSdo.toggle = 0;
                    SlaveSdo.ExpectedCs = 3;
                }

                break ;

            case 6: // Download block SDO
                SlaveSdoConfirmInitDloadBlock(&SlaveSdo,Msg.data[1]) ;
                SlaveSdo.Status = 100 ; // Go to the download stage
                SlaveSdo.ByteCnt = 0 ;
                SlaveSdo.toggle = 0;
                SlaveSdo.ExpectedCs = 5;
                nextBlockLong = 0 ;
                blockdatano = 0 ;
                inlongcnt   = 0 ;
                longcnt = 0;
                seqno = 0 ;
                crc   = 0xffff ;
                break ;

            default:
                // Could not identify SDO state or match ccs
                AbortSlaveSdo( General_parameter_incompatibility_reason,&SlaveSdo);
            }
            return ;
        }

        if ( SlaveSdo.Status >= 1000  )
        { // Wait end of download
            if ( (Msg.data[0] & 0xff ) != ((6<<5)+1) )
            {
                AbortSlaveSdo( Client_server_command_specifier_not_valid_or_unknown,&SlaveSdo);
                return ;
            }
            if ( crc != (( Msg.data[0] >> 8 ) & 0xfffff ) )
            {
                AbortSlaveSdo( crc_error,&SlaveSdo);
                return ;
            }
            SlaveSdo.Status  = 0 ;

            if ( GetObjIndex(SlaveSdo.Index , & pOdObject ) < 0 )
            {
                AbortSlaveSdo ( Object_does_not_exist_in_the_object_dictionary,&SlaveSdo );
                return ;
            }

            stat = pOdObject->SetFunc(&SlaveSdo,BlockDloadLen) ;
            if ( stat )
            {
                AbortSlaveSdo( stat ,&SlaveSdo);
                return ;
            }

            SlaveSdoEndOfBlock( &SlaveSdo  );

            return ;
        }

        if ( SlaveSdo.Status >= 100  )
        { // SDO block dload
            byte0 = Msg.data[0] & 0xff ;

            if ( seqno == 127 )
            {
                AbortSlaveSdo( Invalid_sequence_number,&SlaveSdo);
                return ;
            }

            seqno += 1 ;
            if ( seqno != (byte0 & 0x7f) )
            {
                AbortSlaveSdo( Invalid_sequence_number,&SlaveSdo);
                return ;
            }
            cv[0] =  ((Msg.data[0] >> 8 )  & 0xff) ;
            cv[1] =  ((Msg.data[0] >> 16 )  & 0xff) ;
            cv[2] =  ((Msg.data[0] >> 24 )  & 0xff) ;
            cv[3] =  ((Msg.data[1] >> 0 )  & 0xff) ;
            cv[4] =  ((Msg.data[1] >> 8 )  & 0xff) ;
            cv[5] =  ((Msg.data[1] >> 16 )  & 0xff) ;
            cv[6] =  ((Msg.data[1] >> 24 )  & 0xff) ;

            for ( cnt = 0 ; cnt < 7 ; cnt++)
            {
                blockdatano += 1 ;
                nextBlockLong |= (((long unsigned)cv[cnt] << (inlongcnt++ * 8))) ;
                crc = crc_ccitt_byte(crc, cv[cnt]);
                if ( inlongcnt >= 4)
                {
                    inlongcnt = 0 ;
                    if ( longcnt >= REC_BUF_LEN)
                    {
                        AbortSlaveSdo( Out_of_memory,&SlaveSdo);
                        return ;
                    }
                    RecorderBuffer[longcnt++] = nextBlockLong ;
                    nextBlockLong = 0 ;
                }

                if (blockdatano == BlockDloadLen)
                { // received all
                    SlaveSdo.Status = 1000  ;
                    break ;
                }
            }

            if ( byte0 & 0x80 )
            {  // block completion
                SlaveSdoEndOfSubBlock( &SlaveSdo  );
                seqno = 0 ;
            }

            return;
        }

        if ( SlaveSdo.Status == 1  )
        { // Already within a segmented download SDO
            cs = ( Msg.data[0] & 0xe0 ) >> 5 ;
            if ( cs != SlaveSdo.ExpectedCs  )
            {
                AbortSlaveSdo(Client_server_command_specifier_not_valid_or_unknown,&SlaveSdo) ;
                return ;
            }

            switch ( cs)
            {
            case 0:
            // SDO segmented download

                stat = AddSdo2Buf ( pSdo , &Msg ) ;
                if ( stat )
                {
                    AbortSlaveSdo( stat, &SlaveSdo );
                    return ;
                }

                if ( pSdo->Status == 0  )
                {
                    if ( GetObjIndex(SlaveSdo.Index , & pOdObject ) < 0 )
                    {
                        AbortSlaveSdo ( Object_does_not_exist_in_the_object_dictionary, &SlaveSdo );
                        return ;
                    }
                    stat = pOdObject->SetFunc(&SlaveSdo,SlaveSdo.ByteCnt) ;
                    if ( stat )
                    {
                        AbortSlaveSdo( stat,&SlaveSdo);
                        return ;
                    }
                }
                break;
            case 3:
                // SDO segmented upload
                SlaveSdoUploadSegmented( &SlaveSdo  );
                break ;
            default:
                // Could not identify SDO state or match ccs
                AbortSlaveSdo( General_parameter_incompatibility_reason,&SlaveSdo);
            }
            return ;
        }
        // Could not identify SDO state or match ccs
        AbortSlaveSdo( General_parameter_incompatibility_reason,&SlaveSdo);
    }
}



