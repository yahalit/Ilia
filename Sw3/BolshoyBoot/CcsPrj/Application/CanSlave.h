/*
 * CanSlave.h
 *
 *  Created on: Dec 21, 2016
 *      Author: Yahali Theodor
 */

#ifndef APPLICATION_CANSLAVE_H_
#define APPLICATION_CANSLAVE_H_



struct CObjDictionaryItem
{
    short Index  ;
    short bytelen ;
    long unsigned  (*SetFunc)( struct CSdo * pSdo ,short unsigned nData) ;
    long unsigned  (*GetFunc)( struct CSdo * pSdo ,short unsigned *nData)  ;
};
typedef long unsigned  (*SetDictFunc)( struct CSdo * pSdo ,short unsigned  nData);
typedef long unsigned  (*GetDictFunc)( struct CSdo * pSdo ,short unsigned *nData);

long unsigned  NoSuchGetObject( struct CSdo * pSdo ,short unsigned *nData);
long unsigned  NoSuchSetObject( struct CSdo * pSdo ,short unsigned nData);

short GetObjIndex(short unsigned Index , struct CObjDictionaryItem **pObject_in);



#endif /* APPLICATION_CANSLAVE_H_ */
