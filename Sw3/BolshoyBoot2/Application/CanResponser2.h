/*
 * CanResponser.h
 *
 *  Created on: Sep 19, 2016
 *      Author: Yahali Theodor
 */

#ifndef APPFILES_CANRESPONSER_H_
#define APPFILES_CANRESPONSER_H_


#ifdef VARS_OWNER
#define EXTERN_TAG
#else
#define EXTERN_TAG extern
#endif

#define N_CAN_TRAPS 64
#define N_CAN_TRAPS_RESERVOIR 16





struct CSdo
{
    long unsigned  SlaveID ; //!< The slave to which the SDO is targeted (or own ID if thid id slave)
    short unsigned Index ;
    short unsigned SubIndex ;
    long  unsigned Lpayload  ;
    short Status    ; //!< 0 inactive, 1 continueing, -1 abrted
    short unsigned toggle ; //!< Toggle state for SDO segmented
    short unsigned Bytes2Dload ; // !< Bytes remaining to dload by SDO
    short unsigned DataType  ; //!< Cia DATA type - 5: Byte , 6: Word , 7: Long
    short unsigned ByteCnt   ; //!< Byte count for segmented SDO
    short unsigned ExpectedCs ; // !< Expected command specifier for the next transaction
    long  unsigned *SlaveBuf ; // !< Address of communication string in use
};

struct CSdoListMng
{
    short state ; // !< State - 0: Init , 1: New SDO , 2: Wait completion , -1: Failure
    short done ; // !< -1: Error  0: Executing 1: Normal done 2: Not installed
    short unsigned SdoCounter ; //!< Advance counter of transmitted SDO
    short unsigned RetryCtr  ; //  !< Retry counter
};





#endif /* APPFILES_CANRESPONSER_H_ */
