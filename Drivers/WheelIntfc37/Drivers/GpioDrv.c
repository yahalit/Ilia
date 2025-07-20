#include "..\Application\StructDef.h"


void setupINPUTXBAR(){

    //myINPUTXBAR0 initialization
    XBAR_setInputPin(INPUTXBAR_BASE, XBAR_INPUT3, 2);
    XBAR_setInputPin(INPUTXBAR_BASE, XBAR_INPUT11, 16);
    XBAR_setInputPin(INPUTXBAR_BASE, XBAR_INPUT12, 28);
}


void setupCLBXBAR(void){
    //myCLBXBAR0 initialization

    XBAR_setCLBMuxConfig(XBAR_AUXSIG0, XBAR_CLB_MUX25_INPUTXBAR11);
    XBAR_enableCLBMux(XBAR_AUXSIG0, XBAR_MUX25);

    //myCLBXBAR1 initialization

    XBAR_setCLBMuxConfig(XBAR_AUXSIG1, XBAR_CLB_MUX27_INPUTXBAR12);
    XBAR_enableCLBMux(XBAR_AUXSIG1, XBAR_MUX27);

}
#define FSI_FILTER GPIO_QUAL_6SAMPLE


#define NGP
void setupGpioCAN(void)
{
#ifndef EVAL_BOARD
#undef NGP
#define NGP 0
    GPIO_setPinConfig(GPIO_0_MCAN_RX);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_IN);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_ASYNC);

#undef NGP
#define NGP 1
    GPIO_setPinConfig(GPIO_1_MCAN_TX);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_IN);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_ASYNC);
#else
#undef NGP
#define NGP 4
    GPIO_setPinConfig(GPIO_4_MCAN_TX);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_IN);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_ASYNC);

#undef NGP
#define NGP 5
    GPIO_setPinConfig(GPIO_5_MCAN_RX);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_IN);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_ASYNC);
#endif
}



void setupGpio(void)
{
//    InitKuku() ;

    //Device_initGPIO();
#undef NGP
#define NGP 2
    //HWREG( GPIODATA_BASE + GPIO_O_GPACLEAR) = 0b11111100 ;
    //HWREG( GPIODATA_BASE + GPIO_O_GPASET) = 0x31010000 ;
    //HWREG( GPIODATA_BASE + GPIO_O_GPBSET) = 0x1 ;

    GPIO_setPinConfig(GPIO_2_GPIO2); // Sync IN
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_IN);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_PULLUP);
    GPIO_setQualificationMode(NGP, FSI_FILTER);

#undef NGP
#define NGP 3
    GPIO_setPinConfig(GPIO_3_FSIRXA_D0);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_IN);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_PULLUP);
    GPIO_setQualificationMode(NGP, FSI_FILTER);

#ifndef EVAL_BOARD
#undef NGP
#define NGP 4
    GPIO_setPinConfig(GPIO_4_FSIRXA_CLK);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_IN);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_PULLUP);
    GPIO_setQualificationMode(NGP, FSI_FILTER);

#undef NGP
#define NGP 5
    GPIO_setPinConfig(GPIO_5_GPIO5);  // Unused
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_SYNC);
#endif

#undef NGP
#define NGP 6
    GPIO_setPinConfig(GPIO_6_FSITXA_D0);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_SYNC);


#undef NGP
#define NGP 7
    GPIO_setPinConfig(GPIO_7_FSITXA_CLK);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_SYNC);


#undef NGP
#define NGP 16
    GPIO_setPinConfig(GPIO_16_GPIO16);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_IN);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_PULLUP);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_6SAMPLE);

#undef NGP
#define NGP 18
    GPIO_setPinConfig(GPIO_18_EQEP2_A);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_IN);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_PULLUP);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_6SAMPLE);

#undef NGP
#define NGP 24
    GPIO_setPinConfig(GPIO_24_LINB_TX);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_ASYNC);

#undef NGP
#define NGP 28
    GPIO_setPinConfig(GPIO_28_GPIO28) ;
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_IN);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_6SAMPLE);

#undef NGP
#define NGP 29
    GPIO_setPinConfig(GPIO_29_LINA_RX);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_IN);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_PULLUP);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_ASYNC);

#undef NGP
#define NGP 32
    GPIO_setPinConfig(GPIO_32_GPIO32);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_PULLUP);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_SYNC);

#undef NGP
#define NGP 33
    GPIO_setPinConfig(GPIO_33_EQEP2_B) ; // GPIO_33_LINA_RX);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_IN);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_PULLUP);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_6SAMPLE);

#undef NGP
#define NGP 35
    GPIO_setPinConfig(GPIO_35_EQEP1_A);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_IN);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_6SAMPLE);

#undef NGP
#define NGP 37
    GPIO_setPinConfig(GPIO_37_EQEP1_B);
    GPIO_setDirectionMode(NGP, GPIO_DIR_MODE_IN);
    GPIO_setPadConfig(NGP, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(NGP, GPIO_QUAL_6SAMPLE);

}
