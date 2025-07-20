//#include "F28x_Project.h"     // DSP28x Headerfile


#include "StructDef2.h"


extern const struct CObjDictionaryItem ObjDictionaryItem [];

/*
 * Data types:
 *
 */


void AbortSlaveSdo(long unsigned error_code)
{
    S2M.Items.USlaveObject.msg.index = SysState.Msg.Index;
    S2M.Items.USlaveObject.msg.subindex = SysState.Msg.SubIndex;
    S2M.Items.USlaveObject.msg.errcode = error_code ;
    S2M.Items.DataBlock.buf[0] = 0 ;
    S2M.Items.DataBlock.buf[1] = 0 ;
    S2M.Items.USlaveObject.msg.counter =  SysState.MasterMsgCnt ;
}


/**
 * \brief Very limited CAN slave, purposed for debugging only
 * review new message from M2S (CAN1), if not read then run set/ get functions based on the object dictionary
 *
 * \detail CAN ID is 124 (LP) or 126 (PD)
 *         Most of the objects are very simple expedit type downloads
 *
 *         Set commands normally replicate the code mode and index
 *         They return the response code as long.
 *
 *
 */
void ObjectSlave ()
{
    long  stat ;
    short unsigned n ;
    struct CObjDictionaryItem *pOdObject ;

    // SDO like command
    if ( M2S.Items.USlaveObject.msg.counter !=  SysState.MasterMsgCnt )
    { // New command (master will not set another event until this event is handled)
        SysState.Msg.Index = M2S.Items.USlaveObject.msg.index;
        SysState.Msg.SubIndex = M2S.Items.USlaveObject.msg.subindex ;
        SlaveSdo.SubIndex = SysState.Msg.SubIndex ;// required to access object dictionary functions with ann object of type struct CSdo
        SlaveSdo.Index = SysState.Msg.Index ;
        SlaveSdo.SlaveBuf = (long  unsigned *) &SysState.Msg.data.ull ;
        SysState.MasterMsgCnt = M2S.Items.USlaveObject.msg.counter ; // This message is consumed

        if ( GetObjIndex(SlaveSdo.Index , & pOdObject , ObjDictionaryItem ) < 0 )
        {
            AbortSlaveSdo ( Object_does_not_exist_in_the_object_dictionary );
            return ;
        }

        if ( M2S.Items.USlaveObject.msg.isset )
        {
            if ( pOdObject->SetFunc == (SetDictFunc) 0  )
            {
                AbortSlaveSdo ( Unsupported_access_to_an_object );
                return ;
            }
            SysState.Msg.data.ull =  * (unsigned long long *)M2S.Items.DataBlock.buf ;

            stat = pOdObject->SetFunc(&SlaveSdo,M2S.Items.USlaveObject.msg.data_len)  ;
            if ( stat )
            {
                AbortSlaveSdo( stat );
                return ;
            }
            S2M.Items.USlaveObject.msg.index = SysState.Msg.Index;
            S2M.Items.USlaveObject.msg.subindex = SysState.Msg.SubIndex;
            S2M.Items.USlaveObject.msg.errcode = 0 ;
            * ( unsigned long long *)S2M.Items.DataBlock.buf = 0 ;
            S2M.Items.USlaveObject.msg.counter =  SysState.MasterMsgCnt ;
        }
        else
        {

            if ( pOdObject->GetFunc == (GetDictFunc) 0  )
            {
                AbortSlaveSdo ( Unsupported_access_to_an_object );
                return ;
            }

            stat = pOdObject->GetFunc(&SlaveSdo,&n) ;
            if ( stat )
            {
                AbortSlaveSdo( stat );
                return ;
            }
            SlaveSdo.Bytes2Dload = n ;
            S2M.Items.USlaveObject.msg.data_len = n ;
            S2M.Items.USlaveObject.msg.errcode = 0 ;
            S2M.Items.USlaveObject.msg.index = SysState.Msg.Index;
            S2M.Items.USlaveObject.msg.subindex = SysState.Msg.SubIndex;
            * ( unsigned long long *)S2M.Items.DataBlock.buf = * ( unsigned long long *) SlaveSdo.SlaveBuf ;
            S2M.Items.USlaveObject.msg.counter =  SysState.MasterMsgCnt ;
        }
    }
}



