
/**
 * Deal with motion queues
 *
 */

#include "StructDef.h"
#ifdef _LPSIM
#include <math.h>
#endif

/**
\brief Check that a Queue index is acceptable
\param The index to check
\return the index if correct, otherwise SPI_ERR_BAD_QUEUE

short CheckQ( short unsigned ind)
{
    ???
    if (ind <= N_MOTION_Q  )
        return (short) ind;
    else
        return SPI_ERR_BAD_QUEUE ;
}
*/

/**
\brief Check that an index within a Queue is acceptable
\param The index to check
\return the index if correct, otherwise SPI_ERR_BAD_QINDEX
*/

short CheckQIndex( short unsigned ind)
{
    if (ind < N_MOTION_REC_IN_USER_Q )
        return (short) ind ;
    else
        return SPI_ERR_BAD_QINDEX ;
}

/*
 * \bried Clear a motion queue
 * \param qInd: A valid queue index
 */
short   ClearMotionQueue () //  short unsigned qInd)
{
    short unsigned cnt ;
    struct CMotionItem * pItem ;
    /*
    if ( CheckQ(qInd)  )
    {
        return -1 ;
    }
    */

    pItem = &MotionQueue[0].Item[0] ;
    pItem[0].OpCode = QE_ENTRY_WAIT ;
    pItem[0].z_or_lModeData = 0 ;

    for ( cnt = 1 ; cnt < N_MOTION_REC_IN_USER_Q; cnt++ )
    {
        pItem[cnt].OpCode = 0 ;
    }
    return 0 ;
}




/**
 * \brief handler for placing a new item in a motion queue
 *
 * \param uPtr : string containing the data, as came from SPI message
 * \return 0 on success or error code
 */
short placeInQueue ( short unsigned * uPtr )
{
    //struct CMotionItem * pItem ;
    struct CUserMotionQueue * pQueue ;
    short unsigned *iPtr , us ;
    short *sPtr ;
    //short q2load ;
    short IndexInq ;
    short unsigned OpCode , wcand ;
    struct CMotionItem Item ;

    long junk ;
    float n, fx, fy  , wcandmin , wcandmax ;

    //q2load = 0 ; // CheckQ( uPtr[0]) ;
    IndexInq = CheckQIndex( uPtr[1]) ;

    //if ( q2load <= 0  ) return q2load ;
    if ( IndexInq == SPI_ERR_BAD_QINDEX ) return IndexInq;

    pQueue = &MotionQueue[0];
    //pItem  = & (pQueue->Item[IndexInq]) ;

    ClearMemRpt( (unsigned short *) &Item , sizeof( struct CMotionItem) ) ;
    Item.MotionItemMode = ( IndexInq << 6 ) ; // Mark item as unused, log original entry in queue


    OpCode = uPtr[2] ;
    iPtr   = & uPtr[3] ;
    sPtr = (short signed *) iPtr ;

    Item.OpCode = OpCode ;
    switch (OpCode) //this is the SciSetQueueEntry OpCode
    {
    case QE_ENTRY_UNUSED:
        break ; // Just do nothing , but don't return error code
    case QE_ENTRY_PATH_PT:

        // Set to world  17-6-2021
        //Item.x = GetUnalignedLong( &iPtr[0]);
        //Item.y = GetUnalignedLong( &iPtr[2]);
        //Item.z_or_lModeData = GetUnalignedLong( &iPtr[4]); //ok
        //Item.cx = ((float) sPtr[6] ) ;
        //Item.cy = ((float) sPtr[7] ) ;
        //Item.cz_or_fModeData = ((float) sPtr[8] ) ;
        //Track width info (width in 0.1mm) in sptr[9] ;

        Item.x = GetUnalignedLong( &iPtr[2]);
        Item.y = GetUnalignedLong( &iPtr[0]);
        Item.z_or_lModeData = -GetUnalignedLong( &iPtr[4]); //ok

        Item.cx = ((float) sPtr[7] ) ;
        Item.cy = ((float) sPtr[6] ) ;
        Item.cz_or_fModeData = -((float) sPtr[8] ) ;


        n = sqrtf ( Item.cx *Item.cx + Item.cy * Item.cy + Item.cz_or_fModeData * Item.cz_or_fModeData) ;
        if ( n < 0.0001f)
        {
            return SPI_ERR_BAD_PATH_DIRECTION;
        }
        n = 1.0F /  n ;
        Item.cx *= n ;
        Item.cy *= n ;
        Item.cz_or_fModeData *= n ;

        if ( ProtocolRev >=  (( (long unsigned)1 << 24 ) + ((long unsigned)1<<16)))
        {
            if ( HostHandleStr.KillHostSpi == 0 )
            {
                Item.JunctionMode = 0 ;
            }
            else
            {
                Item.JunctionMode = iPtr[9] >> 15 ;
                iPtr[9] &= 0x7fff ;
            }

            wcand = iPtr[9]  ;
            if ( wcand == 0 )
            {
                if ( Config.WheelArmType == 0  )
                {
                    Item.TrackWidthType = E_TrackWidthRetract ;
                }
                else
                {
                    Item.TrackWidthType = E_TrackWidthNothing ; // Thats a don't care
                }
            }
            else
            {
                wcandmin = (wcand & 0x7fff) * 0.0001f - WARM_WIDTH_CMD_TOL ;
                wcandmax = wcandmin + (2*WARM_WIDTH_CMD_TOL)   ;

                if ( __fmax(__fmin(SysState.TrackWidthCtl.RetractedWidth,wcandmax),wcandmin) == SysState.TrackWidthCtl.RetractedWidth)
                {
                    Item.TrackWidthType = E_TrackWidthRetract ;
                }
                else
                {
                    if( __fmax(__fmin(SysState.TrackWidthCtl.ExtendedWidth,wcandmax),wcandmin) != SysState.TrackWidthCtl.ExtendedWidth)
                    {
                        return SPI_UNSUPPORTED_TRACKWIDTH;
                    }
                    //if (M2S.Items.ActCmd.cmd.ConfigWord.bit.WheelArmExist == 0 )
                    if ( Config.WheelArmType ==  0 )
                    {
                        return SPI_DONT_HAVE_COMPATIBLE_WARM ;
                    }
                    Item.TrackWidthType = E_TrackWidthExtend ;
                }

/*
                if ( __fmax(__fmin(SysState.TrackWidthCtl.ExtendedWidth,wcandmax),wcandmin) == SysState.TrackWidthCtl.ExtendedWidth)
                {
                    Item.TrackWidthType = E_TrackWidthExtend ;
                }
                else
                {
                    if ( __fmax(__fmin(SysState.TrackWidthCtl.RetractedWidth,wcandmax),wcandmin) != SysState.TrackWidthCtl.RetractedWidth)
                    {
                        return SPI_UNSUPPORTED_TRACKWIDTH;
                    }
                    Item.TrackWidthType = E_TrackWidthRetract ;
                }
*/
            }
        }
        else
        {
            Item.TrackWidthType = E_TrackWidthRetract ;
        }
        break ;

    case QE_ENTRY_SPECIALS:

        // NOT Set to world - this is rescue - nothing to do with Olivier  17-6-2021


        /*
        if  ( IndexInq)
        {
            return SPI_ERR_SPECIAL_NEED_BE_FIRST ;
        }
        */
        Item.x = GetUnalignedLong( &iPtr[0]);
        Item.y = GetUnalignedLong( &iPtr[2]);
        Item.z_or_lModeData = GetUnalignedLong( &iPtr[4]); //ok
        junk = GetUnalignedLong( &iPtr[6]);
        Item.cx = * ( (float*) (& junk ))  ;
        junk = GetUnalignedLong( &iPtr[8]);
        Item.cy = * ( (float*) (& junk ))  ;
        Item.cz_or_fModeData = 0 ;
        SysState.CBit.bit.CompromiseNavInit = 1 ; // This command shall be accepted without nav start
        break ;
    case QE_ENTRY_HANDLE_PACK:
        // Still NOT doing that  17-6-2021


        us = iPtr[0] ;
        if ( us < 1 || us > 2 )
        {
            return SPI_BAD_PACK_LOAD_CMD ;
        }
        us = iPtr[1] ;
        if ( us < 1 || us > 2 )
        {
            return SPI_BAD_PACK_SIDE_CMD ;
        }

        Item.y = GetUnalignedLong( &iPtr[2]); // Y coordinate
        Item.x = GetUnalignedLong( &iPtr[4]); // X coordinate
        Item.cx =  AngletoF ( iPtr[6]) ;

        fx = -(float) Item.x * LONG_2_M_FAC - G_XDistWheelShoulderPivot;
        fy = (float) Item.y * LONG_2_M_FAC + G_YDistWheelShoulderPivot - G_LHand ;
        if ( fx < ( G_MinManipulatorXClosure )  || fx >= ( G_LRadius + G_LHumerus ) ||  (fy < 0) ||
                (fx*fx+fy*fy > (G_LHumerus+ G_LRadius)*(G_LHumerus+ G_LRadius)) )
        {
            return SPI_BAD_PACK_OUT_MANIPULATOR_RANGE ;
        }
        if ( (float) fabs(Item.cx)  > Geom.MaxIncidence4Package)
        {
            return SPI_BAD_INCIDENCE_FOR_PACK ;
        }

        Item.z_or_lModeData = GetUnalignedLong( &iPtr[0]);  // Low word =  Get , high word  = Side  //ok

        break ;
    case QE_ENTRY_WAIT:
        Item.x = GetUnalignedLong( &iPtr[0]);
        if ( Item.x < 0 || Item.x > 2140000 )
        {
            return SPI_ERR_BAD_WAIT_TIME;
        }
        Item.z_or_lModeData = Item.x ; //ok
        break ;
    case QE_ENTRY_CHANGE_MODE:
        // Change the mode:
        // x is the desired yaw angle
        // y is a rotate junction command
        // z is climb instruction
        switch (sPtr[0])
        {
        case 0:
            Item.x = 0 ;
            break ;
        case 16384:
            Item.x = 1 ; //sPtr[0] is in units when 65565 is full rotation, for required yaw = pi/2 (16384) --> Item.x  = 1 (right climb)
            break ;
        case -16384:
            Item.x = -1 ;
            break ;
        default :
            return SPI_ERR_BAD_YAW_SPEC;
        }

        Item.y  = (long)sPtr[1] ;
        Item.z_or_lModeData  = (long)iPtr[2] ; //ok
        if ( Item.y && (Item.z_or_lModeData == 0) ) //ok
        {
            return SPI_ERR_BAD_JUNC_SPEC;
        }

        if ( Item.z_or_lModeData != 0 && Item.z_or_lModeData != 1 ) //ok
        {
            return SPI_ERR_BAD_CLIMB_SPEC;
        }
        break ;
    default:
        return SPI_ERR_BAD_ENTRY_TYPE ;
    }

    pQueue->Item[IndexInq] = Item ; // Copy item to place after acceptance
    return 0 ; // Aletz ist gut
}

