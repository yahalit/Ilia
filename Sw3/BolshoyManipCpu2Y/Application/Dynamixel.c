
#define DYNAMIXEL_OWNER

//#include "F2837x_YDCAN.h"
#include "StructDef2.h"



/**
 * Dynamixel:
 * We assume that  by offline manufacturer service program
 *  - All axes are given ID
 *  - All axes are tuned to baud rate of DYN_BAUD_RATE (1MBPS?)
 * ID distribution:
 * 24V: 3 = shoulder
 *      4 = elbow
 *      5 = wrist
 *      6 = gripper
 *  Delay transmission:
 *      100usec
 *  Protocol option: 2
 *  Mode           : Speed
 *
 * - PBIT starts with ping of all the existing devices. Because we are not sure
 *      with the state, the ping is done one device at a time.
 *
 * - Control parameter read/writes are only allowed when motor off, by interface of CAN
 *   SDO writes, expedited only (no more than 4 bytes at a time).
 *   Byte order is preserved (Both CAN and dynamixel use little endian)
 *
 *   The SDO management is very simple: Dict index is 0x2400 + ID
 *                                      Dict subindex the dynamixel memory write address
 *                                      SDO payload size indicator tells the size of the data
 *
 *  Real time track building is by:
 *  object 0x2500:
 *  Subindex [1] is the desired wrist x
 *  Subindex [2] is the desired wrist y
 *  Subindex [3] is the desired wrist angle
 *
 *  Object 0x2501:
 *  Reserved for speed commanding
 *
 *  Object 0x2502
 *  Reserved for acc commanding
 *
 *  Object 0x2503:
 *  Go motion (value 0: motor off, value 1: stop, value 2: Accept target)
 *
 * On startup:
 * - variables are mapped to contiguous data addresses.
 * - Temperature              - 1 byte
 * - Current acual            - 2 byte
 * - Speed actual             - 4 byte
 * - Position actual          - 4 byte
 * - Notor on (Torque enable) - 1 byte
 * - Goal position            - 4 byte
 * - Goal torque              - 2 byte
 * - Goal speed               - 4 byte
 *
 * We read  The entire set , wait 1.2msec, then write Goal current / Goal speed
 * wait another 1.2 msec so that the cycle turns to be about 4msec
 *
 *
 *   At real time, the management is:
 *   - Send status request. This
 *    by sending synchronized data items to all the axes
 *   The values to send are speed and acceleration goals.
 *   Emergency treatment (axis does not respond) should be closure of its power supply.
 */


/**
 * InitManipulatorDatabase: Initialize the database of the manipulator
 * InitDynamixelNet: Initialize the SCI and raw communication management struct of a dynamixel
 * GetDynamixelString: Rx a string from Dynamixel
 * DynamixelTx: Transmit a string to dynamixel
 * ReadSynAxesStat: Read the status message sent by the Dynamixel units
 * GetManipulatorAngles : Get Manipulator angles given x,y location
 * DynamixelManipControl   : Set the speed commands to dynamixel
 * Dyn24StateMachine State machine for the 24V network management
 * StructDecode: Decode a string buffer to get variables by their descriptors
 * ConstructReadSyncMsg: Constructor for a sync read message object
 * ConstructWriteSyncMsgSingleItem: Constructor for a sync write message object
 *
 */
short ReadSynAxesStat( struct CDynamixelProt2 *pProt , struct CDynamixelStat pDynArr[] , short unsigned cnt) ;

short unsigned * GetDynamixelString(short unsigned *sPtrIn , struct CDynamixelMsg *pMsg
        , short unsigned lmax);
short DynamixelTx ( struct  CDynamixelProt2 *pDyn , struct CDynamixelMsg *pMsg );

#define DYN_DICT_PRO_MODELNUM 0  // 2 byte
//#define DYN_DICT_PRO_OPERMODE 3  // 1 byte
//#define DYN_DICT_PRO_INDIR_ADD  49 // 2 byte
//#define DYN_DICT_PRO_INDIR_DATA 634 // 1 byte
//#define DYN_DICT_PRO_TORQUE_ENA 562  ?? // 1 byte
//#define DYN_DICT_PRO_GOAL_POS 596  // 4 byte
//#define DYN_DICT_PRO_GOAL_V 600  ??// 4 byte
//#define DYN_DICT_PRO_GOAL_TRQ 604  // 2 byte
//#define DYN_DICT_PRO_GOAL_ACC 606  // 4 byte
//#define DYN_DICT_PRO_ACT_POS 611  // 4 byte
//#define DYN_DICT_PRO_ACT_V 615  // 4 byte
//#define DYN_DICT_PRO_ACT_CUR 621  // 2 byte



#define DYN_VIRT_MOTORON 0
#define DYN_VIRT_POSACT 1
#define DYN_VIRT_VACT 5
#define DYN_VIRT_CURRENTACT 9
#define DYN_VIRT_MOVING 11
#define DYN_VIRT_ERRORSTAT 12


#define DYN_VIRT_POSGOAL 12
#define DYN_VIRT_VGOAL 16
#define DYN_VIRT_CURRENTGOAL 20


//#define MAN_CUR_SCALE 0.0001f
#define DYN12_CUR_SCALE 0.00269f


const unsigned short crc_table[256] = {
        0x0000, 0x8005, 0x800F, 0x000A, 0x801B, 0x001E, 0x0014, 0x8011,
        0x8033, 0x0036, 0x003C, 0x8039, 0x0028, 0x802D, 0x8027, 0x0022,
        0x8063, 0x0066, 0x006C, 0x8069, 0x0078, 0x807D, 0x8077, 0x0072,
        0x0050, 0x8055, 0x805F, 0x005A, 0x804B, 0x004E, 0x0044, 0x8041,
        0x80C3, 0x00C6, 0x00CC, 0x80C9, 0x00D8, 0x80DD, 0x80D7, 0x00D2,
        0x00F0, 0x80F5, 0x80FF, 0x00FA, 0x80EB, 0x00EE, 0x00E4, 0x80E1,
        0x00A0, 0x80A5, 0x80AF, 0x00AA, 0x80BB, 0x00BE, 0x00B4, 0x80B1,
        0x8093, 0x0096, 0x009C, 0x8099, 0x0088, 0x808D, 0x8087, 0x0082,
        0x8183, 0x0186, 0x018C, 0x8189, 0x0198, 0x819D, 0x8197, 0x0192,
        0x01B0, 0x81B5, 0x81BF, 0x01BA, 0x81AB, 0x01AE, 0x01A4, 0x81A1,
        0x01E0, 0x81E5, 0x81EF, 0x01EA, 0x81FB, 0x01FE, 0x01F4, 0x81F1,
        0x81D3, 0x01D6, 0x01DC, 0x81D9, 0x01C8, 0x81CD, 0x81C7, 0x01C2,
        0x0140, 0x8145, 0x814F, 0x014A, 0x815B, 0x015E, 0x0154, 0x8151,
        0x8173, 0x0176, 0x017C, 0x8179, 0x0168, 0x816D, 0x8167, 0x0162,
        0x8123, 0x0126, 0x012C, 0x8129, 0x0138, 0x813D, 0x8137, 0x0132,
        0x0110, 0x8115, 0x811F, 0x011A, 0x810B, 0x010E, 0x0104, 0x8101,
        0x8303, 0x0306, 0x030C, 0x8309, 0x0318, 0x831D, 0x8317, 0x0312,
        0x0330, 0x8335, 0x833F, 0x033A, 0x832B, 0x032E, 0x0324, 0x8321,
        0x0360, 0x8365, 0x836F, 0x036A, 0x837B, 0x037E, 0x0374, 0x8371,
        0x8353, 0x0356, 0x035C, 0x8359, 0x0348, 0x834D, 0x8347, 0x0342,
        0x03C0, 0x83C5, 0x83CF, 0x03CA, 0x83DB, 0x03DE, 0x03D4, 0x83D1,
        0x83F3, 0x03F6, 0x03FC, 0x83F9, 0x03E8, 0x83ED, 0x83E7, 0x03E2,
        0x83A3, 0x03A6, 0x03AC, 0x83A9, 0x03B8, 0x83BD, 0x83B7, 0x03B2,
        0x0390, 0x8395, 0x839F, 0x039A, 0x838B, 0x038E, 0x0384, 0x8381,
        0x0280, 0x8285, 0x828F, 0x028A, 0x829B, 0x029E, 0x0294, 0x8291,
        0x82B3, 0x02B6, 0x02BC, 0x82B9, 0x02A8, 0x82AD, 0x82A7, 0x02A2,
        0x82E3, 0x02E6, 0x02EC, 0x82E9, 0x02F8, 0x82FD, 0x82F7, 0x02F2,
        0x02D0, 0x82D5, 0x82DF, 0x02DA, 0x82CB, 0x02CE, 0x02C4, 0x82C1,
        0x8243, 0x0246, 0x024C, 0x8249, 0x0258, 0x825D, 0x8257, 0x0252,
        0x0270, 0x8275, 0x827F, 0x027A, 0x826B, 0x026E, 0x0264, 0x8261,
        0x0220, 0x8225, 0x822F, 0x022A, 0x823B, 0x023E, 0x0234, 0x8231,
        0x8213, 0x0216, 0x021C, 0x8219, 0x0208, 0x820D, 0x8207, 0x0202
    };






short unsigned TempMsgBuf12[32] ;
short unsigned TempMsgBuf24[32] ;
short unsigned ODTempMsgBuf[32] ;


long unsigned  GetDxlPayload( short unsigned si ,short unsigned *nData,
        struct CDynamixelProt2 *pProt , long unsigned *pRslt )
{
    short unsigned *pNext ;
    short unsigned *pNow ;
    short unsigned *pLast ;
    short unsigned maxlen1 , maxlen2  ;
    struct CDynamixelMsg Msg ;
//  long unsigned  G_ul ;
    short unsigned ndata ;
    //(void) nData ;

    Msg.pPay = ODTempMsgBuf ;

    pNow = pProt->RxStr ;
    pLast = pNow+pProt->InRx ;
    Msg.ID = 0xffff ;
    Msg.inst = 0; // Just prevent un-initialized accident

    while (Msg.ID != si ) // Search until ID == SubIndex
    {
        maxlen1 = sizeof(ODTempMsgBuf)-2;
        maxlen2 = (short unsigned) (pLast - pNow ) ;
        if ( maxlen1 > maxlen2) maxlen1 = maxlen2 ;

        pNext = GetDynamixelString(pNow , &Msg , maxlen1) ;
        if ( pNext == pNow )
        {
            return ( 0x1002) ; // Failure to read a message
        }
        pNow = pNext ;
        Msg.ID = Msg.pPay[0] ;
        Msg.inst = Msg.pPay[3] ;
        Msg.Error= Msg.pPay[4] ;
    }

    if ( Msg.inst != 0x55 )
    {
        return ( 0x1007) ; // Failure to read a message
    }
    if ( Msg.Error )
    {
        return ( 0x1008) ; // Failure to read a message
    }
    ndata = Msg.pPay[1] + Msg.pPay[2] * 256 - 4 ;
    switch ( ndata )
    {
    case 1:
        *pRslt = Msg.pPay[5] ;
        break ;
    case 2:
        *pRslt = Msg.pPay[5] + (Msg.pPay[6] << 8 ) ;
        break ;
    case 4:
        *pRslt = Msg.pPay[5] + ( (long unsigned) Msg.pPay[6] << 8 ) +
        ( (long unsigned) Msg.pPay[7] << 16 ) +  ( (long unsigned) Msg.pPay[8] << 24 ) ;
        break ;
    default:
        return ( 0x1009) ; // Failure to read a message
    }
    *nData = ndata ;

    return 0 ;
}



/**
 * \brief Decode a string buffer to get variables by their descriptors
 *
 * \param buf           : Buffer with the interpreted message
 * \param key           : Array of keys used to decode the buffer
 * \param offset        : Offset to add to all the target addresses
 *
 * \return              : 0 for success , -1 for failure
 */
short unsigned StructDecode ( short unsigned *buf  , const struct DecodeKey * key , short unsigned offset )
{
    struct DecodeKey *pKey ;
    short unsigned * NextPtr ;
    short unsigned c1 , c2  ;
    short unsigned cnt ;
    for ( cnt = 0 ; cnt < 65535 ; cnt++)
    {
        pKey = (struct DecodeKey *) (& key[cnt] ) ;
        NextPtr = (short unsigned *) pKey->vPtr + offset  ;

        if ( NextPtr == (short unsigned *) 0 )
        {
            return key[cnt].Len ;
        }

        c1 = *(buf+pKey->ByteOffset) ;
        if ( pKey->Len == 1 )
        {
            *NextPtr = c1 & 0xff ;
            continue ;
        }
        c2 = *(buf+pKey->ByteOffset+1) ;
        *NextPtr = c1 & 0xff + ( c2 << 8  ) ;
        if ( pKey->Len > 2 )
        {
            NextPtr += 1 ;
            c1 = *(buf+pKey->ByteOffset+2) ;
            c2 = *(buf+pKey->ByteOffset+3) ;
            *NextPtr = c1 & 0xff + ( c2 << 8  ) ;
        }
    }
    return 0xffff ; // Unexpected
}


/**
 * \brief Read a database from the dynamixel returning message
 *
 * Loop over all the active axes and try to decode a returned sync message
 * \param buf           : Buffer with the interpreted message
 * \param key           : Array of keys used to decode the buffer
 * \param nDyn          : Number of axes to read
 *
 * \return              : 0 for success , -1 for failure

short ReadSynAxesByKey( short unsigned *pBuf , const struct DecodeKey * key , short unsigned nDyn ,
          short unsigned SlaveIdList[] )
{
    short unsigned cnt , c1 , c2 ;
    short unsigned ID ;
    short unsigned *pNext ;
    struct CDynamixelMsg Msg ;

    Msg.pPay = TempMsgBuf24 ;

    for ( cnt = 0 ; cnt < nDyn ; cnt++)
    {
        pNext = GetDynamixelString(pBuf , &Msg , sizeof(TempMsgBuf24)-2 ) ;
        if ( pNext == pBuf )
        {
            return -1 ; // Failure to read a message
        }
        pBuf = pNext ; // Advance read buffer
        ID  = 0xffff ;
        for ( c2 = 0 ; c2 < nDyn ; c2++)
        {
            if ( Msg.ID == SlaveIdList[cnt] )
            {
                ID = cnt ;
                break ;
            }
        }
        if ( ID == 0xffff )
        {
            return -1 ; // Unexpected ID, or incorrect payload length
        }

        c1 = StructDecode ( pBuf  ,  key , (short unsigned) (sizeof( struct CDynamixelProPars) * (ID-1) ) );

        if ( c1 != Msg.PayloadLen)
        {
            return -1 ;
        }
        pBuf = pNext ;
    }
    return 0 ; // Ok return
}
 */


/**
 * \brief Constructor for a sync read message object
 * \param net: 12 or 24 for stops or manipulator
 */
short ConstructReadSyncMsg ( struct CDynamixelMsg * Msg ,
        short unsigned StartAdd , short ReadLen , short unsigned nDyn , short unsigned SlaveIdList[] ,
        short unsigned net )
{
    short unsigned cnt ;
    short unsigned *pDat ;

    switch ( net )
    {
    case 12:
        Msg->pPay = TempMsgBuf12 ;
        break ;
    case 24:
        Msg->pPay = TempMsgBuf24 ;
        break ;
    default:
        return -1 ;
    }

    Msg->inst = 0x82  ;
    Msg->ID   = 254   ;
    Msg->Error = 0 ;
    Msg->pPay[0] = ( StartAdd & 0xff ) ;
    Msg->pPay[1] = (StartAdd>> 8 ) & 0xff ;
    Msg->pPay[2] = ( (ReadLen) & 0xff ) ;
    Msg->pPay[3] = ( (ReadLen)>> 8 ) && 0xff ;
    Msg->pPay[4] = Msg->inst ;
    pDat = & Msg->pPay[4] ;
    for ( cnt = 0 ; cnt < nDyn ; cnt++ )
    {
        *pDat++ = SlaveIdList[cnt] ;
    }
    Msg->PayloadLen = 4 +  nDyn  ;

    return 0 ;
}


/**
 * \brief Constructor for a sync read message object
 * \param net: 12 or 24 for stops or manipulator
 */
short ConstructReadMsg ( struct CDynamixelMsg * msg ,
        short unsigned startAdd , short unsigned readLen , short unsigned id , short unsigned net )
{
    switch ( net )
    {
    case 12:
        msg->pPay = TempMsgBuf12;
        break ;
    case 24:
        msg->pPay = TempMsgBuf24;
        break ;
    default:
        return -1 ;
    }

    msg->inst = 0x2  ;
    msg->ID   = id   ;
    msg->Error = 0 ;
    msg->pPay[0] = ( startAdd & 0xff ) ;
    msg->pPay[1] = (startAdd>> 8 ) & 0xff ;
    msg->pPay[2] = ( (readLen) & 0xff ) ;
    msg->pPay[3] = ( (readLen)>> 8 ) && 0xff ;
    msg->PayloadLen = 4 ;

    return 0 ;
}

/**
 * \brief Constructor for a sync write message object
 * \param net: 12 or 24 for stops or manipulator
 */
short ConstructWriteMsg ( struct CDynamixelMsg * Msg ,
        short unsigned StartAdd , short unsigned bytes , long data , short unsigned ID  )
{
    long unsigned ul ;

    ul = * ((long unsigned * ) &data ) ;
    Msg->inst = 0x3  ;
    Msg->ID   = ID   ;
    Msg->Error = 0 ;
    Msg->pPay[0] = ( StartAdd & 0xff ) ;
    Msg->pPay[1] = (StartAdd>> 8 ) & 0xff ;
    Msg->pPay[2] = (short unsigned) ( ul & 0xff ) ;
    if ( bytes > 1 )
    {
        Msg->pPay[3] = (short unsigned) (( ul >> 8 ) & 0xff) ;
    }
    if ( bytes > 2 )
    {
        Msg->pPay[4] = (short unsigned) (( ul >> 16 ) & 0xff) ;
        Msg->pPay[5] = (short unsigned) (( ul >> 24 ) & 0xff) ;
        bytes = 4 ;
    }

    Msg->PayloadLen = 2 + bytes ;
    return 0 ;
}

/**
 * \brief Constructor for a sync write message object
 */
short ConstructWriteSyncMsgSingleItem ( struct CDynamixelMsg * Msg ,
        short unsigned StartAdd , short WriteLen , short unsigned nDyn , short unsigned SlaveIdList[] ,
        long Item[] , short unsigned net )
{
    short unsigned cnt ;
    short unsigned *pDat ;
    long  unsigned c ;

    switch ( net )
    {
    case 12:
        Msg->pPay = TempMsgBuf12 ;
        break ;
    case 24:
        Msg->pPay = TempMsgBuf24 ;
        break ;
    default:
        return -1 ;
    }
    Msg->inst = 0x83  ;
    Msg->ID   = 254   ;
    Msg->Error = 0 ;
    Msg->pPay[0] = ( StartAdd & 0xff ) ;
    Msg->pPay[1] = (StartAdd>> 8 ) & 0xff ;
    Msg->pPay[2] = ( (WriteLen) & 0xff ) ;
    Msg->pPay[3] = ( (WriteLen)>> 8 ) && 0xff ;
    Msg->pPay[4] = Msg->inst ;
    pDat = & Msg->pPay[4] ;
    for ( cnt = 0 ; cnt < nDyn ; cnt++ )
    {
        *pDat++ = SlaveIdList[cnt] ;
        c = Item[cnt] ;
        *pDat++ = c & 0xff ;
        if ( WriteLen >= 2 )
        {
            *pDat++ = (c>>8) & 0xff ;
        }
        if ( WriteLen > 2 )
        {
            *pDat++ = (c>>16) & 0xff ;
            *pDat++ = (c>>24) & 0xff ;
        }
    }
    Msg->PayloadLen = 4 +  nDyn * ( 1 + WriteLen) ;
    return 0 ;
}

/**
 * \brief Issue a motor on request
 *
 * \param cnt: Axis index
 * \param request : 0 for off, 1 for on
 */
void SetMonRequest12( short unsigned cnt , short unsigned request )
{
    if ( cnt >= NUM_12V_MANIP_AXES) return ; // Prevent index runaway
    DynStat12[cnt].MotorOnRequest = request ;
}

void SetMonRequest24( short unsigned cnt , short unsigned request )
{
    if ( cnt >= NUM_24V_AXES ) return ; // Prevent index runaway
    DynStat24[cnt].MotorOnRequest = request ;
}



/**
 * \brief State machine for the 24V network management
 *
 */


void Dyn24StateMachine ( void )
{
    short stat  ;
    short unsigned * pUs ;
    short unsigned ecnt ;
    //short unsigned ShErr , ElErr , WrErr ;
    long speedRequest ;
    struct CDynamixelStat *pStat ;
    short unsigned MotorOnReq ;// CurrentReq ;


    if ( (Dynamixel24.InitState != 1) || (Dynamixel24.nMembers == 0 ) )
    {
        Dynamixel24.SubState = 0 ; // Wait initialization done
        Dynamixel24.State = DYN_RUN_RT ;
        SetSysTimerTargetSec( TIMER_RS485_24V_TOUT , Dynamixel24.CommCycleTimeSec ,&SysTimerStr) ;
        return ;
    }

    if ( IsSysTimerElapse(TIMER_RS485_24V_TOUT,&SysTimerStr) == 0 )
    {
        return ;
    }
    SetSysTimerTargetSec( TIMER_RS485_24V_TOUT , Dynamixel24.CommCycleTimeSec , &SysTimerStr ) ;


    switch ( Dynamixel24.State )
    {
    case DYN_RUN_RT: // Real time actions
        switch ( Dynamixel24.SubState )
        {
        case 0:
            // Read previous control confirmation
            stat = DxReadControlConfirm ( &Dynamixel24 , Dynamixel24.NextAxis  );
            // Count good and bad comms
            pUs = (short unsigned *) & CommStatistics24[Dynamixel24.NextAxis] ;
            if ( stat)
            {
                pUs[1] += 1 ;
            }
            else
            {
                pUs[0] += 1 ;
            }

            CbitCounterUpdate ( stat , &Dx24AxisComCbit[Dynamixel24.NextAxis] ) ;
            // Switch to the next axis for feedback read
            Dynamixel24.NextAxis += 1;
            if ( Dynamixel24.NextAxis >= Dynamixel24.nMembers )
            {
                Dynamixel24.NextAxis = 0 ;
            }

            // Request feedback
            ConstructReadMsg ( & Dynamixel24.Msg , Dynamixel24.IndirectReadAdd , 13 , Dynamixel24.IDList[Dynamixel24.NextAxis] , Dynamixel24.Net)  ;
            DynamixelTx ( & Dynamixel24 , &  Dynamixel24.Msg  ) ;
            Dynamixel24.SubState = 1;
            break ;

        case 1:
            // Read feedback report
            stat = ReadSynAxesStat( &Dynamixel24 , DynStat24  , Dynamixel24.NextAxis );

            // Count good and bad communications
            pUs = (short unsigned *) & CommStatistics24[Dynamixel24.NextAxis] ;
            if ( stat)
            {
                pUs[1] -= stat ;
            }
            else
            {
                pUs[0] += 1 ;
            }

            pStat = & DynStat24[Dynamixel24.NextAxis] ;
            ecnt  = KnowWhereIAm24[Dynamixel24.NextAxis] ;
            if ( stat == 0 )
            { // Status is OK, write down axis measurements
                SetAxisFeedback24 ( Dynamixel24.NextAxis ,  pStat->PositionActual , pStat->SpeedActual , pStat->HardErrorStat, pStat->MotorOn );

                if ( DynStat24[Dynamixel24.NextAxis].HardErrorStat & 0xda )
                {
                    ecnt = __max(ecnt,3)-3 ;
                }
                else
                {
                    ecnt = __min(ecnt+1,100) ;
                }
            }
            else
            {
                ecnt = __max(ecnt,3)-3 ;
            }
            KnowWhereIAm24[Dynamixel24.NextAxis] = ecnt ;

            // If axis reached communication error limit, mark it
            if ( Dx24AxisComCbit[Dynamixel24.NextAxis].ErrorCond )
            {
                pStat->HardErrorStat = 128 ; // Mark communication error
            }

            CbitCounterUpdate ( ( stat ) ? 1 : 0 , &Dx24AxisComCbit[Dynamixel24.NextAxis] ) ;

            if ( Dx24AxisComCbit[Dynamixel24.NextAxis].ErrorCond || pStat->HardErrorStat )
            {
                if ( pStat->MotorOn )
                {
                    pStat->MotorOn        = 0 ; // Kill motor on condition
                    pStat->MotorOnRequest = 0 ;
                }
                ManCBit.ManFail |= ( 1<< Dynamixel24.NextAxis) ;
            }
            else
            {
                ManCBit.ManFail &= ~( 1<< Dynamixel24.NextAxis) ;
            }

            // call the manipulator control function
            UpdateManipulatorControl24 ( Dynamixel24.NextAxis , &pStat->MotorOnRequest , & pStat->SpeedCmdRadSec) ; //  , &pStat->PosTargetRad) ;

            // Send either axis On/Off or speed command
            if ( PBit.State != 10 )
            {
                pStat->MotorOnRequest = 0 ;
            }

            if ( pStat->MotorOnRequest  )
            {
                pStat->AlertCnt = 0 ;
            }

            if ( S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual )
            {
                MotorOnReq = IndividualAxCtl24[Dynamixel24.NextAxis].MotorOnRequest ;
            }
            else
            {
                // Vandal so that manipulator motor is always on
                MotorOnReq = ( pStat->MotorOnRequest ) ? 1 : 0 ;
            }


            if ( (pStat->MotorOn != MotorOnReq ) || (pStat->MotorOn == 0 ) )
            {
                if( ManCmd.SimulationMode & SIMFLAG_MANIPULATOR)
                {
                    ConstructWriteMsg ( & Dynamixel24.Msg , Dynamixel24.TorqueEnableAdd[Dynamixel24.NextAxis] , 1 , (long)0 , Dynamixel24.IDList[Dynamixel24.NextAxis] ) ;
                    pStat->Sim.SimSpeedCnt = (float)(pStat->Sim.SimSpeedCnt * 0.95f);
                }
                else
                {
                    // Avoid turning the motor off after too short delay
                    if ( MotorOnReq )
                    {
                        if (Dynamixel24.MotorOffCnt[Dynamixel24.NextAxis]  )
                        {
                            Dynamixel24.MotorOnCnt[Dynamixel24.NextAxis]= Dynamixel24.MotorOffCnt[Dynamixel24.NextAxis] ;
                        }
                        Dynamixel24.MotorOffCnt[Dynamixel24.NextAxis]  = 0 ;

                        if ( Dynamixel24.MotorOnCnt[Dynamixel24.NextAxis] < 4)
                        {
                            Dynamixel24.MotorOnCnt[Dynamixel24.NextAxis]  += 1 ;
                            MotorOnReq = 0 ;
                        }

                    }
                    else
                    {
                        Dynamixel24.MotorOnCnt[Dynamixel24.NextAxis]  = 0 ;
                        if ( Dynamixel24.MotorOffCnt[Dynamixel24.NextAxis] < 4)
                        {
                            Dynamixel24.MotorOffCnt[Dynamixel24.NextAxis]  += 1 ;
                        }
                    }
                    ConstructWriteMsg ( & Dynamixel24.Msg , Dynamixel24.TorqueEnableAdd[Dynamixel24.NextAxis] , 1 , (long)MotorOnReq , Dynamixel24.IDList[Dynamixel24.NextAxis] ) ;
                }
            }
            else //speed cmd
            {
                if ( (pStat->MotorOnRequest == 0) || ((ManCmd.ControlWord.MotorsOn == 0) && ( S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual == 0  ) ) )
                    speedRequest = 0 ;
                else
                {
                    if ( ManipulatorType == Flex_Manipulator )
                    {
                        speedRequest = (long)(  __fmax( __fmin( pStat->SpeedCmdRadSec * (1.0f / pStat->SpeedScale),FlexDynSpeedCmdLimit),-FlexDynSpeedCmdLimit) );
                    }
                    else
                    {
                        speedRequest = (long)( pStat->SpeedCmdRadSec * (1.0f / pStat->SpeedScale) );
                    }
                }

                if( ManCmd.SimulationMode & SIMFLAG_MANIPULATOR )
                {
                    float prevSimSpeedCnt = pStat->Sim.SimSpeedCnt ;
                    ConstructWriteMsg ( & Dynamixel24.Msg , Dynamixel24.TorqueEnableAdd[Dynamixel24.NextAxis] , 1 , (long)0 , Dynamixel24.IDList[Dynamixel24.NextAxis] ) ;
                    pStat->Sim.SimSpeedCnt += 1.0f*(speedRequest - pStat->Sim.SimSpeedCnt); //was 0.35f
                    //HACK the 5.4 is empirical because of suspicion of wrong actual time interval
                    pStat->Sim.SimPositionCnt += (prevSimSpeedCnt + pStat->Sim.SimSpeedCnt)/2.0f * pStat->SpeedScale * (5.4f * Dynamixel24.CommCycleTimeSec)  / pStat->PositionScale;
                    //pStat->Sim.SimPositionCnt += (prevSimSpeedCnt + pStat->Sim.SimSpeedCnt) / 2.0f * pStat->SpeedScale * Dynamixel24.TimeWaitReadResponseUsec * 1e-6f / pStat->PositionScale;
                }
                else
                {
                    if ( ManCmd.ProfilerTest ) // && (Dynamixel24.NextAxis==3))
                    {
                        speedRequest = 0 ; // (long)(0.3 * (1.0f / pStat->SpeedScale));
                    }
                    //if ( pStat->CurrentGoalRequest )
                    //{
                    //    pStat->CurrentGoalRequest = 0 ;
                    //    CurrentReq = (short) ( __fmax( __fmin(pStat->CurrentGoal,pStat->MaxArmCurrent-0.1f),-pStat->MaxArmCurrent+0.1f)  * pStat->InvCurrentScale ) ;
                    //    ConstructWriteMsg ( & Dynamixel24.Msg , Dynamixel24.CurrentGoalAdd[Dynamixel24.NextAxis] , 2 ,  CurrentReq , Dynamixel24.IDList[Dynamixel24.NextAxis]) ;
                    //}
                    //else
                    {
                        ConstructWriteMsg ( & Dynamixel24.Msg , Dynamixel24.SpeedGoalAdd[Dynamixel24.NextAxis] , 4 , speedRequest , Dynamixel24.IDList[Dynamixel24.NextAxis]) ;
                        pStat->Sim.SimPositionCnt = (float) pStat->PositionCnt; //in order to be synchronized
                    }
                }
            }

            pStat->Sim.SimMotorOn = pStat->MotorOnRequest ; // Simulation

            DynamixelTx ( & Dynamixel24 , &  Dynamixel24.Msg  ) ;
            Dynamixel24.SubState = 0;
            break ;
        default:
            Dynamixel24.SubState = 0;
            break;
        }
        break ;

    case DYN_STATE_FAIL: // Network error
        break ;



    case DYN_STATE_REBOOT:

        PBit.DynRebootRequest &= ~2;
        if ( Dynamixel24.NextRebootTarget >= Dynamixel24.nMembers)
        {
            SetSysTimerTargetSec ( TIMER_REBOOT_TIME24 , 2.0 , &SysTimerStr );
            Dynamixel24.State = DYN_STATE_REBOOT_WAIT ;
            break ;
        }

        BootMsg.pPay = BootPayload ;
        BootMsg.Error = 0 ;
        BootMsg.PayloadLen = 0 ;
        BootMsg.inst = 8 ;
        BootMsg.ID = Dynamixel24.IDList[Dynamixel24.NextRebootTarget] ;

        DynamixelTx ( & Dynamixel24 , & BootMsg ) ;
        Dx24AxisComCbit[Dynamixel24.NextRebootTarget].ErrorCount = 0 ;
        Dx24AxisComCbit[Dynamixel24.NextRebootTarget].ErrorCond  = 0 ;
        Dynamixel24.NextRebootTarget += 1 ;

        break ;

    case DYN_STATE_REBOOT_WAIT:
        if ( IsSysTimerElapse(TIMER_REBOOT_TIME24,&SysTimerStr) & ((PBit.DynRebootRequest&2)==0)  )
        {
            Dynamixel24.NextAxis = 0 ;
            Dynamixel24.State = DYN_RUN_RT ;
            Dynamixel24.SubState = 0 ;
            Dynamixel24.InitState = 0 ;
            InitDynState( 24 , pDyn24Setup );
            PBit.DynRebootRequest |= 2 ;
        }

        break ;

    case DYN_MANUAL_EXT: // External command, no periodic response
        break ;
    case DYN_NET_WAKE_WAIT:
        break ;
    }
/*
    ShErr = DynStat24[0].HardErrorStat & 0xff  ;
    ElErr = DynStat24[1].HardErrorStat & 0xff  ;
    WrErr = DynStat24[2].HardErrorStat & 0xff  ;


    CommStatistics[3] = ShErr |  ( ElErr  << 8 ) |  ( (long)WrErr << 16 ) ;
    if ( ShErr )
    {
        CommStatistics[4] = ( CommStatistics[4] & 0xffffff00 )  | ShErr ;
    }
    if ( ElErr )
    {
        CommStatistics[4] = ( CommStatistics[4] & 0xffff00ff )  | (ElErr << 8)  ;
    }
    if ( WrErr )
    {
        CommStatistics[4] = ( CommStatistics[4] & 0xff00ffff )  | ((long) WrErr << 16)  ;
    }
*/
}




/*
 * \brief CRC calculation function provided by Dynamixel
 */
unsigned short update_crc(unsigned short crc_accum, unsigned short *data_blk_ptr, unsigned short data_blk_size)
{
    unsigned short i, j;

    for(j = 0; j < data_blk_size; j++)
    {
        i = ((unsigned short)(crc_accum >> 8) ^ data_blk_ptr[j]) & 0xFF;
        crc_accum = (crc_accum << 8) ^ crc_table[i];
    }

    return crc_accum;
}




const short NextStuff[4] = { 0xff , 0xff , 0xfd , 0xfd } ;

void SetEmptyVRs485Tx ( short unsigned x )
{
    (void) x ;
}


float GetLpClk(void)
{
    /*
    switch ( ClkCfgRegs.LOSPCP.bit.LSPCLKDIV)
    {
    case 0:
        return CPU_CLK_MHZ * 1.e6f ;
    default:
        return CPU_CLK_MHZ * 1.e6f / ( ClkCfgRegs.LOSPCP.bit.LSPCLKDIV * 2.0f)  ;
    }     *
     */
    return CPU_CLK_MHZ * 1.e6f / 1.0f  ;

}

/**
 * \brief Initialize the SCI and raw communication management struct of a dynamixel
 *
 * We assume that the low speed pre-scalar has been set to LP_MHZ (divide by 1 (200MHZ clock)?)
 * Communication at DYN_BAUD_RATE , 8 bits in byte, 1 stop bit , no parity , no DTR , no RTS
 */
short InitDynamixelNet ( struct  CDynamixelProt2 *pDyn , short unsigned net , short unsigned NumAxes )
{
    short unsigned baud ;
#ifndef _LPSIM
    volatile struct SCI_REGS * pSci ;
#endif

    switch ( net )
    {
    case 12:
        //pDyn->EnableFun =  Set12VRs485Tx  ;
        //pDyn->EnableMask = 0x2000 ;
        pDyn->Net = 12 ;
        pDyn->nMembers = NumAxes ;
        pDyn->IDList[0] = AXIS_ID_LSTOP  ;
        pDyn->IDList[1] = AXIS_ID_RSTOP  ;

        if ( NUM_12V_WHEELARM_AXES == 2 )
        {
            pDyn->IDList[NUM_12V_MANIP_AXES] = AXIS_ID_ELBOWPIN_R ;
            pDyn->IDList[NUM_12V_MANIP_AXES+1] = AXIS_ID_ELBOWPIN_L ;
        }


        pDyn->IndirectReadAdd = 224 ;
        //pDyn->TimeWaitReadResponseUsec = 100000 ;
        baud = (short) ( GetLpClk() / (DYN12_BAUD_RATE * 8.0f ) + 0.5 ) - 1 ;
        //Set12VRs485Tx(0);
        SetSysTimerTarget( TIMER_RS485_12V_TOUT , 100000 ,&SysTimerStr) ;
        break ;
    case 24:
        //pDyn->EnableFun =  Set24VRs485Tx  ;
        //pDyn->EnableMask = 0x20 ;
        pDyn->Net = 24 ;
        pDyn->nMembers = NumAxes  ;
        pDyn->IDList[0] = AXIS_ID_SHOULDER  ;
        pDyn->IDList[1] = AXIS_ID_ELBOW  ;
        pDyn->IDList[2] = AXIS_ID_WRIST  ;
        pDyn->IndirectReadAdd = 634 ;
        //pDyn->TimeWaitReadResponseUsec = 5000 ;

        baud = (short) ( GetLpClk() / (DYN24_BAUD_RATE * 8.0f ) + 0.5 ) - 1 ;
        //Set24VRs485Tx(0) ;
        SetSysTimerTarget( TIMER_RS485_24V_TOUT , 100000 ,&SysTimerStr) ;
        break ;
    default:
        for( ; ; ){}
    }



    pDyn->InitState = 0 ;
    pDyn->Msg.pPay = &pDyn->MsgPload[0] ;
    pDyn->InTx = 0xffff ;
    pDyn->NextAxis = 0 ;

    pDyn->State = DYN_MANUAL_EXT ; // Net starts in disabled mode, until axes are fully programmed

#ifndef _LPSIM
    if (net == 12)
    {
//      pDyn->EnableReg = (short unsigned *)&GpioDataRegs.GPBSET + 1;
//      pDyn->DisableReg = (short unsigned*)&GpioDataRegs.GPBCLEAR + 1;
        pSci = &SciDyn12;
    }
    else
    {
//      pDyn->EnableReg = (short unsigned*)&GpioDataRegs.GPCSET + 1;
//      pDyn->DisableReg = (short unsigned*)&GpioDataRegs.GPCCLEAR + 1;
        pSci = &SciDyn24 ;
    }
    //pDyn->pSci = (long *) pSci ;


    pSci->SCICTL1.bit.SWRESET = 0 ;

    pSci->SCICCR.bit.STOPBITS = 0 ;
    pSci->SCICCR.bit.PARITYENA = 0 ;
    pSci->SCICCR.bit.LOOPBKENA = 0 ;
    pSci->SCICCR.bit.SCICHAR = 7 ;

    pSci->SCIHBAUD.bit.BAUD = ( baud >> 8 ) & 0xff ;
    pSci->SCILBAUD.bit.BAUD = baud & 0xff ;

    // SCICTL2 programming not required
    // SCIRXST is read only
    // SCIRXEMU is not relevant
    pSci->SCIFFTX.all = 0xe040 ;
    pSci->SCIFFRX.all = 0x6040 ;
    pSci->SCIFFRX.bit.RXFFIL = 8 ;


    // SCIFFCT - not relevant - no use of auto baud detect
    pSci->SCIPRI.bit.FREESOFT = 0x3 ;

    pSci->SCICTL1.all = 0x20 + 0x8 + 2 + 1 ;
#endif
    return 0 ;
}

/*
 * \brief Rx a string from Dynamixel
 *
 * The header, the CRC and the stuffing are removed.
 * The ID, inst, and error fields are not analyzed.
 * The len is kept as is - only analyzed to find where the hell the CRC is.
 *
 * \return: Points to the next string if any exists
 *
 */
short unsigned * GetDynamixelString(short unsigned *sPtrIn , struct CDynamixelMsg *pMsg
        , short unsigned lmax)
{
    short unsigned * sPtr ;
    short unsigned * pPay ;
    short unsigned len , crc , stuffState , cnt ;
    sPtr = sPtrIn ;
    pPay = pMsg->pPay ;

    if ( sPtr[0] != 0xff || sPtr[1] != 0xff || sPtr[2] != 0xfd || sPtr[3] != 0 )
    {
        return sPtrIn ;
    }
    len = sPtr[5] + sPtr[6] * 256 ;
    if ( len >= lmax )
    {
        return sPtrIn ;
    }
    crc = update_crc(0, sPtr , len + 5 );
    if ( ( (crc&0xff) != sPtr[len+5] ) || ( ((crc>>8)&0xff) != sPtr[len+6] ) )
    {
        return sPtrIn ;
    }
    // Passed all the legality tests
    // Remove all the stuffing
    sPtr +=  4 ;
    stuffState  = 0 ;

// Stuff & copy loop
    for ( cnt = 0 ; cnt < len+1 ; cnt++)
    {
        if ( sPtr[cnt] ==  NextStuff[stuffState] )
        {
            if ( stuffState == 2)
            {
                if ( sPtr[cnt+1] == NextStuff[3]  )
                {
                    stuffState = 0 ;
                    continue ;
                }
                return sPtrIn ;
            }

            stuffState += 1 ;
        }
        else
        {
            stuffState = 0  ;
        }
        *pPay++ = sPtr[cnt] ;
    }

    pMsg->PayloadLen = (short unsigned)( pPay - pMsg->pPay) ;
    return sPtr + 3 + len ;
}


/**
 * \brief Transmit a string to dynamixel
 */
short DynamixelTx ( struct  CDynamixelProt2 *pDyn , struct CDynamixelMsg *pMsg )
{
#ifndef _LPSIM
    //struct SCI_REGS *pSci ;
    short unsigned *pStr ;
    short unsigned *pPay ;
    short unsigned txLen ;
    short unsigned stuffState ;
    short unsigned crc ;
    short unsigned cnt ;
    long unsigned mask ;

    // Verify that the channel is enough time free
    if ( pDyn->InTx != 0xffff )
        return -1 ;

    // and that no transmission is on the go
    //pSci = (struct SCI_REGS *) pDyn->pSci  ;
    pPay = pMsg->pPay ;

    if( pDyn->TxRemain  ) // || ( pSci->SCICTL2.bit.TXEMPTY == 0 ))
        return -1 ;

    pStr = pDyn->TxStr ;

    pStr[0] = 0xff ;
    pStr[1] = 0xff ;
    pStr[2] = 0xfd ;
    pStr[3] = 0x0 ;
    pStr[4] = pMsg->ID ;

    // We dont write it yet - wait stuffing
    pStr[7] = pMsg->inst ;
    txLen       = 8 ;
    stuffState  = 0 ;

    // Stuff & copy loop
    for ( cnt = 0 ; cnt < pMsg->PayloadLen ; cnt++)
    {
        pStr[txLen] = *pPay ;
        if ( txLen > (N_MAX_DYN_TX_STR-4) )
        {
            return -1 ;
        }
        txLen += 1 ;

        if ( *pPay ==  NextStuff[stuffState] )
        {
            stuffState += 1 ;
            if ( stuffState == 3)
            {
                pStr[txLen] = NextStuff[stuffState] ;
                txLen += 1 ;
                stuffState = 0 ;
            }
        }
        else
        {
            stuffState = 0  ;
        }
        pPay += 1 ;
    }

    //txLen = txLen  ;
    pStr[5] = (txLen-5) & 0xff ;
    pStr[6] = ( (txLen-5) >> 8 )  & 0xff ;

    // Get the crc
    crc = update_crc(0, pStr, txLen);
    pStr[txLen] = crc & 0xff ;
    pStr[txLen+1] = ( crc >>  8 ) & 0xff ;
    txLen += 2 ;

    // Write as much as we can
    mask = BlockInts() ;
    pDyn->InTx = 0  ;
    pDyn->InRx = 0  ; // Kill Rx buffer as well
    pDyn->TxRemain = txLen   ; // Bytes remain to tx
    RestoreInts(mask) ;
#endif
    return 0;
}



/*
 * \brief: Read empty status message sent by the Dynamixel units
 *
 * After a control command, Dynamixel send a packet of empty status
 *
 * \param pProt: Dynamixel group descriptor
 * \param cnt: The dynamixel index in the network
 */
short DxReadControlConfirm( struct CDynamixelProt2 *pProt , short unsigned cnt )
{
    short unsigned ID ;
    struct CDynamixelMsg *pMsg ;

    pMsg = & pProt->Msg ;
    pProt->Msg.pPay = & pProt->MsgPload[0] ;

    if ( pProt->InRx > 16 ) // Expected exactly 16 bytes
        return -1 ;
    if ( GetDynamixelString( pProt->TxStr , &pProt->Msg , 18 ) == pProt->RxStr )
        return -1 ; // Failure to read a message

    ID = pMsg->pPay[0] ;
    if ( ID != pProt->IDList[cnt] ) //  || pMsg->PayloadLen != 5  || ( pMsg->pPay[3] != 0x55 ) || ( pMsg->pPay[4] != 0 ) )
        return -1 ; // Unexpected ID, or incorrect payload length
    return 0 ; // Ok return
}

/*
 * Set the present position to a given value
 * posnow :  The position value (in physical units) as for now
 * cnt    :  Axis index in the 24V dynamixel chain
 */
void SetHomePosition24(  float posnow , short unsigned cnt )
{
    float  PosDelta, PosAct ;
    struct CDynamixelStat *pDyn;
    struct LinkControl *pNext ;
    pDyn = &DynStat24[cnt];
    PosDelta = posnow - pDyn->PositionActual  ;

    pDyn->PositionOffset -= (long) ( PosDelta  / pDyn->PositionScale );

    PosAct = ((float)pDyn->PositionCnt - (pDyn->PositionOffset+pDyn->NominalEncoderOffset)) * pDyn->PositionScale ;
    if ( pDyn->bPosModulo )
    {
        PosAct = mod2piS(PosAct);
    }
    pDyn->PositionActual = PosAct ; // mod2piS();

    IndividualAxCtl24[cnt].PosTarget = pDyn->PositionActual ;

    pNext = &ManCmd.Ctl24[cnt] ;
    ResetProfiler( &pNext->Profiler , IndividualAxCtl24[cnt].PosTarget , 0  , 1 ) ;
}


void SetHomePosition12(  float posnow , short unsigned cnt )
{
    float  PosDelta ;
    struct CDynamixelStat *pDyn;
    pDyn = &DynStat12[cnt];
    PosDelta = posnow - pDyn->PositionActual  ;
    pDyn->PositionOffset -= (long) ( PosDelta  / pDyn->PositionScale );
    if ( pDyn->bPosModulo )
    {
        posnow = mod2piS( posnow ) ;
        pDyn->PositionOffset = mod2piS(pDyn->PositionOffset) ;
    }
    IndividualAxCtl12[cnt].PosTarget = posnow ;
}


/*
 * \brief: Read the status message sent by the Dynamixel units
 *
 * After a synchronyzed read, the Rx buffer is expected to contain nDyn
 * consecutive data messages
 *
 * \param pBuf: Character buf, directly out of UART
 * \param pDynArr: Array of Dynamixel status arrays, to be updated
 * \param nDyn   : The number of Dynamixel axes assressed for work
 */


short ReadSynAxesStat(struct CDynamixelProt2 *pProt, struct CDynamixelStat pDynArr[], short unsigned cnt)
{
    short unsigned maxbytes;
    short unsigned ID;
    short unsigned Err ;
    short unsigned *pNext;
    short unsigned *pBuf;
    short shortCur ;
    struct CDynamixelStat *pDyn;
    struct CDynamixelMsg *pMsg;
    long  PosCnt , PosDelta ;
    float PosAct , scale;

    pDyn = &pDynArr[cnt];
    if( ManCmd.SimulationMode & SIMFLAG_MANIPULATOR )
    {
        pDyn->PositionCnt = (long)pDyn->Sim.SimPositionCnt;
        PosAct = mod2piS(((float)pDyn->PositionCnt - (pDyn->PositionOffset+pDyn->NominalEncoderOffset)) * pDyn->PositionScale);

        if ( pDyn->bPosModulo )
        {
            PosAct = mod2piS(PosAct);
        }
        pDyn->PositionActual = PosAct ;
        pDyn->MotorOn = pDyn->Sim.SimMotorOn;
        pDyn->CurrentActual = 0;
        pDyn->SpeedActual = pDyn->Sim.SimSpeedCnt * pDyn->SpeedScale;
        pDyn->Moving = 1;
        pDyn->HardErrorStat = 0;
        shortCur = 0 ;
    }
    else
    {
        pBuf = pProt->RxStr;
        pMsg = &pProt->Msg;

        pProt->Msg.pPay = &pProt->MsgPload[0];

        maxbytes = pProt->InRx - (unsigned short) (pBuf - pProt->RxStr);
        if( maxbytes & 0x8000 || maxbytes < 24 )
        {
            return -2; // Incorrect number of bytes
        }

        pNext = GetDynamixelString(pBuf, &pProt->Msg, (maxbytes > (N_MAX_DYN_TX_STR - 2)) ? maxbytes : N_MAX_DYN_TX_STR - 2);
        if( pNext == pBuf )
        {
            return -3; // Failure to read a message
        }
        //pBuf = pNext;
        ID = pMsg->pPay[0];

        if( ID != pProt->IDList[cnt] )
        {
            //GetDynamixelString(pBuf, &pProt->Msg, (maxbytes > (N_MAX_DYN_TX_STR - 2)) ? maxbytes : N_MAX_DYN_TX_STR - 2); // Vandal - just for debug
            //DxReadControlConfirm( pProt , cnt );
            return -4; // Unexpected ID
        }
        if(   pMsg->PayloadLen != 18  )
        {
            return -5; // Unexpected payload length
        }
        if(  pMsg->pPay[3] != 0x55 )
        {
            return -6; // Unexpected instruction code in preamble
        }
        if( (pMsg->pPay[4] & 0x7f )  != 0)
        {
            pDyn->CommErrorStatus = pMsg->pPay[4] ; // Record communication error
            return -7; // Unexpected preamble sequel
        }
        pDyn->CommErrorStatus = 0 ; // Communication was ok

        // Interpret message
        switch( pProt->Net )
        {
        case 12:
            if ( pDyn->PosInit < 3  )
            {
                scale = ( fabsf(pDyn->PositionScale) > 1e-7 ) ? (1.0f/pDyn->PositionScale) : 1  ;
                pDyn->PositionAccum = scale * pDyn->OuterPos ;
                pDyn->PosInit += 1 ;
            }
            PosCnt = GetLongFromStr(pMsg->pPay + 5 + DYN_VIRT_POSACT);
            PosDelta = (((short) (PosCnt - pDyn->PositionCnt)) << 4 ) >> 4 ; // Signed modulo 4096
            pDyn->PositionAccum += (long) PosDelta ;
            pDyn->PositionCnt = PosCnt ;

            if ( pDyn->IsOuterPos  )
            {
                PosAct = pDyn->PositionAccum * pDyn->PositionScale ;
            }
            else
            {
                PosAct = ((float)pDyn->PositionCnt - (pDyn->PositionOffset+pDyn->NominalEncoderOffset)) * pDyn->PositionScale ;
            }
            if ( pDyn->bPosModulo )
            {
                PosAct = mod2piS(PosAct);
            }

            pDyn->PositionActual = PosAct ; // mod2piS();
            pDyn->MotorOn = (short unsigned)pMsg->pPay[5 + DYN_VIRT_MOTORON];
            shortCur  = GetShortFromStr(pMsg->pPay + 5 + DYN_VIRT_CURRENTACT) ;
            pDyn->CurrentActual = shortCur * DYN12_CUR_SCALE;
            pDyn->SpeedActual = GetLongFromStr(pMsg->pPay + 5 + DYN_VIRT_VACT)  * pDyn->SpeedScale;
            pDyn->Moving = (short unsigned)pMsg->pPay[5 + DYN_VIRT_MOVING];
            pDyn->HardErrorStat = (short unsigned)pMsg->pPay[5 + DYN_VIRT_ERRORSTAT];
            break;
        case 24:
            if ( pDyn->PosInit == 0  )
            {
                pDyn->PositionCnt = GetLongFromStr(pMsg->pPay + 5 + DYN_VIRT_POSACT);
                pDyn->PosInit = 1 ;
            }
            else
            {
                pDyn->PositionCnt = GetLongFromStr(pMsg->pPay + 5 + DYN_VIRT_POSACT);
            }

            PosAct = ((float)pDyn->PositionCnt - (pDyn->PositionOffset+pDyn->NominalEncoderOffset)) * pDyn->PositionScale ;
            if ( pDyn->bPosModulo )
            {
                PosAct = mod2piS(PosAct);
            }
            pDyn->PositionActual = PosAct ;
            pDyn->MotorOn = (short unsigned)pMsg->pPay[5 + DYN_VIRT_MOTORON];
            shortCur = GetShortFromStr(pMsg->pPay + 5 + DYN_VIRT_CURRENTACT) ;
            pDyn->CurrentActual = shortCur * pDyn->CurrentScale;
            pDyn->SpeedActual = GetLongFromStr(pMsg->pPay + 5 + DYN_VIRT_VACT)  * pDyn->SpeedScale;
            pDyn->Moving = (short unsigned)pMsg->pPay[5 + DYN_VIRT_MOVING];
            Err = (short unsigned)pMsg->pPay[5 + DYN_VIRT_ERRORSTAT] ;
            if ( Err )
            {
                pDyn->HardErrorStat = Err ;
            }
            else
            {
                if (( pMsg->pPay[4]) & 0x80 )   // High bit indicates an error general in the status
                {
                    if ( pDyn->AlertCnt < 2 )
                    {
                        pDyn->AlertCnt += 1 ;
                    }
                    else
                    {
                        pDyn->HardErrorStat = 0x40 ;
                    }
                    //pDyn->HardErrorStat = 0 ;
                }
                else
                {
                    pDyn->HardErrorStat = 0 ;
                }
            }
            pDyn->CombinedState = ( pDyn->HardErrorStat & 0xff) |  ( ( pDyn->Moving & 0xf ) << 8 ) | ( ( pDyn->MotorOn & 0xf ) << 12 )  | ( (long)shortCur << 16 ) ;
            break;
        }
    }
    return 0 ; // OK return
}

//pDyn->EnableReg = (short unsigned*)&GpioDataRegs.GPCSET + 1;
//pDyn->DisableReg = (short unsigned*)&GpioDataRegs.GPCCLEAR + 1;
//pDyn->EnableMask = 0x20 ;

#ifndef WINSIM
#pragma FUNCTION_OPTIONS( DealDynamixel24 , "--opt_level=3")
#endif 

void DealDynamixel24 (void)
{
    short unsigned maxput , maxread , cnt ;
    short unsigned * uPtr ;
    if ( ( Dynamixel24.InTx & 0xff00 ) == 0 )
    {
        EnableRs485Tx_2()  ; // Enable transmitter
        // Max bytes to transmit
        maxput = __min( Dynamixel24.TxRemain , 16 - SciDyn24.SCIFFTX.bit.TXFFST ) ;

        if ( maxput )
        {
            uPtr = Dynamixel24.TxStr + ( Dynamixel24.InTx & 0xff ) ;
            for ( cnt = 0 ; cnt < maxput ; cnt++ )
            {
                SciDyn24.SCITXBUF.bit.TXDT = *uPtr++ ;
            }
            Dynamixel24.InTx += maxput ;
            Dynamixel24.TxRemain -= maxput ;
        }
        else
        {
            if ( Dynamixel24.TxRemain == 0 )
            {
                if ( SciDyn24.SCICTL2.bit.TXEMPTY )
                { // Exit TX state if finished
                    Dynamixel24.InTx = 0x7fff  ; // Kill TX
                }
            }
        }
        return ;
    }

    if ( Dynamixel24.InTx == 0x7fff  )
    {
        SciDyn24.SCICTL1.bit.SWRESET = 0;
        SciDyn24.SCIFFRX.all = 0x4040  ; // Kill FIFO , overflow and interrupt
        asm(" RPT #3 || NOP") ;
        SciDyn24.SCIFFRX.all = 0x604f  ; // Re-enable FIFO
        SciDyn24.SCICTL1.bit.SWRESET = 1;
        Dynamixel24.InTx = 0xffff  ; // Kill TX
        Dynamixel24.InRx = 0  ;
        Dynamixel24.SciErrAcc = 0 ; // Kill accumulated errors
    }
    DisableRs485Tx_2()  ;

    Dynamixel24.SciErrAcc |= ( SciDyn24.SCIRXST.all & 0x1c ) ;
    if ( Dynamixel24.SciErrAcc )
    {
        Dynamixel24.InRx = 0 ;
    }


    maxread = __min(  SciDyn24.SCIFFRX.bit.RXFFST , (N_MAX_DYN_RX_STR-1u)-Dynamixel24.InRx) ;
    uPtr = Dynamixel24.RxStr + Dynamixel24.InRx ;
    for  ( cnt = 0 ; cnt < maxread ; cnt++ )
    {
        *uPtr ++ = SciDyn24.SCIRXBUF.all ;
    }
    Dynamixel24.InRx +=  maxread ;
}


#ifndef WINSIM
#pragma FUNCTION_OPTIONS( DealDynamixel12 , "--opt_level=3")
#endif

void DealDynamixel12 (void)
{
    short unsigned maxput , maxread , cnt ;
    short unsigned * uPtr ;
    if ( ( Dynamixel12.InTx & 0xff00 ) == 0 )
    {
        EnableRs485Tx_1()  ; // Enable transmitter
        // Max bytes to transmit
        maxput = __min( Dynamixel12.TxRemain , 16 - SciDyn12.SCIFFTX.bit.TXFFST ) ;

        if ( maxput )
        {
            uPtr = Dynamixel12.TxStr + ( Dynamixel12.InTx & 0xff ) ;
            for ( cnt = 0 ; cnt < maxput ; cnt++ )
            {
                SciDyn12.SCITXBUF.bit.TXDT = *uPtr++ ;
            }
            Dynamixel12.InTx += maxput ;
            Dynamixel12.TxRemain -= maxput ;
        }
        else
        {
            if ( Dynamixel12.TxRemain == 0 )
            {
                if ( SciDyn12.SCICTL2.bit.TXEMPTY )
                { // Exit TX state if finished
                    Dynamixel12.InTx = 0x7fff  ; // Kill TX
                }
            }
        }
        return ;
    }

    if ( Dynamixel12.InTx == 0x7fff  )
    {
        SciDyn12.SCICTL1.bit.SWRESET = 0;
        SciDyn12.SCIFFRX.all = 0x4040  ; // Kill FIFO , overflow and interrupt
        asm(" RPT #3 || NOP") ;
        SciDyn12.SCIFFRX.all = 0x604f  ; // Re-enable FIFO
        SciDyn12.SCICTL1.bit.SWRESET = 1;
        Dynamixel12.InTx = 0xffff  ; // Kill TX
        Dynamixel12.InRx = 0  ;
        Dynamixel12.SciErrAcc = 0 ; // Kill accumulated errors
    }
    DisableRs485Tx_1 ()  ;

    Dynamixel12.SciErrAcc |= ( SciDyn12.SCIRXST.all & 0x1c) ;
    if ( Dynamixel12.SciErrAcc )
    {
        Dynamixel12.InRx = 0 ;
    }


    maxread = __min(  SciDyn12.SCIFFRX.bit.RXFFST , (N_MAX_DYN_RX_STR-1)-Dynamixel12.InRx) ;
    uPtr = Dynamixel12.RxStr + Dynamixel12.InRx ;
    for  ( cnt = 0 ; cnt < maxread ; cnt++ )
    {
        *uPtr ++ = SciDyn12.SCIRXBUF.all ;
    }
    Dynamixel12.InRx +=  maxread ;
}
