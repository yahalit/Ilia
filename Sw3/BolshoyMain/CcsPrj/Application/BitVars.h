/*
 * BitVars.h
 *
 *  Created on: Feb 2, 2023
 *      Author: yahal
 */

#ifndef APPLICATION_BITVARS_H_
#define APPLICATION_BITVARS_H_


typedef long unsigned  (*ObjGetFunc)( struct CSdo * pSdo ,short unsigned *nData)  ;
struct CObjectReads
{
short unsigned index ;
short unsigned subindex ;
ObjGetFunc GetFun ;
};

const float *FloatBitPtrs[] = {
(float*) &SysState.Status.V18Or36 , // {V36,base}
(float*) &SysState.Status.V54 , // {VBat54,base}
(float*) &SysState.Status.V24 , // {Volts24,base}
(float*) &SysState.Status.V12 , // {Volts12,base}
(float*) &SysState.CanAxis[LOGICAL_RW].BH.Torque , // {Current1,base}
(float*) &SysState.CanAxis[LOGICAL_LW].BH.Torque , // {Current2,base}
(float*) &SysState.CanAxis[LOGICAL_RSTEER].BH.Torque , // {Current3,base}
(float*) &SysState.CanAxis[LOGICAL_LSTEER].BH.Torque , // {Current4,base}
(float*) &SysState.CanAxis[LOGICAL_NECK].BH.Torque , // {Current5,base}
(float*) &SysState.WheelRawTorqueDiff , // {NeckDiff,base}
(float*) &SysState.CanAxis[LOGICAL_RSTEER].OuterPos , // {ROuterPos,base}
(float*) &SysState.CanAxis[LOGICAL_LSTEER].OuterPos , // {LOuterPos,base}
(float*) &SysState.CanAxis[LOGICAL_NECK].OuterPos , // {NOuterPos,base}
(float*) &Analogs.UsSamp1,  // {LaserDist,BitDialog}
(float*) &SysState.Nav.yaw,  // {Heading,NavDesc}
(float*) &SysState.Nav.roll,  // {Roll,NavDesc}
(float*) &SysState.Nav.pitch ,  // {Pitch,NavDesc}
(float*) &SysState.Package.XPosition ,  // {Y,Manip}
(float*) &SysState.Package.YPosition ,  // {X,Manip}
(float*) &SysState.Package.ThtPosition  , // {Tht,Manip}
(float*) &SysState.Package.LeftStopPosition ,  // {LD,Manip}
(float*) &SysState.Package.RightStopPosition   // {RD,Manip}
};
// End FloatBitPtrs[]
#define N_FLOAT_BIT_READ (sizeof(FloatBitPtrs)/sizeof(float*) )



const struct CObjectReads ConstFloatObjectReads[] =
{
    {0x2204,53,(ObjGetFunc)0} ,  //{Tilt,BitDialog}
    {0x2206,13,(ObjGetFunc)0} ,  //{cmdrsteerRadSec,base}
    {0x2206,14,(ObjGetFunc)0} ,  //{cmdlsteerRadSec,base}
    {0x2206,15,(ObjGetFunc)0}   //{cmdneckRadSec,base}
}  ;
// End ConstFloatObjectReads[]
#define N_FLOAT_BITOBJ_READ (sizeof(ConstFloatObjectReads)/sizeof(struct CObjectReads) )
//struct CObjectReads FloatObjectReads[N_FLOAT_BITOBJ_READ];
struct CObjectReads FloatObjectReads[N_FLOAT_BITOBJ_READ];



const long unsigned *ULongBitPtrs[] = {
(long unsigned*) &IsrTimer.mSecTimer , //{TimeElapseMsec,base}
(long unsigned*) &SysState.Mot.TotalMsgCounter , //{TotalMsgCounter,NavDesc}
(long unsigned*) &SysState.Mot.Deviation.Age,//{DevAge,NavDesc}
(long unsigned*) &SysState.Mot.PosReport.X[0],//{QrX,NavDesc}
(long unsigned*) &SysState.Mot.PosReport.X[1],//{QrY,NavDesc}
(long unsigned*) &SysState.Nav.iPos[0],//{PosX,NavDesc}
(long unsigned*) &SysState.Nav.iPos[1],//{PosY,NavDesc}
(long unsigned*) &SysState.Nav.iPos[2],//{PosZ,NavDesc}
(long unsigned*) &SysState.CanAxis[LOGICAL_RW].BH.UserSpeedCmd, // {RWSpeedCmd,BitDialog}
(long unsigned*) &SysState.CanAxis[LOGICAL_LW].BH.UserSpeedCmd ,  // {LWSpeedCmd,BitDialog}
(long unsigned*) &SysState.CanAxis[LOGICAL_RSTEER].BH.UserPos , // {REnc,base}
(long unsigned*) &SysState.CanAxis[LOGICAL_LSTEER].BH.UserPos , // {LEnc,base}
(long unsigned*) &SysState.CanAxis[LOGICAL_NECK].BH.UserPos  // {NEnc,base}
};
// End ULongBitPtrs[]

#define N_ULONG_BIT_READ (sizeof(ULongBitPtrs)/sizeof(long unsigned*) )


const struct CObjectReads ConstULongObjectReads[] =
{
    {0x2220,97,(ObjGetFunc)0} , //{BitPand3,Bit}
    {0x2220,98,(ObjGetFunc)0} , //{Bit1and2,Bit}
    {0x2220,99,(ObjGetFunc)0} , //{BitW,Bit}
    {0x2220,100,(ObjGetFunc)0} , //{BitFault,Bit}
    {0x2204,122,(ObjGetFunc)0} , //{HVer,BitDialog}
    {0x220b,1,(ObjGetFunc)0} , //{eBit,Bit}
    {0x220b,2,(ObjGetFunc)0} , //{expnum_2,BitDialog}
    {0x220b,3,(ObjGetFunc)0}  ,  //{expnum_3,BitDialog}
    {0x220b,11,(ObjGetFunc)0} , //{Mbit,Manip}
    {0x220b,14,(ObjGetFunc)0} , //{ManStat,Manip}
    {0x220b,15,(ObjGetFunc)0} , //{fBit,Bit}
    {0x220b,23,(ObjGetFunc)0} , //{WarmSummary,Bit}
    {0x2223,47,(ObjGetFunc)0} , //{ManipMotStat1,Bit}
    {0x2223,48,(ObjGetFunc)0}  , //{ManipMotStat2,Bit}
    {0x2203 ,100,(ObjGetFunc)0}  , //{LedsOn,BitDialog}
}  ;
// End ConstULongObjectReads[]


#define N_ULONG_BITOBJ_READ (sizeof(ConstULongObjectReads)/sizeof(struct CObjectReads) )
struct CObjectReads ULongObjectReads[N_ULONG_BITOBJ_READ]  ;

short unsigned USZero ;
const short unsigned *UShortBitPtrs[] = {
(short unsigned*) &USZero ,//{Unused1,NavDesc}
(short unsigned*) &SysState.Mot.Deviation.AzimuthDev,//{DevAz,NavDesc}
(short unsigned*) &SysState.Mot.Deviation.Offset,//{DevOffset,NavDesc}
(short unsigned*) &USZero,//{Unused2,NavDesc}
(short unsigned*) &SysState.Mot.BgPosReport.Azimuth,//{QrAz,NavDesc}
};
// End UShortBitPtrs[]

#define N_USHORT_BIT_READ (sizeof(UShortBitPtrs)/sizeof(unsigned short*) )







#endif /* APPLICATION_BITVARS_H_ */
