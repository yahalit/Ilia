/*
 * DFT_BH.h
 *
 *  Created on: Nov 26, 2023
 *      Author: yahal
 */
//#include "StructDef.h"

#ifndef APPLICATION_DFT_BH_H_
#define APPLICATION_DFT_BH_H_


inline
void ResetWheelFaults(void)
{
    ResetAxisFaults(&SysState.CanAxis[LOGICAL_RW]) ;
    ResetAxisFaults(&SysState.CanAxis[LOGICAL_LW]) ;
}


inline
float GetUserPosNeck()
{
    return SysState.CanAxis[LOGICAL_NECK].BH.UserPos ;
}

inline
float GetUserPosRSteer()
{
    return SysState.CanAxis[LOGICAL_RSTEER].BH.UserPos ;
}

inline
float GetUserPosLSteer()
{
    return SysState.CanAxis[LOGICAL_LSTEER].BH.UserPos ;
}


inline
void   StopWheels(void)
{
    SysState.CanAxis[LOGICAL_LW].BH.UserSpeedCmd = 0 ;
    SysState.CanAxis[LOGICAL_RW].BH.UserSpeedCmd = 0 ;
}

inline
void SetWheelGndSpeedCmd(float rspeed,float lspeed)
{
    float fac = 1.0 / __fmax( Geom.rg , 1.e-7) ;
    SysState.CanAxis[LOGICAL_RW].BH.UserSpeedCmd = rspeed * fac ;
    SysState.CanAxis[LOGICAL_LW].BH.UserSpeedCmd = lspeed * fac  ;
}

inline
void GetWheelGndSpeedCmd(float *rspeed,float *lspeed)
{
    *rspeed = SysState.CanAxis[LOGICAL_RW].BH.UserSpeedCmd * Geom.rg;
    *lspeed = SysState.CanAxis[LOGICAL_LW].BH.UserSpeedCmd * Geom.rg ;
}

inline
long GetRWheelMotEncoder(void)
{
    return SysState.CanAxis[LOGICAL_RW].BH.WheelEncoderCnt ;
}


inline
long GetLWheelMotEncoder(void)
{
    return SysState.CanAxis[LOGICAL_LW].BH.WheelEncoderCnt ;
}

inline
long GetRWheelEncoder(void)
{
    return SysState.CanAxis[LOGICAL_RW].BH.WheelEncoderCnt ;
}

inline
long GetLWheelEncoder(void)
{
    return SysState.CanAxis[LOGICAL_LW].BH.WheelEncoderCnt ;
}


#endif /* APPLICATION_DFT_BH_H_ */
