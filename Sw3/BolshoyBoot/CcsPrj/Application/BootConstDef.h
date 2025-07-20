/*
 * BootConstDef.h
 *
 *  Created on: Aug 22, 2024
 *      Author: yahal
 */

#ifndef APPLICATION_BOOTCONSTDEF_H_
#define APPLICATION_BOOTCONSTDEF_H_


#define SRV_FIRM_YR 2024UL
#define SRV_FIRM_MONTH 8UL
#define SRV_FIRM_DAY 19UL

#define SRV_FIRM_VER 1UL
#define SRV_FIRM_SUBVER 1UL
#define SRV_FIRM_PATCH 2
#define SubverPatch ( ((SRV_FIRM_YR-2000) << 24 ) + (SRV_FIRM_MONTH<<20) + (SRV_FIRM_DAY <<15) +(SRV_FIRM_VER << 8) + (SRV_FIRM_SUBVER<<4) + SRV_FIRM_PATCH ) ;


//#define BOOT_YR 2021
//#define BOOT_MONTH 7
//#define BOOT_DAY 14
//#define BOOT_SUBVER 0

#define BOOT_VER (( (long)SRV_FIRM_YR << 20 ) + ((long)SRV_FIRM_MONTH<<16) + ((long)SRV_FIRM_DAY <<8) + (long) SRV_FIRM_VER ) ;
#define PROJ_TYPE 0x8081L // Boot Bolshoy
#define PROJ_ID 90

#define LP_CAN_ID 124
//#define PD_CAN_ID 126

#define NMT_CODE_IDENTIFY 105
#define CAN_NMT_ERROR_CONTROL  (0xe<<7)

#define HOST_SINGLE_MESSAGE_MAX_LEN 128


#define REC_BUF_LEN 2048 // Number of beans in recorder


EXTERN_TAG unsigned long RecorderBuffer[REC_BUF_LEN]; //<! Recorder buffer

#define SDO_BUF_LEN_LONGS 512
#define EBSS_START 0xc000   // EBSS section markers (for pre-run clearing)
#define EBSS_END   0x15000



#endif /* APPLICATION_BOOTCONSTDEF_H_ */
