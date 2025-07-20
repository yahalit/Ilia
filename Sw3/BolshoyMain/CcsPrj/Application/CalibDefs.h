// Flags =  2 float , 4 unsigned , 8 short , 64 dfloat (sim only)  (see more options in the CCmdMode definition)
        { 0 , GetOffsetC(PassWord,CCalib),0.0f}, //1:PassWord [Admin] {Need be 0x12345600 + rec len = 32 }
        { 2 , GetOffsetC(RSteerPotCenter,CCalib),0.7f },//2:RSteerPotCenter [Steering] {Potentiometer center for the right steering}
        { 2 , GetOffsetC(LSteerPotCenter,CCalib),0.7f},//3:LSteerPotCenter [Steering] {Potentiometer center for the left steering}
        { 2 , GetOffsetC(RSteerPotGainFac,CCalib),2.5f },//4:RSteerPotGainFac [Steering] {Potentiometer gain for the right steering}
        { 2 , GetOffsetC(LSteerPotGainFac,CCalib),2.5f},//5:LSteerPotGainFac [Steering] {Potentiometer gain for the left steering}
        { 2 , GetOffsetC(RNeckPotCenter,CCalib),0.7f},//6:RNeckPotCenter [Neck] {Potentiometer R center for the neck}
        { 2 , GetOffsetC(LNeckPotCenter,CCalib),0.7f} ,//7:LNeckPotCenter [Neck] {Potentiometer L center for the neck}
        { 2 , GetOffsetC(RNeckPotGainFac,CCalib),2.5f} ,//8:RNeckPotGainFac [Neck] {Potentiometer R gain for the neck}
        { 2 , GetOffsetC(LNeckPotGainFac,CCalib),2.5f} ,//9:LNeckPotGainFac [Neck] {Potentiometer L gain for the neck}
        { 2 , GetOffsetC(AccOffsetX,CCalib),0.2f} ,//10:AccOffsetX [IMU] {Accelerometer offset X}
        { 2 , GetOffsetC(AccOffsetY,CCalib),0.2f} ,//11:AccOffsetY [IMU] {Accelerometer offset Y}
        { 2 , GetOffsetC(AccOffsetZ,CCalib),0.2f} ,//12:AccOffsetZ [IMU] {Accelerometer offset Z}
        { 2 , GetOffsetC(GyroOffsetX,CCalib),0.2f} ,//13:GyroOffsetX[IMU] {Gyro offset X}
        { 2 , GetOffsetC(RWheelArmLatchTravel,CCalib),300.0f} ,//14:RWheelArmLatchTravel [WHEELARM] {Right wheel arm latch travel}
        { 2 , GetOffsetC(LWheelArmLatchTravel,CCalib),300.0f} ,//15:LWheelArmLatchTravel [WHEELARM] {Left wheel arm latch travel}
        { 2 , GetOffsetCC(qImu2ZeroENUPos,0,CCalib),1.01f} ,//16:qImu2Body0 [IMU] {IMU installation q [0]}
        { 2 , GetOffsetCC(qImu2ZeroENUPos,1,CCalib),1.01f} ,//17:qImu2Body1 [IMU] {IMU installation q [1]}
        { 2 , GetOffsetCC(qImu2ZeroENUPos,2,CCalib),1.01f} ,//18:qImu2Body2 [IMU] {IMU installation q [2]}
        { 2 , GetOffsetCC(qImu2ZeroENUPos,3,CCalib),1.01f} ,//19:qImu2Body3 [IMU] {IMU installation q [3]}
        { 2 , GetOffsetC(ObsoleteLaserGainCorrection,CCalib),2.1f} ,//20:LaserGainCorrection [LaserDist] {Laser }
        { 2 , GetOffsetC(ObsoleteLaserOffsetCorrection,CCalib),2.1f} ,//21:LaserOffsetCorrection [LaserDist] {Laser }
        { 2 , GetOffsetC(ObsoleteLaserMinimumVolts,CCalib),2.1f} ,//22:LaserMinimumVolts [LaserDist] {Laser }
        { 2 , GetOffsetC(WheelArmRZeroCnt,CCalib),1.0e6f} ,//23:WheelArmRZeroCnt [WHEELARM] {Right Pin motor count when engaged }
        { 2 , GetOffsetC(WheelArmLZeroCnt,CCalib),1.0e6f} ,//24:WheelArmLZeroCnt [WHEELARM] {Left Pin motor count when engaged }
        { 2 , GetOffsetC(ObsoleteNeckGainAddFac,CCalib),5.0f} ,//25:ObsoleteNeckGainAddFac [Neck] {Correction factor to neck gain }
        { 2 , GetOffsetC(RWheelArmGain,CCalib),2.2f} ,//26:RWheelArmGain [WHEELARM] {Potentiometer correction factor to wheel arm , right, gain }
        { 2 , GetOffsetC(LWheelArmGain,CCalib),2.2f} ,//27:LWheelArmGain [WHEELARM] {Potentiometer correction factor to wheel arm , left , gain }
        { 2 , GetOffsetC(RWheelArmOffset,CCalib),9.1f} ,//28:RWheelArmOffset [WHEELARM] {Potentiometer correction factor to wheel arm , right, offset }
        { 2 , GetOffsetC(LWheelArmOffset,CCalib),9.1f} ,//29:LWheelArmOffset [WHEELARM] {Potentiometer correction factor to wheel arm , left, offset }
        { 0 , GetOffsetC(RobotConfigObsolete,CCalib),2.e09f} ,//30:RobotConfig [Config] {Config }
        { 0 , GetOffsetC(CalibDate,CCalib) ,0.0f }, //31:CalibDate [Admin] {Calibration date}
        { 0 , GetOffsetC(CalibData,CCalib), 0.0f }, //32:CalibData [Admin] {Extra calibration ID data}
        { 2 , GetOffsetC(WheelRadiCorrection,CCalib),0.1f} ,//33:WheelRadiCorrection [Wheel] {Spare floats}
        { 2 , GetOffsetC(XCalibShiftR,CCalib), 0.1f }, //34:XCalibShiftR [SIDECAMERA] {Positive x shift to apply to right side camera}
        { 2 , GetOffsetC(XCalibShiftL,CCalib), 0.1f }, //35:XCalibShiftL [SIDECAMERA] {Positive X shift to apply to left side camera}
        { 2 , GetOffsetC(YCalibShiftR,CCalib), 0.1f }, //36:YCalibShiftR [SIDECAMERA] {Positive Y shift to apply to right side camera}
        { 2 , GetOffsetC(YCalibShiftL,CCalib), 0.1f }, //37:YCalibShiftL [SIDECAMERA] {Positive Y shift to apply to left side camera}
        { 2 , GetOffsetC(AzCalibShiftR,CCalib), 0.1f }, //38:AzCalibShiftR [SIDECAMERA] {Positive azimuth shift to apply to right side camera}
        { 2 , GetOffsetC(AzCalibShiftL,CCalib), 0.1f }, //39:AzCalibShiftL [SIDECAMERA] {Positive azimuth shift to apply to left side camera}
        { 2 , GetOffsetCC(CalibSpareFloat,8,CCalib),1.01f} ,//40:CalibSpareFloat8 [FSpare] {Spare floats}
        { 2 , GetOffsetCC(CalibSpareFloat,7,CCalib),1.01f} ,//41:CalibSpareFloat7 [FSpare] {Spare floats}
        { 2 , GetOffsetCC(CalibSpareFloat,6,CCalib),1.01f} ,//42:CalibSpareFloat6 [FSpare] {Spare floats}
        { 2 , GetOffsetCC(CalibSpareFloat,5,CCalib),1.01f} ,//43:CalibSpareFloat5 [FSpare] {Spare floats}
        { 2 , GetOffsetCC(CalibSpareFloat,4,CCalib),1.01f} ,//44:CalibSpareFloat4 [FSpare] {Spare floats}
        { 2 , GetOffsetCC(CalibSpareFloat,3,CCalib),1.01f} ,//45:CalibSpareFloat3 [FSpare] {Spare floats}
        { 2 , GetOffsetCC(CalibSpareFloat,2,CCalib),1.01f} ,//46:CalibSpareFloat2 [FSpare] {Spare floats}
        { 2 , GetOffsetCC(CalibSpareFloat,1,CCalib),1.01f} ,//47:CalibSpareFloat1 [FSpare] {Spare floats}
        { 2 , GetOffsetCC(CalibSpareFloat,0,CCalib),1.01f} ,//48:CalibSpareFloat0 [FSpare] {Spare floats}
        { 0 , GetOffsetCC(CalibSpareLong,7,CCalib),1.01f} ,//49:CalibSpareLong7 [FSpare] {Spare longs}
        { 0 , GetOffsetCC(CalibSpareLong,6,CCalib),1.01f} ,//50:CalibSpareLong6 [FSpare] {Spare longs}
        { 0 , GetOffsetCC(CalibSpareLong,5,CCalib),1.01f} ,//51:CalibSpareLong5 [FSpare] {Spare longs}
        { 0 , GetOffsetCC(CalibSpareLong,4,CCalib),1.01f} ,//52:CalibSpareLong4 [FSpare] {Spare longs}
        { 0 , GetOffsetCC(CalibSpareLong,3,CCalib),1.01f} ,//53:CalibSpareLong3 [FSpare] {Spare longs}
        { 0 , GetOffsetCC(CalibSpareLong,2,CCalib),1.01f} ,//54:CalibSpareLong2 [FSpare] {Spare longs}
        { 0 , GetOffsetCC(CalibSpareLong,1,CCalib),1.01f} ,//55:CalibSpareLong1 [FSpare] {Spare longs}
        { 0 , GetOffsetCC(CalibSpareLong,0,CCalib),1.01f} ,//56:CalibSpareLong0 [FSpare] {Spare longs}
