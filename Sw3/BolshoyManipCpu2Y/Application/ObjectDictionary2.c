/*
 * ObjectDict.c
 *
 *  Created on: Dec 11, 2016
 *      Author: Yahali Theodor
 */

#include "StructDef2.h"
#include "Functions2.h"





#define DX_SET2FLASH_DELAY 2000000
#define DX_SET2RAM_DELAY 2000000


long unsigned TestSciA(short unsigned);

long unsigned  SetInfineon( struct CSdo * pSdo ,short unsigned nData);
long unsigned  SetPsControl(    struct CSdo * pSdo ,short unsigned nData);
long unsigned  SetDynamixelP24( struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetDynamixelP24( struct CSdo * pSdo ,short unsigned *nData);
long unsigned  SetDynamixelP12( struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetDynamixelP12( struct CSdo * pSdo ,short unsigned *nData);
long unsigned  SetGenTest(  struct CSdo * pSdo ,short unsigned nData);
long unsigned  SetDxlManual(    struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetDxlManual(    struct CSdo * pSdo ,short unsigned *nData);
long unsigned  PdGetSensor( struct CSdo * pSdo ,short unsigned *nData);
long unsigned  GetGenTest(  struct CSdo * pSdo ,short unsigned *nData);

long unsigned  SetFloatParPD(   struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetFloatParPD(   struct CSdo * pSdo ,short unsigned *nData);
long unsigned  OnManualManCmd( struct CSdo * pSdo ,short unsigned nData);

long unsigned  SetFwDataPD( struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetFwDataPD( struct CSdo * pSdo ,short unsigned *nData);
long unsigned  SetFwCmd(    struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetFwCmdPD(  struct CSdo * pSdo ,short unsigned *nData);
long unsigned  SetManipCalibCmd(   struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetManipCalibCmd(   struct CSdo * pSdo ,short unsigned *nData);

long unsigned  GetGpio( struct CSdo * pSdo ,short unsigned *nData);
long unsigned  SetGpio( struct CSdo * pSdo ,short unsigned nData);

long unsigned  GetExceptStat(    struct CSdo * pSdo ,short unsigned *nData);

long unsigned  SetMiscTest( struct CSdo * pSdo ,short unsigned nData);
long unsigned  SetServoTest( struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetServoTest(    struct CSdo * pSdo ,short unsigned *nData);


long unsigned  SetPDCmdDef( struct CSdo * pSdo ,short unsigned nData);

long unsigned  SetPDCommand1(   struct CSdo * pSdo ,short unsigned nData);
long unsigned  SetPDCommand2(   struct CSdo * pSdo ,short unsigned nData);
long unsigned  SetPDCommand3(   struct CSdo * pSdo ,short unsigned nData);
long unsigned  SetPDCommand4(   struct CSdo * pSdo ,short unsigned nData);
long unsigned  SetPDCommand5(   struct CSdo * pSdo ,short unsigned nData);
long unsigned  SetPD2209(   struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetPdCmd1(   struct CSdo * pSdo ,short unsigned *nData);
long unsigned  GetPdCmd2(   struct CSdo * pSdo ,short unsigned *nData);
long unsigned  GetPdCmd3(   struct CSdo * pSdo ,short unsigned *nData);
long unsigned  GetPdCmd4(   struct CSdo * pSdo ,short unsigned *nData);
long unsigned  GetPdCmd5(   struct CSdo * pSdo ,short unsigned *nData);
long unsigned  GetPd2209(   struct CSdo * pSdo ,short unsigned *nData);
long unsigned  SetFloatPar2PD( struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetFloatPar2PD( struct CSdo * pSdo ,short unsigned *nData);
long unsigned  GetCanNetData(    struct CSdo * pSdo ,short unsigned *nData);


short ApplySuck( void );


//laser unit is 0.1mm
#define LASER_RPT_TO_METERS 0.0001F
//  { 0x1fff , 2 , SetRecorderTableEntry , NoSuchGetObject} ,

const struct CObjDictionaryItem ObjDictionaryItem [] =
{
     { 0x2000 , 2 , SetRecorder , GetRecorder } ,
     { 0x2001 , 2 , NoSuchSetObject , GetSignalFlags } ,
     { 0x2002 , 2 , SetSignal , GetSignal } ,
    { 0x2003 , 2 , SetInfineon , NoSuchGetObject },
    { 0x2004 , 2 , SetPsControl , NoSuchGetObject },
    { 0x2005 , 2 , SetGpio , GetGpio },
    { 0x2100 , 2 , SetDynamixelP24 , GetDynamixelP24 },
    { 0x2101 , 2 , SetDynamixelP12 , GetDynamixelP12 },
    { 0x2102 , 2 , SetGenTest , GetGenTest },
    { 0x2103 , 4 , SetDxlManual , GetDxlManual } ,
    { 0x2104 , 4 , NoSuchSetObject , GetCanNetData } ,
    { 0x2204 , 2 , NoSuchSetObject , PdGetSensor },
    { 0x2208 , 2 , SetFloatParPD , GetFloatParPD } ,
    { 0x2209 , 2 , OnManualManCmd , NoSuchGetObject },
    { 0x220b , 2 , NoSuchSetObject , GetExceptStat },
    {0x220c  , 4 , SetFloatPar2PD , GetFloatPar2PD },
    { 0x2220 , 2 , SetMiscTest , NoSuchGetObject },
    { 0x2221 , 2 , SetServoTest , GetServoTest },
    { 0x2301 , 4 , SetFwCmd , GetFwCmdPD },
    { 0x2303 , 4 , SetManipCalibCmd , GetManipCalibCmd },
    { 0x24ff , 4 , SetPDCmdDef , NoSuchGetObject },
    { 0x2500 , 4 , SetPDCommand1 , GetPdCmd1 },
    { 0x2501 , 4 , SetPDCommand2 , GetPdCmd2 },
    { 0x2502 , 4 , SetPDCommand3 , GetPdCmd3 },
    { 0x2503 , 4 , SetPDCommand4 , GetPdCmd4 },
    { 0x2504 , 4 , SetPDCommand5 , GetPdCmd5 },
    { 0x0fff , 4 , NoSuchSetObject , (GetDictFunc) 0 }
};


const short unsigned SizeofObjDict =  sizeof(ObjDictionaryItem)/sizeof(struct CObjDictionaryItem) ;

long unsigned GetManufacturerSpecificCode (long code)
{
    return ( ( code) ? Manufacturer_error_detail +  *(long unsigned*) &code : 0 ) ;
}


/**
 * \brief Set a floating point parameter to the PD.
 * object 0x220c
 */
long unsigned  SetFloatPar2PD( struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si ;
    float f ;

    si = pSdo->SubIndex ;
    f =* ((float *) pSdo->SlaveBuf);
    if ( isNan( &f) )
    {
        return General_parameter_incompatibility_reason ;
    }

    if ( nData != 4 )
        return length_of_service_parameter_does_not_match;

    return SendSdo2PD ( 0x2208 , si , (long *) &f , 4 );
}

/**
 * \brief Get a floating point parameter from the PD .
  * object 0x220c
 */
long unsigned  GetFloatPar2PD( struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si  ;
    short unsigned nBytes ;
    long unsigned lstat ;
    float f ;

    si = pSdo->SubIndex ;
    nBytes = 4 ;

    lstat = (long unsigned) GetSdoFromPD ( 0x2208 , si , (long *) &f , &nBytes );
    if ( lstat ) return lstat ;

    *nData = 4 ;
    * ((float *) &pSdo->SlaveBuf[0] ) = f ;

    return 0 ;
}


/**
 * \brief object 0x24ff: A joker object configuration
 * SubIndex 1: The object in the PD that is addressed when Index 0x2500 is addressed on LP
 * SubIndex 2: The object in the PD that is addressed when Index 0x2501 is addressed on LP
 * SubIndex 3: The object in the PD that is addressed when Index 0x2502 is addressed on LP
 * SubIndex 4: The object in the PD that is addressed when Index 0x2503 is addressed on LP
 * SubIndex 5: The object in the PD that is addressed when Index 0x2504 is addressed on LP
 */
long unsigned  SetPDCmdDef( struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si ;
    short unsigned us ;
    (void) nData ;
    si = pSdo->SubIndex ;
    if ( si < 1 || si > 5 )
    {
        return Sub_index_does_not_exist ;
    }
    if ( nData != 2 )
    {
        return General_parameter_incompatibility_reason ;
    }
    us =* ((unsigned short *) pSdo->SlaveBuf);
    if ( us < 1  || us > 0x8000 )
    {
        return General_parameter_incompatibility_reason ;
    }
    PdSlaveObjectMap[si-1] = us ;
    return 0 ;
}


/**
 * \brief Object 0x2500 A joker object, used to contact PD object.
 * When this object is put, the data is transfered to object of index 0x2209, same sub-index
 */
long unsigned  SetPD2209(   struct CSdo * pSdo ,short unsigned nData)
{
    long unsigned stat ;
    stat = SendSdo2PD ( 0x2209 , pSdo->SubIndex , (long *)pSdo->SlaveBuf , nData )  ;
    return stat ;
}


/**
 * \brief Object 0x2500 A joker object, used to contact PD object.
 * When this object is put, the data is transfered to object of index 0x24ff.1, same sub-index
 */
long unsigned  SetPDCommand1(   struct CSdo * pSdo ,short unsigned nData)
{
    long unsigned stat ;
    stat = SendSdo2PD ( PdSlaveObjectMap[0] , pSdo->SubIndex , (long *)pSdo->SlaveBuf , nData ) ;
    return  stat ;
}

/**
 * \brief Object 0x2501 A joker object, used to contact PD object.
 * When this object is put, the data is transfered to object of index 0x24ff.2, same sub-index
 */
long unsigned  SetPDCommand2(   struct CSdo * pSdo ,short unsigned nData)
{
    long unsigned stat ;
    stat = SendSdo2PD ( PdSlaveObjectMap[1] , pSdo->SubIndex , (long *)pSdo->SlaveBuf , nData ) ;
    return  stat ;
}

/**
 * \brief Object 0x2502 A joker object, used to contact PD object.
 * When this object is put, the data is transfered to object of index 0x24ff.3, same sub-index
 */
long unsigned  SetPDCommand3(   struct CSdo * pSdo ,short unsigned nData)
{
    long unsigned stat ;
    stat = SendSdo2PD ( PdSlaveObjectMap[2] , pSdo->SubIndex , (long *)pSdo->SlaveBuf , nData ) ;
    return  stat ;
}

/**
 * \brief Object 0x2503 A joker object, used to contact PD object.
 * When this object is put, the data is transfered to object of index 0x24ff.4, same sub-index
 */
long unsigned  SetPDCommand4(   struct CSdo * pSdo ,short unsigned nData)
{
    long unsigned stat ;
    stat = SendSdo2PD ( PdSlaveObjectMap[3] , pSdo->SubIndex , (long *)pSdo->SlaveBuf , nData ) ;
    return  stat ;
}

/**
 * \brief Object 0x2504 A joker object, used to contact PD object.
 * When this object is put, the data is transfered to object of index 0x24ff.5, same sub-index
 */
long unsigned  SetPDCommand5(   struct CSdo * pSdo ,short unsigned nData)
{
    long unsigned stat ;
    stat = SendSdo2PD ( PdSlaveObjectMap[4] , pSdo->SubIndex , (long *)pSdo->SlaveBuf , nData ) ;
    return  stat ;
}


/**
 * \brief Object 0x2500 A joker object, used to contact PD object.
 * When this object is read, the data is inquired from object of index 0x24ff.1, same sub-index
 */

long unsigned  GetPd2209(   struct CSdo * pSdo ,short unsigned *nData)
{
    long val ;
    long unsigned stat ;
    stat = GetSdoFromPD ( 0x2209 , pSdo->SubIndex , &val , nData  ) ;
    if ( stat )
        return stat ;
    * (long *)pSdo->SlaveBuf = val ;
    return 0 ;
}



/**
 * \brief Object 0x2500 A joker object, used to contact PD object.
 * When this object is read, the data is inquired from object of index 0x24ff.1, same sub-index
 */

long unsigned  GetPdCmd1(   struct CSdo * pSdo ,short unsigned *nData)
{
    long val ;
    long unsigned stat ;
    stat = GetSdoFromPD ( PdSlaveObjectMap[0] , pSdo->SubIndex , &val , nData  ) ;
    if ( stat )
        return * (unsigned long *) &stat ;
    * (long *)pSdo->SlaveBuf = val ;
    return 0 ;
}

/**
 * \brief Object 0x2501 A joker object, used to contact PD object.
 * When this object is read, the data is inquired from object of index 0x24ff.2, same sub-index
 */

long unsigned  GetPdCmd2(   struct CSdo * pSdo ,short unsigned *nData)
{
    long val ;
    long unsigned stat ;
    stat = GetSdoFromPD ( PdSlaveObjectMap[1] , pSdo->SubIndex , &val , nData  ) ;
    if ( stat )
        return stat ;
    * (long *)pSdo->SlaveBuf = val ;
    return 0 ;
}

/**
 * \brief Object 0x2502 A joker object, used to contact PD object.
 * When this object is read, the data is inquired from object of index 0x24ff.3, same sub-index
 */

long unsigned  GetPdCmd3(   struct CSdo * pSdo ,short unsigned *nData)
{
    long val ;
    long unsigned stat ;
    stat = GetSdoFromPD ( PdSlaveObjectMap[2] , pSdo->SubIndex , &val , nData  ) ;
    if ( stat )
        return stat ;
    * (long *)pSdo->SlaveBuf = val ;
    return 0 ;
}

/**
 * \brief Object 0x2503 A joker object, used to contact PD object.
 * When this object is read, the data is inquired from object of index 0x24ff.4, same sub-index
 */

long unsigned  GetPdCmd4(   struct CSdo * pSdo ,short unsigned *nData)
{
    long val ;
    long unsigned stat ;
    stat = GetSdoFromPD ( PdSlaveObjectMap[3] , pSdo->SubIndex , &val , nData  ) ;
    if ( stat )
        return stat ;
    * (long *)pSdo->SlaveBuf = val ;
    return 0 ;
}

/**
 * \brief Object 0x2504 A joker object, used to contact PD object.
 * When this object is read, the data is inquired from object of index 0x24ff.5, same sub-index
 */

long unsigned  GetPdCmd5(   struct CSdo * pSdo ,short unsigned *nData)
{
    long val ;
    long unsigned stat ;
    stat = GetSdoFromPD ( PdSlaveObjectMap[4] , pSdo->SubIndex , &val , nData  ) ;
    if ( stat )
        return stat ;
    * (long *)pSdo->SlaveBuf = val ;
    return 0 ;
}



long unsigned GetCanAxis(short unsigned arg , short reqManual , struct CCanAxis ** ppAxis)
{
    struct CCanAxis *pAxis ;
    short unsigned axis ;
    axis = arg >> 12 ;
    if ( axis >= N_CAN_SLAVES )
    {
        return GetManufacturerSpecificCode( NO_SUCH_SLAVE ) ;
    }
    pAxis = &SysState.CanAxis[axis] ;
    if ( pAxis->Installed == 0 )
    {
        return GetManufacturerSpecificCode( AXIS_NOT_INSTALLED ) ;
    }
    if (reqManual )
    {
        if ( S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual == 0 )
        {
            return GetManufacturerSpecificCode( ONLY_FOR_MANUAL_MODE ) ;
        }
    }
    *ppAxis = pAxis ;
    return axis ;
}

void SetMotorOffAll(void)
{
    short unsigned cnt ;
    for  ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
    {
        SetMotorOff( & SysState.CanAxis[cnt] ) ;
    }
}


/**
 * \brief object 0x2221: Miscellaneous services
 *
 */
long unsigned  GetServoTest(    struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si ;
    union
    {
        short unsigned us[2] ;
        long unsigned ul ;
        float f ;
    }u;
    si = pSdo->SubIndex ;
    *nData = 4 ;
    u.ul = 0 ;
    switch ( si )
    {
    case 1:
        u.us[0] = SysState.CanAxis[0].BH.BhCw.all ;
        break ;
    case 2:
        u.us[0] = SysState.CanAxis[1].BH.BhCw.all ;
        break ;
    case 3:
        u.us[0] = SysState.CanAxis[2].BH.BhCw.all ;
        break ;

    default:
        return Sub_index_does_not_exist;
    }
    * ((unsigned long *) pSdo->SlaveBuf) = u.ul ;

    return 0;

}


/**
 * \brief object 0x2221: Miscellaneous services
 *
 */
long unsigned  SetServoTest( struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si  , logicIn  , mask ;
    long  unsigned stat ;

    union
    {
        short unsigned us[2] ;
        long unsigned ul ;
        float f ;
    }u;
    struct CCanAxis *pAxis ;

    u.ul =* ((long unsigned *) pSdo->SlaveBuf);
    si = pSdo->SubIndex ;
    logicIn = (u.us[0] ? 1 : 0) ;

    if ( si == 1)
    {
        // Set to manual or automatic mode
        if ( S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual  == logicIn)
        {
            return 0 ;
        }
        mask = BlockInts() ;
        SetMotorOffAll( ) ;
        S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual = logicIn ;
        RestoreInts(mask) ;
        // Set to manual
    }

    stat = GetCanAxis( u.us[1] , 1  , &pAxis);
    if ( stat)
    {
        return stat ;
    }

    switch ( si)
    {
    case 2:
        if (pAxis->BH.BhCw.bit.MotorOnCmd )
        {
            return GetManufacturerSpecificCode( MOTOR_MUST_BE_OFF ) ;
        }
        pAxis->BH.BhCw.bit.ReleaseBrake = logicIn ;
        break ;

    case 3:
        if (pAxis->BH.BhCw.bit.MotorOnCmd )
        {
            return GetManufacturerSpecificCode( MOTOR_MUST_BE_OFF ) ;
        }
        pAxis->BH.BhCw.bit.BrakeOverride = logicIn ;
        break ;

    default:
        return Sub_index_does_not_exist;
    }

    return 0;

}


/**
 * \brief object 0x2220: Miscellaneous services
 *
 */
long unsigned  SetMiscTest( struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si    ;
    short unsigned mask;
    long val ;
    long unsigned err ;


    union
    {
        short unsigned us ;
        long unsigned ul ;
        float f ;
    }u;
    (void) nData ;
    u.ul =* ((long unsigned *) pSdo->SlaveBuf);

    si = pSdo->SubIndex ;
    switch ( si )
    {
    case 9:
        // Turn on / off 12V
        val = ( u.us ) ? 1 : 0 ;
        return SendSdo2PD ( 0x2004 , 1 , &val , 2 ) ; // Ask power on of 12V

    case 10:
        val = ( u.us ) ? 1 : 0 ;
        // Turn on / off 24V
        return SendSdo2PD ( 0x2004 , 2 , &val , 2 ) ; // Ask power on of 24V

    case 11:
        val = ( u.us ) ? 1 : 0 ;
        // Turn on / off 54V
        return SendSdo2PD ( 0x2004 , 3 , &val , 2 ) ; // Ask power on of 54V

    case 18:
        // Shut off all power supplies - equivalent to mushroom press
        val = 0 ;
        err = SendSdo2PD ( 0x2004 , 3 , &val , 2 ) ; // Ask power off of 54V
        if (err == 0)
        {
            SendSdo2PD ( 0x2004 , 2 , &val , 2 ) ; // Ask power off of 24V
            // We dont ask for error because if we later kill the 12V the 24V will automatically
            // go down with it
            err = SendSdo2PD ( 0x2004 , 1 , &val , 2 ) ; // Ask power off of 12V
        }
        return err;

    case 40:
        val =  u.us & 3 ;
        return SendSdo2PD ( 0x2004 , 110 , &val , 2 ) ; // Reset manipulator voltages

    case 72:
        if ( u.us == 1234 )
        {
            if ( SysState.WakeupState != E_CAN_WAKEUP_SLEEP)
            {// Do nothing - an empty wake request
                break ;
            }
            if ( IsSysTimerElapse(TIMER_I_SLEEP_LET_ME_SNORE, &SysTimerStr)  )
            {
                SysState.WakeupState = E_CAN_WAKEUP_INIT;
                SysState.SleepRequest  = 0; // Request sleep
                S2M.Items.ActStatus.stat.PsStatus.bit.PsWakeState = 0 ; // SysState.Status.WakeUp  = 0 ; // SYSSTAT_WAKE_INIT   ;
            }
            else
            {
                return GetManufacturerSpecificCode(ERR_NOT_ENOUGH_NIGHT_SLEEP) ;
            }
        }
        break ;
    case 73:
        if ( u.us == 1234 )
        {
            mask = BlockInts() ;
            SysState.SleepRequest  = 1; // Request sleep
            SetSysTimerTargetSec ( TIMER_PRESLEEP , 1 , &SysTimerStr)    ;
            RestoreInts(mask) ;
        }
        break ;

    case 74:
        SysState.Debug.BypassTapeHoming = u.us ? 1 : 0 ;
        break ;

    case 75:
        SysState.Debug.BypassShifterHoming = u.us ? 1 : 0 ;
        break ;

    default:
        return Sub_index_does_not_exist;
    }

    return 0;
}


long unsigned  GetFwCmdPD(  struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si ;
    long unsigned * ulPtr ;
    ulPtr =  ((unsigned long *) pSdo->SlaveBuf);
    si = pSdo->SubIndex ;
    *nData = 4 ;

    switch ( si )
    {
    case 1:
        * ulPtr = FlashProgPD.PassWord  ;
        break ;
    case 2:
        * ulPtr = FlashProgPD.InternalBufOffset ;
        break ;
    case 4:
        * ulPtr = FIRM_VER  ;
        break ;
    case 5: // Program identifier
        * ulPtr = PROJ_TYPE  ;
        break ;
    case 6:
        //*ulPtr = ( (unsigned long)FIRM_VER << 16 ) + ( (unsigned long)FIRM_SUBVER << 8 ) + ( (unsigned long)FIRM_PATCH );
        *ulPtr = ( (unsigned long)LP_VER << 24 ) + ( (unsigned long)LP_SUBVER << 16 ) + ( (unsigned long)LP_PATCH << 8) + ( (unsigned long)LP_XX);

        break ;

    default:
        return Sub_index_does_not_exist;
    }

    return 0;
}


typedef  void (*VoidFun)(void) ;
void KillCLA(void) ;
/**
* Object 0x2301 FW programming
*
 * BUG fixes:
 * 1. password for flash operations is accepted before actual flash initializations.
 *           therefore, flash operations may be authorized after initialization failure, which may crash the PD
* 2. Mushroom not depressed is answered with specific informational error, not just a general failure
*/
long unsigned SetFwCmd(  struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si ;
    short unsigned mask ;
    short stat ;
    unsigned long ul , pw ;
    long FlashProgPassWord  ;
    si = pSdo->SubIndex ;
    ul =* ((unsigned long *) pSdo->SlaveBuf);

    if ( si == 1 )
    {
         pw = ul;
    }
    else
    {
         pw = FlashProgPD.PassWord  ;
    }

    if ( pw != 0x12345678 || nData != 4 )
    {
         return General_parameter_incompatibility_reason ;
    }

    // Mushroom need be depressed
    //if ( IsPsActive() )
    //{
    //     return (Manufacturer_error_detail + 0x1006) ;
    //}

    switch ( si )
    {
    case 1:
        mask = BlockInts() ;
        //CopyFlashFuncs2Ram() ;
        stat = PrepFlash4Burn();
        RestoreInts(mask) ;
        if ( stat )
        {
            return General_parameter_incompatibility_reason ;
        }
        FlashProgPD.PassWord = 0x12345678 ;
        break ; // Already accepted // End correction
    case 130: // Clear section
        if ( ul != 13 )
        {
             return General_parameter_incompatibility_reason ;
        }

        mask = BlockInts() ;
        stat = EraseSector( Sector_AppVerify_start , 64UL  );
        RestoreInts(mask)  ;
        if ( stat )
        {
            return General_parameter_incompatibility_reason ;
        }
        break ;

    case 244: // Back home to boot
         DINT;
         KillCLA();
         ((VoidFun)0x80000 )() ; // Fat Bertha from which nobody ever returned

    case 245: // Back home to boot, Reset PD first
        FlashProgPassWord = ul ;
        ul = SendSdo2PD ( 0x2301 , 1 , &FlashProgPassWord  , 4 )   ;
        if ( ul) return ul ;

        // Next send the SDO for PD kill. Do it once only as PD should not return any response
        pSdo = (struct CSdo *) &SysState.CanAxis[N_CAN_SLAVES].Sdo ;
        MemClr((short unsigned *)pSdo,sizeof(struct CSdo)  );

        pSdo->DataType = 7 ;

        pSdo->SlaveID = SysState.CanAxis[N_CAN_SLAVES].CanId ;
        pSdo->Index = 0x2301 ;
        pSdo->SubIndex= 244 ;
        pSdo->Lpayload = 0 ;

        SendSdoExpeditDloadLong( pSdo );
        //WaitStam(20000, &SysTimerStr) ; // Wait interrupts to complete SDO send

        // Time to commit suicide
        //DINT;
        //ResetCpu(2); // ((VoidFun)0x80000 )() ; // Fat Bertha from which nobody ever returned
        break ; //Formal


    default:
         return Sub_index_does_not_exist;
    }
    return 0 ;
}


/**
 * \brief Test if a variable is within the range, clamp it to range if necessary
 *
 * \param x-> Tested (possibly clamped) variable
 * \param xmax : Upper limit
 * \param xmin : Lower limit
 */
/*short IsInRange( float *x , float xmax , float xmin )
{
    if ( isNan( x) ) return -1 ;
    if ( *x > xmax )
    {
        *x = xmax ; return 1 ;
    }
    if ( *x < xmin )
    {
        *x = xmin ; return 1 ;
    }
    return 0 ;
}
*/

/**
 * \brief Test if a variable is within the range, clamp it to range if necessary
 *
 * \param x-> Tested (possibly clamped) variable
 * \param xmax : Upper limit
 * \param xmin : Lower limit
 */
short IsNotInRange( float *x , float xmax , float xmin )
{
    if ( isNan( x) )
        return -1 ;
    if ( *x > xmax )
    {
        *x = xmax ;
        return 1 ;
    }
    if ( *x < xmin )
    {
        *x = xmin ;
        return 1 ;
    }
    return 0 ;
}



/**
 * \brief Get the index of parameter in the parameters table , brute force search
 *
 * \param si: The index of the parameter to look for
 */
short unsigned GetParIndex ( short unsigned TargetIndex )
{
    short unsigned L , R, m , Am , cnt ;

    L = 0 ; R = N_ParTable ;

    for ( cnt = 0 ; cnt < 10000; cnt++  )
    {
        if ( L > R ) return UNSIGNED_MINUS1_S ;
        m = (L+R)>>1 ;
        Am = ParTable[m].ind ; ;
        if ( Am < TargetIndex )
        {
            L = m + 1 ;
            continue ;
        }
        if ( Am > TargetIndex )
        {
            if ( R == 0 )
            {
                return UNSIGNED_MINUS1_S ; // Search too long
            }
            R = m - 1 ;
            continue ;
        }
        return m ;
    }
    return UNSIGNED_MINUS1_S ; // Search too long
}





void ResetManipulatorMotors()
{
    //struct CManControlWord* pCW ;
    //zero = 0 ;
    //pCW = (struct CManControlWord*) &zero ;
    //pCW->Automatic =0;
    //pCW->MotorsOn = 0;
    //pCW->Standby = 0 ;
    //pCW->Package = 0 ;
    Dynamixel24.NextRebootTarget = 0;
    Dynamixel12.NextRebootTarget = 0;
    ManCmd.SimulationMode = 0;
    SetManipulatorControlWord( 0 ) ;
    Dynamixel24.State = DYN_STATE_REBOOT ;
    Dynamixel12.State = DYN_STATE_REBOOT ;
}


/**
 * \brief Object 0x2209: Set manual manipulator command
 *
 * \param pSdo : The SDO input
 * \param nData: The amount of received data bytes
 */
long unsigned OnManualManCmd( struct CSdo * pSdo ,short unsigned nData)
{
    float f;
    long l ;

    if ( nData != 4 )
        return length_of_service_parameter_does_not_match;
    f =* ((float *) pSdo->SlaveBuf);
    l =* ((long *) pSdo->SlaveBuf);

    switch (pSdo->SubIndex)
    {
    case 5: //Suction Pumps
        if ( l < 0 || l > 1)
            return General_parameter_incompatibility_reason ;
        ManualManCmd.SuctionOn = (unsigned short) l ;
        break;

    case 10://Speed for standby in get package
        if ( IsNotInRange( &f , 1.0f , 0.01f) < 0)
        {
            return General_parameter_incompatibility_reason ;
        }
        ManCmd.LineSpeedArr[0] = f ;
        break ;

    case 11://Speed for re-push in get package failure
        if ( IsNotInRange( &f , 1.0f , 0.01f) < 0)
        {
            return General_parameter_incompatibility_reason ;
        }
        ManCmd.LineSpeedArr[1] = f ;
        break ;

    case 12://Speed for return with package
        if ( IsNotInRange( &f , 1.0f , 0.01f) < 0)
        {
            return General_parameter_incompatibility_reason ;
        }
        ManCmd.LineSpeedArr[2] = f ;
        break ;

    case 13://Speed for pushing a package to place
        if ( IsNotInRange( &f , 1.0f , 0.01f) < 0)
        {
            return General_parameter_incompatibility_reason ;
        }
        ManCmd.LineSpeedArr[3] = f ;
        break ;

    case 14://Speed for return after pushing a package to place
        if ( IsNotInRange( &f , 1.0f , 0.01f) < 0)
        {
            return General_parameter_incompatibility_reason ;
        }
        ManCmd.LineSpeedArr[4] = f ;
        break ;

    case 120:
        ManualManCmd.LineSpeed  = f;
        break ;

    default:
        return Sub_index_does_not_exist;
    }
    //manual command will be valid for 200msec.
    //That means than even in the event of communication failure, the motion will stop after 0.2sec.
//  SetSysTimerTarget(TIMER_MANUAL_MAN_CMD_TIMEOUT, 200000, &SysTimerStr);
//  SetSysTimerTarget(TIMER_MANUAL_MAN_CMD_TIMEOUT, 2000000, &SysTimerStr);
    return 0;
}



/**
 * \brief Set a floating point parameter 0bject 0x2208
 *
 */
long unsigned  SetFloatParPD(   struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si ;
    float f ;
    short unsigned stat ;
    struct CFloatParRecord *pPar ;

    si = pSdo->SubIndex ;
    f =* ((float *) pSdo->SlaveBuf);
    if ( isNan( &f) )
    {
        return General_parameter_incompatibility_reason ;
    }

    if ( nData != 4 )
        return length_of_service_parameter_does_not_match;

    stat = GetParIndex( si ) ;
    if (stat & 0x8000)
    {
        return Sub_index_does_not_exist;
    } 
    pPar = ( struct CFloatParRecord * ) &ParTable[stat] ;
    if ( f >= pPar->lower &&  f <= pPar->upper )
    {
        * pPar->ptr = f;
    }
    else
    {
        return General_parameter_incompatibility_reason ;
    }
    return 0 ;
}

/**
 * \brief Get a floating point parameter . 0x2208
 *
 */
long unsigned  GetFloatParPD(   struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si  ;
    short unsigned stat ;
    float f ;
    struct CFloatParRecord *pPar ;

    si = pSdo->SubIndex ;
    stat = GetParIndex( si ) ;
    if (stat & 0x8000)
    {
        return Sub_index_does_not_exist;
    } 
    pPar = ( struct CFloatParRecord * ) &ParTable[stat] ;
    f = *  pPar->ptr ;

    *nData = 4 ;
    * ((float *) &pSdo->SlaveBuf[0] ) = f ;

    return 0 ;
}





/**
 * \brief Object 2204 Get measured quantities
 */
long unsigned  PdGetSensor( struct CSdo * pSdo ,short unsigned *nData)
{
    return Sub_index_does_not_exist ;
}



/**
 * \brief Object 0x2103, set manipulator commands
 */


long unsigned  SetDxlManual(    struct CSdo * pSdo ,short unsigned nData)
{
    long  unsigned ul , stdby , side , stat1 ;
    long  sl , modehome , valAtMotor  ;
    short unsigned si , us , cnt , axis , bNanFloat ;
    float y  , fval , pos , xdist ;

    short  LaserValid;
    float Xref , Ypack , Dlaser , f  ;
    short unsigned mon , ActivateMask;
    union UBHAxisCW bhcw ;

    volatile struct CCanAxis * pAxis ;

    si = pSdo->SubIndex ;
    us =* ((short unsigned *) pSdo->SlaveBuf);
    ul =* ((long unsigned *) pSdo->SlaveBuf);
    sl =* ((long *) pSdo->SlaveBuf);
    fval =* ((float *) pSdo->SlaveBuf);
    bNanFloat = (( ul & 0x7f800000 ) == 0x7f800000) ? 1 : 0 ;


    if ( nData != 4)
    {
        return length_of_service_parameter_does_not_match ;
    }

    switch ( si )
    {
    case 1:
        stdby = ManCmd.ControlWord.Standby ;
        side  = ManCmd.ControlWord.Side ;
        ManCmd.ControlWord.Automatic = (us & 0x1 ) ? 1 : 0 ;
        if ( ManCmd.ControlWord.Automatic )
        { // Automatic
            ManCmd.ControlWord.MotorsOn  = ( us & 0x2 ) ? 1 : 0 ;
            ManCmd.ControlWord.Standby   = ( us & 0x4 ) ? 1 : 0 ;
            ManCmd.ControlWord.Package   = ( us & 0x8 ) ? 1 : 0 ;
            ManCmd.ControlWord.PackageGet   = ( us & 0x10 ) ? 1 : 0 ;
            ManCmd.ControlWord.Side = (( us >> 5 ) & 3 ) ;
            if ( ManCmd.ControlWord.Standby && ( ( stdby == 0 ) || ( side  != ManCmd.ControlWord.Side ) ))
            {
                ManCmd.StdbyRequest = 0 ;
            }
        }
        break ;


    case 2:
        f =* ((float *) pSdo->SlaveBuf);
        DynStat24[0].PositionOffset =  f  / DynStat24[0].PositionScale ;
        break ;

    case 3:
        f =* ((float *) pSdo->SlaveBuf);
        DynStat24[1].PositionOffset =  f  / DynStat24[1].PositionScale ;
        break ;

    case 4:
        f =* ((float *) pSdo->SlaveBuf);
        DynStat24[2].PositionOffset =  f  / DynStat24[2].PositionScale ;
        break ;


    case 6:
        ActivateMask = 0 ;
        if ( us == 0x1234)
        { // Set the motor on ,all the manipulator axes
            ActivateMask = 0x3ff ;
        }
        else
        {
            ActivateMask = us ;
        }

        S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual = 1 ;
        ManCmd.Cartesian  = 0 ;
        SetProfilingMode(EProfile_ToolTip) ;
        ManualManCmd.LineSpeed = 0 ;
        ManualManCmd.SuctionOn = 0 ;
        SysState.Package.SuckRequest.ul = 0 ;
        ApplySuck();
        SetSysTimerTargetSec ( TIMER_DYNAMIXEL_ON_TMR12 , DYNAMIXEL_MOTOR_ON_TOUT ,&SysTimerStr );
        SetSysTimerTargetSec ( TIMER_DYNAMIXEL_ON_TMR24 , DYNAMIXEL_MOTOR_ON_TOUT ,&SysTimerStr );

        for ( cnt = 0 ; cnt < NUM_24V_AXES ; cnt++ )
        {
            pos = ManCmd.Ctl24[cnt].Pos ;
            ResetProfiler(& ManCmd.Ctl24[cnt].Profiler, pos , 0  , 1  ) ;
            IndividualAxCtl24[cnt].PosTarget = pos ;
            IndividualAxCtl24[cnt].MotorOnRequest = (ActivateMask & (1<<cnt) ) ? 1 : 0  ;
        }
        for ( cnt = 0 ; cnt < NUM_12V_AXES_TOTAL ; cnt++ )
        {
            pos = ManCmd.Ctl12[cnt].Pos ;
            IndividualAxCtl12[cnt].PosTarget = pos ;
            IndividualAxCtl12[cnt].MotorOnRequest =  (ActivateMask & (1<<(cnt+DEF_NUM_MAX_24V_AXES)) ) ? 1 : 0  ;
        }
        break ;

    case 7:
        ActivateMask = 0 ;
        if ( us == 0x1234)
        { // Set the motor on ,all the manipulator axes
            ActivateMask = 0x3ff ;
        }
        else
        {
            ActivateMask = us ;
        }
        // Set the motors off, all the manipulator axes
        S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual = 1 ;
        ManCmd.Cartesian  = 0 ;
        SetProfilingMode(EProfile_ToolTip) ;
        ManualManCmd.LineSpeed = 0 ;
        ManualManCmd.SuctionOn = 0 ;
        SysState.Package.SuckRequest.ul = 0 ;
        ApplySuck();
        SetSysTimerTargetSec ( TIMER_DYNAMIXEL_ON_TMR12 , DYNAMIXEL_MOTOR_ON_TOUT ,&SysTimerStr );
        SetSysTimerTargetSec ( TIMER_DYNAMIXEL_ON_TMR24 , DYNAMIXEL_MOTOR_ON_TOUT ,&SysTimerStr );

        for ( cnt = 0 ; cnt < NUM_24V_AXES ; cnt++ )
        {
            if (ActivateMask & (1<<cnt) )
            {
                pos = ManCmd.Ctl24[cnt].Pos ;
                ResetProfiler(& ManCmd.Ctl24[cnt].Profiler, pos , 0  , 1  ) ;
                IndividualAxCtl24[cnt].PosTarget = pos ;
                IndividualAxCtl24[cnt].MotorOnRequest = 0 ;
            }
        }
        for ( cnt = 0 ; cnt < NUM_12V_AXES_TOTAL ; cnt++ )
        {
            if (ActivateMask & (1<<(cnt+DEF_NUM_MAX_24V_AXES)) )
            {
                pos = ManCmd.Ctl12[cnt].Pos ;
                IndividualAxCtl12[cnt].PosTarget = pos ;
                IndividualAxCtl12[cnt].MotorOnRequest = 0 ;
            }
        }

        for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
        {
            pAxis = & SysState.CanAxis[cnt] ;
            pAxis->BH.BhCw.bit.MotorOnCmd = 0 ;
        }

        break ;

    case 8: // Exit individual mode, kill all the motors
        if ( (us == 0x1234) && ( S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual ))
        {
            S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual = 0 ;
            for ( cnt = 0 ; cnt < NUM_24V_AXES ; cnt++ )
            {
                IndividualAxCtl24[cnt].MotorOnRequest = 0 ;
            }
            for ( cnt = 0 ; cnt < NUM_12V_AXES_TOTAL ; cnt++ )
            {
                IndividualAxCtl12[cnt].MotorOnRequest = 0 ;
            }
            ManualManCmd.SuctionOn = 0 ;
            SysState.Package.SuckRequest.ul = 0 ;
            ApplySuck();
            SetSysTimerTargetSec ( TIMER_DYNAMIXEL_ON_TMR12 , DYNAMIXEL_MOTOR_ON_TOUT ,&SysTimerStr );
            SetSysTimerTargetSec ( TIMER_DYNAMIXEL_ON_TMR24 , DYNAMIXEL_MOTOR_ON_TOUT ,&SysTimerStr );
        }
        break ;
    case 9:
        ManCmd.Cartesian = us;
        break ;

    case 10:
        if ( us && S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual )
        {
            // Axis 0 of 24V : Set current place as target, and motor on
            SetManipulatorIndividualRef24 ( 0 , IndividualAxCtl24[0].PosTarget , 1  ) ;
        }
        else
        {
            // Axis 0: Stop motor
            SetManipulatorIndividualMon24( 0 , 0   );
        }
        break ;



    case 20:
        if ( us && S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual )
            SetManipulatorIndividualRef24 ( 1 , IndividualAxCtl24[1].PosTarget ,1 ) ;
        else
            SetManipulatorIndividualMon24( 1 , 0   );
        break ;
    case 30:
        if ( us && S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual )
            SetManipulatorIndividualRef24 ( 2 , IndividualAxCtl24[2].PosTarget ,1 ) ;
        else
            SetManipulatorIndividualMon24( 2 , 0   );
        break ;
    case 40:
        if ( us && S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual )
            SetManipulatorIndividualRef12 ( 0 , IndividualAxCtl12[0].PosTarget ) ;
        else
            SetManipulatorIndividualMon12( 0 , 0   );
        break ;
    case 50:
        if ( us && S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual )
            SetManipulatorIndividualRef12 ( 1 , IndividualAxCtl12[1].PosTarget  ) ;
        else
            SetManipulatorIndividualMon12( 1 , 0   );
        break ;

    case 11:
        if (S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual )
        {
            SetManipulatorIndividualRef24( 0 , sl * 0.001F , 0 );
        }
        break ;
    case 21:
        if (S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual )
        {
            SetManipulatorIndividualRef24( 1 , sl * 0.001F  , 0 );
        }
        break ;
    case 31:
        if (S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual )
        {
            SetManipulatorIndividualRef24( 2 , sl * 0.001F , 0  );
        }
        break ;
    case 41:
        if (S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual )
        {
            SetManipulatorIndividualRef12( 0 , sl * 0.001F   );
        }
        break ;
    case 51:
        if (S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual )
        {
            SetManipulatorIndividualRef12( 1 , sl * 0.001F   );
        }
        break ;

    case 12:
        if (S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual )
        {
            SetManipulatorIndividualRef24( 0 , fval + ManCmd.Ctl24[0].Pos , 1 );
        }
        break ;

    case 42:
        if (S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual )
        {
            SetManipulatorIndividualRef12( 0 , fval + ManCmd.Ctl12[0].Pos  );
        }
        break ;
    case 52:
        if (S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual )
        {
            SetManipulatorIndividualRef12( 1 , fval + ManCmd.Ctl12[1].Pos  );
        }
        break ;

    case 16:
        if (S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual )
        {
            SetHomePosition24(  fval  , 0  ) ;
        }
        break ;

    case 26:
        if (S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual )
        {
            SetHomePosition24(  fval  , 1  ) ;
        }
        break ;

    case 36:
        if (S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual )
        {
            SetHomePosition24(  fval  , 2  ) ;
        }
        break ;

    case 46:
        if (S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual )
        {
            SetHomePosition12(  fval  , 0  ) ;
        }
        break ;

    case 56:
        if (S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual )
        {
            SetHomePosition12(  fval  , 1  ) ;
        }
        break ;

    case 98:
         break ;// Dont use

    case 99: // Dont use
        break ;

    case 100:// Set the laser range
        GetManipulatorProgram (  & LaserValid ,  &Xref , &Ypack , &Dlaser ,  &mon );
        ProgramManipulator (   Xref ,  Ypack ,  mon ) ;
        break ;
    case 101: // Set the laser valid flag
        GetManipulatorProgram (  & LaserValid ,  &Xref , &Ypack , &Dlaser ,  &mon );
        ProgramManipulator (    Xref ,  Ypack ,   mon ) ;
        break ;
    case 102: // Set X reference
        switch (ManipulatorType)
        {
        case None_Manipulator:
            return General_parameter_incompatibility_reason ;
        case SCARA_Manipulator:
            xdist = ManGeo.XDistWheelShoulderPivot ;
            break ;
        case Flex_Manipulator:
            xdist = ManGeo.FlexXDistWheelShoulderPivot ;
            break ;
        default:
            return General_parameter_incompatibility_reason ;
        }

        GetManipulatorProgram (  & LaserValid ,  &Xref , &Ypack , &Dlaser ,  &mon );
        ProgramManipulator( (float)(sl * 0.001F) + xdist , Ypack, mon);
        ManCmd.RdyNewAction = (ManCmd.RdyNewAction & 0x3) | 1 ; // New action is conditioned on the data being programmed
        break;
    case 103:  // Set the Y reference
        {
            y = fabsf(sl*0.001f ) + ManGeo.YDistWheelShoulderPivot;
            if( sl < 0 )
            {
                y = -y ;
            }
            GetManipulatorProgram(&LaserValid, &Xref, &Ypack, &Dlaser, &mon);
            ProgramManipulator( Xref, y, mon);
            ManCmd.RdyNewAction = (ManCmd.RdyNewAction & 0x3) | 2 ; // New action is conditioned on the data being programmed
        }
        break ;
    case 104: // Command motion on
        GetManipulatorProgram (  & LaserValid ,  &Xref , &Ypack , &Dlaser ,  &mon );
        ProgramManipulator (    Xref  ,  Ypack ,   (short unsigned) ul ) ;
        break ;

    case 105: // Preset the manipulator state (zero resets it)
        ManCmd.State = (short) sl  ;
        break ;

    case 107:
        switch ( us )
        {
        case 0:
            ManCmd.StdbyRequest = us;
            ManCmd.StdbyDirection = 1 ;
            break ;
        case 1:
            ManCmd.StdbyRequest = 1;
            ManCmd.StdbyDirection = 1 ;
            ManCmd.RdyNewAction = 4 ; // New action is conditioned on the data being programmed
            break ;
        case 2:
            ManCmd.StdbyRequest = 1;
            ManCmd.StdbyDirection = 2 ;
            ManCmd.RdyNewAction = 4   ; // New action is conditioned on the data being programmed
            break ;
        default:
            return General_parameter_incompatibility_reason ;
        }
        if ( ManipulatorType==Flex_Manipulator )
        {
            ManCmd.StdbyDirection = 0  ; // Flex manipulator - stand by is only at zero
        }
        break ;

    case 108:
        ManCmd.StdbyRequest = 4;
        ManCmd.StdbyDirection = (short unsigned) us  ;
        ManCmd.RdyNewAction = 4   ; // New action is conditioned on the data being programmed
        break ;

    case 120:
        Dynamixel24.NextRebootTarget = 0;
        Dynamixel24.State = DYN_STATE_REBOOT ;
        Dynamixel12.NextRebootTarget = 0;
        Dynamixel12.State = DYN_STATE_REBOOT ;
        break ;

    case 121:
        Dynamixel24.NextRebootTarget = 0;
        Dynamixel24.State = DYN_STATE_REBOOT ;
        Dynamixel12.NextRebootTarget = 0;
        Dynamixel12.State = DYN_STATE_REBOOT ;
        break ;

    case 130:
        // Set motor on :  for CAN axes
        if ( S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual == 0 )
        {  // Service only in the individual mode
            return General_parameter_incompatibility_reason ;
        }
        axis = us + 1 ;
        if ( axis < 1 || axis > LOGICAL_SPACER)
        {
            return General_parameter_incompatibility_reason ;
        }
        if ( SysState.CanAxis[axis].BH.BhCw.bit.MotorOnCmd )
        {
            return 0 ; // Nothing to do
        }

        SysState.CanAxis[axis].AutoStartCnt = 7  ;

        break ;

    case 131:
        // Set motor off :  for CAN axes
        if ( S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual == 0 )
        {  // Service only in the individual mode
            return General_parameter_incompatibility_reason ;
        }
        axis = us + 1 ;
        if ( axis < 1 || axis > LOGICAL_SPACER)
        {
            return General_parameter_incompatibility_reason ;
        }
        if ( SysState.CanAxis[axis].BH.BhCw.bit.MotorOnCmd == 0 )
        {
            return 0 ; // Nothing to do
        }

        bhcw.all = SysState.CanAxis[axis].BH.BhCw.all ;
        bhcw.bit.MotorOnCmd = 0  ;
        SysState.CanAxis[axis].BH.BhCw.all = bhcw.all ;

        break ;

    case 132:
        // Set PTP mode
        if ( S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual == 0 )
        {  // Service only in the individual mode
            return General_parameter_incompatibility_reason ;
        }
        axis = us + 1 ;
        if ( axis < 1 || axis > LOGICAL_SPACER)
        {
            return General_parameter_incompatibility_reason ;
        }
        if ( SysState.CanAxis[axis].BH.AxisCbit.bit.MotorOn == 0 )
        {
            return GetManufacturerSpecificCode(MOTOR_MUST_BE_ON) ; // Motor must be on
        }
        if ( SysState.CanAxis[axis].BH.AxisCbit.bit.LoopClosureMode < E_LC_Pos_Mode  )
        {
            return GetManufacturerSpecificCode(MUST_BE_POSITION_LOOP) ; // Position control must run
        }

        if ( SysState.CanAxis[axis].BH.AxisCbit.bit.ReferenceMode == E_PosModePTP  )
        {
            return 0 ; // Nothing to do
        }

        SysState.CanAxis[cnt].BH.IndividualPosCmd = SysState.CanAxis[cnt].BH.UserPos  ;
        bhcw.all = SysState.CanAxis[axis].BH.BhCw.all ;
        bhcw.bit.MotorOnCmd = 1 ;
        bhcw.bit.LoopClosure = SysState.CanAxis[axis].BH.LoopClosureMode ;
        bhcw.bit.ReferenceMode = E_PosModePTP ;
        SysState.CanAxis[axis].BH.BhCw.all = bhcw.all ;

        break ;

    case 133: // Set a PTP command for plate
        if ( bNanFloat)
        {
            return GetManufacturerSpecificCode(FLOAT_ARGUMENT_IS_IMPROPER) ;
        }
        SysState.CanAxis[LOGICAL_PLATE].BH.IndividualPosCmd  = f  ;
        break ;

    case 134: // Set a PTP command for tape arm
        if ( bNanFloat)
        {
            return GetManufacturerSpecificCode(FLOAT_ARGUMENT_IS_IMPROPER) ;
        }
        SysState.CanAxis[LOGICAL_TAPEARM].BH.IndividualPosCmd  = f  ;
        break ;

    case 135: // Set a PTP command for spacer
        if ( bNanFloat)
        {
            return GetManufacturerSpecificCode(FLOAT_ARGUMENT_IS_IMPROPER) ;
        }
        SysState.CanAxis[LOGICAL_SPACER].BH.IndividualPosCmd  = f  ;
        break ;

    // Indices 136 ... 139 reserved for can axes
    case 141:
        // Set home value TAPEARM
        if ( S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual == 0 )
        {  // Service only in the individual mode
            return General_parameter_incompatibility_reason ;
        }
        if ( bNanFloat)
        {
            return GetManufacturerSpecificCode(FLOAT_ARGUMENT_IS_IMPROPER) ;
        }
        if ( SysState.CanAxis[axis].BH.AxisCbit.bit.MotorOn )
        {
            return GetManufacturerSpecificCode(MOTOR_MUST_BE_OFF) ; // Motor must be on
        }


        modehome = MODE_OF_OPERATION_HOMING ;
        valAtMotor = (long) ( fval * 1.0e6f ) ;
        stat1 = SendSdo2Slave ( 0x607c , 0 , &valAtMotor  , 4 , LOGICAL_TAPEARM ); // Set the homing value
        if ( stat1 )
        {
            return stat1 ;
        }
        stat1 = SendSdo2Slave ( 0x6060 , 0 , &modehome , 1 , LOGICAL_TAPEARM ); //
        if ( stat1 )
        {
            return stat1 ;
        }
        break;

    case 142:
        // Set home value
        if ( S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual == 0 )
        {  // Service only in the individual mode
            return General_parameter_incompatibility_reason ;
        }
        if ( bNanFloat)
        {
            return GetManufacturerSpecificCode(FLOAT_ARGUMENT_IS_IMPROPER) ;
        }
        if ( SysState.CanAxis[axis].BH.AxisCbit.bit.MotorOn )
        {
            return GetManufacturerSpecificCode(MOTOR_MUST_BE_OFF) ; // Motor must be off
        }

        modehome = MODE_OF_OPERATION_HOMING ;
        valAtMotor = (long) ( fval * 1.0e6f ) ;
        stat1 = SendSdo2Slave ( 0x607c , 0 , &valAtMotor  , 4 , LOGICAL_SPACER ); // Set the homing value
        if ( stat1 )
        {
            return stat1 ;
        }
        stat1 = SendSdo2Slave ( 0x6060 , 0 , &modehome , 1 , LOGICAL_SPACER ); //
        if ( stat1 )
        {
            return stat1 ;
        }
        break;

    case 150: // Set automatic homing to an axis
        // Set motor off :  for CAN axes
        if ( S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual == 0 )
        {  // Service only in the individual mode
            return General_parameter_incompatibility_reason ;
        }
        axis = us + 1 ;
        if ( axis < 1 || axis > LOGICAL_SPACER)
        {
            return General_parameter_incompatibility_reason ;
        }
        if ( SysState.CanAxis[axis].BH.BhCw.bit.MotorOnCmd == 0 )
        {
            return GetManufacturerSpecificCode(MOTOR_MUST_BE_ON) ; // Motor must be on
        }

        bhcw.all = SysState.CanAxis[axis].BH.BhCw.all ;
        bhcw.bit.MotorOnCmd = 1  ;
        //bhcw.bit.HomingDirection = SysState.CanAxis[axis].BH.HomingDirection ? 1 : 0 ;
        //bhcw.bit.HomingMethod    = SysState.CanAxis[axis].BH.HomingMethod ? 1 : 0 ;
        //bhcw.bit.HomingSwInUse   = 0 ;
        bhcw.bit.ReferenceMode =  E_RefModeSpeed2Home ;
        SysState.CanAxis[axis].BH.BhCw.all = bhcw.all ;
        break ;

    case 151: // Kill homing for an axis
        // Set motor off :  for CAN axes
        if ( S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual == 0 )
        {  // Service only in the individual mode
            return General_parameter_incompatibility_reason ;
        }
        axis = us + 1 ;
        if ( axis < 1 || axis > LOGICAL_SPACER)
        {
            return General_parameter_incompatibility_reason ;
        }

        SysState.CanAxis[axis].BH.KillHomeRequestCnt += 1 ;
        break ;



    case 190:
         if ( ul< DEF_NUM_MAX_24V_AXES )
         {
            DynStat24[ul].PosInit = 0  ;
         }
         break ;


     case 191:
         if ( ul< DEF_NUM_MAX_12V_AXES  )
         {
             DynStat12[ul].PosInit = 0 ;
         }
         break ;

    case 200:
        // Simulation mode
        if( (ul >> 4) == 0x1234567 )
            //store actual simulation mode
            ManCmd.SimulationMode = (unsigned short)(ul && 0x0F); // Irreversible, must power-cycle to return mechanical operation
        break;
    case 201:
        // Stop listen to LP commands
        SysState.DisablePdoProc = (ul ? 1 : 0 ) ;
        if ( SysState.DisablePdoProc )
        {
            ManCmd.ControlWord.Automatic = 0 ;
        }
        break ;
    case 202:
        // Inhibit work with locks
        //ManCmd.LockInhibit = (ul ? 1 : 0 ) ;
        break;
    case 203:
        ManCmd.ProfilerTest = (ul ? 1 : 0 ) ;
        break;
    default:
        return Sub_index_does_not_exist ;
    }
    return 0 ;
}


/**
 * \brief Object 2103, Get manipulator status
 */

long unsigned  GetDxlManual(    struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si , cnt ;
    long unsigned ulstat ;
    si = pSdo->SubIndex ;
    *nData = 4 ;
    switch ( si )
    {
    case 2:
        * ((long *) pSdo->SlaveBuf ) = (long) (  DynStat24[0].PositionOffset ) ;
        break ;

    case 3:
        * ((long *) pSdo->SlaveBuf ) = (long) (  DynStat24[1].PositionOffset ) ;
        break ;
    case 4:
        * ((long *) pSdo->SlaveBuf ) = (long) (  DynStat24[2].PositionOffset ) ;
        break ;

    case 5:
        ulstat = 0 ;
        switch ( ManipulatorType )
        {
        case SCARA_Manipulator:
            for ( cnt = 0 ; cnt < DEF_NUM_MAX_24V_AXES ; cnt++)
            {
                ulstat |= DynStat24[cnt].MotorOn ? (1L<<cnt) : 0 ;
                ulstat |= DynStat24[cnt].MotorOnRequest ? (1L<<(8+cnt)) : 0 ;
            }
            break ;
        case Flex_Manipulator:
            for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++)
            {
                ulstat |= SysState.CanAxis[cnt].BH.AxisCbit.bit.MotorOn ? (1L<<cnt) : 0 ;
                ulstat |= SysState.CanAxis[cnt].BH.AxisCbit.bit.MotorFault ? (1L<<(8+cnt)) : 0 ;
            }
            break ;
        }

        for ( cnt = 0 ; cnt < DEF_NUM_MAX_12V_AXES ; cnt++)
        {
            ulstat |= DynStat12[cnt].MotorOn ? (1L<<(16+cnt) ) : 0 ;
            ulstat |= DynStat12[cnt].MotorOnRequest ? (1L<<(24+cnt)) : 0 ;
        }
        * ((long *) pSdo->SlaveBuf ) = (long) ulstat ;
        break ;


    case 11:
        * ((long *) pSdo->SlaveBuf ) = (long) ( ManCmd.Ctl24[0].Profiler.PosTarget * 1000.0f) ;
        break ;
    case 12:
        * ((long *) pSdo->SlaveBuf ) = DynStat24[0].PositionCnt ;
        break ;
    case 13:
        * ((long *) pSdo->SlaveBuf ) = (long) ( DynStat24[0].PositionActual * 1000.0f) ;
        break ;
    case 14:
        * ((long *) pSdo->SlaveBuf ) = * ( (long*) &DynStat24[0].PositionActual) ;
        break ;
    case 15:
        * ((long *) pSdo->SlaveBuf ) = * ( (long*) &ManCmd.Ctl24[0].Profiler.PosTarget) ;
        break ;
    case 16:
        * ((long *) pSdo->SlaveBuf ) = * ( (long*) &IndividualAxCtl24[0].PosTarget) ;
        break ;

    case 17:
        * ((long *) pSdo->SlaveBuf ) = DynStat24[0].NominalEncoderOffset    ;
        break ;

    case 18:
        * ((long *) pSdo->SlaveBuf ) = * ( (long*) &DynStat24[0].PositionScale )  ;
        break ;

    case 21:
        * ((long *) pSdo->SlaveBuf ) = (long) ( ManCmd.Ctl24[1].Profiler.PosTarget * 1000.0f) ;
        break ;
    case 22:
        * ((long *) pSdo->SlaveBuf ) = DynStat24[1].PositionCnt ;
        break ;
    case 23:
        * ((long *) pSdo->SlaveBuf ) = (long) ( DynStat24[1].PositionActual * 1000.0f) ;
        break ;
    case 24:
        * ((long *) pSdo->SlaveBuf ) = * ( (long*) &DynStat24[1].PositionActual) ;
        break ;
    case 25:
        * ((long *) pSdo->SlaveBuf ) = * ( (long*) &ManCmd.Ctl24[1].Profiler.PosTarget) ;
        break ;
    case 26:
        * ((long *) pSdo->SlaveBuf ) = * ( (long*) &IndividualAxCtl24[1].PosTarget) ;
        break ;
    case 27:
        * ((long *) pSdo->SlaveBuf ) = DynStat24[1].NominalEncoderOffset    ;
        break ;
    case 28:
        * ((long *) pSdo->SlaveBuf ) = * ( (long*) &DynStat24[1].PositionScale )  ;
        break ;

    case 31:
        * ((long *) pSdo->SlaveBuf ) = (long) ( ManCmd.Ctl24[2].Profiler.PosTarget * 1000.0f) ;
        break ;
    case 32:
        * ((long *) pSdo->SlaveBuf ) = DynStat24[2].PositionCnt ;
        break ;
    case 33:
        * ((long *) pSdo->SlaveBuf ) = (long) ( DynStat24[2].PositionActual * 1000.0f) ;
        break ;
    case 34:
        * ((long *) pSdo->SlaveBuf ) = * ( (long*) &DynStat24[2].PositionActual) ;
        break ;
    case 35:
        * ((long *) pSdo->SlaveBuf ) = * ( (long*) &ManCmd.Ctl24[2].Profiler.PosTarget) ;
        break ;
    case 36:
        * ((long *) pSdo->SlaveBuf ) = * ( (long*) &IndividualAxCtl24[2].PosTarget) ;
        break ;
    case 37:
        * ((long *) pSdo->SlaveBuf ) = DynStat24[2].NominalEncoderOffset    ;
        break ;
    case 38:
        * ((long *) pSdo->SlaveBuf ) = * ( (long*) &DynStat24[2].PositionScale )  ;
        break ;

    case 41: // Left stop
        * ((long *) pSdo->SlaveBuf ) = (long) ( ManCmd.Ctl12[0].L12.PosTarget * 1000.0f) ;
        break ;
    case 42:
        * ((long *) pSdo->SlaveBuf ) = DynStat12[0].PositionCnt ;
        break ;
    case 43:
        * ((long *) pSdo->SlaveBuf ) = (long) ( DynStat12[0].PositionActual * 1000.0f) ;
        break ;
    case 47:
        * ((long *) pSdo->SlaveBuf ) = DynStat12[0].NominalEncoderOffset    ;
        break ;
    case 48:
        * ((long *) pSdo->SlaveBuf ) = * ( (long*) &DynStat12[0].PositionScale )  ;
        break ;

    case 51: // Right stop
        * ((long *) pSdo->SlaveBuf ) = (long) ( ManCmd.Ctl12[1].L12.PosTarget * 1000.0f) ;
        break ;
    case 52:
        * ((long *) pSdo->SlaveBuf ) = DynStat12[1].PositionCnt ;
        break ;
    case 53:
        * ((long *) pSdo->SlaveBuf ) = (long) ( DynStat12[1].PositionActual * 1000.0f) ;
        break ;
    case 57:
        * ((long *) pSdo->SlaveBuf ) = DynStat12[0].NominalEncoderOffset    ;
        break ;
    case 58:
        * ((long *) pSdo->SlaveBuf ) = * ( (long*) &DynStat12[1].PositionScale )  ;
        break ;

    case 98:
        * ((long *) pSdo->SlaveBuf ) = 0 ; // Don use
        break ;

    default:
        return Sub_index_does_not_exist ;
    }
    return 0 ;

}


const float GetCanNetDataPtrNothing = 0 ;
float* const GetCanNetDataPtr[] =
{
 (float *)&GetCanNetDataPtrNothing  , //0
 (float *)&SysState.CanAxis[LOGICAL_TAPEARM].BH.UserPos  , // 1
 (float *)&SysState.CanAxis[LOGICAL_PLATE].BH.UserPos  , // 2
 (float *) &SysState.CanAxis[LOGICAL_SPACER].BH.UserPos  , // 3
  (float *)&SysState.CanAxis[LOGICAL_TAPEARM].BH.FaultCode  , // 5
  (float *)&SysState.CanAxis[LOGICAL_PLATE].BH.FaultCode  , // 6
  (float *)&SysState.CanAxis[LOGICAL_SPACER].BH.FaultCode  , // 7
  (float *)&GetCanNetDataPtrNothing
};
const short unsigned nGetCanNetDataPtr = sizeof( GetCanNetDataPtr ) / sizeof(float*) - 1 ;

/**
 * \brief Object 2104, Get manipulator status - CAN axes
 */
long unsigned  GetCanNetData(    struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si  ;
    si = pSdo->SubIndex ;
    *nData = 4 ;
    if ( si < 1 || si >= nGetCanNetDataPtr)
    {
        return Sub_index_does_not_exist ;
    }
    * ((float *) pSdo->SlaveBuf ) = * GetCanNetDataPtr[si] ;
    return 0 ;
}


long unsigned  GetGenTest(  struct CSdo * pSdo ,short unsigned *nData)
{
#ifndef _LPSIM
    short unsigned si     ;
    long unsigned BitStat;
    //extern long unsigned TestSciBC();
    si = pSdo->SubIndex ;
    *nData = 4;

    if ( si >= 64 && si < 128 )
    {
        BitStat = 0 ; // TestSciA(si);
        * ((long unsigned *) pSdo->SlaveBuf ) = BitStat  ;
        *nData = 4;
        return 0 ;
    }
    switch ( si)
    {
    case 1:
        return Sub_index_does_not_exist ;
        /*
        BitStat = TestSciBC();
        * ((long unsigned *) pSdo->SlaveBuf ) = BitStat  ;
        *nData = 4;
        break ;
         */
    case 2:
        * ((float  *) pSdo->SlaveBuf ) = UnreachableLog.x  ;
        break ;

    case 3:
        * ((float  *) pSdo->SlaveBuf ) = UnreachableLog.y  ;
        break ;

    case 4:
        * ((float  *) pSdo->SlaveBuf ) = UnreachableLog.theta  ;
        break ;

    case 5:
        * ((float  *) pSdo->SlaveBuf ) = UnreachableLog.Dtarget  ;
        break ;

    case 6:
        * ((long unsigned *) pSdo->SlaveBuf ) = (long) UnreachableLog.side  ;
        break ;

    case 7:
        * ((long unsigned *) pSdo->SlaveBuf ) = (long) UnreachableLog.code  ;
        break ;

    case 8:
        * ((float *) pSdo->SlaveBuf ) = (long)  UnreachableLog.Ytarget  ;
        break ;

    default:
        return Sub_index_does_not_exist ;
    }
#endif
    return 0 ;
}


long unsigned  SetGenTest(  struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si , us  ;
    si = pSdo->SubIndex ;

    (void) nData ;
    us =* ((short unsigned *) pSdo->SlaveBuf);

    switch ( si )
    {
    case 1: // Set value for DISC2
        if ( us )
        {
            GpioDataRegs.GPBSET.bit.GPIO58 = 1;
        }
        else
        {
            GpioDataRegs.GPBCLEAR.bit.GPIO58 = 1;
        }
        break ;
    default:
        return Sub_index_does_not_exist ;
    }
    return 0 ;
}


struct CDynTxCom {
    short unsigned NumTarget ;
    short unsigned NextID[4] ;
    short unsigned NextOffset ;
    short unsigned NextLenBytes ;
    long unsigned  PayLoad[4] ;
};


struct CDynTxCom D24TxCom;
struct CDynTxCom D12TxCom;


long unsigned  SetDynamixelP24( struct CSdo * pSdo ,short unsigned nData)
{
    extern long unsigned  SetDynamixelAny(  struct CSdo * pSdo ,short unsigned nData,
            struct CDynamixelProt2 *pProt, struct CDynTxCom *pTxCom );
    return SetDynamixelAny( pSdo , nData, & Dynamixel24 , &D24TxCom );
}

long unsigned  SetDynamixelP12( struct CSdo * pSdo ,short unsigned nData)
{
    extern long unsigned  SetDynamixelAny(  struct CSdo * pSdo ,short unsigned nData,
            struct CDynamixelProt2 *pProt, struct CDynTxCom *pTxCom );
    return SetDynamixelAny( pSdo , nData, & Dynamixel12 , &D12TxCom );
}

/*
 * \brief Direct setting of data to dynamixel
 */
long unsigned  SetDynamixelAny( struct CSdo * pSdo ,short unsigned nData,
        struct CDynamixelProt2 *pProt, struct CDynTxCom *pTxCom )
{
    long  unsigned ul ;
    short unsigned si , us ;
    short unsigned cnt  , nextId;
    struct CDynamixelMsg Msg ;
    si = pSdo->SubIndex ;
    us =* ((short unsigned *) pSdo->SlaveBuf);
    ul =* ((long unsigned *) pSdo->SlaveBuf);

    switch ( si)
    {
    case 1: // Set the mode of the DX network
        if ( nData != 2 ) return length_of_service_parameter_does_not_match ;
        pProt->State = us ; //DYN24_MANUAL_EXT
        break ;
    case 2: // Get the offset
        if ( nData != 2 ) return length_of_service_parameter_does_not_match ;
        pTxCom->NextOffset = us ;
        break ;
    case 3: // Get the number of bytes
        if ( nData != 2 ) return length_of_service_parameter_does_not_match ;
        pTxCom->NextLenBytes = us ;
        break ;
    case 20: // Get the payload (as long anyway)
        if ( nData != 4 ) return length_of_service_parameter_does_not_match ;
        pTxCom->PayLoad[0] = ul ;
        break ;
    case 21: // Get the payload (as long anyway)
        if ( nData != 4 ) return length_of_service_parameter_does_not_match ;
        pTxCom->PayLoad[1] = ul ;
        break ;
    case 22: // Get the payload (as long anyway)
        if ( nData != 4 ) return length_of_service_parameter_does_not_match ;
        pTxCom->PayLoad[2] = ul ;
        break ;
    case 23: // Get the payload (as long anyway)
        if ( nData != 4 ) return length_of_service_parameter_does_not_match ;
        pTxCom->PayLoad[3] = ul ;
        break ;

    case 100: // Transmit to ID
        if ( pProt->State != DYN_MANUAL_EXT )
        {
            return (Manufacturer_error_detail + 0x1000) ;
        }
        if ( WaitTimerElapse (TIMER_RS485_24V_TWAIT_RT , 20000, &SysTimerStr) < 0 )
        {
            return (Manufacturer_error_detail + 0x1001) ;
        }
        if ( nData != 4 ) return length_of_service_parameter_does_not_match ;

        pTxCom->NumTarget = 0 ;
        for ( cnt = 0 ; cnt < 4 ; cnt++ )
        {
            nextId = (unsigned short ) ( ul & 0xff ) ;
            if ( nextId )
            {
                pTxCom->NextID[cnt] = nextId ;
                pTxCom->NumTarget += 1 ;
            }
            ul = ul >> 8 ;
        }

        if (  pTxCom->NumTarget == 0 )
        {
            return (Manufacturer_error_detail + 0x1005) ;
        }


        ConstructWriteSyncMsgSingleItem ( &Msg , pTxCom->NextOffset , pTxCom->NextLenBytes ,
                pTxCom->NumTarget , pTxCom->NextID ,  (long *) &pTxCom->PayLoad[0] , pProt->Net ) ;
        DynamixelTx ( pProt , & Msg ) ;
        if ( pTxCom->NextOffset <= 569 )
        {
            SetSysTimerTarget ( TIMER_RS485_24V_TWAIT_RT , DX_SET2FLASH_DELAY , &SysTimerStr );
        }
        else
        {
            SetSysTimerTarget ( TIMER_RS485_24V_TWAIT_RT , DX_SET2RAM_DELAY  , &SysTimerStr);
        }
        break ;

    case 101: // Send RX request ID
        if ( pProt->State != DYN_MANUAL_EXT )
        {
            return (Manufacturer_error_detail + 0x1000) ;
        }
        if ( WaitTimerElapse (TIMER_RS485_24V_TWAIT_RT , 20000,&SysTimerStr) < 0 )
        {
            return (Manufacturer_error_detail + 0x1001) ;
        }

        if ( nData != 4 ) return length_of_service_parameter_does_not_match ;

        pTxCom->NumTarget = 0 ;
        for ( cnt = 0 ; cnt < 4 ; cnt++ )
        {
            nextId = (unsigned short ) ( ul & 0xff ) ;
            if ( nextId )
            {
                pTxCom->NextID[cnt] = nextId ;
                pTxCom->NumTarget += 1 ;
            }
            ul = ul >> 8 ;
        }

        if (  pTxCom->NumTarget == 0 )
        {
            return (Manufacturer_error_detail + 0x1005) ;
        }

        ConstructReadSyncMsg ( & Msg , pTxCom->NextOffset , pTxCom->NextLenBytes , pTxCom->NumTarget ,
                pTxCom->NextID , pProt->Net )  ;
        DynamixelTx ( pProt , & Msg ) ;
        break;


    case 102:
        Dynamixel24.NextRebootTarget = 0;
        Dynamixel24.State = DYN_STATE_REBOOT ;
        Dynamixel12.NextRebootTarget = 0;
        Dynamixel12.State = DYN_STATE_REBOOT ;
        break ;

    default:
        return Sub_index_does_not_exist ;
    }
    return 0 ;
}

long unsigned  GetDynamixelP12( struct CSdo * pSdo ,short unsigned *nData)
{
    extern long unsigned  GetDynamixelAny( struct CSdo * pSdo ,short unsigned *nData,
            struct CDynamixelProt2 *pProt);
    return GetDynamixelAny( pSdo ,nData, &Dynamixel12) ;
}


long unsigned  GetDynamixelP24( struct CSdo * pSdo ,short unsigned *nData)
{
    extern long unsigned  GetDynamixelAny( struct CSdo * pSdo ,short unsigned *nData,
            struct CDynamixelProt2 *pProt);
    return GetDynamixelAny( pSdo ,nData, &Dynamixel24) ;
}

long unsigned  GetDynamixelAny( struct CSdo * pSdo ,short unsigned *nData,
        struct CDynamixelProt2 *pProt)

{
    long unsigned RetVal ;
    short unsigned si  ;
    si = pSdo->SubIndex ;
    RetVal = GetDxlPayload( si  , nData, pProt ,  (unsigned long *) pSdo->SlaveBuf);
    if ( RetVal)
    {
        RetVal += Manufacturer_error_detail ;
    }
    return RetVal ;
}




/**
 * \brief Get size of object dictionary
  * \detail This function is here because only in the scope of this file the size of
 * the object dictionary is known
 */
short unsigned GetOdSizePD( void )
{
    return sizeof(ObjDictionaryItem)/sizeof(struct CObjDictionaryItem) ;
}

#ifdef _LPSIM
#define GPIO_OUTPUT 1
#define GPIO_PUSHPULL 0

#define GPIO_INPUT 0
//#define GPIO_ASYNC 0

#endif


/**
 * \brief Object 0x2003: Set any Infineon
 * Indices:
 * 0x3 : Brake 1 - Brake wheels
 * 0x7 : Brake 2 - Brake rudders
 * 0x17: Brake 3 - Brake neck
 * 0x8 : Shunt
 * 0x9 : Brake 4 - Air SW 3
 * 0x19 : Brake 5 - Air SW 1
 * 0xa : Brake 6 - Air SW 2
 * 0x1a : Chakalaka
 * 0xb : Brake 7 - Brake stop
 * 0x1b : Brake 8 - Stop relay 1
 * 0x100 : Brake 9: -FAN (GPIO64)
 *
 */
long unsigned  SetInfineon( struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned us , si  ;
    extern void SetCpuPin ( short unsigned ID , short unsigned function , short unsigned dir , short unsigned flags );

    if ( nData != 2 )
    {
        return length_of_service_parameter_does_not_match ;
    }

    us =* ((short unsigned *) pSdo->SlaveBuf);

    si = pSdo->SubIndex ;

    switch ( si )
    {

    case 21:
        OverRideSwitches = ( us == 0x2783) ? 1 : 0 ;
        break ;
    default:
        return Sub_index_does_not_exist ;
    }


    return 0 ;
}


/**
 * \brief Object 0x2004: Set power supply control
 * Indices:
*/

long unsigned  SetPsControl(    struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned us , si   ;
    //volatile struct EPWM_REGS * pPwm ;
    if ( nData != 2 )
    {
        return length_of_service_parameter_does_not_match ;
    }

    us =* ((short unsigned *) pSdo->SlaveBuf);

    si = pSdo->SubIndex ;

    switch ( si )
    {
    // The indices 100 and On are just for developer
    case 106:
         break ;
    case 107:
        break ;
    case 108:
        Dynamixel12.NetByPass = us ;
        break ;
    case 109:
        Dynamixel24.NetByPass = us ;
        break ;
    case 110:
        PBit.State = 0 ;
        break ;
    default:
        return General_parameter_incompatibility_reason ;
    }
    return 0 ;
}



short CheckAlign ( short unsigned * ptr , short unsigned pw )
{
    short unsigned cnt ;
    long unsigned ul ;
    ul = ( long unsigned ) ptr ;
    for ( cnt = 0 ; cnt < pw ; cnt++ )
    {
        if ( ul & ( 1L << cnt ) )
        {
            return -1 ;
        }
    }
    return 0 ;
}



/**
 * \brief Validate and read calibration struct from the flash
 * \param Dest: Destination of calibration (cleared if Src is not valid)
 * \param Src : Address in flash of persumably valid calibration
 * \param len : Size of calibration record, in words
 *
 * \return 0: Ok, -1: Calibration record not valid
 *
 */
#ifdef SP_SER_FLASH
struct CCalib FlashReadStr ;
long ReadCalibFromFlash ( long unsigned *Dest , long unsigned Src_in   )
{
    long unsigned cs ;
    short unsigned cnt ;
    long unsigned *uPtr ;
    short stat ;
    short unsigned len = sizeof( struct CCalib ) ;
    if ( len & 1 )
    {
        return ERR_ODD_LENGTH_IN_FLASH_ACTION ; // Avoid crash if CCalib is ill defined
    }

    uPtr = (long unsigned *) &FlashReadStr  ;

    ClearMemRpt( (short unsigned * ) Dest , len ) ;

    if ( CheckAlign( (short unsigned *) Dest , 1 ) || (Src_in&1) )
    { // Check both are on long boundary
        return ERR_UNALIGNED_FLASH_ENTITIES ;
    }

    stat = SFInstructionRead(Src_in, len , (short unsigned *) uPtr );
    if ( stat )
    {
        if ( stat < -2 )
        {
            return stat  ;
        }

        return ERR_FAILED_SERFLASH_READ ;
    }

    len = ( len >> 1 ) ; // Because of shorts

    if ( uPtr[len-2] != 0x12345678)
    {
        return ERR_BAD_FLASH_PASSWORD ;
    }
    cs = 0 ;
    for ( cnt = 0 ; cnt < len ; cnt++)
    {
        cs -= *uPtr++  ;
    }
    if ( cs )
    {
        return ERR_BAD_FLASH_CHECKSUM ;
    }

    uPtr = (long unsigned *) &FlashReadStr  ;
    for ( cnt = 0 ; cnt < len ; cnt++)
    {
        *Dest++ = *uPtr++  ;
    }
    return 0 ;
}
#else

short ReadCalibFromFlash ( long unsigned *Dest , long unsigned Src   )
{
    long unsigned cs ;
    short unsigned cnt ;
    long unsigned *uPtr ;
    short unsigned len = sizeof( struct CCalib ) ;
    uPtr = Src ;

    ClearMemRpt( (short unsigned * ) Dest , len ) ;

    if ( CheckAlign( (short unsigned *) Dest , 1 ) || CheckAlign( (short unsigned *) Src , 1 ) )
    { // Check both are on long boundary
        return -1 ;
    }

    len = ( len >> 1 ) ; // Because of shorts

    if ( uPtr[len-2] != 0x12345678)
    {
        return -1 ;
    }
    cs = 0 ;
    for ( cnt = 0 ; cnt < len ; cnt++)
    {
        cs -= *uPtr++  ;
    }
    if ( cs )
    {
        return -1 ;
    }
    for ( cnt = 0 ; cnt < len ; cnt++)
    {
        *Dest++ = *Src++  ;
    }
    return 0 ;
}
#endif


/**
 * \brief calibration actions
 * \param rd = 0: Clear calibration
 *             1: Read calibration from flash
 *             2: Get from background programmed calibration
 *
 */

long DealCalibrationManip (short unsigned rd)
{
    //long mask ;
   long  lstat;
   lstat = 0 ;
    switch ( rd)
    {
    case 0:
        ClearMemRpt( (short unsigned * ) &ManCalibTmp , sizeof(struct CCalib)  ) ;
        break ;
    case 1:
        lstat = ReadCalibFromFlash ( (long unsigned*) &ManCalibTmp , FlashCalibPD   ) ;
        if ( lstat )
        {
            return lstat ;
        }
        break ;
    case 2:
        ManCalibTmp = ManipCalibProg.Calib ;
        break ;
    }

    //mask = BlockInts( ) ;

    // Left
    ManCalibArr.RDoorCenter  = ManCalibTmp.RDoorCenter ;
    ManCalibArr.RDoorGainFac  = ManCalibTmp.RDoorGainFac ;
    ManCalibArr.LDoorCenter = ManCalibTmp.LDoorCenter ;
    ManCalibArr.LDoorGainFac = ManCalibTmp.LDoorGainFac ;
    ManCalibArr.ShoulderCenter  = ManCalibTmp.ShoulderCenter ;
    ManCalibArr.ElbowCenter = ManCalibTmp.ElbowCenter ;
    ManCalibArr.WristCenter = ManCalibTmp.WristCenter ;

    ManCalibArr.FlexRDoorCenter  = ManCalibTmp.FlexRDoorCenter ;
    ManCalibArr.FlexRDoorGainFac  = ManCalibTmp.FlexRDoorGainFac ;
    ManCalibArr.FlexLDoorCenter = ManCalibTmp.FlexLDoorCenter ;
    ManCalibArr.FlexLDoorGainFac = ManCalibTmp.FlexLDoorGainFac ;
    ManCalibArr.FlexDoorTopEndTravel = ManCalibTmp.FlexDoorTopEndTravel ;
    ManCalibArr.FlexDoorBotEndTravel = ManCalibTmp.FlexDoorBotEndTravel ;


    ApplyManCalibration() ;

    //Calib = ManCalibTmp;
    //RestoreInts(mask) ;
    return lstat ;
}






/**
 * \brief Object 0x2303 Set calibration
 */
long unsigned SetManipCalibCmd( struct CSdo * pSdo ,short unsigned nData)
{
#ifdef _LPSIM
    (void)pSdo;
    (void)nData;
    return -1;
#else
    short unsigned si , cnt  ;
    short stat   ;
    long lstat ;
    unsigned long ul ;
    unsigned long * uPtr;
    const struct CCalibRecord *pCr ;
    struct CCmdMode cmd ;

#ifndef  SP_SER_FLASH
    long mask ;
#endif
    float f ;
    si = pSdo->SubIndex ;
    ul =* ((unsigned long *) pSdo->SlaveBuf);
    f =* ((float *) pSdo->SlaveBuf);

    if ( si == 1 )
    {
        ManipCalibProg.PassWord = ul ;
    }
    if ( (( ManipCalibProg.PassWord != (0x12345600 + N_CALIB_RECS) ) && (si > 251) ) || nData != 4 )
    {
        return General_parameter_incompatibility_reason ;
    }
    if ( si == 1 )
    {
        ClearMemRpt( (short unsigned *) &ManipCalibProg.Calib , sizeof(ManipCalibProg.Calib ) );
#ifdef SP_SER_FLASH

#else
        mask = BlockInts() ;
        stat = PrepFlash4Burn();
        RestoreInts(mask) ;
        if ( stat )
        {
            return General_parameter_incompatibility_reason ;
        }
#endif
    }
    if (si >= 1 && si <= N_CALIB_RECS)
    {
        pCr = &CalibPtrTable[si-1] ;
        cmd = * (( struct CCmdMode *) &  pCr->flags ) ;
        if ( cmd.IsFloat )
        {
            stat = IsInRange( &f , pCr->limit , -pCr->limit );
            if ( stat )
            {
                return General_parameter_incompatibility_reason ;
            }
        }
        ((long unsigned*) &ManipCalibProg.Calib)[si-1] = ul ;
        return 0 ;
    }

    switch ( si )
    {
    case 249:
    //case 29: // Apply calibration
        DealCalibrationManip(2) ;
        stat = 0 ;
        break ;
    case 250:
    //case 30:
        // Clear the calibration
        DealCalibrationManip(0) ;
        stat = 0 ;
        break ;
    case 251:
    //case 31:
        lstat = ReadCalibFromFlash ( (long unsigned*) &ManipCalibProg.Calib ,  FlashCalibPD    ) ;
        if ( lstat == 0 )
        {
            SysState.CBit.bit.NoCalib = 0 ;
        }
        else
        {
            SysState.CBit.bit.NoCalib = 1 ;
        }
        return (GetManufacturerSpecificCode(lstat) ) ;

    case 252:
    //case 32:// Clear sector of calibration
#ifdef SP_SER_FLASH
        stat = SFSectorErase(SER_FLASH_ADD_CALIB_MANIP) ;
#else
        mask = BlockInts() ;
        stat = EraseSector( Sector_AppCalib_start , 64UL  );
        RestoreInts(mask)  ;
#endif
        break ;
    case 253:
    //case 33: // Write and verify calibration
        if ( ul != ManipCalibProg.Calib.CalibData)
        {
            return General_parameter_incompatibility_reason;
        }
        if ( CheckAlign ( (short unsigned *) &ManipCalibProg.Calib , 1 ))
        {
            return General_parameter_incompatibility_reason ;
        }
        ManipCalibProg.Calib.Password0x12345678 = 0x12345678   ;
        ManipCalibProg.Calib.cs = 0 ;
        uPtr = (unsigned long *) & ManipCalibProg.Calib ;
        for ( cnt = 0 ; cnt < ((sizeof(ManipCalibProg.Calib)>>1)-1) ; cnt++ )
        {
            ManipCalibProg.Calib.cs -= *uPtr++  ;
        }

#ifdef SP_SER_FLASH
        stat = SFSectorErase(SER_FLASH_ADD_CALIB_MANIP) ;
#else
        mask = BlockInts() ;
        stat = EraseSector( Sector_AppCalib_start  , 64UL  );
        RestoreInts(mask)  ;
#endif
        if ( stat )
        {
            return GetManufacturerSpecificCode(ERR_COULD_NOT_ERASE_OLD_CALIB) ; ;
        }
#ifdef SP_SER_FLASH
        stat = SFInstructionWriteBuf(SER_FLASH_ADD_CALIB_MANIP , sizeof(struct CCalib) , (short unsigned * ) & ManipCalibProg.Calib );
#else
        mask = BlockInts() ;
        stat = ProgramPageAutoECC((short unsigned * ) & CalibProg.Calib ,Sector_AppCalib_start  , 256 ) ;
        RestoreInts(mask)  ;
#endif
        if ( stat )
        {
            SysState.CBit.bit.NoCalib = 1 ;
            return GetManufacturerSpecificCode(ERR_COULD_NOT_BURN_CALIB) ;
//            break ;
        }
        if ( DealCalibrationManip(1) == 0 )
        {
            SysState.CBit.bit.NoCalib = 0 ;
        }
        else
        {
            SysState.CBit.bit.NoCalib = 1 ;
            return GetManufacturerSpecificCode(ERR_COULD_NOT_READ_CALIB) ;
        }

        break ;
    default:
        return Sub_index_does_not_exist ;
    }
    if ( stat )
    {
        return General_parameter_incompatibility_reason ;
    }
    return 0 ;

#endif
}



/**
 * \brief Object 0x2303
 */
long unsigned  GetManipCalibCmd( struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si ;
    long unsigned ul ;
    long unsigned * pCalib ;

    si = pSdo->SubIndex ;

    if ( si == 0 )
    {
        ul = N_CALIB_RECS ;
    }

    else
    {
        if ( si < 100  )
        {
            pCalib = ((long unsigned *) &ManipCalibProg.Calib) ;
        }
        else
        {
            pCalib = ((long unsigned *) &ManCalibArr);
            si -= 100 ;
        }

        if ( si == 0 || si > N_CALIB_RECS )
        {
            return Sub_index_does_not_exist ;
        }
        ul = pCalib[si-1] ;
    }

    * nData = 4 ;
    * ((long *) &pSdo->SlaveBuf[0] ) = ul ;
    return 0 ;
}



/**
* \brief Object 0x2002: Set any GPIO
*
*/
long unsigned  SetGpio(struct CSdo * pSdo, short unsigned nData)
{
    short unsigned us, si, port, bit;
    long unsigned val;

    if (nData != 2)
    {
        return length_of_service_parameter_does_not_match;
    }

    us = *((short unsigned *)pSdo->SlaveBuf);
    if (us > 1)
    {
        return General_parameter_incompatibility_reason;
    }
    si = pSdo->SubIndex;

    port = si >> 5;
    bit = si - (port << 5);
    val = 1L << bit;

    switch (port)
    {
    case 0:
        if (nData)
        {
            GpioDataRegs.GPASET.all = val;
        }
        else
        {
            GpioDataRegs.GPACLEAR.all = val;
        }
        break;
    case 1:
        if (nData)
        {
            GpioDataRegs.GPBSET.all = val;
        }
        else
        {
            GpioDataRegs.GPBCLEAR.all = val;
        }
        break;
    case 2:
        if (nData)
        {
            GpioDataRegs.GPCSET.all = val;
        }
        else
        {
            GpioDataRegs.GPCCLEAR.all = val;
        }
        break;
    case 3:
        if (nData)
        {
            GpioDataRegs.GPDSET.all = val;
        }
        else
        {
            GpioDataRegs.GPDCLEAR.all = val;
        }
        break;
    default:
        return Sub_index_does_not_exist;
    }
    return 0;
}



long unsigned  GetGpio(struct CSdo * pSdo, short unsigned *nData)
{


    short unsigned si, port, bit;
    long unsigned rslt;

    si = pSdo->SubIndex;
    port = si >> 5;
    bit = si - (port << 5);

    switch (port)
    {
    case 0:
        rslt = GpioDataRegs.GPADAT.all;
        break;
    case 1:
        rslt = GpioDataRegs.GPBDAT.all;
        break;
    case 2:
        rslt = GpioDataRegs.GPCDAT.all;
        break;
    case 3:
        rslt = GpioDataRegs.GPDDAT.all;
        break;
    default:
        return Sub_index_does_not_exist;
    }
    *nData = 2;
    *((short unsigned *)&pSdo->SlaveBuf[0]) = ((rslt & (1L << bit)) ? 1 : 0);
    return 0;
}


/**
 * \brief object 0x220b: Miscellaneous BIT & readout
 *
 */
long unsigned  GetExceptStat(    struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si, n1 , n2   ;
     long l ;
     si = pSdo->SubIndex ;
     *nData = 4 ;
     switch ( si )
     {
     case 2:
         n1 = ( SysState.Mot.ExceptionCnt - 1 ) & 7 ;
         n2 = ( SysState.Mot.ExceptionCnt - 2 ) & 7 ;
         l = ( SysState.Mot.ExceptionTab[n1] & 0xffff ) + (long)(SysState.Mot.ExceptionTab[n2] << 16 ) ;
         break;
     case 3:
         n1 = ( SysState.Mot.ExceptionCnt - 3 ) & 7 ;
         n2 = ( SysState.Mot.ExceptionCnt - 4 ) & 7 ;
         l = ( SysState.Mot.ExceptionTab[n1] & 0xffff ) + (long)(SysState.Mot.ExceptionTab[n2] << 16 ) ;
         break;
     case 4:
         n1 = ( SysState.Mot.ExceptionCnt - 5 ) & 7 ;
         n2 = ( SysState.Mot.ExceptionCnt - 6 ) & 7 ;
         l = ( SysState.Mot.ExceptionTab[n1] & 0xffff ) + (long)(SysState.Mot.ExceptionTab[n2] << 16 ) ;
         break;
     case 5:
         n1 = ( SysState.Mot.ExceptionCnt - 7 ) & 7 ;
         n2 = ( SysState.Mot.ExceptionCnt - 8 ) & 7 ;
         l = ( SysState.Mot.ExceptionTab[n1] & 0xffff ) + (long)(SysState.Mot.ExceptionTab[n2] << 16 ) ;
         break;
     default:
         return Sub_index_does_not_exist ;
     }
     * ((long *) &pSdo->SlaveBuf[0] ) = l ;
     return 0 ;
 }
