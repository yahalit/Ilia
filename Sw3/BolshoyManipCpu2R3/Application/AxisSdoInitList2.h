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


const struct CInitSdo InitSdoTAMain[] = { //tape arm main

    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_ProfileAcc ,  .Lpayload.f = NominalLinearAxesAcc ,  .DataType = 0x7 } , // Profile acceleration
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_ProfileDec ,  .Lpayload.f = NominalLinearAxesAcc ,  .DataType = 0x7 } , // Profile deceleration
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_MotionConvergeWindow ,  .Lpayload.f = AxisToleranceTape ,  .DataType = 0x7 } , // convergence tolerance for axis m/rad
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_ProfileSpeed ,  .Lpayload.fPtr = &ManGeo.FlexTapeSpeed ,  .DataType = 0x8 } , // set profile speed
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_ProfileTau ,  .Lpayload.f = AxesTau ,  .DataType = 0x7 } , // set profile speed
    //{  .Index = 0x2223         , .SubIndex = 7              ,  .Lpayload.ul = 4 ,  .DataType = 0x7 } , // cancel start stop mechanism for this axis (due to backlashes).
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_CONFIRM ,  .Lpayload.f = 1.0f ,  .DataType = 0x7 } , // Approve configuration
    {  0xffff  , 0xffff ,  0xffff , 0xffff}   // Terminate list
};


const struct CInitSdo InitSdoTAShift[] = { //linear
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_ProfileAcc ,  .Lpayload.f = NominalLinearAxesAcc ,  .DataType = 0x7 } , // Profile acceleration
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_ProfileDec ,  .Lpayload.f = NominalLinearAxesAcc ,  .DataType = 0x7 } , // Profile deceleration
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_MotionConvergeWindow ,  .Lpayload.f = AxisToleranceShifter ,  .DataType = 0x7 } , // convergence tolerance for axis m/rad
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_CONFIRM ,  .Lpayload.f = 1.0f ,  .DataType = 0x7 } , // Approve configuration
   // {  .Index = FLOAT_OBJ_INDEX  , .SubIndex = CFG_Float_UserPosOnHomingFW ,  .Lpayload.fPtr = &FlexManipControl.LinearHomigPositionFW ,  .DataType = 0x8 } , // set a homing position.
   // {  .Index = FLOAT_OBJ_INDEX  , .SubIndex = CFG_Float_UserPosOnHomingRev ,  .Lpayload.fPtr = &FlexManipControl.LinearHomigPositionRev ,  .DataType = 0x8 } , // set a homing position.
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_ProfileSpeed ,  .Lpayload.fPtr = &ManGeo.FlexSpacerSpeed ,  .DataType = 0x8 } , // set profile speed
    {  .Index = 0x2223  , .SubIndex = 7 ,  .Lpayload.ul = 4 ,  .DataType = 0x7 } , // cancel start stop mechanism for this axis (due to backlashes).
    {  0xffff  , 0xffff ,  0xffff , 0xffff}   // Terminate list
};


const struct CInitSdo InitSdoTARotate[] = { //rotation
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_MinInterMessage ,  .Lpayload.f = 0.0058f ,  .DataType = 0x7 } ,
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_MaxInterMessage ,  .Lpayload.f = 0.012f ,  .DataType = 0x7 } ,
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_NomInterMessageTime ,  .Lpayload.f = 0.008192f ,  .DataType = 0x7 } ,
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_ProfileAcc ,  .Lpayload.f = NominalAngularAxesAcc ,  .DataType = 0x7 } , // Profile acceleration
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_ProfileDec ,  .Lpayload.f = NominalAngularAxesAcc ,  .DataType = 0x7 } , // Profile deceleration
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_MotionConvergeWindow ,  .Lpayload.f = AxisTolerancePlate ,  .DataType = 0x7 } , // convergence tolerance for axis m/rad
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_CONFIRM ,  .Lpayload.f = 1.0f ,  .DataType = 0x7 } , // Approve configuration
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_ProfileSpeed ,  .Lpayload.fPtr = &ManGeo.FlexPlateSpeed ,  .DataType = 0x8 } , // set profile speed
    {  .Index = 0x2223  , .SubIndex = 7 ,  .Lpayload.ul = 4 ,  .DataType = 0x7 } , // cancel start stop mechanism for this axis (due to backlashes).
    {  0xffff  , 0xffff ,  0xffff , 0xffff}   // Terminate list
};


const struct CInitSdo * const SpecificSdoInit[N_CAN_SLAVES] = {(struct CInitSdo *) &InitSdoTARotate , (struct CInitSdo *) &InitSdoTAMain , (struct CInitSdo *)&InitSdoTAShift } ;

#else
extern const struct CInitSdo * const SpecificSdoInit[N_CAN_SLAVES]; //If required to make a linear shaft have a non-zero position at the stop condition (physical stopper or switch),  add CFG_UserPosOnHome to relevant axes (tape arm) and linear.
extern const struct CInitSdo InitSdoGlob[] ;
#endif



#endif /* APPLICATION_AXISSDOINITLIST2_H_ */
