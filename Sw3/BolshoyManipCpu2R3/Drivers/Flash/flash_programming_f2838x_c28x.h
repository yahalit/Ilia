
#ifndef FLASH_PROGRAMMING_F2838X_C28X_H
#define FLASH_PROGRAMMING_F2838X_C28X_H

//
// Bank0 Sector start addresses
//
#define FlashStartAddress           0x80000
#define Bzero_Sector0_start	        0x80000
#define Bzero_Sector1_start	        0x82000
#define Bzero_Sector2_start	        0x84000
#define Bzero_Sector3_start	        0x86000
#define Bzero_Sector4_start	        0x88000
#define Bzero_Sector5_start	        0x90000
#define Bzero_Sector6_start	        0x98000
#define Bzero_Sector7_start	        0xA0000
#define Bzero_Sector8_start	        0xA8000
#define Bzero_Sector9_start	        0xB0000
#define Bzero_Sector10_start	    0xB8000
#define Bzero_Sector11_start	    0xBA000
#define Bzero_Sector12_start	    0xBC000
#define Bzero_Sector13_start	    0xBE000
#define FlashEndAddress             0xBFFFF


#define Sector_Mainprog_start     Bzero_Sector3_start
#define Sector_AppCalib_start    Bzero_Sector12_start
#define Sector_AppVerify_start Bzero_Sector13_start

//
// Sector length in number of 32bits
//
//#define Sector16KB_u32length   0x1000
//#define Sector64KB_u32length   0x4000

#endif /* FLASH_PROGRAMMING_F2838X_C28X_H */
