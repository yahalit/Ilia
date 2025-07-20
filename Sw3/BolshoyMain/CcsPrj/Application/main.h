#ifndef _main_h_
#define _main_h_


#define MaxSRecCharsLen 514

#undef EXTERN_TAG
#ifdef MAIN_VARS_OWNER
#define EXTERN_TAG
#else
#define EXTERN_TAG extern
#endif



// unsigned long CANmasterUSEDmask; //  Global CAN master variable shows currently active (enabled) CAN mailboxes.
//  unsigned long CANmasterRXmask; // Global CAN master variable shows currently programmed direction of transmission of mailboxes.
EXTERN_TAG unsigned short CAN_ID;
EXTERN_TAG unsigned short WasCANmsg;
EXTERN_TAG unsigned short  CANmsgInd;
EXTERN_TAG unsigned short CANaEnable;
EXTERN_TAG unsigned short  SCIaEnable;
EXTERN_TAG unsigned short  SCIcEnable;
EXTERN_TAG unsigned short  FSIcEnable;
EXTERN_TAG unsigned short LastGoodComm; // 0 - no selected, 1-CANa, 2-SCIa, 3-SCIc
EXTERN_TAG unsigned short WrdVar;

#undef EXTERN_TAG



short GetCanId(void);
unsigned long GetDCanBase();

short InitCanModule(unsigned long baseAdd,unsigned long AutoBusOffRecoverUsec,long CANbaudRate);
signed short GetNextCANchar(unsigned short * CharPtr);
void SendCANerror(void);
void prjConfigureDCanMsgObjsSimple();

void SendSCIaChar(unsigned short CharValue);
void SendSCIcChar(unsigned short CharValue);
signed short GetNextSCIaChar(unsigned short * CharPtr);
signed short GetNextSCIcChar(unsigned short * CharPtr);



void SaveOneCommOnly(void);

#endif

