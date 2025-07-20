
#define VARS_OWNER
#include "StructDef.h"




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
    UpdateSysTimer (&SysTimerStr );

    // FastRtHostSciHandler();
    RtCanHandlerCanA();
    //RtCanHandlerCanB();
    CanSlave() ; // CAN slave in response to host

 }

#pragma DATA_SECTION(ClaInput,"CpuToCla1MsgRAM");
long ClaInput[16] ;

void InitApplication(void)
{
    short cnt ;
    ClearMemRpt((short unsigned *) &SysState,sizeof( SysState) );
    ClearMemRpt((short unsigned *) &SlaveSdo,sizeof( SlaveSdo) );
    ClearMemRpt((short unsigned *) &CanSlaveInQueue,sizeof( CanSlaveInQueue) );
    ClearMemRpt((short unsigned *) &CanSlaveOutQueue,sizeof( CanSlaveOutQueue) );
    ClearMemRpt((short unsigned *) &CanSlaveInQueueB,sizeof( CanSlaveInQueueB) );
    ClearMemRpt((short unsigned *) &CanSlaveOutQueueB,sizeof( CanSlaveOutQueueB) );


    //IsrTimer.delta.UsecTimerUL[0]   =  ~CpuTimer1Regs.TIM.all ;
    CanSlaveInQueue.nQueue = N_SLAVE_QUEUE ;
    CanSlaveOutQueue.nQueue = N_SLAVE_QUEUE ;
    CanSlaveInQueueB.nQueue = N_SLAVE_QUEUE ;
    CanSlaveOutQueueB.nQueue = N_SLAVE_QUEUE ;
    SlaveSdo.SlaveBuf = SlaveSdoBuf;
    SysState.CanRxEnable = 1 ;
    PROJ_CAN_ID = LP_CAN_ID ;


    for ( cnt = 0; cnt < 16 ; cnt++)
    {
        ClaInput[cnt] = cnt + 9 ;
    }
}

short sdram_test(void);
unsigned short DataBuf[512] ;
short c1 ;

long unsigned GetClkMult()
{
    return ( CPU_CLK_MHZ * 4 / XTAL_FRQ_MHZ ) ;
}

void main(void)
{
// If boot ok, dont start any peripheral
    if ( TestProgramValid() >= 0 )
    {   DINT ;
        ((VoidFun) Sector_Mainprog_start)() ;
    }

    InitFixedPeripherals();
    InitApplication() ;

    InitTimeOuts();



    while(1)
    {
        BootIdleLoop();
    }
} // end of main function.



/**
 * \brief Initiate the time outs of the system
 */
void InitTimeOuts ( void )
{
}

