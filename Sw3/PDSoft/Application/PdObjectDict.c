#include "PdStructDef.h"

//#include "CanDriver.h"

#ifdef _LPSIM
#include "VCSim.h"
#endif



/*
 * ObjectDict.c
 *
 *  Created on: Dec 11, 2016
 *      Author: Yahali Theodor
 */

#define DX_SET2FLASH_DELAY 2000000
#define DX_SET2RAM_DELAY 2000000


long unsigned TestSciA(short unsigned);

long unsigned  SetManipulatorPars( struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetManipulatorPars( struct CSdo * pSdo ,short unsigned *nData);
long unsigned  SetInfineon(	struct CSdo * pSdo ,short unsigned nData);
long unsigned  SetPsControl(	struct CSdo * pSdo ,short unsigned nData);
long unsigned  SetGenTest(	struct CSdo * pSdo ,short unsigned nData);
long unsigned  SetDxlManual(	struct CSdo * pSdo ,short unsigned nData);

long unsigned  PdGetSensor(	struct CSdo * pSdo ,short unsigned *nData);
long unsigned  GetGenTest(	struct CSdo * pSdo ,short unsigned *nData);
long unsigned  GetBitStatus(	struct CSdo * pSdo ,short unsigned *nData);
long unsigned  SetFloatParPD(	struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetFloatParPD(	struct CSdo * pSdo ,short unsigned *nData);
long unsigned  OnManualManCmd( struct CSdo * pSdo ,short unsigned nData);
long unsigned  OnSetObjControlWord( struct CSdo * pSdo ,short unsigned nData);
long unsigned  SetFwDataPD(	struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetFwDataPD(	struct CSdo * pSdo ,short unsigned *nData);
long unsigned  SetFwCmd(	struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetFwCmdPD(	struct CSdo * pSdo ,short unsigned *nData);
long unsigned  SetCalibCmdPD(	struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetCalibCmdPD(	struct CSdo * pSdo ,short unsigned *nData);
long unsigned  SetManipCalibCmdPD(   struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetManipCalibCmdPD(   struct CSdo * pSdo ,short unsigned *nData);

long unsigned  GetGpio( struct CSdo * pSdo ,short unsigned *nData);
long unsigned  SetGpio( struct CSdo * pSdo ,short unsigned nData);

long unsigned  GetExceptStat(    struct CSdo * pSdo ,short unsigned *nData);


void SetManipulatorControlWord(struct CManControlWord cw);

#define BURN_DATA_BUFFER RecorderBuffer
#define PROG_BUF_LEN 2048
#ifndef _LPSIM
#if REC_BUF_LEN < PROG_BUF_LEN
#error "Allocation failure for program buffer"
#endif
#endif

//laser unit is 0.1mm
#define LASER_RPT_TO_METERS 0.0001F
//	{ 0x1fff , 2 , SetRecorderTableEntry , NoSuchGetObject} ,

const struct CObjDictionaryItem ObjDictionaryItemPD [] =
{
	{ 0x2000 , 2 , SetRecorder , GetRecorder } ,
	{ 0x2001 , 2 , NoSuchSetObject , GetSignalFlags } ,
	{ 0x2002 , 2 , SetSignal , GetSignal } ,
	{ 0x2003 , 2 , SetInfineon , NoSuchGetObject },
	{ 0x2004 , 2 , SetPsControl , NoSuchGetObject },
	{ 0x2005 , 2 , SetGpio , GetGpio },
	{ 0x2102 , 2 , SetGenTest , GetGenTest },
	{ 0x2103 , 4 , SetDxlManual , NoSuchGetObject } ,
	{ 0x2104 , 4 , NoSuchSetObject , GetBitStatus } ,
	{ 0x2204 , 2 , NoSuchSetObject , PdGetSensor },
    { 0x2205 , 2 , SetManipulatorPars , GetManipulatorPars },
	{ 0x2208 , 2 , SetFloatParPD , GetFloatParPD } ,
	{ 0x2209 , 2 , OnManualManCmd , NoSuchGetObject },
    { 0x220b , 2 , NoSuchSetObject , GetExceptStat },
	{ 0x2210 , 2 , OnSetObjControlWord , NoSuchGetObject },
	{ 0x2300 , 4 , SetFwDataPD , GetFwDataPD },
	{ 0x2301 , 4 , SetFwCmd , GetFwCmdPD },
	{ 0x2302 , 4 , SetCalibCmdPD , GetCalibCmdPD },
    { 0x2303 , 4 , SetManipCalibCmdPD , GetManipCalibCmdPD },
	{ 0x0fff , 4 , NoSuchSetObject , (GetDictFunc) 0 }
};



const short unsigned PdSizeofObjDict =  sizeof(ObjDictionaryItemPD)/sizeof(struct CObjDictionaryItem) ;

#ifndef _LPSIM
const short unsigned SizeofObjDict =  sizeof(ObjDictionaryItemPD)/sizeof(struct CObjDictionaryItem) ;
#endif

short InitFlashAction();
short FlashSectorClear( short unsigned sec  );
short FlashDataBurn( short unsigned *uData , long unsigned FlashAddress , short unsigned WordsInBuffer   );

struct CFlashProg
{
	long PassWord ; // !< Must be 0x12345678 to work
	long unsigned AddressInFlash ; // !< Address in flash
	short unsigned InternalBufOffset ;
};
struct CFlashProg FlashProgPD;

long unsigned  GetFwDataPD(	struct CSdo * pSdo ,short unsigned *nData)
{
	short unsigned si ;
	si = pSdo->SubIndex ;
	* ((unsigned long *) pSdo->SlaveBuf) = BURN_DATA_BUFFER[FlashProgPD.InternalBufOffset + si ]  ;
	*nData = 4 ;
	return 0 ;
}

/*
 * \brief Use the recorder buffer
 *
 */
long unsigned  SetFwDataPD(	struct CSdo * pSdo ,short unsigned nData)
{
	short unsigned si ;
	long unsigned ul ;
	(void) nData ;
	si = pSdo->SubIndex ;
	ul =* ((unsigned long *) pSdo->SlaveBuf);
	BURN_DATA_BUFFER[FlashProgPD.InternalBufOffset + si ] = ul  ;
	return 0 ;
}

#ifndef _LPSIM
short TestFlashAddress( unsigned long ul )
{
	if ( ul < 0x82000 || ul >= 0xc0000 || ( ul & (PROG_BUF_LEN-1) ) )
	{
		return -1 ;
	}
	return 0 ;
}
#endif

long unsigned  GetFwCmdPD(	struct CSdo * pSdo ,short unsigned *nData)
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
	case 3:
		* ulPtr = PROG_BUF_LEN ;
		break ;
	case 4:
		* ulPtr = PD_FIRM_VER  ;
		break ;
	case 5: // Program identifier
		* ulPtr = PD_PROJ_TYPE  ;
		break ;
	case 6:
        //*ulPtr = ( (unsigned long)FIRM_VER << 16 ) + ( (unsigned long)FIRM_SUBVER << 8 ) + ( (unsigned long)FIRM_PATCH );
	    *ulPtr = ( (unsigned long)FIRM_VER << 24 ) + ( (unsigned long)FIRM_SUBVER << 16 ) + ( (unsigned long)FIRM_PATCH << 8) + ( (unsigned long)FIRM_XX);

	    break ;

	default:
		return Sub_index_does_not_exist;
	}

	return 0;
}

#ifndef _LPSIM
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
	short stat ;
	unsigned long ul , pw ;
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
	if ( IsMushroomRelease( ) )
	{
		 return (Manufacturer_error_detail + 0x1006) ;
	}

	switch ( si )
	{
	case 1:
		 stat = InitFlashAction();
		 if ( stat )
		 {
				return General_parameter_incompatibility_reason ;
		 }
		 FlashProgPD.PassWord = 0x12345678 ;
		 break ; // Already accepted // End correction
	case 2:
		 if ( ul > PROG_BUF_LEN - 256 )
		 {
				return General_parameter_incompatibility_reason ;
		 }
		 FlashProgPD.InternalBufOffset = (short unsigned) ul ;
		 break;
	case 100:
		 if ( TestFlashAddress(ul) < 0   )
		 {
				return General_parameter_incompatibility_reason ;
		 }
		 FlashProgPD.AddressInFlash = ul ;
		 break ;
	case 130: // Clear section
		 stat = FlashSectorClear( (short unsigned) ul  );
		 if ( stat )
		 {
				return General_parameter_incompatibility_reason ;
		 }
		 break ;
	case 131: // Program buffer
		 if ( TestFlashAddress(FlashProgPD.AddressInFlash) < 0   )
		 {
				return General_parameter_incompatibility_reason ;
		 }
		 stat = FlashDataBurn( (short unsigned * ) BURN_DATA_BUFFER , FlashProgPD.AddressInFlash , PROG_BUF_LEN*2   );
		 if ( stat )
		 {
				return General_parameter_incompatibility_reason ;
		 }
		 break ;

	case 244: // Back home to boot
	     KillCLA();
		 DINT; ((VoidFun)0x80000 )() ; // Fat Bertha from which nobody ever returned
	default:
		 return Sub_index_does_not_exist;
	}
	return 0 ;
}


#endif


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
short unsigned GetParIndexPD ( short unsigned TargetIndex )
{
    short unsigned L , R, m , Am ;

    L = 0 ; R = N_ParTablePD ;

    for ( ; ; )
    {
        if ( L > R ) return 0xffff ;
        m = (L+R)>>1 ;
        Am = ParTablePD[m].ind ; ;
        if ( Am < TargetIndex )
        {
            L = m + 1 ;
            continue ;
        }
        if ( Am > TargetIndex )
        {
            R = m - 1 ;
            continue ;
        }
        return m ;
    }
}

struct CManControlWord manControlWordX ;

long unsigned SetLaserOnly(short unsigned * pPar )
{

    manControlWordX = * ( struct CManControlWord *) pPar;
    return 0 ;
}


/**
 * \brief: Body for object 0x2210: Set control word and laser
 *
 */
long unsigned SetControlAndLaser ( short unsigned * pPar )
{

	struct CPdCmd2 * pPdCmd2 ;
    struct CPdCmd2 * pPdCmd2Old ;


    pPdCmd2 = (struct CPdCmd2 *) &SysStatePD.uPdCmd2 ;
    pPdCmd2Old = (struct CPdCmd2 *) &SysStatePD.uPdCmd2Old ;

	manControlWordX = * ( struct CManControlWord *) pPar;

	// Operate Chakalaka on command bit
	SysStatePD.uPdCmd2 = pPar[2] ;

    if ( ( pPdCmd2Old->PowerEnter == 0 )  && pPdCmd2->PowerEnter ) // PowerEnter
    {
        if ( pPdCmd2->Power12V != Buck12Control.MotorOn )
        {
            if ( pPdCmd2->Power12V  )
            {// Set 12V on as open loop
                Buck12Control.MotorOnRequest = 1 ;
            }
            else
            {
                SetSysTimerTarget(TIMER_SUPPLYOFF_12,100000 , &PDSysTimerStr) ;
                Buck12Control.Exception = 0 ;
                Buck12Control.VSetPoint = 0 ;
            }
        }

        if ( pPdCmd2->Power24V != Buck24Control.MotorOn )
        {
            if ( pPdCmd2->Power24V  )
            {// Set the 24V control in open loop
                Buck24Control.MotorOnRequest = 1 ;
            }
            else
            {
                SetSysTimerTarget(TIMER_SUPPLYOFF_24,100000 , &PDSysTimerStr) ;
                Buck24Control.Exception = 0 ;
                Buck24Control.VSetPoint = 0 ;
            }
        }
    }

    SysStatePD.uPdCmd2Old = SysStatePD.uPdCmd2;

	//GetManipulatorProgram (  & currProgLaserValid ,  &Xref , &Ypack , &currProgLaserDistance ,  &mon );
	if ( manControlWordX.UnProcFromPdo == 0 )
	{
		SetManipulatorControlWord( manControlWordX);
	}

	return 0  ;
}



/**
 * \brief Object 0x2209: Set manual manipulator command
 *
 * \param pSdo : The SDO input
 * \param nData: The amount of received data bytes
 */
long unsigned OnManualManCmd( struct CSdo * pSdo ,short unsigned nData)
{
    (void) pSdo ;
    (void) nData ;
	return 0;
}


/**
 * \brief Object 0x2210: Set the laser and the control word
 *
 * \param pSdo : The SDO input
 * \param nData: The amount of received data bytes
 */
long unsigned  OnSetObjControlWord(	struct CSdo * pSdo ,short unsigned nData)
{
	short unsigned si ;
	short unsigned * pPar ;

	si = pSdo->SubIndex ;

	pPar =  ((short unsigned *) pSdo->SlaveBuf);

	if ( nData != 4 )
	{
		return length_of_service_parameter_does_not_match;
	}

	switch ( si )
	{
	case 0:
		SetControlAndLaser ( pPar ) ;
		break ;
	default:
		return Sub_index_does_not_exist ;
	}

	return 0 ;
}


/*
 * Object 0x2205
 */
long unsigned  SetManipulatorPars( struct CSdo * pSdo ,short unsigned nData)
{
    (void)pSdo;
    (void) nData ;
     return Sub_index_does_not_exist ;
}


/*
 * Object 0x2205
 */
long unsigned  GetManipulatorPars( struct CSdo * pSdo ,short unsigned *nData)
{
    (void) pSdo ;
    (void) nData ;
        return Sub_index_does_not_exist ;
}

/**
 * \brief Set a floating point parameter 0bject 0x2208
 *
 */
long unsigned  SetFloatParPD(	struct CSdo * pSdo ,short unsigned nData)
{
	short unsigned si ;
	float f ;
	short stat ;
	struct CFloatParRecord *pPar ;

	si = pSdo->SubIndex ;
	f =* ((float *) pSdo->SlaveBuf);
	if ( isNan( &f) )
	{
		return General_parameter_incompatibility_reason ;
	}

	if ( nData != 4 )
		return length_of_service_parameter_does_not_match;

	stat = GetParIndexPD( si ) ;
	if ( stat < 0 ) return Sub_index_does_not_exist ;
	pPar = ( struct CFloatParRecord * ) &ParTablePD[stat] ;
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
long unsigned  GetFloatParPD(	struct CSdo * pSdo ,short unsigned *nData)
{
	short unsigned si  ;
	short stat ;
	float f ;
	struct CFloatParRecord *pPar ;

	si = pSdo->SubIndex ;
	stat = GetParIndexPD( si ) ;
	if ( stat < 0 ) return Sub_index_does_not_exist ;
	pPar = ( struct CFloatParRecord * ) &ParTablePD[stat] ;
	f = *  pPar->ptr ;

	*nData = 4 ;
	* ((float *) &pSdo->SlaveBuf[0] ) = f ;

	return 0 ;
}




/*
 * \brief Object 0x2104: Get the BIT status of the system
 */
long unsigned  GetBitStatus(	struct CSdo * pSdo ,short unsigned *nData)
{
	short unsigned si     ;
	long unsigned BitStat;
	si = pSdo->SubIndex ;

	switch ( si)
	{
	case 1:
		BitStat = (long unsigned) ( * ((short unsigned*) &PdCBit) );
		BitStat |= ( Buck12Control.MotorOn ? 0x10000 : 0 ) ;
		BitStat |= ( (long unsigned ) (Buck12Control.Exception&0x7) << 17 ) ;
		BitStat |= ( Buck24Control.MotorOn ? 0x100000 : 0 ) ;
		BitStat |= ( (long unsigned ) (Buck24Control.Exception&0x7) << 21 ) ;
		BitStat |= ( Sw54Control.MotorOn ? 0x1000000 : 0 ) ;
		BitStat |= ( (long unsigned ) (Sw54Control.Exception&0x7) << 25 ) ;
		//BitStat |=  ( (GpioDataRegs.GPADAT.all & 0x3f0000) << 8 ) ; // Brake 4 (least) ,5,6 , Chakalaka , Brake 7, 8 (most)
		* ((long unsigned *) pSdo->SlaveBuf ) = BitStat ;
		*nData = 4 ;
		break ;
	case 2:
		BitStat = (unsigned long) GetLimits( );

		if ( PBit.Dynamixel12On )
		{
			BitStat |= (1<<4) ;
		}


		if ( PBit.Dynamixel24On )
		{
			BitStat |= (1<<6) ;
		}

		if ( PBit.State == 10 )
		{
		    BitStat |= (1<<14) ;
		}
		// Bit 8 is DISC 2

        //BitStat |= (1<<14) ;

		* ((long unsigned *) pSdo->SlaveBuf ) = BitStat ;
		*nData = 4 ;
		break;

	case 3:
		BitStat = ((unsigned long) GetOpenDrainStat() & 0xffff ) + (( (long unsigned) ManCmd.State & 0xff ) << 16  ) ;

		* ((long unsigned *) pSdo->SlaveBuf ) = BitStat ;
		*nData = 4 ;
		break;

	case 10:
        * ((float *) pSdo->SlaveBuf ) = Buck12Control.VoltageInputExp ;
        break ;
    case 11:
        * ((float *) pSdo->SlaveBuf ) = Buck12Control.VoltageOutputExp ;
        break ;
    case 12:
        * ((float *) pSdo->SlaveBuf ) = Buck12Control.CurrentAtExp ;
        break ;
    case 20:
        * ((float *) pSdo->SlaveBuf ) = Buck24Control.VoltageInputExp ;
        break ;
    case 21:
        * ((float *) pSdo->SlaveBuf ) = Buck24Control.VoltageOutputExp ;
        break ;
    case 22:
        * ((float *) pSdo->SlaveBuf ) = Buck24Control.CurrentAtExp ;
        break ;
    case 30:
        * ((float *) pSdo->SlaveBuf ) = Sw54Control.VoltageInputExp ;
        break ;
    case 32:
        * ((float *) pSdo->SlaveBuf ) = Sw54Control.CurrentAtExp ;
        break ;
	default:
		return Sub_index_does_not_exist ;
	}
	return 0 ;
}



/**
 * \brief Object 2204 Get measured quantities
 */
long unsigned  PdGetSensor(	struct CSdo * pSdo ,short unsigned *nData)
{
	short unsigned si   ;
	si = pSdo->SubIndex ;
	switch ( si)
	{
	case 1:
		* ((float *) pSdo->SlaveBuf ) = ClaState.Filt.Volts24 ;
		*nData = 4 ;
		break ;
	case 2:
		* ((float *) pSdo->SlaveBuf ) = ClaState.Filt.VServo ;
		*nData = 4 ;
		break ;
	case 3:
		* ((float *) pSdo->SlaveBuf ) = ClaState.Filt.CurServo ;
		*nData = 4 ;
		break ;
	case 4:
		* ((float *) pSdo->SlaveBuf ) = ClaState.Filt.CurAirPump[0] ;
		*nData = 4 ;
		break ;
	case 5:
		* ((float *) pSdo->SlaveBuf )  =   ClaState.Filt.CurAirPump[1] ;//PdSysState.Pump.FiltC1[1] ;
		*nData = 4 ;
		break ;
	case 6:
		* ((float *) pSdo->SlaveBuf ) =  ClaState.Filt.CurAirPump[2] ;//PdSysState.Pump.FiltC2[1]  ;
		*nData = 4 ;
		break ;
	case 7:
		* ((float *) pSdo->SlaveBuf ) = ClaState.Filt.V36  ;
		*nData = 4 ;
		break ;
	case 8:
		* ((float *) pSdo->SlaveBuf ) = ClaState.Filt.VBat54[0]  ;
		*nData = 4 ;
		break ;
	case 9:
		* ((float *) pSdo->SlaveBuf ) = ClaState.Filt.VBat54[1]  ;
		*nData = 4 ;
		break ;
	case 10:
		* ((float *) pSdo->SlaveBuf ) = ClaState.Filt.Volts12[0]  ;
		*nData = 4 ;
		break ;
	case 11:
		* ((float *) pSdo->SlaveBuf ) = ClaState.Filt.Volts12[1]  ;
		*nData = 4 ;
		break ;
	case 12:
		* ((float *) pSdo->SlaveBuf ) = ClaState.Filt.Cur5  ;
		*nData = 4 ;
		break ;
	case 13:
		* ((float *) pSdo->SlaveBuf ) = ClaState.Filt.Volts5  ;
		*nData = 4 ;
		break ;
	case 14:
		* ((float *) pSdo->SlaveBuf ) = ClaState.Filt.IShunt  ;
		*nData = 4 ;
		break ;
	case 15:
		* ((float *) pSdo->SlaveBuf ) = ClaState.Filt.Cur24  ;
		*nData = 4 ;
		break ;
	case 16:
		* ((float *) pSdo->SlaveBuf ) = ClaState.Filt.Cur12  ;
		*nData = 4 ;
		break ;
	case 17:
		* ((float *) pSdo->SlaveBuf ) = 0 ;
		*nData = 4 ;
		break ;
	case 18:
		* ((float *) pSdo->SlaveBuf ) = 0 ;
		*nData = 4 ;
		break ;
	default:
		return Sub_index_does_not_exist ;
	}
	return 0 ;
}



/**
 * \brief Object 2103, set manipulator commands
 */


long unsigned  SetDxlManual(	struct CSdo * pSdo ,short unsigned nData)
{
	long  unsigned ul   ;
	short unsigned si   ;



	si = pSdo->SubIndex ;
	ul =* ((long unsigned *) pSdo->SlaveBuf);
	if ( nData != 4)
	{
		return length_of_service_parameter_does_not_match ;
	}

	switch ( si )
	{
	case 1:
		break ;



	case 201:
	    // Stop listen to LP commands
	    SysStatePD.DisablePdoProc = (ul ? 1 : 0 ) ;
	    break ;
	default:
		return Sub_index_does_not_exist ;
	}
	return 0 ;
}


long unsigned  GetGenTest(	struct CSdo * pSdo ,short unsigned *nData)
{

	short unsigned si     ;
	long unsigned BitStat;
	//extern long unsigned TestSciBC();
	si = pSdo->SubIndex ;
    *nData = 4;

	if ( si >= 64 && si < 128 )
	{
		BitStat = TestSciA(si);
		* ((long unsigned *) pSdo->SlaveBuf ) = BitStat  ;
		*nData = 4;
		return 0 ;
	}
	return Sub_index_does_not_exist ;
}


long unsigned  SetGenTest(	struct CSdo * pSdo ,short unsigned nData)
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




/**
 * \brief Get size of object dictionary
  * \detail This function is here because only in the scope of this file the size of
 * the object dictionary is known
 */
short unsigned GetOdSizePD( void )
{
	return sizeof(ObjDictionaryItemPD)/sizeof(struct CObjDictionaryItem) ;
}

#ifdef _LPSIM 
#define GPIO_OUTPUT 1 
#define GPIO_PUSHPULL 0

#define GPIO_INPUT 0 
#define GPIO_ASYNC 0 

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
long unsigned  SetInfineon(	struct CSdo * pSdo ,short unsigned nData)
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

	case 4: // Air pump 1
		SetAirPump( IND_PUMP_LASER , us ) ;
		return 0 ;
	case 5: // Air pump 2
		SetAirPump( IND_PUMP_1 , us ) ;
		return 0 ;
	case 6: // Air pump 3
		SetAirPump( IND_PUMP_2 , us ) ;
		return 0 ;
	case 7: // Chakalaka
		SetChakalaka(  us );
		return 0 ;
	case 8: // Stop brake
		SetRelayDrv(  1, us );
		return 0 ;
	case 9: // Relay brake
		SetRelayDrv(  2 , us );
		return 0 ;
	case 10: // Steer brake
		SetRelayDrv(  4 , us );
		return 0 ;
	case 11: // Wheel brake
		SetRelayDrv(  3 , us );
		return 0 ;
	case 12: // Neck brake
		SetRelayDrv(  5 , us );
		return 0 ;
	case 13: // Fan
		SetRelayDrv(  6 , us );
		return 0 ;
	case 14: // Tail light
		SetRelayDrv(  11 , us );
		return 0 ;
	case 15: // Disc 1
		SetCpuPin( 58 , 0, GPIO_OUTPUT  , GPIO_PUSHPULL ) ;
		SetRelayDrv(  10 , us );
		return 0 ;
	case 16: // Shunt
		SetRelayDrv(  12 , us );
		return 0 ;

	case 20:
	    OverRideMushroom = us ;
	    break ;
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

long unsigned  SetPsControl(	struct CSdo * pSdo ,short unsigned nData)
{
	short unsigned us , si  , baud ;
	//volatile struct EPWM_REGS * pPwm ;
	if ( nData != 2 )
	{
		return length_of_service_parameter_does_not_match ;
	}

	us =* ((short unsigned *) pSdo->SlaveBuf);

	si = pSdo->SubIndex ;

	switch ( si )
	{
	case 1:
		if ( us == Buck12Control.MotorOn )
		{
			break ;
		}

		if ( us  )
		{// Set 12V on as open loop
			Buck12Control.MotorOnRequest = 1 ;
		}
		else
		{
			SetSysTimerTarget(TIMER_SUPPLYOFF_12,100000 , &PDSysTimerStr) ;
			Buck12Control.Exception = 0 ;
			Buck12Control.VSetPoint = 0 ;
		}
		break ;
	case 2:
		if ( us == Buck24Control.MotorOn )
		{
			break ;
		}

		if ( us  )
		{// Set the 24V control in open loop
			Buck24Control.MotorOnRequest = 1 ;
		}
		else
		{
			SetSysTimerTarget(TIMER_SUPPLYOFF_24,100000 , &PDSysTimerStr) ;
			Buck24Control.Exception = 0 ;
			Buck24Control.VSetPoint = 0 ;
		}
		break ;
	case 3:
		if ( us  )
		{
			Sw54Control.MotorOnRequest = 1 ;
		}
		else
		{
			Sw54Control.MotorOn = 0 ;
			Sw54Control.Exception = 0 ;
		}
		break ;
	case 4: // Inform the presence of 12V motor network
		PBit.Dynamixel12On = us ;
		PBit.State = 0 ;
		break ;
	case 5:// Inform the presence of 24V motor network
		PBit.Dynamixel24On = us ;
        PBit.State = 0 ;
		break ;
    case 6:// Inform the presence of entire 12/24 24V motor network
        PBit.Dynamixel24On = us ;
        PBit.Dynamixel12On = us ;
        PBit.State = 0 ;
        break ;

	case 10:
		Buck12Control.VSetPointNom = (float) us / 1000.0f  ;
		break ;
	case 11:
		Buck24Control.VSetPointNom = (float) us / 1000.0f  ;
		break ;

	case 110:
	    PBit.State = 0 ;
        SetSysTimerTargetSec(TIMER_SUPPLYOFF_24,4.0f, &PDSysTimerStr) ;
        SetSysTimerTargetSec(TIMER_SUPPLYOFF_12,2.0f, &PDSysTimerStr) ;
        Buck24Control.MotorOn = 0 ;
        Buck24Control.Exception = 0 ;
        Buck24Control.VSetPoint = 0 ;
        Buck24Control.MotorOnRequest = 1 ;
        Buck12Control.MotorOn = 0 ;
        Buck12Control.Exception = 0 ;
        Buck12Control.VSetPoint = 0 ;
        Buck12Control.MotorOnRequest = 1 ;
	    break ;
	case 111:
	    if ( us == 6289 )
	    {
	        EALLOW ;
            Tx12_24_ForCardTest   = 1 ;
            SetSysTimerTargetSec( TMR_ATP_RS485 , 0.1f ,&PDSysTimerStr);
            GpioDataRegs.GPCSET.bit.GPIO85 = 1  ; // Enable transmitter
            GpioDataRegs.GPBSET.bit.GPIO61 = 1  ; // Enable transmitter
            ScibRegs.SCICTL1.bit.SWRESET = 0 ;
            ScicRegs.SCICTL1.bit.SWRESET = 0 ;
            baud = (short) ( ( (float)LP_MHZ * 1000000 ) / (115200 * 8.0f ) + 0.5 ) - 1 ;
            ScibRegs.SCILBAUD.bit.BAUD	 = baud & 0xff;
            ScibRegs.SCIHBAUD.bit.BAUD = 0 ;
            ScicRegs.SCILBAUD.bit.BAUD   = baud & 0xff;
            ScicRegs.SCIHBAUD.bit.BAUD = 0 ;
            ScibRegs.SCICTL1.bit.SWRESET = 1 ;
            ScicRegs.SCICTL1.bit.SWRESET = 1 ;
	    }
	    break;
	default:
		return General_parameter_incompatibility_reason ;
	}
	return 0 ;
}


#ifndef _LPSIM
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
#endif

#ifndef _LPSIM
/**
 * \brief Validate and read calibration struct from the flash
 * \param Dest: Destination of calibration (cleared if Src is not valid)
 * \param Src : Address in flash of persumably valid calibration
 * \param len : Size of calibration record, in words
 *
 * \return 0: Ok, -1: Calibration record not valid
 *
 */
short ReadFlashStruct ( long unsigned *Dest , long unsigned *Src , short unsigned len  )
{
	long unsigned cs ;
	short unsigned cnt ;
	long unsigned *uPtr ;
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
struct CCalibPD ManCalibTmp ;
void DealCalibrationManipPD (short unsigned rd)
{
    //long mask ;
    switch ( rd)
    {
    case 0:
        ClearMemRpt( (short unsigned * ) &ManCalibTmp , sizeof(CalibPD)  ) ;
        break ;
    case 1:
        ReadFlashStruct ( (long unsigned*) &ManCalibTmp , (long unsigned *) FlashCalibManipPD , sizeof(CalibPD)-sizeof(CalibPD.Stam)   ) ;
        break ;
    case 2:
        ManCalibTmp = ManipCalibProgPD.Calib ;
        break ;
    }


    MaipCalibPD = ManCalibTmp;
    //RestoreInts(mask) ;
}


/**
 * \brief calibration actions
 * \param rd = 0: Clear calibration
 *			   1: Read calibration from flash
 *			   2: Get from background programmed calibration
 *
 */
struct CCalibPD CalibTmp ;
void DealCalibrationPD (short unsigned rd)
{
	//long mask ;
	switch ( rd)
	{
	case 0:
		ClearMemRpt( (short unsigned * ) &CalibTmp , sizeof(CalibPD)  ) ;
		break ;
	case 1:
		ReadFlashStruct ( (long unsigned*) &CalibTmp , (long unsigned *) FlashCalibPD , sizeof(CalibPD)-sizeof(CalibPD.Stam)   ) ;
		break ;
	case 2:
		CalibTmp = CalibProgPD.Calib ;
		break ;
	}

	//mask = BlockInts( ) ;

	// Left
	AdcCalibArray[LCalibPar_V36Gain] = CalibTmp.ParArr[LCalibPar_V36Gain] ;
	AdcCalibArray[LCalibPar_V36Offset] = CalibTmp.ParArr[LCalibPar_V36Offset] ;
	AdcCalibArray[LCalibPar_V24Gain] = CalibTmp.ParArr[LCalibPar_V24Gain] ;
	AdcCalibArray[LCalibPar_V24Offset] = CalibTmp.ParArr[LCalibPar_V24Offset] ;
	AdcCalibArray[LCalibPar_V12Gain] = CalibTmp.ParArr[LCalibPar_V12Gain] ;
	AdcCalibArray[LCalibPar_V12Offset] = CalibTmp.ParArr[LCalibPar_V12Offset] ;
    AdcCalibArray[LCalibPar_VBatGain] = CalibTmp.ParArr[LCalibPar_VBatGain] ;
    AdcCalibArray[LCalibPar_VSrvGain] = CalibTmp.ParArr[LCalibPar_VSrvGain] ;

	ApplyAdcCorrections();

/*
	DynStat12[0].PositionScale = ManGeo.LDoorGainFac + CalibTmp.ParArr[ECalibPar_LDoorGainFac] ;
    DynStat12[0].PositionOffset = ManGeo.LDoorCenter+ CalibTmp.ParArr[ECalibPar_LDoorCenter] ;
    DynStat12[0].NominalEncoderOffset = 0 ;
            // Right
    DynStat12[1].PositionScale =  ManGeo.RDoorGainFac+ CalibTmp.ParArr[ECalibPar_RDoorGainFac] ;
    DynStat12[1].PositionOffset = ManGeo.RDoorCenter+ CalibTmp.ParArr[ECalibPar_RDoorCenter] ;
    DynStat12[1].NominalEncoderOffset = 0 ;

    DynStat24[0].PositionOffset = CalibTmp.ParArr[ECalibPar_ShoulderCenter] ;
    DynStat24[1].PositionOffset = CalibTmp.ParArr[ECalibPar_ElbowCenter] ;
    DynStat24[2].PositionOffset = CalibTmp.ParArr[ECalibPar_WristCenter] ;
*/
    CalibPD = CalibTmp;
	//RestoreInts(mask) ;
}



/**
 * \brief Object 0x2303 Set calibration
 */
long unsigned SetManipCalibCmdPD( struct CSdo * pSdo ,short unsigned nData)
{
#ifdef _LPSIM
    (void)pSdo;
    (void)nData;
    return -1;
#else
    short unsigned si , cnt , ind ;
    short stat   ;
    unsigned long ul ;
    unsigned long * uPtr;
    long mask ;
    float f ;
    si = pSdo->SubIndex ;
    ul =* ((unsigned long *) pSdo->SlaveBuf);
    f =* ((float *) pSdo->SlaveBuf);

    if ( si == 1 )
    {
        ManipCalibProgPD.PassWord = ul ;
    }
    if ( ((ManipCalibProgPD.PassWord != 0x12345678) && (si > 31) ) || nData != 4 )
    {
        return General_parameter_incompatibility_reason ;
    }

    if ( si >= 2 && si < 20 )
    {
        ind = si - 2 ;
        stat = IsNotInRange( &f , ManCalibLimitHi[ind] , ManCalibLimitLo[ind] );
        if ( stat == 0  )
        {
            ManipCalibProgPD.Calib.ParArr[ind]  = f ;
        return 0 ;
        }
        return General_parameter_incompatibility_reason ;
    }

    switch ( si )
    {
    case 1:
        mask = BlockInts() ;
        stat = InitFlashAction();
        RestoreInts(mask) ;
        ClearMemRpt( (short unsigned *) &ManipCalibProgPD.Calib , sizeof(ManipCalibProgPD.Calib ) );
        if ( stat )
        {
            return General_parameter_incompatibility_reason ;
        }
        break ; // Already accepted
    case 20:
        ManipCalibProgPD.Calib.CalibDate = ul ;
        stat = 0 ;
        break ;
    case 21:
        ManipCalibProgPD.Calib.CalibData = ul ;
        stat = 0 ;
        break ;
    case 29: // Apply calibration
        DealCalibrationManipPD(2) ;
        stat = 0 ;
        break ;
    case 30:
        // Clear the calibration
        DealCalibrationManipPD(0) ;
        stat = 0 ;
        break ;
    case 31:
        // Re-init the programming parameters from the flash
        stat = ReadFlashStruct ( (long unsigned*) &ManipCalibProgPD.Calib , (long unsigned *) FlashCalibManipPD , sizeof(CalibPD)-sizeof(CalibPD.Stam)   ) ;
        break ;
    case 32:// Clear sector of calibration
        mask = BlockInts() ;
        stat = FlashSectorClear( (short unsigned) 11  );
        RestoreInts(mask)  ;
        break ;
    case 33: // Write and verify calibration
        if ( ul != ManipCalibProgPD.Calib.CalibData)
        {
            return General_parameter_incompatibility_reason;
        }
        if ( CheckAlign ( (short unsigned *) &ManipCalibProgPD.Calib , 1 ))
        {
            return General_parameter_incompatibility_reason ;
        }
        ManipCalibProgPD.Calib.Password0x12345678 = 0x12345678 ;
        ManipCalibProgPD.Calib.cs = 0 ;
        uPtr = (unsigned long *) & ManipCalibProgPD.Calib ;
        for ( cnt = 0 ; cnt < ((sizeof(ManipCalibProgPD.Calib)>>1)-(sizeof(ManipCalibProgPD.Calib.Stam)>>1)-1) ; cnt++ )
        {
            ManipCalibProgPD.Calib.cs -= *uPtr++  ;
        }
        mask = BlockInts() ;
        stat = FlashSectorClear( (short unsigned) 11  );
        RestoreInts(mask)  ;
        if ( stat )
        {
            break ;
        }
        mask = BlockInts() ;
        stat = FlashDataBurn( (short unsigned * ) & ManipCalibProgPD.Calib , (long unsigned) FlashCalibManipPD , sizeof(ManipCalibProgPD.Calib )   );
        RestoreInts(mask)  ;
        if ( stat )
        {
            break ;
        }
        DealCalibrationManipPD(1) ;
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
 * \brief Object 0x2302 Set calibration
 */
long unsigned SetCalibCmdPD( struct CSdo * pSdo ,short unsigned nData)
{
#ifdef _LPSIM
	(void)pSdo;
	(void)nData;
	return -1; 
#else
	short unsigned si , cnt , ind ;
	short stat   ;
	unsigned long ul ;
	unsigned long * uPtr;
	long mask ;
	float f ;
	si = pSdo->SubIndex ;
	ul =* ((unsigned long *) pSdo->SlaveBuf);
	f =* ((float *) pSdo->SlaveBuf);

	if ( si == 1 )
	{
		CalibProgPD.PassWord = ul ;
	}
	if ( ((CalibProgPD.PassWord != 0x12345678) && (si > 31) ) || nData != 4 )
	{
		return General_parameter_incompatibility_reason ;
	}

	if ( si >= 2 && si < 20 )
	{
	    ind = si - 2 ;
        stat = IsNotInRange( &f , CalibLimitHi[ind] , CalibLimitLo[ind] );
        if ( stat == 0  )
        {
            CalibProgPD.Calib.ParArr[ind]  = f ;
        return 0 ;
        }
        return General_parameter_incompatibility_reason ;
	}

	switch ( si )
	{
	case 1:
		mask = BlockInts() ;
		stat = InitFlashAction();
		RestoreInts(mask) ;
		ClearMemRpt( (short unsigned *) &CalibProgPD.Calib , sizeof(CalibProgPD.Calib ) );
		if ( stat )
		{
			return General_parameter_incompatibility_reason ;
		}
		break ; // Already accepted
	case 20:
		CalibProgPD.Calib.CalibDate = ul ;
		stat = 0 ;
		break ;
	case 21:
		CalibProgPD.Calib.CalibData = ul ;
		stat = 0 ;
		break ;
	case 29: // Apply calibration
		DealCalibrationPD(2) ;
		stat = 0 ;
		break ;
	case 30:
		// Clear the calibration
		DealCalibrationPD(0) ;
		stat = 0 ;
		break ;
	case 31:
	    // Re-init the programming parameters from the flash
		stat = ReadFlashStruct ( (long unsigned*) &CalibProgPD.Calib , (long unsigned *) FlashCalibPD , sizeof(CalibPD)-sizeof(CalibPD.Stam)   ) ;
		break ;
	case 32:// Clear sector of calibration
		mask = BlockInts() ;
		stat = FlashSectorClear( (short unsigned) 12  );
		RestoreInts(mask)  ;
		break ;
	case 33: // Write and verify calibration
	    // Mushroom need be depressed
	    // Mushroom need be depressed
	    //if ( IsMushroomRelease( ) )
	    //{
	    //    return (Manufacturer_error_detail + 0x1006) ;
	    //}

		if ( ul != CalibProgPD.Calib.CalibData)
		{
			return General_parameter_incompatibility_reason;
		}
		if ( CheckAlign ( (short unsigned *) &CalibProgPD.Calib , 1 ))
		{
			return General_parameter_incompatibility_reason ;
		}
		CalibProgPD.Calib.Password0x12345678 = 0x12345678 ;
		CalibProgPD.Calib.cs = 0 ;
		uPtr = (unsigned long *) & CalibProgPD.Calib ;
		for ( cnt = 0 ; cnt < ((sizeof(CalibProgPD.Calib)>>1)-(sizeof(CalibProgPD.Calib.Stam)>>1)-1) ; cnt++ )
		{
			CalibProgPD.Calib.cs -= *uPtr++  ;
		}
		mask = BlockInts() ;
		stat = FlashSectorClear( (short unsigned) 12  );
		RestoreInts(mask)  ;
		if ( stat )
		{
			break ;
		}
		mask = BlockInts() ;
		stat = FlashDataBurn( (short unsigned * ) & CalibProgPD.Calib , (long unsigned) FlashCalibPD , sizeof(CalibProgPD.Calib )   );
		RestoreInts(mask)  ;
		if ( stat )
		{
			break ;
		}
        DealCalibrationPD(1) ;
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
 * \brief Object 0x2302
 */
long unsigned GetCalibCmdPD( struct CSdo * pSdo ,short unsigned *nData)
{
	short unsigned si ;
	long unsigned ul ;

	si = pSdo->SubIndex ;

	if ( si >= 2 && si < 20 )
	{
        ul = * (long unsigned *) &CalibProgPD.Calib.ParArr[si-2]  ;
        * ((long *) &pSdo->SlaveBuf[0] ) = ul ;
        return 0 ;
	}
    if ( si >= 102 && si < 120 )
    {
        ul = * (long unsigned *) &CalibPD.ParArr[si-102]  ;
        * ((long *) &pSdo->SlaveBuf[0] ) = ul ;
        return 0 ;
    }

	switch ( si )
	{
	case 1:
		ul = CalibProgPD.PassWord ;
		break ; // Already accepted
	case 20:
		ul = CalibProgPD.Calib.CalibDate  ;
		break ;
	case 21:
		ul = CalibProgPD.Calib.CalibData  ;
		break;
	case 22:
	    ul = NCalibPars; // Return length of calibration vector
	    break ;
	case 120:
		ul = CalibPD.CalibDate  ;
		break ;
	case 121:
		ul = CalibPD.CalibData  ;
		break;
	default:
		return Sub_index_does_not_exist ;
	}
	* nData = 4 ;
	* ((long *) &pSdo->SlaveBuf[0] ) = ul ;
	return 0 ;
}

/**
 * \brief Object 0x2303
 */
long unsigned GetManipCalibCmdPD( struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si ;
    long unsigned ul ;

    si = pSdo->SubIndex ;

    if ( si >= 2 && si < 20 )
    {
        ul = * (long unsigned *) &ManipCalibProgPD.Calib.ParArr[si-2]  ;
        * ((long *) &pSdo->SlaveBuf[0] ) = ul ;
        return 0 ;
    }
    if ( si >= 102 && si < 120 )
    {
        ul = * (long unsigned *) &MaipCalibPD.ParArr[si-102]  ;
        * ((long *) &pSdo->SlaveBuf[0] ) = ul ;
        return 0 ;
    }

    switch ( si )
    {
    case 1:
        ul = ManipCalibProgPD.PassWord ;
        break ; // Already accepted
    case 20:
        ul = ManipCalibProgPD.Calib.CalibDate  ;
        break ;
    case 21:
        ul = ManipCalibProgPD.Calib.CalibData  ;
        break;
    case 22:
        ul = NCalibPars; // Return length of calibration vector
        break ;
    case 120:
        ul = MaipCalibPD.CalibDate  ;
        break ;
    case 121:
        ul = MaipCalibPD.CalibData  ;
        break;
    default:
        return Sub_index_does_not_exist ;
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
        if (us)
        {
            GpioDataRegs.GPASET.all = val;
        }
        else
        {
            GpioDataRegs.GPACLEAR.all = val;
        }
        break;
    case 1:
        if (us)
        {
            GpioDataRegs.GPBSET.all = val;
        }
        else
        {
            GpioDataRegs.GPBCLEAR.all = val;
        }
        break;
    case 2:
        if (us)
        {
            GpioDataRegs.GPCSET.all = val;
        }
        else
        {
            GpioDataRegs.GPCCLEAR.all = val;
        }
        break;
    case 3:
        if (us)
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
    (void) pSdo ;
     *nData = 4 ;
     * ((long *) &pSdo->SlaveBuf[0] ) = 0 ;
     return 0 ;
 }
