// Flags =  2 float , 4 unsigned , 8 short , 64 dfloat (sim only)  (see more options in the CCmdMode definition)
        { 0 , GetOffsetC(PassWord,CCalib),0.0f}, //1:PassWord [Admin] {Need be 0x12345600 + rec len = 32 }
        { 2 , GetOffsetC(PotCenter,CCalib),0.7f},//2:PotCenter [Pot] {Potentiometer center}
        { 2 , GetOffsetC(PotGainFac,CCalib),0.7f} ,//3:PotGainFac [Pot] {Potentiometer gain correction}
        { 2 , GetOffsetC(BrakeOutVoltBias,CCalib),2.5f} ,//4:BrakeOutVoltBias [Brake] {Brake output voltage bias}
        { 2 , GetOffsetC(BrakeOutVoltGain,CCalib),2.5f} ,//5:BrakeOutVoltGain [Brake] {Brake output voltage gain factor}
        { 2 , GetOffsetCC(CalibSpareFloat,15,CCalib),1.01f} ,//6:CalibSpareFloat15 [FSpare] {Spare floats}
        { 2 , GetOffsetCC(CalibSpareFloat,14,CCalib),1.01f} ,//7:CalibSpareFloat14 [FSpare] {Spare floats}
        { 2 , GetOffsetCC(CalibSpareFloat,13,CCalib),1.01f} ,//8:CalibSpareFloat13 [FSpare] {Spare floats}
        { 2 , GetOffsetCC(CalibSpareFloat,12,CCalib),1.01f} ,//9:CalibSpareFloat12 [FSpare] {Spare floats}
        { 2 , GetOffsetCC(CalibSpareFloat,11,CCalib),1.01f} ,//10:CalibSpareFloat11 [FSpare] {Spare floats}
        { 2 , GetOffsetCC(CalibSpareFloat,10,CCalib),1.01f} ,//11:CalibSpareFloat10 [FSpare] {Spare floats}
        { 2 , GetOffsetCC(CalibSpareFloat,9,CCalib),1.01f} ,//12:CalibSpareFloat9 [FSpare] {Spare floats}
        { 2 , GetOffsetCC(CalibSpareFloat,8,CCalib),1.01f} ,//13:CalibSpareFloat8 [FSpare] {Spare floats}
        { 2 , GetOffsetCC(CalibSpareFloat,7,CCalib),1.01f} ,//14:CalibSpareFloat7 [FSpare] {Spare floats}
        { 2 , GetOffsetCC(CalibSpareFloat,6,CCalib),1.01f} ,//15:CalibSpareFloat6 [FSpare] {Spare floats}
        { 2 , GetOffsetCC(CalibSpareFloat,5,CCalib),1.01f} ,//16:CalibSpareFloat5 [FSpare] {Spare floats}
        { 2 , GetOffsetCC(CalibSpareFloat,4,CCalib),1.01f} ,//17:CalibSpareFloat4 [FSpare] {Spare floats}
        { 2 , GetOffsetCC(CalibSpareFloat,3,CCalib),1.01f} ,//18:CalibSpareFloat3 [FSpare] {Spare floats}
        { 2 , GetOffsetCC(CalibSpareFloat,2,CCalib),1.01f} ,//19:CalibSpareFloat2 [FSpare] {Spare floats}
        { 2 , GetOffsetCC(CalibSpareFloat,1,CCalib),1.01f} ,//20:CalibSpareFloat1 [FSpare] {Spare floats}
        { 2 , GetOffsetCC(CalibSpareFloat,0,CCalib),1.01f} ,//21:CalibSpareFloat0 [FSpare] {Spare floats}
        { 0 , GetOffsetCC(CalibSpareLong,4,CCalib),1.01f} ,//22:CalibSpareLong7 [FSpare] {Spare floats}
        { 0 , GetOffsetCC(CalibSpareLong,3,CCalib),1.01f} ,//23:CalibSpareLong6 [FSpare] {Spare floats}
        { 0 , GetOffsetCC(CalibSpareLong,2,CCalib),1.01f} ,//24:CalibSpareLong5 [FSpare] {Spare floats}
        { 0 , GetOffsetCC(CalibSpareLong,1,CCalib),1.01f} ,//25:CalibSpareLong4 [FSpare] {Spare floats}
        { 0 , GetOffsetCC(CalibSpareLong,0,CCalib),1.01f} ,//26:CalibSpareLong3 [FSpare] {Spare floats}
        { 0 , GetOffsetC(CalibDate,CCalib) ,0.0f }, //27:CalibDate [Admin] {Calibration date}
        { 0 , GetOffsetC(CalibData,CCalib), 0.0f }, //28:CalibData [Admin] {Extra calibration ID data}
