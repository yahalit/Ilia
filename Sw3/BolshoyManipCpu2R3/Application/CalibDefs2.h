// Flags =  2 float , 4 unsigned , 8 short , 64 dfloat (sim only)  (see more options in the CCmdMode definition)
    { 0 , GetOffsetC(PassWord,CCalib),0.0f}, //1:PassWord [Admin] {Need be 0x12345600 + rec len = 32 }
    { 2 , GetOffsetC(RDoorCenter,CCalib),3000.0f},//2:RDoorCenter [SCARA] {Center correction of SCARA right door motion}
    { 2 , GetOffsetC(RDoorGainFac,CCalib),1.0e-3f},//3:RDoorGainFac [SCARA] {Gain correction of SCARA right door motion}
    { 2 , GetOffsetC(LDoorCenter,CCalib),3000.0f },//4:LDoorCenter [SCARA] {Center correction of SCARA left door motion}
    { 2 , GetOffsetC(LDoorGainFac,CCalib),1.0e-3f},//5:LDoorGainFac [SCARA] {Gain correction of SCARA left door motion}
    { 2 , GetOffsetC(ShoulderCenter,CCalib),3.0e4f},//6:ShoulderCenter [SCARA] {Center correction of SCARA shoulder joint}
    { 2 , GetOffsetC(ElbowCenter,CCalib),3.0e4f} ,//7:ElbowCenter [SCARA] {Center correction of SCARA elbow joint}
    { 2 , GetOffsetC(WristCenter,CCalib),3.0e4f} ,//8:WristCenter [SCARA] {Center correction of SCARA wrist joint}
    { 0 , GetOffsetC(FlexRDoorCenter,CCalib),3.0e4f} ,//9:FlexRDoorCenter [TAPEARM] {Center correction of Tape arm right door}
    { 2 , GetOffsetC(FlexLDoorCenter,CCalib),3.0e4f} ,//10:FlexLDoorCenter [TAPEARM] {Center correction of Tape arm left door}
    { 2 , GetOffsetC(FlexRDoorGainFac,CCalib),3.0e4f} ,//11:FlexRDoorGainFac [TAPEARM] {Gain correction of right Tape arm door}
    { 2 , GetOffsetC(FlexLDoorGainFac,CCalib),3.0e4f} ,//12:FlexLDoorGainFac [TAPEARM] {Gain correction of left Tape arm door}
    { 0 , GetOffsetC(FlexDoorTopEndTravel,CCalib),3.0e4f} ,//13:FlexDoorTopEndTravel [TAPEARM] {Flex door top end of travel. Note it is not the top because direction reversed }
    { 0 , GetOffsetC(FlexDoorBotEndTravel,CCalib),3.0e4f} ,//14:FlexDoorBotEndTravel [TAPEARM] {Flex door bottom end of travel.}
    { 2 , GetOffsetCC(ParArr,0,CCalib),1.01f} ,//15:ParArr0 [FSpare] {ASpare floats}
    { 2 , GetOffsetCC(ParArr,1,CCalib),1.01f} ,//16:ParArr1[FSpare] {Spare floats}
    { 2 , GetOffsetCC(ParArr,2,CCalib),1.01f} ,//17:ParArr2 [FSpare] {Spare floats}
    { 2 , GetOffsetCC(ParArr,3,CCalib),1.01f} ,//18:ParArr3 [FSpare] {Spare floats}
    { 2 , GetOffsetCC(ParArr,4,CCalib),1.01f} ,//19:ParArr4 [FSpare] {Spare floats}
    { 2 , GetOffsetCC(ParArr,5,CCalib),1.01f} ,//20:ParArr5 [FSpare] {Spare floats}
    { 2 , GetOffsetCC(ParArr,6,CCalib),1.01f} ,//21:ParArr6 [FSpare] {Spare floats}
    { 2 , GetOffsetCC(ParArr,7,CCalib),1.01f} ,//22:ParArr7 [FSpare] {Spare floats}
    { 2 , GetOffsetCC(ParArr,8,CCalib),1.01f} ,//23:ParArr8 [FSpare] {Spare floats }
    { 2 , GetOffsetCC(ParArr,9,CCalib),1.01f} ,//24:ParArr9 [FSpare] {Spare floats }
    { 2 , GetOffsetCC(ParArr,10,CCalib),1.01f} ,//25:ParArr10 [FSpare] {Spare floats }
    { 2 , GetOffsetCC(ParArr,11,CCalib),1.01f} ,//26:ParArr11 [FSpare] {Spare floats }
    { 2 , GetOffsetCC(ParArr,12,CCalib),1.01f} ,//27:ParArr12 [FSpare] {Spare floats }
    { 2 , GetOffsetCC(ParArr,13,CCalib),1.01f} ,//28:ParArr13 [FSpare] {Spare floats }
    { 2 , GetOffsetCC(ParArr,14,CCalib),1.01f} ,//29:ParArr14 [FSpare] {Spare floats }
    { 2 , GetOffsetC(RobotConfig,CCalib),2.e09f} ,//30:RobotConfig [Config] {Config }
    { 0 , GetOffsetC(CalibDate,CCalib) ,0.0f }, //31:CalibDate [Admin] {Calibration date}
    { 0 , GetOffsetC(CalibData,CCalib), 0.0f }, //32:CalibData [Admin] {Extra calibration ID data}
    { 2 , GetOffsetCC(CalibSpareFloat,15,CCalib),1.01f} ,//33:CalibSpareFloat15 [FSpare] {Spare floats}
    { 2 , GetOffsetCC(CalibSpareFloat,14,CCalib),1.01f} ,//34:CalibSpareFloat14 [FSpare] {Spare floats}
    { 2 , GetOffsetCC(CalibSpareFloat,13,CCalib),1.01f} ,//35:CalibSpareFloat13 [FSpare] {Spare floats}
    { 2 , GetOffsetCC(CalibSpareFloat,12,CCalib),1.01f} ,//36:CalibSpareFloat12 [FSpare] {Spare floats}
    { 2 , GetOffsetCC(CalibSpareFloat,11,CCalib),1.01f} ,//37:CalibSpareFloat11 [FSpare] {Spare floats}
    { 2 , GetOffsetCC(CalibSpareFloat,10,CCalib),1.01f} ,//38:CalibSpareFloat10 [FSpare] {Spare floats}
    { 2 , GetOffsetCC(CalibSpareFloat,9,CCalib),1.01f} ,//39:CalibSpareFloat9 [FSpare] {Spare floats}
    { 2 , GetOffsetCC(CalibSpareFloat,8,CCalib),1.01f} ,//40:CalibSpareFloat8 [FSpare] {Spare floats}
    { 2 , GetOffsetCC(CalibSpareFloat,7,CCalib),1.01f} ,//41:CalibSpareFloat7 [FSpare] {Spare floats}
    { 2 , GetOffsetCC(CalibSpareFloat,6,CCalib),1.01f} ,//42:CalibSpareFloat6 [FSpare] {Spare floats}
    { 2 , GetOffsetCC(CalibSpareFloat,5,CCalib),1.01f} ,//43:CalibSpareFloat5 [FSpare] {Spare floats}
    { 2 , GetOffsetCC(CalibSpareFloat,4,CCalib),1.01f} ,//44:CalibSpareFloat4 [FSpare] {Spare floats}
    { 2 , GetOffsetCC(CalibSpareFloat,3,CCalib),1.01f} ,//45:CalibSpareFloat3 [FSpare] {Spare floats}
    { 2 , GetOffsetCC(CalibSpareFloat,2,CCalib),1.01f} ,//46:CalibSpareFloat2 [FSpare] {Spare floats}
    { 2 , GetOffsetCC(CalibSpareFloat,1,CCalib),1.01f} ,//47:CalibSpareFloat1 [FSpare] {Spare floats}
    { 2 , GetOffsetCC(CalibSpareFloat,0,CCalib),1.01f} ,//48:CalibSpareFloat0 [FSpare] {Spare floats}
    { 0 , GetOffsetCC(CalibSpareLong,7,CCalib),1.01f} ,//49:CalibSpareLong7 [FSpare] {Spare floats}
    { 0 , GetOffsetCC(CalibSpareLong,6,CCalib),1.01f} ,//50:CalibSpareLong6 [FSpare] {Spare floats}
    { 0 , GetOffsetCC(CalibSpareLong,5,CCalib),1.01f} ,//51:CalibSpareLong5 [FSpare] {Spare floats}
    { 0 , GetOffsetCC(CalibSpareLong,4,CCalib),1.01f} ,//52:CalibSpareLong4 [FSpare] {Spare floats}
    { 0 , GetOffsetCC(CalibSpareLong,3,CCalib),1.01f} ,//53:CalibSpareLong3 [FSpare] {Spare floats}
    { 0 , GetOffsetCC(CalibSpareLong,2,CCalib),1.01f} ,//54:CalibSpareLong2 [FSpare] {Spare floats}
    { 0 , GetOffsetCC(CalibSpareLong,1,CCalib),1.01f} ,//55:CalibSpareLong1 [FSpare] {Spare floats}
    { 0 , GetOffsetCC(CalibSpareLong,0,CCalib),1.01f} ,//56:CalibSpareLong0 [FSpare] {Spare floats}
