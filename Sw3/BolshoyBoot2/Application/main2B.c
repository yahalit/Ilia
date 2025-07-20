
#define VARS_OWNER
#include "StructDefB2.h"




#define MAIN_VARS_OWNER

#if nCPUs > 1
#pragma DATA_SECTION(Cpu2_to_Cpu1,".MSGRAM21");
#pragma DATA_SECTION(Cpu1_to_Cpu2,".MSGRAM12");
#endif

#include "main.h"



void CheckFirmValiditi(void);



void  code_start();

// OTP constants to disable boot mode select pins
//#pragma DATA_SECTION(BootPinConfig, "OtpBootPinConfig");
//const uint32_t BootPinConfig = 0x5AFFFFFF;

//#pragma DATA_SECTION(BootDefLow, "OtpBootDefLow");
//const uint32_t BootDefLow = 0xFFFFFF03;





///////////////////////////
unsigned long TestChecksum ( unsigned short * startAddr , unsigned short *endAddr);
extern unsigned short AppFirmawareStart;
extern unsigned short AppFirmawareEnd;
extern unsigned short AppFirmawareEntry;
extern unsigned short AppFirmawareCs;

// If properly burned by a burner, this struct occupies the first words of Seg N
struct CValidityCalc
{
    long unsigned Start ;
    long unsigned * FirstCode ;
    long unsigned * LastCode  ;
    long unsigned Checksum ;
};




#define TestProgramValidGood 1

#define CODE_START 0x86000
#define CODE_STATISTICS_START 0xbe000

short TestProgramValid (void)
{
    long unsigned *pUl ;
    struct CValidityCalc * uPtr1 = (struct CValidityCalc * ) Sector_AppVerify_start;
    long unsigned * uPtr2 = (long unsigned * ) Sector_Mainprog_start;

    long unsigned cs ;

    DisableDog();
    if (( uPtr1->Start == 0x90abcdef ) && ( *uPtr2 != 0xffffffff ) )
//  if (( uPtr1->Start == 0x91119111 ) && ( *uPtr2 != 0xffffffff ) )
    { // Program burned by ONCE
        return TestProgramValidGood;
    }
    if ( ( uPtr1->Start == 0x12345678 ) && ( *uPtr2 != 0xffffffff ) )
    { // Program properly burned by a burner
        if ( (uPtr1->FirstCode < (long unsigned*)Sector_Mainprog_start )
            ||(  uPtr1->LastCode >= (long unsigned*)Sector_AppVerify_start )
            ||( uPtr1->LastCode <= uPtr1->FirstCode )
            || ((long unsigned)uPtr1->FirstCode & 0x3)
            || (((long unsigned)uPtr1->LastCode & 0x00000fff) != 0x00000fff )  )
        {
            return -1 ;
        }
        cs = uPtr1->Checksum ;
        pUl = uPtr1->FirstCode ;
        while ( pUl <= uPtr1->LastCode)
        {
            cs += *pUl++;
        }
        if ( cs )
        {
            return -1 ;
        }
        return TestProgramValidGood;
    }
    return -1 ;
}

typedef void ( *VoidFun) (void) ;


short PrepareFlashConditions( void ) ;

// Entry point address of operational program (APP_BEGIN):
extern unsigned long int OperEntryPointX; // linker defined symbol
const unsigned long int OperEntryPoint = (unsigned long int)&OperEntryPointX;


void BootIdleLoop()
{
    //RtCanHandlerCanB();
    ObjectSlave () ; // CAN slave in response to host

 }


void InitApplication(void)
{
    ClearMemRpt((short unsigned *) &SysState,sizeof( SysState) );
    ClearMemRpt((short unsigned *) &SlaveSdo,sizeof( SlaveSdo) );

    ClearMemRpt((short unsigned *) &M2S,sizeof( M2S) );
    ClearMemRpt((short unsigned *) &S2M,sizeof( S2M) );

    S2M.Items.ActStatus.stat.IsOperational = 0x8500;

    SlaveSdo.SlaveBuf = SlaveSdoBuf;
    SysState.CanRxEnable = 1 ;
}
#pragma DATA_SECTION(Bubu,".StatFlash");
const long Bubu[2] = {0x90abcdef,1UL} ;
volatile long zebra  ;
volatile long giraffe ;

//short c1 ;

void main(void)
{
    //Make sure CPU#1 is awake:
    //Wait having shared memories from CPU1
    while((HWREGH(MEMCFG_BASE + MEMCFG_O_GSXMSEL) &  MEMCFG_GSXMSEL_MSEL_GS15) == 0U)
    {
    }
    giraffe = Bubu[1] ;
    zebra   = Bubu[giraffe];

// If boot ok, just start main program
    if ( TestProgramValid() >= 0 )
    {   DINT ; // Disable interrupt
        ((VoidFun) Sector_Mainprog_start)() ;
    }


    InitFixedPeripherals();
    InitApplication() ;


    while(1)
    {
        BootIdleLoop();
    }
} // end of main function.





