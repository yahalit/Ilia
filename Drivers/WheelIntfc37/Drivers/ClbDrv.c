/*
 * ClbDrv.c
 *
 *  Created on: Jun 26, 2023
 *      Author: yahal
 */
#include "..\Application\StructDef.h"
#include "ClbProg.h"

/*
void CLB_init();
void initTILE1(uint32_t base);
void initClbExample(void)
{
    CLB_init();
    initTILE0(CLB1_BASE) ;
}
*/

static const uint16_t tileProg[CLB_NUM_HLC_INSTR + 1] =
{
    TILE0_HLCINSTR_0,
    TILE0_HLCINSTR_1,
    TILE0_HLCINSTR_2,
    TILE0_HLCINSTR_3,
    TILE0_HLCINSTR_4,
    TILE0_HLCINSTR_5,
    TILE0_HLCINSTR_6,
    TILE0_HLCINSTR_7,
    TILE0_HLCINSTR_8,
    TILE0_HLCINSTR_9,
    TILE0_HLCINSTR_10,
    TILE0_HLCINSTR_11,
    TILE0_HLCINSTR_12,
    TILE0_HLCINSTR_13,
    TILE0_HLCINSTR_14,
    TILE0_HLCINSTR_15,
    TILE0_HLCINSTR_16,
    TILE0_HLCINSTR_17,
    TILE0_HLCINSTR_18,
    TILE0_HLCINSTR_19,
    TILE0_HLCINSTR_20,
    TILE0_HLCINSTR_21,
    TILE0_HLCINSTR_22,
    TILE0_HLCINSTR_23,
    TILE0_HLCINSTR_24,
    TILE0_HLCINSTR_25,
    TILE0_HLCINSTR_26,
    TILE0_HLCINSTR_27,
    TILE0_HLCINSTR_28,
    TILE0_HLCINSTR_29,
    TILE0_HLCINSTR_30,
    TILE0_HLCINSTR_31
};



void steupTILE0(uint32_t base)
{
    uint16_t i;
    // Pipeline Mode
    CLB_disablePipelineMode(base);
    // Output LUT
    CLB_configOutputLUT(base, CLB_OUT0, TILE0_CFG_OUTLUT_0);
    CLB_configOutputLUT(base, CLB_OUT1, TILE0_CFG_OUTLUT_1);
    CLB_configOutputLUT(base, CLB_OUT2, TILE0_CFG_OUTLUT_2);
    CLB_configOutputLUT(base, CLB_OUT3, TILE0_CFG_OUTLUT_3);
    CLB_configOutputLUT(base, CLB_OUT4, TILE0_CFG_OUTLUT_4);
    CLB_configOutputLUT(base, CLB_OUT5, TILE0_CFG_OUTLUT_5);
    CLB_configOutputLUT(base, CLB_OUT6, TILE0_CFG_OUTLUT_6);
    CLB_configOutputLUT(base, CLB_OUT7, TILE0_CFG_OUTLUT_7);
    // AOC
    CLB_configAOC(base, CLB_AOC0, TILE0_OUTPUT_COND_CTR_0);
    CLB_configAOC(base, CLB_AOC1, TILE0_OUTPUT_COND_CTR_1);
    CLB_configAOC(base, CLB_AOC2, TILE0_OUTPUT_COND_CTR_2);
    CLB_configAOC(base, CLB_AOC3, TILE0_OUTPUT_COND_CTR_3);
    CLB_configAOC(base, CLB_AOC4, TILE0_OUTPUT_COND_CTR_4);
    CLB_configAOC(base, CLB_AOC5, TILE0_OUTPUT_COND_CTR_5);
    CLB_configAOC(base, CLB_AOC6, TILE0_OUTPUT_COND_CTR_6);
    CLB_configAOC(base, CLB_AOC7, TILE0_OUTPUT_COND_CTR_7);

    // LUT4
    CLB_selectLUT4Inputs(base, TILE0_CFG_LUT4_IN0, TILE0_CFG_LUT4_IN1, TILE0_CFG_LUT4_IN2, TILE0_CFG_LUT4_IN3);
    CLB_configLUT4Function(base, TILE0_CFG_LUT4_FN10, TILE0_CFG_LUT4_FN2);

    // FSM
    CLB_selectFSMInputs(base, TILE0_CFG_FSM_EXT_IN0, TILE0_CFG_FSM_EXT_IN1, TILE0_CFG_FSM_EXTRA_IN0, TILE0_CFG_FSM_EXTRA_IN1);
    CLB_configFSMNextState(base, TILE0_CFG_FSM_NEXT_STATE_0, TILE0_CFG_FSM_NEXT_STATE_1, TILE0_CFG_FSM_NEXT_STATE_2);
    CLB_configFSMLUTFunction(base, TILE0_CFG_FSM_LUT_FN10, TILE0_CFG_FSM_LUT_FN2);

    // Counters
    CLB_selectCounterInputs(base, TILE0_CFG_COUNTER_RESET, TILE0_CFG_COUNTER_EVENT, TILE0_CFG_COUNTER_MODE_0, TILE0_CFG_COUNTER_MODE_1);
    CLB_configMiscCtrlModes(base, TILE0_CFG_MISC_CONTROL);
    CLB_configCounterLoadMatch(base, CLB_CTR0, TILE0_COUNTER_0_LOAD_VAL, TILE0_COUNTER_0_MATCH1_VAL, TILE0_COUNTER_0_MATCH2_VAL);
    CLB_configCounterLoadMatch(base, CLB_CTR1, TILE0_COUNTER_1_LOAD_VAL, TILE0_COUNTER_1_MATCH1_VAL, TILE0_COUNTER_1_MATCH2_VAL);
    CLB_configCounterLoadMatch(base, CLB_CTR2, TILE0_COUNTER_2_LOAD_VAL, TILE0_COUNTER_2_MATCH1_VAL, TILE0_COUNTER_2_MATCH2_VAL);
    CLB_configCounterTapSelects(base, TILE0_CFG_TAP_SEL);

    // HLC
    CLB_configHLCEventSelect(base, TILE0_HLC_EVENT_SEL);
    CLB_setHLCRegisters(base, TILE0_HLC_R0_INIT, TILE0_HLC_R1_INIT, TILE0_HLC_R2_INIT, TILE0_HLC_R3_INIT);

    for(i = 0; i <= CLB_NUM_HLC_INSTR; i++)
    {
        CLB_programHLCInstruction(base, i, tileProg[i]);
    }
}



void initTILE0(uint32_t base);

void setupCLB()
{
    //myTILE1 initialization
    EALLOW ;
    // CLB inputs
    XBAR_setInputPin(CLBINPUTXBAR_BASE, XBAR_INPUT1, 16);
    XBAR_setInputPin(CLBINPUTXBAR_BASE, XBAR_INPUT2, 28);


    HWREG(CLB1_BASE + CLB_LOGICCTL + CLB_O_OUT_EN) = 0 ; // No output multiplexing
    HWREGH(CLB1_BASE + CLB_O_MISC_ACCESS_CTRL) = 0 ; // No SPI access, OUT EN NOT locked
    //CLB_enableOutputMaskUpdates(CLB1_BASE);
    //CLB_disableSPIBufferAccess(CLB1_BASE);
    //CLB_configSPIBufferLoadSignal(CLB1_BASE, 0);
    //CLB_configSPIBufferShift(CLB1_BASE, 0);

    //myTILE1 CLB_IN0 initialization
    //myTILE1 CLB_IN0 initialization
    CLB_configLocalInputMux(CLB1_BASE, CLB_IN0, CLB_LOCAL_IN_MUX_GLOBAL_IN);
    CLB_configGlobalInputMux(CLB1_BASE, CLB_IN0, CLB_GLOBAL_IN_MUX_EPWM1A);
    CLB_configGPInputMux(CLB1_BASE, CLB_IN0, CLB_GP_IN_MUX_GP_REG);

    CLB_selectInputFilter(CLB1_BASE, CLB_IN0, CLB_FILTER_NONE);
    CLB_disableInputPipelineMode(CLB1_BASE, CLB_IN0);

    //myTILE1 CLB_IN1 initialization
    CLB_configLocalInputMux(CLB1_BASE, CLB_IN1, CLB_LOCAL_IN_MUX_GLOBAL_IN);
    CLB_configGlobalInputMux(CLB1_BASE, CLB_IN1, CLB_GLOBAL_IN_MUX_EPWM1A);
    CLB_configGPInputMux(CLB1_BASE, CLB_IN1, CLB_GP_IN_MUX_GP_REG);

    CLB_selectInputFilter(CLB1_BASE, CLB_IN1, CLB_FILTER_NONE);
    CLB_disableInputPipelineMode(CLB1_BASE, CLB_IN1);

    //myTILE1 CLB_IN2 initialization for A quad
    CLB_configLocalInputMux(CLB1_BASE, CLB_IN2, CLB_LOCAL_IN_MUX_GLOBAL_IN);
    CLB_configGlobalInputMux(CLB1_BASE, CLB_IN2, CLB_GLOBAL_IN_MUX_CLB_AUXSIG0);
    CLB_configGPInputMux(CLB1_BASE, CLB_IN2, CLB_GP_IN_MUX_EXTERNAL);

    CLB_selectInputFilter(CLB1_BASE, CLB_IN2, CLB_FILTER_NONE);
    CLB_disableInputPipelineMode(CLB1_BASE, CLB_IN2);

    //myTILE1 CLB_IN3 initialization for B quad
    CLB_configLocalInputMux(CLB1_BASE, CLB_IN3, CLB_LOCAL_IN_MUX_GLOBAL_IN);
    CLB_configGlobalInputMux(CLB1_BASE, CLB_IN3, CLB_GLOBAL_IN_MUX_CLB_AUXSIG1);
    CLB_configGPInputMux(CLB1_BASE, CLB_IN3, CLB_GP_IN_MUX_EXTERNAL);

    CLB_selectInputFilter(CLB1_BASE, CLB_IN3, CLB_FILTER_NONE);
    CLB_disableInputPipelineMode(CLB1_BASE, CLB_IN3);

    HWREGH(CLB1_BASE + CLB_LOGICCTL + CLB_O_IN_MUX_SEL_0) = 0x13   ; // 0,1 and 4 are register inputs
    HWREG(CLB1_BASE + CLB_LOGICCTL + CLB_O_INPUT_FILTER) = 0xc0000 ; // Encoder pins are synchronized, no filters, no pipelines
    //Enable encoder + start count
    HWREG(CLB1_BASE + CLB_LOGICCTL + CLB_O_GP_REG) = ( HWREG(CLB1_BASE + CLB_LOGICCTL + CLB_O_GP_REG) & 0xffffff00 ) + 3  ;

    steupTILE0(CLB1_BASE) ;
    //initTILE0(CLB1_BASE) ;

    CLB_enableCLB(CLB1_BASE);

}


