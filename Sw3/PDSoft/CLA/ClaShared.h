/*
 * ClaShared.h
 *
 *  Created on: Sep 15, 2021
 *      Author: User
 */

#ifndef CLA_CLASHARED_H_
#define CLA_CLASHARED_H_

#ifdef CLA_OWNER

#define CLA_EXTERN_TAG
#pragma DATA_SECTION(ClaInput,"CpuToCla1MsgRAM");
#pragma DATA_SECTION(ClaRslt,"Cla1ToCpuMsgRAM");
#pragma DATA_SECTION(ClaState,".bss_cla") ;
#pragma DATA_SECTION(AdcGains,".bss_cla") ;
#pragma DATA_SECTION(Buck12Control,".bss_cla") ;
#pragma DATA_SECTION(Buck24Control,".bss_cla") ;

#else
#define CLA_EXTERN_TAG extern
#endif

CLA_EXTERN_TAG float AdcGains[16] ;

struct CPdAnalogs
{
    float Volts24 ;
    float VServo ;
    float CurServo ;
    float CurAirPump[3] ;
    float V36 ;
    float VBat54[2] ;
    float Volts12[2] ;
    float Cur5 ;
    float Volts5 ;
    float IShunt ;
    float Cur24 ;
    float Cur12 ;
};


struct CClaState
{
    long unsigned ClaIntCntr ;
    struct CPdAnalogs Raw  ;
    struct CPdAnalogs Filt ;
    float  V54NowRatio ;
    float  V12NowRatio ;
    float  V24NowRatio ;
    float  V12FinalRatio ;
    float  V24FinalRatio ;
};


// NEVER change the order of the elements of this struct
struct CBuckControl
{
    float VSetPoint ; // !< Voltage set point for controller
    float VSetPointNom ;
    float VinMin  ; // !< Under voltage condition for input voltage
    float VinMax  ; // !< Over voltage condition for input voltage
    float VoutMax ; // !< Over voltage condition for output voltage
    float IoutMax ; // !< Maximum current for exception
    float ValOut ;
    short MotorOn  ;
    short Exception ; // !< Exception flag if converter aborts
    short MotorOnRequest ; // !< Request to start action
    float VoltageInputExp ; // !< Voltage while voltage input exception
    float VoltageOutputExp ; // !< Voltage while voltage output exception
    float CurrentAtExp ; // !< Captured current exception
    float Val2PWM ;
    short unsigned Ready ; // !< 1 if servo switch is ready
    short unsigned pwm ;
};
CLA_EXTERN_TAG struct CBuckControl Buck12Control ;
CLA_EXTERN_TAG struct CBuckControl Buck24Control ;


struct CClaRslt
{
    float y;
};

struct CClaInput
{
    long  IntentionallyZero[2] ; // Should be kept zero; using this field the CPU identifies wake from boot
};


CLA_EXTERN_TAG struct CClaRslt ClaRslt;
CLA_EXTERN_TAG struct CClaInput ClaInput;
CLA_EXTERN_TAG volatile struct CClaState ClaState;



#endif /* CLA_CLASHARED_H_ */
