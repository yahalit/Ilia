/*
 *  ======== clb.h ========
 *  DO NOT EDIT - This file is generated by the SysConfig tool.
 */
#ifndef ti_clb_h
#define ti_clb_h

#include <stdint.h>

#ifdef __cplusplus
extern "C" {                // support C++ sources
#endif

// HLC Instruction Register Field definitions
#define HLC_OPCODE_R0 0x0
#define HLC_OPCODE_R1 0x1
#define HLC_OPCODE_R2 0x2
#define HLC_OPCODE_R3 0x3
#define HLC_OPCODE_C0 0x4
#define HLC_OPCODE_C1 0x5
#define HLC_OPCODE_C2 0x6

#define HLC_OPCODE_MOV    0x00
#define HLC_OPCODE_MOV_T1 0x01
#define HLC_OPCODE_MOV_T2 0x02
#define HLC_OPCODE_PUSH   0x03
#define HLC_OPCODE_PULL   0x04
#define HLC_OPCODE_ADD    0x05
#define HLC_OPCODE_SUB    0x06
#define HLC_OPCODE_INTR   0x07

//---------------------------------------------------------------------------
// TILE0
//---------------------------------------------------------------------------
#define TILE0_PIPELINE_MODE 0
#define TILE0_CFG_OUTLUT_0 0x0
#define TILE0_CFG_OUTLUT_1 0x0
#define TILE0_CFG_OUTLUT_2 0x0
#define TILE0_CFG_OUTLUT_3 0x0
#define TILE0_CFG_OUTLUT_4 0x0
#define TILE0_CFG_OUTLUT_5 0x0
#define TILE0_CFG_OUTLUT_6 0x0
#define TILE0_CFG_OUTLUT_7 0x0

#define TILE0_CFG_LUT4_IN0   0x0
#define TILE0_CFG_LUT4_IN1   0x0
#define TILE0_CFG_LUT4_IN2   0x0
#define TILE0_CFG_LUT4_IN3   0x0
#define TILE0_CFG_LUT4_FN10  ((0x00000) | 0x0)
#define TILE0_CFG_LUT4_FN2   0x0

#define TILE0_CFG_FSM_EXT_IN0      0x35a
#define TILE0_CFG_FSM_EXT_IN1      0x37b
#define TILE0_CFG_FSM_EXTRA_IN0    0x0
#define TILE0_CFG_FSM_EXTRA_IN1    0x0
#define TILE0_CFG_FSM_NEXT_STATE_0 ((0xff000000) | 0xf0f0)
#define TILE0_CFG_FSM_NEXT_STATE_1 ((0xff000000) | 0xf0f0)
#define TILE0_CFG_FSM_NEXT_STATE_2 ((0x00000) | 0x0)
#define TILE0_CFG_FSM_LUT_FN10     ((0x41820000) | 0x2814)
#define TILE0_CFG_FSM_LUT_FN2      0x0
#define TILE0_FSM_MISC_CONTROL     0x0

#define TILE0_CFG_COUNTER_RESET   0x318
#define TILE0_CFG_COUNTER_EVENT   0x0
#define TILE0_CFG_COUNTER_MODE_0  0x21c6
#define TILE0_CFG_COUNTER_MODE_1  0x0
#define TILE0_CFG_TAP_SEL          0x0
#define TILE0_CFG_MISC_CONTROL    (0x0 | TILE0_FSM_MISC_CONTROL)

#define TILE0_COUNTER_0_MATCH1_VAL  0
#define TILE0_COUNTER_0_MATCH2_VAL  0
#define TILE0_COUNTER_0_LOAD_VAL    0
#define TILE0_COUNTER_1_MATCH1_VAL  0
#define TILE0_COUNTER_1_MATCH2_VAL  0
#define TILE0_COUNTER_1_LOAD_VAL    0
#define TILE0_COUNTER_2_MATCH1_VAL  0
#define TILE0_COUNTER_2_MATCH2_VAL  0
#define TILE0_COUNTER_2_LOAD_VAL    0


#define TILE0_HLC_EVENT_SEL 0x1c
#define TILE0_HLC_R0_INIT 0
#define TILE0_HLC_R1_INIT 0
#define TILE0_HLC_R2_INIT 0
#define TILE0_HLC_R3_INIT 0

#define TILE0_HLCINSTR_0	(0 << 11 | HLC_OPCODE_MOV << 6 | HLC_OPCODE_C0<<3 | HLC_OPCODE_R0)
#define TILE0_HLCINSTR_1	(0 << 11 | HLC_OPCODE_SUB << 6 | HLC_OPCODE_C1<<3 | HLC_OPCODE_R0)
#define TILE0_HLCINSTR_2	(1 << 11 | HLC_OPCODE_PUSH << 6 | HLC_OPCODE_R0<<3)
#define TILE0_HLCINSTR_3	(1 << 11 | HLC_OPCODE_MOV << 6 | HLC_OPCODE_R0<<3 | HLC_OPCODE_R0)
#define TILE0_HLCINSTR_4	(1 << 11 | HLC_OPCODE_MOV << 6 | HLC_OPCODE_R0<<3 | HLC_OPCODE_R0)
#define TILE0_HLCINSTR_5	(1 << 11 | HLC_OPCODE_MOV << 6 | HLC_OPCODE_R0<<3 | HLC_OPCODE_R0)
#define TILE0_HLCINSTR_6	(1 << 11 | HLC_OPCODE_MOV << 6 | HLC_OPCODE_R0<<3 | HLC_OPCODE_R0)
#define TILE0_HLCINSTR_7	(1 << 11 | HLC_OPCODE_MOV << 6 | HLC_OPCODE_R0<<3 | HLC_OPCODE_R0)
#define TILE0_HLCINSTR_8	(1 << 11 | HLC_OPCODE_MOV << 6 | HLC_OPCODE_C1<<3 | HLC_OPCODE_R1)
#define TILE0_HLCINSTR_9	(1 << 11 | HLC_OPCODE_MOV << 6 | HLC_OPCODE_R0<<3 | HLC_OPCODE_R0)
#define TILE0_HLCINSTR_10	(1 << 11 | HLC_OPCODE_MOV << 6 | HLC_OPCODE_R0<<3 | HLC_OPCODE_R0)
#define TILE0_HLCINSTR_11	(1 << 11 | HLC_OPCODE_MOV << 6 | HLC_OPCODE_R0<<3 | HLC_OPCODE_R0)
#define TILE0_HLCINSTR_12	(1 << 11 | HLC_OPCODE_MOV << 6 | HLC_OPCODE_R0<<3 | HLC_OPCODE_R0)
#define TILE0_HLCINSTR_13	(1 << 11 | HLC_OPCODE_MOV << 6 | HLC_OPCODE_R0<<3 | HLC_OPCODE_R0)
#define TILE0_HLCINSTR_14	(1 << 11 | HLC_OPCODE_MOV << 6 | HLC_OPCODE_R0<<3 | HLC_OPCODE_R0)
#define TILE0_HLCINSTR_15	(1 << 11 | HLC_OPCODE_MOV << 6 | HLC_OPCODE_R0<<3 | HLC_OPCODE_R0)
#define TILE0_HLCINSTR_16	(1 << 11 | HLC_OPCODE_MOV << 6 | HLC_OPCODE_R0<<3 | HLC_OPCODE_R0)
#define TILE0_HLCINSTR_17	(1 << 11 | HLC_OPCODE_MOV << 6 | HLC_OPCODE_R0<<3 | HLC_OPCODE_R0)
#define TILE0_HLCINSTR_18	(1 << 11 | HLC_OPCODE_MOV << 6 | HLC_OPCODE_R0<<3 | HLC_OPCODE_R0)
#define TILE0_HLCINSTR_19	(1 << 11 | HLC_OPCODE_MOV << 6 | HLC_OPCODE_R0<<3 | HLC_OPCODE_R0)
#define TILE0_HLCINSTR_20	(1 << 11 | HLC_OPCODE_MOV << 6 | HLC_OPCODE_R0<<3 | HLC_OPCODE_R0)
#define TILE0_HLCINSTR_21	(1 << 11 | HLC_OPCODE_MOV << 6 | HLC_OPCODE_R0<<3 | HLC_OPCODE_R0)
#define TILE0_HLCINSTR_22	(1 << 11 | HLC_OPCODE_MOV << 6 | HLC_OPCODE_R0<<3 | HLC_OPCODE_R0)
#define TILE0_HLCINSTR_23	(1 << 11 | HLC_OPCODE_MOV << 6 | HLC_OPCODE_R0<<3 | HLC_OPCODE_R0)
#define TILE0_HLCINSTR_24	(1 << 11 | HLC_OPCODE_MOV << 6 | HLC_OPCODE_R0<<3 | HLC_OPCODE_R0)
#define TILE0_HLCINSTR_25	(1 << 11 | HLC_OPCODE_MOV << 6 | HLC_OPCODE_R0<<3 | HLC_OPCODE_R0)
#define TILE0_HLCINSTR_26	(1 << 11 | HLC_OPCODE_MOV << 6 | HLC_OPCODE_R0<<3 | HLC_OPCODE_R0)
#define TILE0_HLCINSTR_27	(1 << 11 | HLC_OPCODE_MOV << 6 | HLC_OPCODE_R0<<3 | HLC_OPCODE_R0)
#define TILE0_HLCINSTR_28	(1 << 11 | HLC_OPCODE_MOV << 6 | HLC_OPCODE_R0<<3 | HLC_OPCODE_R0)
#define TILE0_HLCINSTR_29	(1 << 11 | HLC_OPCODE_MOV << 6 | HLC_OPCODE_R0<<3 | HLC_OPCODE_R0)
#define TILE0_HLCINSTR_30	(1 << 11 | HLC_OPCODE_MOV << 6 | HLC_OPCODE_R0<<3 | HLC_OPCODE_R0)
#define TILE0_HLCINSTR_31	(1 << 11 | HLC_OPCODE_MOV << 6 | HLC_OPCODE_R0<<3 | HLC_OPCODE_R0)




#define TILE0_OUTPUT_COND_CTR_0 0x0
#define TILE0_OUTPUT_COND_CTR_1 0x0
#define TILE0_OUTPUT_COND_CTR_2 0x0
#define TILE0_OUTPUT_COND_CTR_3 0x0
#define TILE0_OUTPUT_COND_CTR_4 0x0
#define TILE0_OUTPUT_COND_CTR_5 0x0
#define TILE0_OUTPUT_COND_CTR_6 0x0
#define TILE0_OUTPUT_COND_CTR_7 0x0

void initTILE0(uint32_t base);

#ifdef __cplusplus
}
#endif

#endif // ti_clb_h
