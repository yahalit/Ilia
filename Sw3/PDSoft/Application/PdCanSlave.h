/*
 * CanSlavePD.h
 *
 *  Created on: Dec 11, 2016
 *      Author: Yahali Theodor
 */

#ifndef PD_APPLICATION_CANSLAVE_H_
#define PD_APPLICATION_CANSLAVE_H_

//#include "PdStructDef.h"
//#include <SharedStruct.h>
//#include <SysUtils.h>

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

struct CObjDictionaryItem
{
	short Index  ;
	short bytelen ;
	long unsigned  (*SetFunc)( struct CSdo * pSdo ,short unsigned nData) ;
	long unsigned  (*GetFunc)( struct CSdo * pSdo ,short unsigned *nData)  ;
};
typedef long unsigned  (*SetDictFunc)( struct CSdo * pSdo, unsigned short nData);
typedef long unsigned  (*GetDictFunc)( struct CSdo * pSdo, unsigned short *nData);

unsigned long NoSuchGetObject( struct CSdo * pSdo , unsigned short *nData);
unsigned long NoSuchSetObject( struct CSdo * pSdo , unsigned short nData);

short GetObjIndexPD(short unsigned Index , struct CObjDictionaryItem **pObject_in);

#endif /* APPLICATION_CANSLAVE_H_ */
