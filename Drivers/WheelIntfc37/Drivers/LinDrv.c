#include "..\Application\StructDef.h"


volatile uint16_t UartTxSwBuf [LIN_BUFFER_LEN+2];
volatile uint16_t UartRxSwBuf [LIN_BUFFER_LEN+2];


#pragma DATA_SECTION(UartRxSwBuf, "ramgs0to3"); // Assure in DMA-accesible RAM
#pragma DATA_SECTION(UartTxSwBuf, "ramgs0to3"); // Assure in DMA-accesible RAM

void InitLinService(void)
{
    unsigned short cnt ;
    for( cnt = 0 ; cnt < LIN_BUFFER_LEN ; cnt++)
    {
        UartTxSwBuf[cnt] = 0 ;
        UartRxSwBuf[cnt] = 0 ;
    }
    RxPutPtr = 0 ;
    TxPutPtr = 0 ;
    RxGetPtr = 0 ;
    TxGetPtr = 0 ;
    UartSwBuf.nGet = 0 ;
    UartSwBuf.nPut = 0 ;
}

void TransmitTxBuf(void)
{
    short unsigned mask ;
    EALLOW ;
    HWREGH(DMA_CH2_BASE + DMA_O_TRANSFER_SIZE)     = TxPutPtr ;
    mask = BlockInts() ;
    HWREGH(DMA_CH2_BASE + DMA_O_MODE) |= DMA_MODE_PERINTE ;
    HWREGH(DMA_CH2_BASE + DMA_O_CONTROL) |= DMA_CONTROL_RUN  ;
    // Force a peripheral interrupt
    HWREGH(DMA_CH2_BASE + DMA_O_CONTROL) |= DMA_CONTROL_PERINTFRC  ;

    //HWREG_BP (LINA_BASE + LIN_O_SCITD) = UartTxSwBuf[0] ;
    RestoreInts(mask) ;
    EDIS   ;
}


short Put2TxBuf( short unsigned buf[] , short unsigned len  )
{
    short unsigned cnt ;
    volatile uint16_t * ptr ;
    if ( HWREGH(DMA_CH2_BASE + DMA_O_CONTROL) & DMA_CONTROL_RUNSTS )
    {
        return -1;
    }
    if ( len == 0 || (TxPutPtr+len) > 63 )
    {
        return -2 ;
    }

    ptr = &UartTxSwBuf[TxPutPtr] ;
    for ( cnt = 0 ; cnt < len ; cnt++ )
    {
        *ptr++ = *buf++ ;
    }
    TxPutPtr += len;
    return 0 ;
}


void setupLin(void)
{
    //
    //Initialize the LIN Module
    LIN_initModule(LINA_BASE);
    LIN_initModule(LINB_BASE);

    //
    // Enter LIN reset state to perform configurations
    //
    LIN_enterSoftwareReset(LINA_BASE);
    LIN_enterSoftwareReset(LINB_BASE);

    //
    // Switch LIN into SCI mode
    //
    EALLOW ;
    HWREG_BP (LINA_BASE + LIN_O_SCIGCR1) = 0x3020022U ;
    HWREG_BP (LINA_BASE + LIN_O_SCIFORMAT) = 7UL;

    HWREG_BP (LINB_BASE + LIN_O_SCIGCR1) = 0x3020022U ;
    HWREG_BP (LINB_BASE + LIN_O_SCIFORMAT) = 7UL;


    HWREGH (LINA_BASE + LIN_O_SCIPIO0) = 2 ; // Enable RX pins
    HWREGH (LINB_BASE + LIN_O_SCIPIO0) = 4 ; // Enable TX  pins

    HWREG_BP (LINA_BASE + LIN_O_SCISETINT) = 0x60200U ; // Enable RX interrupts and DMA requests, address and data
    HWREG_BP (LINB_BASE + LIN_O_SCISETINT) = 0x10100U ; // Enable TX  interrupts and DMA requests, address and data

    // Set the Baud Rate
    LIN_setBaudRatePrescaler(LINA_BASE, 129, 0); // 921600
    LIN_setBaudRatePrescaler(LINB_BASE, 129, 0); // 921600

    //
    // Exit LIN reset state
    //
    LIN_exitSoftwareReset(LINA_BASE);
    LIN_exitSoftwareReset(LINB_BASE);

}




void setupDMA(void)
{
    DMA_initController(); // Reset DMA controller (similar to hardware reset)
    EALLOW ;

    /*
     * LIN RX is DMA channel 1. It works continuously and wraps over a 64 buffer
     */
    HWREGH(DMA_BASE + DMA_O_DEBUGCTRL) = DMA_DEBUGCTRL_FREE ; // Set DMA to continue on suspend


    // Set start and end addresses
    DMA_configAddresses(DMA_CH1_BASE, (uint16_t *)UartRxSwBuf, (uint16_t *)(LINA_BASE + LIN_O_SCIRD));

    //void DMA_configBurst(DMA_CH1_BASE, uint16_t size, int16_t srcStep,int16_t destStep)
    DMA_configBurst(DMA_CH1_BASE, 1U , 0 , 0 );


    //void DMA_configTransfer(uint32_t base, uint32_t transferSize, int16_t srcStep,int16_t destStep)
    DMA_configTransfer(DMA_CH1_BASE, LIN_BUFFER_LEN , 0 , 1);

    // Set source and mode
    DMA_configMode(DMA_CH1_BASE, DMA_TRIGGER_LINARX, DMA_CFG_ONESHOT_DISABLE | DMA_CFG_CONTINUOUS_ENABLE | DMA_CFG_SIZE_16BIT);

    // Avoid wrapping
   // void DMA_configWrap(uint32_t base, uint32_t srcWrapSize, int16_t srcStep,
   //                     uint32_t destWrapSize, int16_t destStep)
    DMA_configWrap(DMA_CH1_BASE, 0xffff, 0, 0xffff,0) ; //LIN_BUFFER_LEN-1, 0 ) ;

    EALLOW ;
    HWREGH(DMA_CH1_BASE + DMA_O_MODE) |=    DMA_MODE_PERINTE  ;
    HWREGH(DMA_CH1_BASE + DMA_O_CONTROL) |= DMA_CONTROL_RUN  ;
    RxPutPtr = 0 ;
    RxGetPtr = RxPutPtr ;



    /*
     * LIN TX is DMA channel 2. It works by demand per string. The sender issues a full message per blow, his responsibility
     * to check in advance that LIN is free.
     */
    // Set start and end addresses
    DMA_configAddresses(DMA_CH2_BASE, (uint16_t *)(LINB_BASE + LIN_O_SCITD), (uint16_t *)UartTxSwBuf);

    //void DMA_configBurst(DMA_CH1_BASE, uint16_t size, int16_t srcStep,int16_t destStep)
    DMA_configBurst(DMA_CH2_BASE, 1U , 0 , 0 );

    //void DMA_configTransfer(uint32_t base, uint32_t transferSize, int16_t srcStep,int16_t destStep)
    DMA_configTransfer(DMA_CH2_BASE, 32 , 1 , 0);

    // Set source and mode
    DMA_configMode(DMA_CH2_BASE, DMA_TRIGGER_LINBTX, DMA_CFG_ONESHOT_DISABLE | DMA_CFG_CONTINUOUS_DISABLE | DMA_CFG_SIZE_16BIT);

    // Avoid wrapping
   // void DMA_configWrap(uint32_t base, uint32_t srcWrapSize, int16_t srcStep,
   //                     uint32_t destWrapSize, int16_t destStep)
    DMA_configWrap(DMA_CH2_BASE, 0xffff, 0, 0xffff, 0 ) ;

/*
    EALLOW ;
    HWREGH(DMA_CH2_BASE + DMA_O_MODE) |= ( DMA_MODE_PERINTE | DMA_CONTROL_RUN ) ;
    EDIS   ;
*/

}

void TxSingleChar(short unsigned c )
{
    HWREG_BP (LINA_BASE + LIN_O_SCITD) = c ;
}

void UartService(void)
{
    short unsigned next , sts , mask ;
    short unsigned next1 , sts1 ;
    mask = BlockInts() ;
    next = HWREGH(DMA_CH1_BASE + DMA_O_TRANSFER_COUNT) ;    // Number of transfers done. Can be wrong until first burst after continuation triggered
    sts  = HWREGH(DMA_CH1_BASE + DMA_O_CONTROL) & (1<<11) ; // Should be 1 if transfer goes on (first burst triggered)
    RestoreInts(mask) ;

    // Get a consistent set
    while(1)
    {
        mask = BlockInts() ;
        next1 = HWREGH(DMA_CH1_BASE + DMA_O_TRANSFER_COUNT) ;
        sts1  = HWREGH(DMA_CH1_BASE + DMA_O_CONTROL) & (1<<11) ;
        RestoreInts(mask) ;
        if (( next == next1) && ( sts == sts1))
        {
            break ;
        }
        next = next1 ;
        sts  = sts1  ;
    }

    if ( sts1 == 0 )
    { // New transfer, register copying not started
        RxPutPtr = 0 ;
    }
    else
    {
        RxPutPtr  = ( LIN_BUFFER_LEN - 1 - next ) & (LIN_BUFFER_LEN-1) ;
    }


    while ( RxPutPtr != RxGetPtr)
    {
        next = ( UartSwBuf.nPut+1) &(UART_SW_INP_BUF_SIZE-1) ;
        if ( next == UartSwBuf.nGet)
        {
            break ;
        }
        UartSwBuf.buf[UartSwBuf.nPut] = UartRxSwBuf[RxGetPtr] ;
        UartSwBuf.nPut = next ;
        RxGetPtr = ( RxGetPtr + 1 ) & (LIN_BUFFER_LEN-1) ;
    }
}


