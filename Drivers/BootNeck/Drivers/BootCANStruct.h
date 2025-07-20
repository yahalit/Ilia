#ifndef DCAN_STRUCT_H_KUKU_DEFINED
#define DCAN_STRUCT_H_KUKU_DEFINED
/**
Struct to describe a CAN message
NEVER CHANGE THE ARRANGEMENT OF ITEMS IN THIS STRUCT !!!!!
*/
struct CCanMsg
{
    long unsigned data[2] ; //!< Data payload.
    long unsigned cobId   ;  //!< The ID (short or long )
    short dLen ;    //!< Data length (amount of valid bytes in data[]
    short UseLongId     ;  //!< Flag: 1 - use long ID (29 bit)
} ;

#define N_SLAVE_QUEUE 4
struct CCanQueue
{
    struct CCanMsg Msg[N_SLAVE_QUEUE]; //!< The message queue
    short  unsigned nPut ;   //!< Where to put
    short  unsigned nGet ;   //!< Wait for fetch
    short  unsigned nQueue ; //!< Number of entries in queue , must be 2^(integer)
};

#define N_EMCY_QUEUE 4
struct CEmergencyRecord
{
    short unsigned EmcyCode ;
    short unsigned ErrorReg ;
    long  unsigned SpecificError ;
    long unsigned  EmcyCtr ; //!< Reflection of total emcy counter
};

struct CEmergencyLog
{
    struct CEmergencyRecord EmergencyRecord[N_EMCY_QUEUE] ;
    short unsigned nPut ;
    short unsigned nGet ;
    long  unsigned EmcyCtr ; //!< Total emergency counter
    long unsigned SpecificError ; //!<Manufacturer specific error
};

struct CBlockDnload
{
    short unsigned InBlockDload ;
    short unsigned crc ;
    short unsigned cv[7] ;
    long BlockDloadLen ;
    short unsigned seqno ;
    short unsigned bSendEndOfBlock ;
    short unsigned bEndOfBlockTransmission ;
    short unsigned blockdatano ;
    long unsigned nextBlockLong ;
    short unsigned inlongcnt  ;
    long  unsigned longcnt  ;
    long unsigned emcy ;
};



struct CBlockUpload
{
    short unsigned InBlockUload ;
    short unsigned nBytes       ;
    short unsigned SeqNo  ;
    short unsigned BytesTransmitted  ;
    short unsigned crc ;
    short unsigned BytesEmptyAtEnd ;
    long  unsigned *pBuf ;
    long  emcy ;
    struct CCanMsg StartBlockMsg ;
    struct CCanMsg InBlockMsg;
    struct CCanMsg EndBlockMsg;
    struct CCanMsg AbortBlockMsg ;
};


#endif
