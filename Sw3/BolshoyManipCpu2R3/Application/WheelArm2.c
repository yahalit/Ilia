#include "StructDef2.h"


void ManageWheelArmPin()
{
    short unsigned estat , NextAxis   ;
    struct LinkControl  *pCtl ;
    float CurrentLevel ;


    NextAxis = PIN_AXIS_RIGHT_RELATIVE+NUM_12V_MANIP_AXES ;
    pCtl = &ManCmd.Ctl12[NextAxis] ;
    CurrentLevel = __fmin(DynStat12[NextAxis].CurrentLimit,M2S.Items.ActCmd.cmd.PinMotorCurrentAmp) ;

    switch ( M2S.Items.ActCmd.cmd.ModeWord.bit.RightPinCmd )
    {
    default:
        pCtl->MotorOnRequest = 0 ;
        DynStat12[NextAxis].CurrentCmd = 0  ;
        break ;
    case E_ReleasePin:
        pCtl->MotorOnRequest = 1 ;
        DynStat12[NextAxis].CurrentCmd = -CurrentLevel ;
        break ;
    case E_EngagePin:
        pCtl->MotorOnRequest = 1 ;
        DynStat12[NextAxis].CurrentCmd =  CurrentLevel ;
        break ;
    }


    S2M.Items.WheelArm.stat.RPinPos = (short) DynStat12[NextAxis].PositionCnt ;
    S2M.Items.WheelArm.stat.RStatus.bit.MotorOn = DynStat12[NextAxis].MotorOn ? 1 : 0  ;

    estat = DynStat12[NextAxis].HardErrorStat  ;
    if ( estat )
    {
        if ( estat == 0x180 )
        {  // Error , communication , may be temporary and ignored
            S2M.Items.WheelArm.stat.RStatus.bit.MotorFault =  (Dx12AxisComCbit[NextAxis].ErrorCond ? 1 : 0 )   ;
        }
        else
        {
            S2M.Items.WheelArm.stat.RStatus.bit.MotorFault =  1  ; // Error , not communication, immediate
        }
    }
    else
    {
        S2M.Items.WheelArm.stat.RStatus.bit.MotorFault =  0  ;
    }

    S2M.Items.WheelArm.stat.RStatus.bit.KnowWhereAmI = ( (KnowWhereIAm12[NextAxis] + (S2M.Items.WheelArm.stat.RStatus.bit.KnowWhereAmI?1:0) *8 ) > 16 ) ? 1 : 0 ;
    S2M.Items.WheelArm.stat.RStatus.bit.ErrCode = ( DynStat12[NextAxis].HardErrorStat & 0xff ) ;


    NextAxis = PIN_AXIS_LEFT_RELATIVE+NUM_12V_MANIP_AXES ;
    pCtl = &ManCmd.Ctl12[NextAxis] ;
    CurrentLevel = __fmin(DynStat12[NextAxis].CurrentLimit,M2S.Items.ActCmd.cmd.PinMotorCurrentAmp) ;
    switch ( M2S.Items.ActCmd.cmd.ModeWord.bit.LeftPinCmd )
    {
    default:
        pCtl->MotorOnRequest = 0 ;
        DynStat12[NextAxis].CurrentCmd = 0  ;
        break ;
    case E_ReleasePin:
        pCtl->MotorOnRequest = 1 ;
        DynStat12[NextAxis].CurrentCmd = -CurrentLevel ;
        break ;
    case E_EngagePin:
        pCtl->MotorOnRequest = 1 ;
        DynStat12[NextAxis].CurrentCmd = CurrentLevel ;
        break ;
    }


    S2M.Items.WheelArm.stat.LPinPos = (short)DynStat12[NextAxis].PositionCnt ;
    S2M.Items.WheelArm.stat.LStatus.bit.MotorOn = DynStat12[NextAxis].MotorOn ? 1 : 0  ;

    estat = DynStat12[NextAxis].HardErrorStat  ;
    if ( estat )
    {
        if ( estat == 0x180 )
        {  // Error , communication , may be temporary and ignored
            S2M.Items.WheelArm.stat.LStatus.bit.MotorFault =  (Dx12AxisComCbit[NextAxis].ErrorCond ? 1 : 0 )   ;
        }
        else
        {
            S2M.Items.WheelArm.stat.LStatus.bit.MotorFault =  1  ; // Error , not communication, immediate
        }
    }
    else
    {
        S2M.Items.WheelArm.stat.LStatus.bit.MotorFault =  0  ;
    }


    S2M.Items.WheelArm.stat.LStatus.bit.KnowWhereAmI = ( (KnowWhereIAm12[NextAxis] + (S2M.Items.WheelArm.stat.LStatus.bit.KnowWhereAmI?1:0) *10) > 20   ) ? 1 : 0 ;
    S2M.Items.WheelArm.stat.LStatus.bit.ErrCode = ( DynStat12[NextAxis].HardErrorStat & 0xff ) ;

}
