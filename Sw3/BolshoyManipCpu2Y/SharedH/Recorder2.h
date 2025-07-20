#ifndef RECORDER_H_DEFINED
#define RECORDER_H_DEFINED


//#include "SysUtils.h"
#include "..\Application\StructDef2.h"

//#define REC_BUF_LEN 4096 // Number of beans in recorder
#ifdef _LPSIM
//#define SIG_TABLE_SIZE (SIG_TABLE_SIZE_BASIC+128)
#define N_RECS_MAX  32 // Maximum amount of recorded signals
#else
//#define SIG_TABLE_SIZE SIG_TABLE_SIZE_BASIC
#define N_RECS_MAX  16 // Maximum amount of recorded signals
#endif

#ifdef _LPSIM
#define REC_BUF_LEN 4194304 // Number of bins in recorder
#else
#define REC_BUF_LEN 28672 // 6144 // Number of bins in recorder
#endif


void InitRecorder(void);

long unsigned  SetRecorder( struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetRecorder( struct CSdo * pSdo ,short unsigned *nData);
//long unsigned  SetRecorderTableEntry( struct CSdo * pSdo ,short unsigned nData);
long unsigned  SetSignal(   struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetSignalFlags(  struct CSdo * pSdo ,short unsigned *nData);
long unsigned  GetSignal(   struct CSdo * pSdo ,short unsigned *nData);

long unsigned  GetGpio( struct CSdo * pSdo ,short unsigned *nData);
long unsigned  SetGpio( struct CSdo * pSdo ,short unsigned nData);

long  unsigned   ActivateProgrammedRecorder(void);

extern const short unsigned NREC_SIG;
extern const struct CRecorderSig RecorderSigRaw[];

struct CRecorderSig
{
    short unsigned flags ; // !< Define the properties of the number: refer CCmdMode
    long  unsigned * ptr ;
};

#ifdef _LPSIM
#define uRecLen unsigned long
#else
#define uRecLen unsigned short
#endif


/**
*\struct Bitfield: Define the properties of a numeric field
*/
struct CCmdMode
{
    int unsigned SetFun : 1;
    int unsigned IsFloat : 1;
    int unsigned IsUnsigned : 1;
    int unsigned IsShort : 1;
    int unsigned WriteProtect : 1;
    int unsigned IsDouble : 1;
    int unsigned IsSimOnly : 1;
    int unsigned IsCpu2 : 1;
    int unsigned rest : 8;
};


// Struct for the signal recorder
struct CRecorder
{
    //long  Minus1        ; // Just the number (-1)
    long  RFlag         ; //!< Detector for the PutCntr exceeding GetCntr
    unsigned long  *  pBuffer ;
    short unsigned RecorderListIndex[N_RECS_MAX];   //!< List of indices of recorded variables
    long unsigned *RecorderList[N_RECS_MAX];    //!< List of pointers to recorded variables
    short unsigned RecorderFlags [N_RECS_MAX];  //!< List of CCmdMode flags for recorded variables
} ;

#ifdef REC_VARS_OWNER
#define REC_EXTERN_VAR
#else
#define REC_EXTERN_VAR extern
#endif
REC_EXTERN_VAR struct CRecorder Recorder;

extern const struct CRecorderSig RecorderSigRaw[] ;
extern const short unsigned NREC_SIG ;
extern unsigned long RecorderBuffer[]; //<! Recorder buffer

//extern const struct CRecorderSig RecorderSig[] ;

#endif

