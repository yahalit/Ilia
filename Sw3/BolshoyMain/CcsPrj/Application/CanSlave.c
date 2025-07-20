//#include "F28x_Project.h"     // DSP28x Headerfile


#include "StructDef.h"


extern const struct CObjDictionaryItem ObjDictionaryItem [];



typedef  short unsigned u16 ;
typedef  char unsigned u8 ;





/**
 * \brief: Put record into CAN slave output queue
 *
 * \param pMsg-> Message to insert
 * \return 0 if ok, -1 if queue was full
 */
short PutCanSlaveQueue( struct CCanMsg * pMsg)
{
    short unsigned sr ;
    short unsigned Next ;
    short RetVal ;
    struct CCanQueue * pQueue ;

    //pQueue = &CanSlaveOutQueue ;
    if (  pMsg->cobId & 0x80000000   )
    {
        pQueue = &CanSlavePdOutQueue ;
    }
    else
    {
        pQueue = &CanSlaveOutQueue ;
    }

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
short AbortSlaveSdo( long unsigned code, struct CSdo * pSdo )
{
    struct CCanMsg  Msg ;
    pSdo->Status = -1 ; // Kill Sdo
    Msg.LogicId = 0 ;
    Msg.cobId = ( 0xb << 7 ) + pSdo->SlaveID ;
    Msg.dLen = 8 ;
    Msg.data[0] = (4L<<5) + ( (long unsigned)pSdo->Index << 8 ) + ( (long unsigned)pSdo->SubIndex << 24 );
    Msg.data[1] = code ;
    SysState.BlockUpload.InBlockUload = 0 ;  // Terminate any SDO upload sequence in existence
    SysState.BlockDnload.InBlockDload = 0 ;
    return PutCanSlaveQueue( &Msg);
}

short SlaveSdoConfirmInitDload( struct CSdo *pSdo  )
{
    struct CCanMsg  Msg ;
    Msg.LogicId = 0 ;
    Msg.cobId = ( 0xb << 7 )  + pSdo->SlaveID;
    Msg.dLen = 8 ;
    Msg.data[0] = (3L<<5) + ( (long unsigned)pSdo->Index << 8 ) + ( (long unsigned)pSdo->SubIndex << 24 );
    Msg.data[1] = 0 ;
    return PutCanSlaveQueue( &Msg);
}

short SlaveSdoConfirmInitDloadBlock( struct CSdo *pSdo  , long unsigned nBytes )
{
    struct CCanMsg  Msg ;
    unsigned short sr ;
    short stat ;
    SysState.BlockDnload.BlockDloadLen = nBytes ;
    if ((SysState.BlockDnload.BlockDloadLen & 0xffffc) !=  SysState.BlockDnload.BlockDloadLen  || ( SysState.BlockDnload.BlockDloadLen > 2048 * 4)  )
    {
        return AbortSlaveSdo ( Invalid_block_size , pSdo );
    }

    Msg.LogicId = 0 ;
    Msg.cobId = ( 0xb << 7 )  + pSdo->SlaveID;
    Msg.dLen = 8 ;
    Msg.data[0] = (5L<<5) + 4 + ( (long unsigned)pSdo->Index << 8 ) + ( (long unsigned)pSdo->SubIndex << 24 );
    Msg.data[1] = 127 ; // Block length
    sr = BlockInts() ;
    stat =  PutCanSlaveQueue( &Msg);
    if ( stat == 0 )
    {
        SysState.BlockDnload.InBlockDload = 1;
    }
    RestoreInts(sr);
    return stat ;
}


short SlaveSdoConfirmInitUploadExpedit(struct CSdo * pSdo , long unsigned data , short unsigned n )
{
    struct CCanMsg  Msg ;
    Msg.LogicId = 0 ;
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
    Msg.LogicId = 0 ;
    Msg.cobId = ( 0xb << 7 )  + pSdo->SlaveID ;
    Msg.dLen = 8 ;
    Msg.data[0] = 0x41
    + (((long unsigned) pSdo->Index ) << 8 )
    + (((long unsigned) pSdo->SubIndex ) << 24 ) ;
    Msg.data[1] = (long unsigned) n  ;
    return PutCanSlaveQueue( &Msg);
}

short SlaveSdoConfirmInitUploadBlock(struct CSdo * pSdo , short unsigned n )
{
    struct CCanMsg  Msg ;
    short unsigned sr ;
    short stat ;
    Msg.LogicId = 0 ;
    Msg.cobId = ( 0xb << 7 )  + pSdo->SlaveID ;
    Msg.dLen = 8 ;
    Msg.data[0] = 0xc6
    + (((long unsigned) pSdo->Index ) << 8 )
    + (((long unsigned) pSdo->SubIndex ) << 24 ) ;
    Msg.data[1] = (long unsigned) n  ;

    sr  = BlockInts() ;
    stat = PutCanSlaveQueue( &Msg);
    if  ( stat == 0 )
    {
        SysState.BlockUpload.StartBlockMsg.data[1] = n ;
        SysState.BlockUpload.pBuf = pSdo->SlaveBuf ;
        SysState.BlockUpload.InBlockUload = 1 ;
        SysState.BlockUpload.nBytes = n ;
    }
    RestoreInts(sr ) ;
    return stat ;
}



short SlaveSdoEndOfBlock (struct CSdo * pSdo )
{
    struct CCanMsg  Msg ;
    Msg.LogicId = 0 ;
    Msg.cobId = ( 0xb << 7 )  + pSdo->SlaveID ;
    Msg.dLen = 8 ;
    Msg.data[0] = (0x5<<5)+1 ;
    Msg.data[1] = 0  ;
    return PutCanSlaveQueue( &Msg);
}

short SlaveSdoEndOfSubBlock (struct CSdo * pSdo )
{
    struct CCanMsg  Msg ;
    Msg.LogicId = 0 ;
    Msg.cobId = ( 0xb << 7 )  + pSdo->SlaveID ;
    Msg.dLen = 8 ;
    Msg.data[0] = (0x5<<5)+2 + (SysState.BlockDnload.seqno<<8) + ( 127L << 16 )  ; ;
    Msg.data[1] = 0 ;
    SysState.BlockDnload.seqno = 0  ;
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

    Msg.LogicId = 0 ;
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
struct CCanMsg  AddSdo2BufMsg ;
long unsigned AddSdo2Buf ( struct CSdo * pSdo , struct CCanMsg* pMsg )
{
    short unsigned remain , in_mess , cnt , c , t ;
    short unsigned * pload ;
    short unsigned * pdat  ;
    short unsigned odat ;
    short unsigned oload , next ;
    //short stat ;

    AddSdo2BufMsg.LogicId = 0 ;
    AddSdo2BufMsg.cobId = ( 0xb << 7 )  + pSdo->SlaveID ;
    AddSdo2BufMsg.dLen = 8 ;

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



    AddSdo2BufMsg.data[0] = pSdo->toggle + (1<<5) ;
    AddSdo2BufMsg.data[1] = 0;
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
    return 0 ;
}

long unsigned junkbuf[4] ;
long unsigned SendLong2Manip(short unsigned index_in , short unsigned subindex_in , long data )
{
    short unsigned index = index_in ;
    short unsigned subindex = subindex_in ;
    short unsigned nbytes = 4 ;
    junkbuf[0] = data ;
    return Object2ManipBody(1 , &index , &subindex , &nbytes , junkbuf) ;
}

long unsigned GetLongFromManip(short unsigned index_in , short unsigned subindex_in , long *data , short unsigned *nbytes )
{
    long unsigned stat ;
    short unsigned index = index_in ;
    short unsigned subindex = subindex_in ;
    stat = Object2ManipBody(0 , &index , &subindex , nbytes , junkbuf) ;
    *data = junkbuf[0] ;
    return stat ;
}


long unsigned Object2ManipBody(short unsigned send , short unsigned *index , short unsigned *subindex , short unsigned *nbytes , long unsigned *buf)
{
    unsigned long long lltmr , lltmr1 ;
    // Manipulator can only answer expedited SDO
    M2S.Items.USlaveObject.msg.index = *index ;
    M2S.Items.USlaveObject.msg.subindex = *subindex ;
    M2S.Items.USlaveObject.msg.data_len = *nbytes;
    M2S.Items.USlaveObject.msg.isset = send ;
    if ( send)
    {
        if ( *nbytes > 16 )
        {
            return exp_obj_too_big_4_minipulator ;
        }
        M2S.Items.DataBlock.buf[0] = buf[0];
        M2S.Items.DataBlock.buf[1] = buf[1];
        M2S.Items.DataBlock.buf[2] = buf[2];
        M2S.Items.DataBlock.buf[3] = buf[3];
    }

    M2S.Items.USlaveObject.msg.counter += 1 ;

    GetIpcTimer(&lltmr) ;

    do
    {
        if ( M2S.Items.USlaveObject.msg.counter == S2M.Items.USlaveObject.msg.counter)
        {
            if ( S2M.Items.USlaveObject.msg.errcode)
            {
                return S2M.Items.USlaveObject.msg.errcode ;
            }

            *index      = S2M.Items.USlaveObject.msg.index ;
            *subindex   = S2M.Items.USlaveObject.msg.subindex ;
            *nbytes     = S2M.Items.USlaveObject.msg.data_len ;
            //ManipSdo.SlaveBuf = ManipSdoSlaveBuf ;
            buf[0] = S2M.Items.DataBlock.buf[0] ;
            buf[1] = S2M.Items.DataBlock.buf[1] ;
            buf[2] = S2M.Items.DataBlock.buf[2] ;
            buf[3] = S2M.Items.DataBlock.buf[3] ;
            return 0;
        }
        GetIpcTimer(&lltmr1 ) ;
    }while ( lltmr1 - lltmr < ( CPU_CLK_HZ / 10) );
    return  ( Manufacturer_error_detail + exp_manip_core_no_answer   );
}



long unsigned Object2Manip(short unsigned send)
{
    return Object2ManipBody(send , &ManipSdo.Index , &ManipSdo.SubIndex , &ManipSdo.Bytes2Dload , ManipSdo.SlaveBuf);
}


void ManipSlaveBody();

void ManipSlave()
{
    while ( CanSlaveManipQueue.nPut != CanSlaveManipQueue.nGet )
    {
        ManipSlaveBody () ;
    }
}

/*
 * Copy the buffer from block download into CPU2 through the IPC message memory, in chunks of 256 longs
 */

long CopyProgBuffer2Slave(short unsigned len)
{
    short unsigned nbuf , cnt , c1 , nblock , tot_len ;
    unsigned long long lltmr , lltmr1 ;
    unsigned long cs , next ;
    long unsigned * volatile p;

    cs = 0x12345678 ;

    // Copy the recorder buffer into the M2S and ask for buffer copying
    nbuf = len >> 8 ;
    if (len & 0xff )
    {
        nbuf += 1 ;
    }
    tot_len = 0 ;
    for ( cnt = 0 ; cnt < nbuf ; cnt++)
    {
        M2S.Items.ActCmd.cmd.InterBufCnt = cnt ;
        M2S.Items.USlaveObject.msg.index = 0x2400 ;
        M2S.Items.USlaveObject.msg.subindex  = 0 ;
        M2S.Items.USlaveObject.msg.isset = 1 ;
        if ( cnt+1 == nbuf )
        {
            nblock  = len - tot_len ;
        }
        else
        {
            nblock = 256 ;
        }
        tot_len += nblock ;
        for ( c1 = 0 ; c1 < nblock ; c1++ )
        {
            p = (unsigned long  *) RecorderBuffer ;
            p += ((cnt<<8)+c1) ;
            next = *p ;
            cs += next ;
            M2S.Items.DataBlock.buf[c1] = next ;
        }

        M2S.Items.USlaveObject.msg.data_len = nblock ;
        M2S.Items.USlaveObject.msg.counter += 1 ;
        GetIpcTimer(&lltmr) ;

        for(;;)
        {
            if ( M2S.Items.USlaveObject.msg.counter == S2M.Items.USlaveObject.msg.counter)
            {
                if ( S2M.Items.USlaveObject.msg.errcode )
                {
                    return S2M.Items.USlaveObject.msg.errcode ;
                }
                break ;
            }
            GetIpcTimer(&lltmr1 ) ;
            if (lltmr1 - lltmr > ( CPU_CLK_HZ / 10)  )
            {
                return Manufacturer_error_detail + exp_manip_core_no_answer ;
            }
        }
    }

    // Trigger checksum
    M2S.Items.ActCmd.cmd.InterBufCnt = len ;
    M2S.Items.ActCmd.cmd.Checksum = cs ;
    M2S.Items.USlaveObject.msg.index = 0x2400 ;
    M2S.Items.USlaveObject.msg.subindex  = 1 ;
    M2S.Items.USlaveObject.msg.isset = 1 ;
    M2S.Items.USlaveObject.msg.data_len = 4 ;
    M2S.Items.USlaveObject.msg.counter += 1 ;

    GetIpcTimer(&lltmr) ;

    for(;;)
    {
        if ( M2S.Items.USlaveObject.msg.counter == S2M.Items.USlaveObject.msg.counter)
        {
            return S2M.Items.USlaveObject.msg.errcode ;
        }
        GetIpcTimer(&lltmr1 ) ;
        if (lltmr1 - lltmr > ( CPU_CLK_HZ / 10)  )
        {
            return Manufacturer_error_detail + exp_manip_core_no_answer ;
        }
    }
}



void ManipSlaveBody()
{
//#ifdef MANIP2
    short unsigned sr; 
    long unsigned stat;
    short unsigned cs , exp , n , s  ;
    struct CCanMsg  Msg ;
     short unsigned CobType  ;
    // Test message for the manipulator
    sr  = BlockInts() ;
    Msg = CanSlaveManipQueue.Msg[CanSlaveManipQueue.nGet] ;
    CanSlaveManipQueue.nGet = ( CanSlaveManipQueue.nGet + 1 )  & (CanSlaveManipQueue.nQueue-1) ;
    RestoreInts(sr ) ;
    CobType = (short unsigned) ( (Msg.cobId & 0x7fffffff ) >> 7) ;
    // Manipulator can only answer expedited SDO
    if ( CobType != 0xc  )
    {
        return ;
    }

    // block download
    if ( ManipSdo.Status <= 0 )
    { // Waiting start of new SDO
        cs = ( Msg.data[0] & 0xe0 ) >> 5 ;
        exp = ( Msg.data[0] & 0x2 ) >> 1 ;
        n   = ( Msg.data[0] & 0xc ) >> 2 ;
        s   = (short unsigned) ( Msg.data[0] & 0x1 ) ;
        ManipSdo.Index = ( Msg.data[0] >> 8 ) & 0xffff ;
        ManipSdo.SubIndex = ( Msg.data[0] >> 24 ) & 0xff  ;
        ManipSdo.toggle = 0 ;
        ManipSdo.SlaveID  = Msg.cobId & 0x8000007f ;

//            if ( GetObjIndex(ManipSdo.Index , & pOdObject ) < 0 )
//            {
//                AbortManipSdo ( Object_does_not_exist_in_the_object_dictionary );
//               return ;
//            }

        // If previous SDO terminated by error , forget it
        ManipSdo.Status = 0 ;

        switch ( cs)
        {
        case 1: // Download SDO

            // Initiate download
            if (exp)
            {
                ManipSdoSlaveBuf[0] = Msg.data[1] ;

                if ( s == 0 )
                {
                    n = 0  ;
                }
                ManipSdo.Bytes2Dload = 4 - n ;
                stat = Object2Manip( 1 )  ;
                if ( stat )
                {
                    AbortSlaveSdo( stat , &ManipSdo);
                    return ;
                }
            }
            else
            {
                if ( s  )
                {
                    ManipSdo.Bytes2Dload = (unsigned short) Msg.data[1] ;
                    if ( ManipSdo.Bytes2Dload > ( 4 * sizeof( ManipSdoSlaveBuf) - 1 ))
                    {
                        AbortSlaveSdo( Out_of_memory, &ManipSdo);
                        return ;
                    }
                }
                else
                {// Size not specified: allow maximum
                    ManipSdo.Bytes2Dload =  4 * sizeof( ManipSdoSlaveBuf) - 1 ;
                }
                ManipSdo.ByteCnt = 0; // Nothing sent yet
                ManipSdo.Status = 1 ; // Go to the download stage
                ManipSdo.ExpectedCs = 0; // Next code sequence should be 3
            }
            SlaveSdoConfirmInitDload(&ManipSdo ) ;
            break ;
        case 2: // Upload SDO
            // Initiate upload
            stat = Object2Manip(0 )  ;
            if ( stat )
            {
                AbortSlaveSdo( stat , &ManipSdo);
                return ;
            }
            n = ManipSdo.Bytes2Dload  ;

            // Slave SDO function did not export any message. It simply wrote n bytes
            // into ManipSdoBuf. We next have to decide if expedit it.
            if ( n <= 4)
            { // That will be expedited
                SlaveSdoConfirmInitUploadExpedit(&ManipSdo,ManipSdoSlaveBuf[0],n) ;
                ManipSdo.Status = 0 ; // Go to the download stage
            }
            else
            { // That will be segmented
                SlaveSdoConfirmInitUploadSegmented(&ManipSdo,n) ;
                ManipSdo.Status = 1 ; // Go to the download stage
                ManipSdo.ByteCnt = 0 ;
                ManipSdo.toggle = 0;
                ManipSdo.ExpectedCs = 3;
            }

            break ;

        default:
            // Could not identify SDO state or match ccs
            AbortSlaveSdo( General_parameter_incompatibility_reason,&ManipSdo);
        }
        return ;
    }

    if ( ManipSdo.Status == 1  )
    { // Already within a segmented download SDO
        cs = ( Msg.data[0] & 0xe0 ) >> 5 ;
        if ( cs != ManipSdo.ExpectedCs  )
        {
            AbortSlaveSdo(Client_server_command_specifier_not_valid_or_unknown, &ManipSdo  ) ;
            return ;
        }

        switch ( cs)
        {
        case 0:
        // SDO segmented download

            stat = AddSdo2Buf ( &ManipSdo , &Msg ) ;
            if ( stat )
            {
                AbortSlaveSdo( stat , &ManipSdo  );
                return ;
            }

            if ( ManipSdo.Status == 0  )
            {

                stat = Object2Manip(1)  ;

                if ( stat )
                {
                    AbortSlaveSdo( stat, &ManipSdo  );
                }
                else
                {
                    PutCanSlaveQueue( &AddSdo2BufMsg);
                }
            }
			else
			{
                    PutCanSlaveQueue( &AddSdo2BufMsg);
			}

            break;
        case 3:
            // SDO segmented upload
            SlaveSdoUploadSegmented( &ManipSdo  );
            break ;
        default:
            // Could not identify SDO state or match ccs
            AbortSlaveSdo( General_parameter_incompatibility_reason, &ManipSdo  ) ;
        }
        return ;
    }
    // Could not identify SDO state or match ccs
    AbortSlaveSdo( General_parameter_incompatibility_reason, &ManipSdo  );
//#endif
}


const short unsigned LengthByDataType[16] = {4,4,2,2,0,0,0,0,0,0,0,0,0,0,0,0} ;

void TunnelSlave(unsigned long *data , short unsigned target )
{
    short unsigned cs     ;
    struct CObjDictionaryItem *pOdObject ;
    cs = ( data[0] & 0x60 ) >> 5 ;
    TunnelSdo.Bytes2Dload  = LengthByDataType [ data[0] & 0xf ] ;

    TunnelSdo.Index = ( data[0] >> 8 ) & 0xffff ;
    TunnelSdo.SubIndex = ( data[0] >> 24 ) & 0xff  ;
    TunnelSdo.SlaveBuf = &data[1] ;


    switch ( target )
    {
    case LP_CAN_ID:
        break ;
    case ID_MANIPULATOR:
        switch ( cs )
        {
        case 1: // Download SDO
            data[0] = Object2ManipBody(1 , &TunnelSdo.Index , &TunnelSdo.SubIndex , &TunnelSdo.Bytes2Dload , TunnelSdo.SlaveBuf);
            if ( data[0] == 0 )
            {
                data[0] = 0x40000000 ; // Flag it was a "set" action
            }
            data[1] = 0 ;
            break  ;
        case 2:
            data[0] = Object2ManipBody(0 , &TunnelSdo.Index , &TunnelSdo.SubIndex , &TunnelSdo.Bytes2Dload , TunnelSdo.SlaveBuf);
            break ;
        default:
            data[0] = Client_server_command_specifier_not_valid_or_unknown ;
            data[1] = 0 ;
            break ;
        }
        return  ;
    default:
        data[0] = Client_server_command_specifier_not_valid_or_unknown  ;
        data[1] = 0 ;
        return ;

    }


    if ( GetObjIndex(TunnelSdo.Index , & pOdObject , ObjDictionaryItem ) < 0 )
    {
        data[0] = Object_does_not_exist_in_the_object_dictionary  ;
        data[1] = 0 ;
        return ;
    }
    //TunnelSdo.SlaveBuf = & TunnelSdo.Lpayload ;
    switch ( cs )
    {
    case 1: // Download SDO
        // Initiate download
        if ( pOdObject->SetFunc == (SetDictFunc) 0  )
        {
            data[0] = Unsupported_access_to_an_object ;
        }


        data[0] = pOdObject->SetFunc(&TunnelSdo,TunnelSdo.Bytes2Dload) ;
        break ;
    case 2:
        // Initiate upload
        data[1] = 0 ;
        if ( pOdObject->GetFunc == (GetDictFunc) 0  )
        {
            data[0] = Unsupported_access_to_an_object ;
            return ;
        }

        data[0] = pOdObject->GetFunc(&TunnelSdo,&TunnelSdo.Bytes2Dload) ;

        if ( TunnelSdo.Bytes2Dload > 4 )
        { //Crash
            ResetReasonLog[WakeCounter].MemErrStat       = 0x1234 ;
            ResetReasonLog[WakeCounter].MemErrAddress    = (long) pOdObject->GetFunc ;
            ResetReasonLog[WakeCounter].NMIReturnAddress = 0x12345678 ;
            ResetReasonLog[WakeCounter].NmiStatus = TunnelSdo.Bytes2Dload;
            EALLOW ;
            __asm( " ESTOP0")   ;
            for ( ;; ) ;
        }

        break ;
    default: // Unidentified
        data[0] = Client_server_command_specifier_not_valid_or_unknown ;
        data[1] = 0 ;
        break ;

    }
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
void CanSlave (void)
{
    short unsigned sr  ;
    short unsigned CobType ;
    short unsigned cs , exp , n , s    ;
    long  stat ;
    long unsigned ustat ;
    struct CCanMsg  Msg ;
    struct CSdo * pSdo ;
    struct CObjDictionaryItem *pOdObject ;

    pSdo = & SlaveSdo ;


    if ( SlaveSdo.Status == 100  )
    { // SDO block dload
        if ( SysState.BlockDnload.emcy  )
        {
            AbortSlaveSdo(  SysState.BlockDnload.emcy ,  &SlaveSdo);
        }
        if ( SysState.BlockDnload.bEndOfBlockTransmission )
        {
            SysState.BlockDnload.InBlockDload = 0 ; // end RT service
            SlaveSdo.Status = 1000 ;
        }
        if (SysState.BlockDnload.bSendEndOfBlock)
        {
            SlaveSdoEndOfSubBlock( &SlaveSdo  );
            SysState.BlockDnload.bSendEndOfBlock = 0 ; // Mark end of use
        }
    }


    if ( CanSlaveInQueue.nPut == CanSlaveInQueue.nGet)
    {
        if ( CanSlavePdInQueue.nPut == CanSlavePdInQueue.nGet )
        {
            /*
            if ( CanSlaveSpiHostQueue.nPut == CanSlaveSpiHostQueue.nGet )
            {
                return ;
            }
            sr  = BlockInts() ;
            Msg = CanSlaveSpiHostQueue.Msg[CanSlaveSpiHostQueue.nGet] ;
            CanSlaveSpiHostQueue.nGet = ( CanSlaveSpiHostQueue.nGet + 1 )  & (CanSlaveSpiHostQueue.nQueue-1) ;
            RestoreInts(sr ) ;
            */
        }
        else
        {
            // There is a message, from CAN #2
            sr  = BlockInts() ;
            Msg = CanSlavePdInQueue.Msg[CanSlavePdInQueue.nGet] ;
            CanSlavePdInQueue.nGet = ( CanSlavePdInQueue.nGet + 1 )  & (CanSlavePdInQueue.nQueue-1) ;
            RestoreInts(sr ) ;
        }
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

            if ( GetObjIndex(SlaveSdo.Index , & pOdObject , ObjDictionaryItem ) < 0 )
            {
                AbortSlaveSdo ( Object_does_not_exist_in_the_object_dictionary , &SlaveSdo);
                return ;
            }

            // If previous SDO terminated by error , forget it
            SlaveSdo.Status = 0 ;

            switch ( cs)
            {
            case 1: // Download SDO
                if ( SysState.BlockDnload.InBlockDload )
                { // Abort the block upload
                    AbortSlaveSdo ( Invalid_sequence_number, &SlaveSdo );
                }

                // Initiate download
                if ( pOdObject->SetFunc == (SetDictFunc) 0  )
                {
                    AbortSlaveSdo ( Unsupported_access_to_an_object , &SlaveSdo);
                    return ;
                }
                if (exp)
                {
                    SlaveSdoBuf[0] = Msg.data[1] ;
                    /*
                    if ( s && ((4-n) != pOdObject->bytelen ) )
                    {
                        AbortSlaveSdo ( length_of_service_parameter_does_not_match );
                        return ;
                    }
                    */
                    if ( s == 0 )
                    {
                        n = 4 - pOdObject->bytelen ;
                    }
                    stat = pOdObject->SetFunc(&SlaveSdo,4-n) ;
                    if ( stat )
                    {
                        AbortSlaveSdo( stat, &SlaveSdo );
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
                            AbortSlaveSdo( Out_of_memory, &SlaveSdo);
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
                if ( SysState.BlockUpload.InBlockUload )
                { // Abort the block upload
                    AbortSlaveSdo ( Invalid_sequence_number, &SlaveSdo );
                }

                if ( pOdObject->GetFunc == (GetDictFunc) 0  )
                {
                    AbortSlaveSdo ( Unsupported_access_to_an_object , &SlaveSdo);
                    return ;
                }

                stat = pOdObject->GetFunc(&SlaveSdo,&n) ;
                if ( stat )
                {
                    AbortSlaveSdo( stat , &SlaveSdo);
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
                    // Object for recorder fast upload
                    SlaveSdoConfirmInitUploadSegmented(&SlaveSdo,n) ;
                    SlaveSdo.Status = 1 ; // Go to the download stage
                    SlaveSdo.ByteCnt = 0 ;
                    SlaveSdo.toggle = 0;
                    SlaveSdo.ExpectedCs = 3;
                }

                break ;

            case 5:
                if ( pOdObject->Index == 0x2006)
                { // Fast recorder - block upload
                    if (  ( Msg.data[0] & 0xff ) != 0xa4 )
                    {
                        AbortSlaveSdo( General_parameter_incompatibility_reason, &SlaveSdo);
                    }
                    stat = pOdObject->GetFunc(&SlaveSdo,&n) ;
                    if ( stat )
                    {
                        AbortSlaveSdo( stat , &SlaveSdo);
                        return ;
                    }
                    SlaveSdoConfirmInitUploadBlock(&SlaveSdo,n) ;
                }
                else
                {
                    AbortSlaveSdo( General_parameter_incompatibility_reason,&SlaveSdo);
                }
                break ;

            case 6: // Download block SDO
                SlaveSdo.Status = 100 ; // Go to the download stage
                SlaveSdo.ByteCnt = 0 ;
                SlaveSdo.toggle = 0;
                SlaveSdo.ExpectedCs = 5;
                SysState.BlockDnload.nextBlockLong = 0 ;
                SysState.BlockDnload.blockdatano = 0 ;
                //SysState.BlockDnload.BlockDloadLen = Msg.data[1] ;
                SysState.BlockDnload.inlongcnt   = 0 ;
                SysState.BlockDnload.longcnt = 0;
                SysState.BlockDnload.seqno = 0 ;
                SysState.BlockDnload.emcy  = 0 ;
                SysState.BlockDnload.crc   = 0xffff ;
                SysState.BlockDnload.bSendEndOfBlock = 0 ;
                SysState.BlockDnload.bEndOfBlockTransmission = 0 ;
                SlaveSdoConfirmInitDloadBlock(&SlaveSdo,Msg.data[1]) ;
                break ;

            default:
                // Could not identify SDO state or match ccs
                AbortSlaveSdo( General_parameter_incompatibility_reason, &SlaveSdo);
            }
            return ;
        }

        if ( SlaveSdo.Status == 100  )
        {
            return ;
        }

        if ( SlaveSdo.Status == 1000  )
        { // Wait end of download
            if ( (Msg.data[0] & 0xff ) != ((6<<5)+1) )
            {
                AbortSlaveSdo( Client_server_command_specifier_not_valid_or_unknown, &SlaveSdo);
                return ;
            }
            if ( SysState.BlockDnload.crc != (( Msg.data[0] >> 8 ) & 0xfffff ) )
            {
                AbortSlaveSdo( crc_error, &SlaveSdo);
                return ;
            }
            SlaveSdo.Status  = 0 ;

            if ( GetObjIndex(SlaveSdo.Index , & pOdObject, ObjDictionaryItem ) < 0 )
            {
                AbortSlaveSdo ( Object_does_not_exist_in_the_object_dictionary , &SlaveSdo);
                return ;
            }

            stat = pOdObject->SetFunc(&SlaveSdo,(unsigned short) SysState.BlockDnload.BlockDloadLen) ;
            if ( stat )
            {
                AbortSlaveSdo( stat , &SlaveSdo);
                return ;
            }

            SlaveSdoEndOfBlock( &SlaveSdo  );

            return ;
        }

        if ( SlaveSdo.Status == 1  )
        { // Already within a segmented download SDO
            cs = ( Msg.data[0] & 0xe0 ) >> 5 ;
            if ( cs != SlaveSdo.ExpectedCs  )
            {
                AbortSlaveSdo(Client_server_command_specifier_not_valid_or_unknown, &SlaveSdo) ;
                return ;
            }

            switch ( cs)
            {
            case 0:
            // SDO segmented download

                ustat = AddSdo2Buf ( pSdo , &Msg ) ;
                if ( ustat )
                {
                    AbortSlaveSdo( ustat , &SlaveSdo);
                    return ;
                }

                if ( pSdo->Status == 0  )
                {
                    if ( GetObjIndex(SlaveSdo.Index , & pOdObject , ObjDictionaryItem ) < 0 )
                    {
                        AbortSlaveSdo ( Object_does_not_exist_in_the_object_dictionary, &SlaveSdo );
                        return ;
                    }
                    stat = pOdObject->SetFunc(&SlaveSdo,SlaveSdo.ByteCnt) ;
                    if ( stat )
                    {
                        AbortSlaveSdo( stat, &SlaveSdo);
                    }
                    else
                    {
                        PutCanSlaveQueue( &AddSdo2BufMsg);
                    }
                }
				else
				{ 
                        PutCanSlaveQueue( &AddSdo2BufMsg);
				}
                break;
            case 3:
                // SDO segmented upload
                SlaveSdoUploadSegmented( &SlaveSdo  );
                break ;
            default:
                // Could not identify SDO state or match ccs
                AbortSlaveSdo( General_parameter_incompatibility_reason, &SlaveSdo);
            }
            return ;
        }
        // Could not identify SDO state or match ccs
        AbortSlaveSdo( General_parameter_incompatibility_reason, &SlaveSdo);
    }
}



