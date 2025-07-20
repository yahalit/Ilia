/*
 * AxisSdoInitList.h
 * For CPU 2
 *  Created on: Sep 8, 2023
 *      Author: yahal
 */

#ifndef APPLICATION_AXISSDOINITLIST2_H_
#define APPLICATION_AXISSDOINITLIST2_H_




#ifdef VARS_OWNER

const struct CInitSdo InitSdoGlob[] = {
        {  0x6040  , 0 ,  0 ,  6 } , // Control word, no reset fault
        {  0x6040  , 0 ,  0x80 ,  6 } , // Control word, Reset fault
        {  0x6040  , 0 ,  0 ,  6 } , // Control word, no reset fault
        {  0xffff  , 0xffff ,  0xffff , 0xffff}   // Terminate list
};
#define N_INIT_SDO ( sizeof(InitSdoGlob) / sizeof(struct CInitSdo) )


const struct CInitSdo InitSdoTAMain[] = {

    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_ProfileAcc ,  .Lpayload.f = 100.0f ,  .DataType = 0x7 } , // Profile acceleration
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_ProfileDec ,  .Lpayload.f = 100.0f ,  .DataType = 0x7 } , // Profile deceleration
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_CurrentLimitFactor ,  .Lpayload.f = 1.0f ,  .DataType = 0x7 } , // Profile current limit factor
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_CONFIRM ,  .Lpayload.f = 1.0f ,  .DataType = 0x7 } , // Approve configuration
    {  0xffff  , 0xffff ,  0xffff , 0xffff}   // Terminate list
};

const struct CInitSdo InitSdoTAShift[] = {
                                          {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_ProfileAcc ,  .Lpayload.f = 100.0f ,  .DataType = 0x7 } , // Profile acceleration
                                          {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_ProfileDec ,  .Lpayload.f = 100.0f ,  .DataType = 0x7 } , // Profile deceleration
                                          {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_CurrentLimitFactor ,  .Lpayload.f = 1.0f ,  .DataType = 0x7 } , // Profile current limit factor
                                          {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_CONFIRM ,  .Lpayload.f = 1.0f ,  .DataType = 0x7 } , // Approve configuration
                                          {  0xffff  , 0xffff ,  0xffff , 0xffff}   // Terminate list
};

const struct CInitSdo InitSdoTARotate[] = {
                                           {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_MinInterMessage ,  .Lpayload.f = 0.0058f ,  .DataType = 0x7 } ,
                                           {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_MaxInterMessage ,  .Lpayload.f = 0.012f ,  .DataType = 0x7 } ,
                                           {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_NomInterMessageTime ,  .Lpayload.f = 0.008192f ,  .DataType = 0x7 } ,
                                           {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_ProfileAcc ,  .Lpayload.f = 100.0f ,  .DataType = 0x7 } , // Profile acceleration
                                           {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_ProfileDec ,  .Lpayload.f = 100.0f ,  .DataType = 0x7 } , // Profile deceleration
                                           {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_CurrentLimitFactor ,  .Lpayload.f = 1.0f ,  .DataType = 0x7 } , // Profile current limit factor
                                           {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_CONFIRM ,  .Lpayload.f = 1.0f ,  .DataType = 0x7 } , // Approve configuration
                                           {  0xffff  , 0xffff ,  0xffff , 0xffff}   // Terminate list
};


const struct CInitSdo * const SpecificSdoInit[N_CAN_SLAVES] = {(struct CInitSdo *) &InitSdoTARotate , (struct CInitSdo *) &InitSdoTAMain , (struct CInitSdo *)&InitSdoTAShift } ;

#else
extern const struct CInitSdo * const SpecificSdoInit[N_CAN_SLAVES];
extern const struct CInitSdo InitSdoGlob[] ;
#endif



#endif /* APPLICATION_AXISSDOINITLIST2_H_ */
