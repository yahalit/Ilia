#ifndef SYS_UTILS_H_DEFINED
#define SYS_UTILS_H_DEFINED

// General constants 
#define pi 3.141592653589793F

// General functions 
void MemClr(short unsigned *pTr, short unsigned siz); // Clear a memory chunk
long GetUnalignedLong(short unsigned *uPtr);
float GetUnalignedFloat(short unsigned *uPtr);


short CheckAlign ( short unsigned * ptr , short unsigned pw );

short IsInRange( float *x , float xmax , float xmin );
short CheckAlign ( short unsigned * ptr , short unsigned pw );
float fSat ( float x , float s ) ;
float fMax ( float x , float y ) ;
float fMin ( float x , float y ) ;
short isNan(float * x);

float __fmax(float a, float b); 
float __fmin(float a, float b);

float fMaxMin ( float x , float xmax , float xmin  ) ;

void CopyMemRpt( short unsigned * dst , short unsigned * src , short unsigned n ) ;
void ClearMemRpt( short unsigned * dst , short unsigned n ) ;
short unsigned IsEqualBinary ( void *p1 , void *p2 , short unsigned n ) ;

short unsigned GetLeadingOne(long unsigned dat) ;
short unsigned GetTrailingOne( short unsigned  RxPend);


// Synchronization
//////////////////////////////////////
long unsigned BlockInts();
void RestoreInts(long unsigned sr);

// General structs 

// CAN communication
enum SdoAbortErrorCode
{
	Toggle_bit_not_alternated = 0x05030000,
	SDO_protocol_timed_out = 0x5040000,
	Client_server_command_specifier_not_valid_or_unknown = 0x5040001,
	Object_does_not_exist_in_the_object_dictionary = 0x06020000,
	Unsupported_access_to_an_object = 0x6010000,
	General_parameter_incompatibility_reason = 0x6040043,
	length_of_service_parameter_does_not_match = 0x6070010,
	Sub_index_does_not_exist = 0x6090011,
	Out_of_memory = 0x5040005,
	Manufacturer_error_detail = 0x9000000
};

#ifndef CSDO_DEFINED
#define CSDO_DEFINED

struct CSdo
{
	long unsigned  SlaveID; //!< The slave to which the SDO is targeted (or own ID if this id slave)
	short unsigned Index;
	short unsigned SubIndex;
	long  unsigned Lpayload;
	short Status; //!< 0 inactive, 1 continuing, -1 aborted
	short unsigned toggle; //!< Toggle state for SDO segmented
	short unsigned Bytes2Dload; // !< Bytes remaining to download by SDO
	short unsigned DataType; //!< Cia DATA type - 5: Byte , 6: Word , 7: Long
	short unsigned ByteCnt; //!< Byte count for segmented SDO
	short unsigned ExpectedCs; // !< Expected command specifier for the next transaction
	short unsigned TrapCobId ; // The COB id trapped in return
	short unsigned Algn ;
	long  unsigned *SlaveBuf; // !< Address of communication string in use
	long  unsigned AbortCode; // !< The code of abortion if relevant
};
#endif


#endif
