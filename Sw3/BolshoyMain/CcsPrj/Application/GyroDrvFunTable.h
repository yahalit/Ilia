/*
 * GyroDrvFunTable.h
 *
 *  Created on: Sep 2, 2021
 *      Author: Yahali
 */

#ifndef APPLICATION_GYRODRVFUNTABLE_H_
#define APPLICATION_GYRODRVFUNTABLE_H_

#ifdef GYRO_OWNER
#define G_EXTERN_TAG
#else
#define G_EXTERN_TAG extern
#endif


enum E_GYRO_MANAGE_STATE
{
    EX_sendGoToConfig = 0 ,
    EX_WaitAckGoToConfig = 1,
    EX_sendDataConfig = 2 ,
    EX_WaitAckDataConfig = 3,
    EX_sendOptions = 4 ,
    EX_WaitAckOptions = 5,
    EX_RcvOptions = 6 ,
    EX_WaitRcvAckOptions = 7,

    EX_sendGoToMeaseurement = 10 ,
    EX_WaitAckGoToMeaseurement = 11,
    EX_GyoProgDone = 20
};



typedef void (*GHfun)(short unsigned) ;

void FastNextGyroSciHandlerGetDataMsgLength(short unsigned c );
void FastNextGyroSciHandlerGetWakeup(short unsigned c );
void FastNextGyroSciHandlerGetConfigAck( short unsigned c );
void FastNextGyroSciHandlerGetOptionFlags( short unsigned c );
void FastNextGyroSciHandlerInit(unsigned short c);
void FastNextGyroSciHandlerInit2(short unsigned c );
void FastGyroSciRxHandlerGetCs(short unsigned c );
void FastNextGyroSciHandlerGetDataMsgLength(short unsigned c );
void FastNextGyroSciHandlerDataMsgCollect1(short unsigned c );
void FastNextGyroSciHandlerDataMsgCollect2(short unsigned c );
void FastNextGyroSciHandlerDataMsgCollect3(short unsigned c );
void FastNextGyroSciHandlerDataMsgCollect4(short unsigned c );
void FastGyroSciRxHandlerDataMsgGetCs(short unsigned c );
void FastNextGyroSciHandlerGetMeasurementAck( short unsigned c );
void FastNextGyroSciOutputCfgAck( short unsigned c );

#define GYRO_CMD_GoToConfig         0x30
#define GYRO_CMD_GetOptionFlags     0x48
#define GYRO_CMD_GoToMeasurement    0x10


//#pragma DATA_SECTION(GyroMsgHandler,".SecTab");

const GHfun GyroMsgHandler[256] =
{
FastNextGyroSciHandlerInit, // 0
FastNextGyroSciHandlerInit, // 1
FastNextGyroSciHandlerInit, // 2
FastNextGyroSciHandlerInit, // 3
FastNextGyroSciHandlerInit, // 4
FastNextGyroSciHandlerInit, // 5
FastNextGyroSciHandlerInit, // 6
FastNextGyroSciHandlerInit, // 7
FastNextGyroSciHandlerInit, // 8
FastNextGyroSciHandlerInit, // 9
FastNextGyroSciHandlerInit, // a
FastNextGyroSciHandlerInit, // b
FastNextGyroSciHandlerInit, // c
FastNextGyroSciHandlerInit, // d
FastNextGyroSciHandlerInit, // e
FastNextGyroSciHandlerInit, // f
FastNextGyroSciHandlerInit, // 10
FastNextGyroSciHandlerGetMeasurementAck, // 11
FastNextGyroSciHandlerInit, // 12
FastNextGyroSciHandlerInit, // 13
FastNextGyroSciHandlerInit, // 14
FastNextGyroSciHandlerInit, // 15
FastNextGyroSciHandlerInit, // 16
FastNextGyroSciHandlerInit, // 17
FastNextGyroSciHandlerInit, // 18
FastNextGyroSciHandlerInit, // 19
FastNextGyroSciHandlerInit, // 1a
FastNextGyroSciHandlerInit, // 1b
FastNextGyroSciHandlerInit, // 1c
FastNextGyroSciHandlerInit, // 1d
FastNextGyroSciHandlerInit, // 1e
FastNextGyroSciHandlerInit, // 1f
FastNextGyroSciHandlerInit, // 20
FastNextGyroSciHandlerInit, //21
FastNextGyroSciHandlerInit, //22
FastNextGyroSciHandlerInit, //23
FastNextGyroSciHandlerInit, //24
FastNextGyroSciHandlerInit, //25
FastNextGyroSciHandlerInit, //26
FastNextGyroSciHandlerInit, //27
FastNextGyroSciHandlerInit, //28
FastNextGyroSciHandlerInit, //29
FastNextGyroSciHandlerInit, //2a
FastNextGyroSciHandlerInit, //2b
FastNextGyroSciHandlerInit, //2c
FastNextGyroSciHandlerInit, //2d
FastNextGyroSciHandlerInit, //2e
FastNextGyroSciHandlerInit, //2f
FastNextGyroSciHandlerInit, //30
FastNextGyroSciHandlerGetConfigAck, //31
FastNextGyroSciHandlerInit, //32
FastNextGyroSciHandlerInit, //33
FastNextGyroSciHandlerInit, //34
FastNextGyroSciHandlerInit, //35
FastNextGyroSciHandlerGetDataMsgLength, //36
FastNextGyroSciHandlerInit, //37
FastNextGyroSciHandlerInit, //38
FastNextGyroSciHandlerInit, //39
FastNextGyroSciHandlerInit, //3a
FastNextGyroSciHandlerInit, //3b
FastNextGyroSciHandlerInit, //3c
FastNextGyroSciHandlerInit, //3d
FastNextGyroSciHandlerGetWakeup, //3e
FastNextGyroSciHandlerInit, //3f
FastNextGyroSciHandlerInit, //40
FastNextGyroSciHandlerInit, //41
FastNextGyroSciHandlerInit, //42
FastNextGyroSciHandlerInit, //43
FastNextGyroSciHandlerInit, //44
FastNextGyroSciHandlerInit, //45
FastNextGyroSciHandlerInit, //46
FastNextGyroSciHandlerInit, //47
FastNextGyroSciHandlerInit, //48
FastNextGyroSciHandlerGetOptionFlags, //49
FastNextGyroSciHandlerInit, //4a
FastNextGyroSciHandlerInit, //4b
FastNextGyroSciHandlerInit, //4c
FastNextGyroSciHandlerInit, //4d
FastNextGyroSciHandlerInit, //4e
FastNextGyroSciHandlerInit, //4f
FastNextGyroSciHandlerInit, //50
FastNextGyroSciHandlerInit, //51
FastNextGyroSciHandlerInit, //52
FastNextGyroSciHandlerInit, //53
FastNextGyroSciHandlerInit, //54
FastNextGyroSciHandlerInit, //55
FastNextGyroSciHandlerInit, //56
FastNextGyroSciHandlerInit, //57
FastNextGyroSciHandlerInit, //58
FastNextGyroSciHandlerInit, //59
FastNextGyroSciHandlerInit, //5a
FastNextGyroSciHandlerInit, //5b
FastNextGyroSciHandlerInit, //5c
FastNextGyroSciHandlerInit, //5d
FastNextGyroSciHandlerInit, //5e
FastNextGyroSciHandlerInit, //5f
FastNextGyroSciHandlerInit, //60
FastNextGyroSciHandlerInit, //61
FastNextGyroSciHandlerInit, //62
FastNextGyroSciHandlerInit, //63
FastNextGyroSciHandlerInit, //64
FastNextGyroSciHandlerInit, //65
FastNextGyroSciHandlerInit, //66
FastNextGyroSciHandlerInit, //67
FastNextGyroSciHandlerInit, //68
FastNextGyroSciHandlerInit, //69
FastNextGyroSciHandlerInit, //6a
FastNextGyroSciHandlerInit, //6b
FastNextGyroSciHandlerInit, //6c
FastNextGyroSciHandlerInit, //6d
FastNextGyroSciHandlerInit, //6e
FastNextGyroSciHandlerInit, //6f
FastNextGyroSciHandlerInit, //70
FastNextGyroSciHandlerInit, //71
FastNextGyroSciHandlerInit, //72
FastNextGyroSciHandlerInit, //73
FastNextGyroSciHandlerInit, //74
FastNextGyroSciHandlerInit, //75
FastNextGyroSciHandlerInit, //76
FastNextGyroSciHandlerInit, //77
FastNextGyroSciHandlerInit, //78
FastNextGyroSciHandlerInit, //79
FastNextGyroSciHandlerInit, //7a
FastNextGyroSciHandlerInit, //7b
FastNextGyroSciHandlerInit, //7c
FastNextGyroSciHandlerInit, //7d
FastNextGyroSciHandlerInit, //7e
FastNextGyroSciHandlerInit, //7f
FastNextGyroSciHandlerInit, //80
FastNextGyroSciHandlerInit, //81
FastNextGyroSciHandlerInit, //82
FastNextGyroSciHandlerInit, //83
FastNextGyroSciHandlerInit, //84
FastNextGyroSciHandlerInit, //85
FastNextGyroSciHandlerInit, //86
FastNextGyroSciHandlerInit, //87
FastNextGyroSciHandlerInit, //88
FastNextGyroSciHandlerInit, //89
FastNextGyroSciHandlerInit, //8a
FastNextGyroSciHandlerInit, //8b
FastNextGyroSciHandlerInit, //8c
FastNextGyroSciHandlerInit, //8d
FastNextGyroSciHandlerInit, //8e
FastNextGyroSciHandlerInit, //8f
FastNextGyroSciHandlerInit, //90
FastNextGyroSciHandlerInit, //91
FastNextGyroSciHandlerInit, //92
FastNextGyroSciHandlerInit, //93
FastNextGyroSciHandlerInit, //94
FastNextGyroSciHandlerInit, //95
FastNextGyroSciHandlerInit, //96
FastNextGyroSciHandlerInit, //97
FastNextGyroSciHandlerInit, //98
FastNextGyroSciHandlerInit, //99
FastNextGyroSciHandlerInit, //9a
FastNextGyroSciHandlerInit, //9b
FastNextGyroSciHandlerInit, //9c
FastNextGyroSciHandlerInit, //9d
FastNextGyroSciHandlerInit, //9e
FastNextGyroSciHandlerInit, //9f

FastNextGyroSciHandlerInit, //a0
FastNextGyroSciHandlerInit, //a1
FastNextGyroSciHandlerInit, //a2
FastNextGyroSciHandlerInit, //a3
FastNextGyroSciHandlerInit, //a4
FastNextGyroSciHandlerInit, //a5
FastNextGyroSciHandlerInit, //a6
FastNextGyroSciHandlerInit, //a7
FastNextGyroSciHandlerInit, //a8
FastNextGyroSciHandlerInit, //a9
FastNextGyroSciHandlerInit, //aa
FastNextGyroSciHandlerInit, //ab
FastNextGyroSciHandlerInit, //ac
FastNextGyroSciHandlerInit, //ad
FastNextGyroSciHandlerInit, //ae
FastNextGyroSciHandlerInit, //af

FastNextGyroSciHandlerInit, //b0
FastNextGyroSciHandlerInit, //b1
FastNextGyroSciHandlerInit, //b2
FastNextGyroSciHandlerInit, //b3
FastNextGyroSciHandlerInit, //b4
FastNextGyroSciHandlerInit, //b5
FastNextGyroSciHandlerInit, //b6
FastNextGyroSciHandlerInit, //b7
FastNextGyroSciHandlerInit, //b8
FastNextGyroSciHandlerInit, //b9
FastNextGyroSciHandlerInit, //ba
FastNextGyroSciHandlerInit, //bb
FastNextGyroSciHandlerInit, //bc
FastNextGyroSciHandlerInit, //bd
FastNextGyroSciHandlerInit, //be
FastNextGyroSciHandlerInit, //bf

FastNextGyroSciHandlerInit, //c0
FastNextGyroSciOutputCfgAck, //c1
FastNextGyroSciHandlerInit, //c2
FastNextGyroSciHandlerInit, //c3
FastNextGyroSciHandlerInit, //c4
FastNextGyroSciHandlerInit, //c5
FastNextGyroSciHandlerInit, //c6
FastNextGyroSciHandlerInit, //c7
FastNextGyroSciHandlerInit, //c8
FastNextGyroSciHandlerInit, //c9
FastNextGyroSciHandlerInit, //ca
FastNextGyroSciHandlerInit, //cb
FastNextGyroSciHandlerInit, //cc
FastNextGyroSciHandlerInit, //cd
FastNextGyroSciHandlerInit, //ce
FastNextGyroSciHandlerInit, //cf

FastNextGyroSciHandlerInit, //d0
FastNextGyroSciHandlerInit, //d1
FastNextGyroSciHandlerInit, //d2
FastNextGyroSciHandlerInit, //d3
FastNextGyroSciHandlerInit, //d4
FastNextGyroSciHandlerInit, //d5
FastNextGyroSciHandlerInit, //d6
FastNextGyroSciHandlerInit, //d7
FastNextGyroSciHandlerInit, //d8
FastNextGyroSciHandlerInit, //d9
FastNextGyroSciHandlerInit, //da
FastNextGyroSciHandlerInit, //db
FastNextGyroSciHandlerInit, //dc
FastNextGyroSciHandlerInit, //dd
FastNextGyroSciHandlerInit, //de
FastNextGyroSciHandlerInit, //df

FastNextGyroSciHandlerInit, //e0
FastNextGyroSciHandlerInit, //e1
FastNextGyroSciHandlerInit, //e2
FastNextGyroSciHandlerInit, //e3
FastNextGyroSciHandlerInit, //e4
FastNextGyroSciHandlerInit, //e5
FastNextGyroSciHandlerInit, //e6
FastNextGyroSciHandlerInit, //e7
FastNextGyroSciHandlerInit, //e8
FastNextGyroSciHandlerInit, //e9
FastNextGyroSciHandlerInit, //ea
FastNextGyroSciHandlerInit, //eb
FastNextGyroSciHandlerInit, //ec
FastNextGyroSciHandlerInit, //ed
FastNextGyroSciHandlerInit, //ee
FastNextGyroSciHandlerInit, //ef

FastNextGyroSciHandlerInit, //f0
FastNextGyroSciHandlerInit, //f1
FastNextGyroSciHandlerInit, //f2
FastNextGyroSciHandlerInit, //f3
FastNextGyroSciHandlerInit, //f4
FastNextGyroSciHandlerInit, //f5
FastNextGyroSciHandlerInit, //f6
FastNextGyroSciHandlerInit, //f7
FastNextGyroSciHandlerInit, //f8
FastNextGyroSciHandlerInit, //f9
FastNextGyroSciHandlerInit, //fa
FastNextGyroSciHandlerInit, //fb
FastNextGyroSciHandlerInit, //fc
FastNextGyroSciHandlerInit, //fd
FastNextGyroSciHandlerInit, //fe
FastNextGyroSciHandlerInit, //ff
};


#endif /* APPLICATION_GYRODRVFUNTABLE_H_ */
