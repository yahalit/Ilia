// Flags =  0 : long , 2 float , 4 unsigned , 8 short , 64 dfloat (sim only)  (see more options in the CCmdMode definition)
        { 0 , (long unsigned *) & IsrTimer.UsecTimer },
        { 0 , (long unsigned *) & IsrTimer.UsecTimer }, //1:UsecTimer [Time] {Microsecond timer at hardware}
        { 0 , (long unsigned *) & IsrTimer.UsecTimerAtMsec },//2:UsecTimerAtMsec [Time] {Value of microsecond timer on exact millisecond timer}
        { 0 , (long unsigned *) & IsrTimer.mSecTimer },//3:mSecTimer [Time] {millisecond timer}
        { 0 , (long unsigned *) & GyroInt.Time },//:GyroIntTime [Time] {micro-second counter at the time of gyro integration }
        { 0 , (long unsigned *) & IsrTimer.SecTimer },//5:SecTimer [Time] {Seconds timer}
        { 2 , (long unsigned *) & SysState.CanAxis[LOGICAL_LSTEER].BH.PotMean},//10:LeftSteerPot [RawSensor] {Raw value of left steer potentiometer, normalized to 0..1}
        { 2 , (long unsigned *) & SysState.CanAxis[LOGICAL_RSTEER].BH.PotMean},//11:RightSteerPot [RawSensor]
        { 2 , (long unsigned *) & Analogs.UsSamp1},//12:LaserDist [SensorOut]
        { 2 , (long unsigned *) & Analogs.OverLoadkRWh2},//13:OveloadLeftWheel [Spare]
        { 2 , (long unsigned *) & Analogs.OverLoadkRNk},//14:OverloadNeck  [Spare]
        { 0 , (long unsigned *) & CorrectByLine.Statistics2 }, //16:CorrectByLineStatistics2  [Navigation]
        { 0 , (long unsigned *) & CorrectByLine.Statistics1 }, //16:CorrectByLineStatistics1  [Navigation]
        { 2 , (long unsigned *) & ManRouteCmd.ShelfRunPars.Xbase }, //:Xbase  [Debug] {Xbase}
        { 2 , (long unsigned *) & ManRouteCmd.ShelfRunPars.Ybase }, //:Ybase  [Debug] {Ybase}
        { 2 , (long unsigned *) & SysState.ManRouteState.Destination[0] }, //:Destination0  [Debug] {Destination0 }
        { 0 , (long unsigned *) & SysState.ManRouteState.WheelEncoderNow[0] }, //:WheelEncoderNow0  [Debug] {Ochtok}
        { 2 , (long unsigned *) & SysState.Nav.Imu.Omega[0]},//25:ImuOmega0 [SensorOut]  {Gyro angular omega for X, scaled, offset not removed}
        { 2 , (long unsigned *) & SysState.Nav.Imu.Omega[1]},//26:ImuOmega1 [SensorOut]  {Gyro angular omega for Y, scaled, offset not removed}
        { 2 , (long unsigned *) & SysState.Nav.Imu.Omega[2]},//27:ImuOmega2 [SensorOut]  {Gyro angular omega for Z, scaled, offset not removed}
        { 12 , (long unsigned *) & SysState.Nav.Imu.ID}, //31:ImuID [RawSensor]
        { 2 , (long unsigned *) & SegRun.SegDone},//46:SegDone [AutoMotion]
        { 8 , (long unsigned *) & SegRun.SegIndex},//46:SegIndex [AutoMotion]
        { 2 , (long unsigned *) & SegRun.FullSegsDone},//47:FullSegsDone  [AutoMotion]
        { 2 , (long unsigned *) & SegRun.s},//:RunS  [AutoMotion]
        { 2 , (long unsigned *) & SegRun.ds},//:RundS  [AutoMotion]
        { 8 , (long unsigned *) & SegRun.State},//:RunState  [AutoMotion]
        { 0 , (long unsigned *) & SysState.CBit.all } , //:CBit [BIT] {Bit field, BIT summary}
        { 12 , (long unsigned *) & SysState.Mot.ChgMode.SubState},//:ChgModeSubState [Mission] {Sub State of change}
        { 12 , (long unsigned *) & SysState.Mot.ChgMode.State},//:ChgModeState [Mission] {State of change}
        { 2 , (long unsigned *) & GyroInt.AccOffset[1]},//:Aoffset_1 [Navigation] {ay,accelerometer offset}
        { 2 , (long unsigned *) & SysState.ManRouteState.LeaderError},//:LeaderError [Debug] {Leader error in pole climb}
        { 2 , (long unsigned *) & GyroInt.Wbody[0]},//56:Wbody_0 [Navigation] {wx,body scaled and offset removed}
        { 2 , (long unsigned *) & GyroInt.Wbody[1]},//57:Wbody_1 [Navigation] {wy,body scaled and offset removed}
        { 2 , (long unsigned *) & GyroInt.Wbody[2]},//58:Wbody_2 [Navigation] {wz,body scaled and offset removed}
        { 2 , (long unsigned *) & GyroInt.BodyQuat[0]},//59:BodyQuat0 [Navigation] {q body,Quaternion of head system}
        { 2 , (long unsigned *) & GyroInt.BodyQuat[1]},//60:BodyQuat1 [Navigation] {q body,Quaternion of head system}
        { 2 , (long unsigned *) & GyroInt.BodyQuat[2]},//61:BodyQuat2 [Navigation] {q body,Quaternion of head system}
        { 2 , (long unsigned *) & GyroInt.BodyQuat[3]},//62:BodyQuat3 [Navigation] {q body,Quaternion of head system}
        { 2 , (long unsigned *) & GyroInt.deltaT},//:GyrodT [Debug] {Gyro: Difference between consecutive integrations}.
        { 2 , (long unsigned *) & GyroInt.GyroQuat[0]},//:GyroQuat0 [Debug] {Q gyro int free,Quaternion of head system}
        { 2 , (long unsigned *) & GyroInt.GyroQuat[1]},//:GyroQuat1 [Debug] {Q gyro int free,Quaternion of head system}
        { 2 , (long unsigned *) & GyroInt.GyroQuat[2]},//:GyroQuat2 [Debug] {Q gyro int free,Quaternion of head system}
        { 2 , (long unsigned *) & GyroInt.GyroQuat[3]},//:GyroQuat3 [Debug] {Q gyro int free,Quaternion of head system}
        { 0 , (long unsigned *) & SysState.RelCrabState.CameraDelayCounter},//:CameraDelayCounter [Crab] {Side Camera Delay Counter}
        { 2 , (long unsigned *) & SysState.RelCrabState.CalibCorrectedPosX},//:CalibCorrectedPosX [Crab] {Calibration Corrected PosX}
        { 2 , (long unsigned *) & SysState.RelCrabState.CalibCorrectedPosY},//:CalibCorrectedPosY [Crab] {Calibration Corrected PosY}
        { 2 , (long unsigned *) & SysState.RelCrabState.CalibCorrectedPosAz},//:CalibCorrectedPosAz [Crab] {Calibration Corrected AZ}
        { 2 , (long unsigned *) &  SysState.RelCrabState.AzError},//:AzError [Crab] {Crab azimuth Error fix}
        { 2 , (long unsigned *) &  SysState.RelCrabState.XError},//:XError [Crab] {Crab X Error fix}
        { 2 , (long unsigned *) &  SysState.RelCrabState.CalibCorrectedPosXBeforeCrab},//:CalibCorrectedPosXBeforeCrab [Crab] {Calib Corrected Pos X Before Crab}
        { 2 , (long unsigned *) &  SysState.RelCrabState.CalibCorrectedPosXAfterCrab},//:CalibCorrectedPosXAfterCrab [Crab] {Calib Corrected Pos X After Crab}
        { 2 , (long unsigned *) &  CrabProfiler.Done},//:CrabProfilerDone [Crab] {Crab Profiler Done}
        { 2 , (long unsigned *) & SysState.Nav.yaw},//:EulerYaw [Navigation] {Estimated body yew}
        { 2 , (long unsigned *) & SysState.Nav.dyaw},//:DEulerYaw [Navigation] {Estimated body yew}
        { 2 , (long unsigned *) &SysState.Nav.pitch},//:EulerPitch [Navigation] {Estimated body pitch}
        { 2 , (long unsigned *) &SysState.Nav.roll},//:EulerRoll [Navigation] {Estimated body roll}
        { 0 , (long unsigned *) &SysState.Nav.iPos[0]},//:iPos0 [Navigation] {Center position 1/10mm}
        { 0 , (long unsigned *) &SysState.Nav.iPos[1]},//:iPos1 [Navigation] {Center position 1/10mm}
        { 0 , (long unsigned *) &SysState.Nav.iPos[2]},//:iPos2 [Navigation] {Center position 1/10mm}
        { 2 , (long unsigned *) &SysState.ManRouteState.LineSpeed},//:LineSpeed [Navigation] {Line speed m/sec}
        { 2 , (long unsigned *) &SysState.ManRouteState.Curvature},//:LineCurvature [Navigation] {Line curvature}
        { 2 , (long unsigned *) &ManRouteCmd.CurvatureCmd},//:CurvatureCmd [Navigation] {Line curvature command}
        { 2 , (long unsigned *) &ManRouteCmd.dCurvatureCmd},//:dCurvatureCmd [Navigation] {Line curvature command}
        { 2 , (long unsigned *) & SysState.CanAxis[LOGICAL_RSTEER].BH.UserPosCmd}, //:RwSteerTarget [RawCmd]
        { 2 , (long unsigned *) & SysState.CanAxis[LOGICAL_LSTEER].BH.UserPosCmd}, //:LwSteerTarget [RawCmd]
        { 8 , (long unsigned *) & ManRouteCmd.ShelfMode}, //:ShelfMode [Mission] {Mode of mission management}
        { 8 , (long unsigned *) & ManRouteCmd.ShelfSubMode}, //:ShelfSubMode [Mission] {Submode of mission management}
        { 0 , (long unsigned *) &SysState.ManRouteState.DinCapture[0] }  , //:DinCapture0 [Mission] {Digital input capture of right wheel}
        { 0 , (long unsigned *) &SysState.ManRouteState.DinCapture[1] }  , //:DinCapture1 [Mission] {Digital input capture of left wheel}
        { 0 , (long unsigned *) &SysState.ManRouteState.WheelEncoderTarget[0]},//:WheelEncoderTarget0 [Mission] {Target R for wheel encoders}
        { 0 , (long unsigned *) &SysState.ManRouteState.WheelEncoderTarget[1]},//:WheelEncoderTarget1 [Mission] {Target L for wheel encoders}
        { 0 , (long unsigned *) &SysState.ManRouteState.errPos[0]},//:errPos0 [Mission] {Error R of position control (wheel encoder units )}
        { 0 , (long unsigned *) &SysState.ManRouteState.errPos[1]},//:errPos1 [Mission] {Error L of position control (wheel encoder units )}
        { 2 , (long unsigned *) &SysState.ManRouteState.DeltaM  }, //:DeltaM [Mission] {Distance traveled since last event}
        { 8 , (long unsigned *) &SysState.Mot.bPauseFlag }, //:bPauseFlag [AutoMotion] {Pause flag }
        { 2 , (long unsigned *) &SysState.Nav.Robot.OdoSpeed[0]},//:OdoSpeed0 [Navigation] {Odometry raw speed x}
        { 2 , (long unsigned *) &SysState.Nav.Robot.OdoSpeed[1]},//:OdoSpeed1 [Navigation] {Odometry raw speed y}
        { 2 , (long unsigned *) &SysState.Nav.Robot.OdoSpeed[2]},//:OdoSpeed2 [Navigation] {Odometry raw speed z}
        { 2 , (long unsigned *) &SysState.Nav.Robot.RawSEst},  //:RawSEst [Path] {Estimated length on the current path segment }
        { 2 , (long unsigned *) &SysState.Nav.Robot.RouteTangent},  //:RouteTangent [Path] {Estimated tangent on the current path segment }
        { 2 , (long unsigned *) &SysState.Nav.Robot.RouteLocation[0]},  //:RouteLocation0 [Path] {Estimated x location on the current path segment }
        { 2 , (long unsigned *) &SysState.Nav.Robot.RouteLocation[1]},  //:RouteLocation1 [Path] {Estimated y location on the current path segment }
        { 2 , (long unsigned *) &SysState.Nav.Robot.CurveCorrectionF} ,  //:CurveCorrection[Path] {Curvature correction request }
        { 8 , (long unsigned *) &SysState.Package.State }, //:PackageState [Automation] {Package manipulation state}
        { 2 , (long unsigned *) &SysState.NeckSpeedFilt}, //:NeckSpeedFilt [Neck] {Filtered neck speed}
        { 2 , (long unsigned *) &SysState.Nav.Imu.HeadRollFilt }, //:HeadRollFilt [Neck] {Filtered roll}
        { 2 , (long unsigned *) & RNeckOuterPos},//8:RightNeckPot [Neck] {Raw value of neck potentiometer #1, normalized to 0..1}
        { 2 , (long unsigned *) & LNeckOuterPos},//9:LeftNeckPot [Neck] {Raw value of neck potentiometer #2, normalized to 0..1}
        { 2 , (long unsigned *) & SysState.CanAxis[LOGICAL_NECK].BH.UserPosCmd} , //36:NeckPositionCmd [Neck]
        { 2 , (long unsigned *) & SysState.CanAxis[LOGICAL_NECK].BH.UserPos} , //41:NeckPosEnc [Neck]
        { 2 , (long unsigned *) & SysState.CanAxis[LOGICAL_NECK].OuterPos},//44:NeckOuterPos [Neck]
        { 2 , (long unsigned *) & SysState.CanAxis[LOGICAL_NECK].BH.UserSpeedCmd} , //36:NeckSpeedTarget [Neck]
        { 2 , (long unsigned *) &SysState.ShoulderRoll},//:ShoulderRoll [Climb] {Roll of Robot shoulders}
        { 0 , (long unsigned *) &SysState.ManRouteState.GyroSwCapture},//:GyroSwCapture [Climb] {Estimated encoder count at start of terminal}
        { 2 , (long unsigned *) &SysState.ManRouteState.ArcCoverAngleEst},//:ArcCoverAngleEst [Climb] {Estimate of the arc angle covered, based on gyro angle}
        { 2 , (long unsigned *) &SysState.ManRouteState.TotalRollByArc},//:TotalRollByArc [Climb] {Total rolling of robot by climbing the terminal }
        { 2 , (long unsigned *)&SysState.ManRouteState.ArcTilt }, //:ArcTilt [Climb]{ ArcTilt }
        { 2 , (long unsigned *) &SysState.ManRouteState.dArcTilt }, //:dArcTilt [Climb] {Rate of arc tilt change}
        { 2 , (long unsigned *)&ClimbLog.LeaderScale }, //:LeaderScale [Climb]{ LeaderScale }
        { 2 , (long unsigned *)&ClimbLog.FollowerScale }, //:FollowerScale [Climb]{ FollowerScale }
        { 2 , (long unsigned *)&ClimbLog.SpeedRatio }, //:SpeedRatio [Climb]{ SpeedRatio }
        { 2 , (long unsigned *)&SysState.TorqueCorrection}, //:TorqueCorrection [Climb]{ TorqueCorrection }
        { 0 , (long unsigned *)&ClimbLog.ClimbStatus }, //:ClimbStatus [Climb] {ClimbStatus}
        { 2 , (long unsigned *) & SysState.AddRoll},//:AddRoll [Neck] {Added roll to neck }
        { 2 , (long unsigned *)& LNeckOuterPos },//:LNeckOuterPos [Neck]
        { 2 , (long unsigned *)& RNeckOuterPos },//:RNeckOuterPos [Neck]
        { 2 , (long unsigned *) & SysState.CanAxis[LOGICAL_NECK].BH.UserPosCmd}, //:NeckPosTarget [Neck] {Position target of neck (effective on ground)}
        { 2 , (long unsigned *) & SysState.CanAxis[LOGICAL_NECK].BH.ReportSpeedCmd}, //:NeckSpeedCmd [Neck]
        { 2 , (long unsigned *) & SysState.CanAxis[LOGICAL_NECK].BH.Torque}, //:NeckCurrent [Neck] {Motor current of neck (effective on ground)}
        { 0 , (long unsigned *) &SysState.CanAxis[LOGICAL_RW].BH.AxisCbit}, // :RAxisCbit [Wheels] {CBIT of right wheel}
        { 0 , (long unsigned *) &SysState.CanAxis[LOGICAL_LW].BH.AxisCbit}, // :LAxisCbit [Wheels] {CBIT of left wheel}
        { 0 , (long unsigned *) & WheelEncR.Position} , //: RWheelEncPos [Wheels] {encoder position just over the right wheel}
        { 0 , (long unsigned *) & WheelEncL.Position} , //: LWheelEncPos [Wheels] {encoder position just over the left wheel}
        { 2 , (long unsigned *) & SysState.CanAxis[LOGICAL_RW].BH.ReportSpeedCmd}, //:RwSpeedCmdAxis [Wheels]
         { 2 , (long unsigned *) & SysState.CanAxis[LOGICAL_LW].BH.ReportSpeedCmd}, //:LwSpeedCmdAxis [Wheels]
        { 2 , (long unsigned *) & SysState.CanAxis[LOGICAL_RW].BH.UserSpeed}, //:RwSpeedEnc [Wheels]
        { 2 , (long unsigned *) & SysState.CanAxis[LOGICAL_LW].BH.UserSpeed}, //:LwSpeedEnc [Wheels]
        { 2 , (long unsigned *) & SysState.CanAxis[LOGICAL_RW].BH.UserSpeedCmd}, //:RUserSpeedCmd [Wheels]
        { 2 , (long unsigned *) & SysState.CanAxis[LOGICAL_LW].BH.UserSpeedCmd}, //:LUserSpeedCmd [Wheels]
        {2 , (long unsigned *) & SysState.CanAxis[LOGICAL_RW].BH.Torque}, //:RwCurrent [Wheels]
        { 2 , (long unsigned *) & SysState.CanAxis[LOGICAL_LW].BH.Torque}, //:LwCurrent [Wheels]
        { 0 , (long unsigned *) & SysState.CanAxis[LOGICAL_RW].BH.WheelEncoderCnt}, //:RightWheelEncoder [Wheels] {Right wheel motor encoder by PDO}
        { 0 , (long unsigned *) & SysState.CanAxis[LOGICAL_LW].BH.WheelEncoderCnt}, //:LeftWheelEncoder [Wheels] {Left wheel motor encoder by PDO}
        { 0 , (long unsigned *)&SysState.CanAxis[LOGICAL_RW].BH.LimitSw.StatusAsPdo} , //:RStatusAsPdo  [Rail] {Right wheel switch status bitfield}
        { 0 , (long unsigned *)&SysState.CanAxis[LOGICAL_LW].BH.LimitSw.StatusAsPdo} , //:LStatusAsPdo  [Rail] {Left  wheel switch status bitfield}
        { 0 , (long unsigned *)&SysState.CanAxis[LOGICAL_RW].BH.LimitSw.WheelEncoderAtCenter} , //:REncoderAtSwitch  [Rail] {Right wheel encoder reading at switch center}
        { 0 , (long unsigned *)&SysState.CanAxis[LOGICAL_LW].BH.LimitSw.WheelEncoderAtCenter} , //:LEncoderAtSwitch  [Rail] {Left wheel encoder reading at switch center}
        { 2 , (long unsigned *) & SysState.CanAxis[LOGICAL_RSTEER].BH.UserPosCmd}, //:RwSteerPosTarget [Steer]
        { 2 , (long unsigned *) & SysState.CanAxis[LOGICAL_LSTEER].BH.UserPosCmd}, //:LwSteerPosTarget [Steer]
        { 2 , (long unsigned *) & SysState.CanAxis[LOGICAL_RSTEER].BH.ReportPosCmd}, //:RwSteerCmdAxis [Steer]
        { 2 , (long unsigned *) & SysState.CanAxis[LOGICAL_RSTEER].BH.UserSpeedCmd}, //:RwSteerCmdSpeed [Steer]
        { 2 , (long unsigned *) & SysState.CanAxis[LOGICAL_LSTEER].BH.ReportPosCmd}, //:LwSteerCmdAxis [Steer]
        { 2 , (long unsigned *) & SysState.CanAxis[LOGICAL_LSTEER].BH.UserSpeedCmd}, //:LwSteerCmdSpeed [Steer]
        { 2 , (long unsigned *) & SysState.CanAxis[LOGICAL_LSTEER].BH.AvgIntervalSpeed}, //:LwSteerAvgIntervalSpeed [Steer]
        { 2 , (long unsigned *) & SysState.CanAxis[LOGICAL_RSTEER].BH.AvgIntervalSpeed}, //:RwSteerAvgIntervalSpeed [Steer]
        { 2 , (long unsigned *) & SysState.CanAxis[LOGICAL_RSTEER].OuterPos},//:RsteerOuterPos  [Steer]
        { 2 , (long unsigned *) & SysState.CanAxis[LOGICAL_LSTEER].OuterPos},//:LsteerOuterPos [Steer]
        { 2 , (long unsigned *) & SysState.CanAxis[LOGICAL_RSTEER].BH.Torque},//:RsteerTorque  [Steer]
        { 2 , (long unsigned *) & SysState.CanAxis[LOGICAL_LSTEER].BH.Torque},//:LsteerTorque [Steer]
        { 2 , (long unsigned *) & SysState.CanAxis[LOGICAL_RSTEER].BH.UserSpeed }, //:RSteerUserSpeed [Steer]
        { 2 , (long unsigned *) & SysState.CanAxis[LOGICAL_LSTEER].BH.UserSpeed }, //:LSteerUserSpeed [Steer]
        { 0 , (long unsigned *) &SysState.Mot.Deviation.MsgCntr.ul }, //:DevMsgCnt [NavMark] {Deviation message counter}
        { 8 , (long unsigned *) &SysState.Mot.Deviation.Offset }, //:RawDevOffset [NavMark] {Raw Line Deviation message deviation}
        { 8 , (long unsigned *) &SysState.Mot.Deviation.AzimuthDev }, //:RawDevAzimuth [NavMark] {RawLine Deviation message azimuth}
        { 2 , (long unsigned *) &SysState.Mot.Deviation.FAzimuthDev}, //:LineAzimuthDev [NavMark] {Line Azimuth Deviation message azimuth}
        { 2 , (long unsigned *) &SysState.Mot.Deviation.FOffset}, //:LineOffsetDev [NavMark] {Line Offset Deviation message azimuth}
        { 0 , (long unsigned *) &SysState.Mot.Deviation.TStamp }, //:RawDevTStamp [NavMark] {RawLine Deviation message TStamp}
        { 8 , (long unsigned *) &SysState.Mot.PosReport.MsgCntr }, //:PosMsgCnt [NavMark] {RawPosRpt message counter}
        { 0 , (long unsigned *) &SysState.Mot.PosReport.TStamp }, //:RawPosTStamp [NavMark] {RawPosRpt message TStamp}
        { 8 , (long unsigned *) &SysState.Mot.PosReport.Azimuth }, //:RawPosAzimuth [NavMark] {RawPosRpt message azimuth}
        { 8 , (long unsigned *) &SysState.Mot.BgPosReport.Azimuth }, //:HackedPosAzimuth [NavMark] {Hacked message azimuth}
        { 0 , (long unsigned *) &SysState.Mot.PosReport.X[0] }, //:RawPosReport_0 [NavMark] {RawPosRpt X message TStamp}
        { 0 , (long unsigned *) &SysState.Mot.PosReport.X[1] }, //:RawPosReport_1 [NavMark] {RawPosRpt X message TStamp}
        { 0 , (long unsigned *) &SysState.Mot.PosReport.X[2] }, //:RawPosReport_2 [NavMark] {RawPosRpt X message TStamp}
        { 2 , (long unsigned *) &CrabProfiler.ProfilePos}, //:CrabProfilePos [Navigation] {Profiler position for DifferenceMode motions}
        { 2 , (long unsigned *) &CrabProfiler.ProfileSpeed}, //:CrabProfileSpeed [Navigation] {Profiler speed for DifferenceMode motions}
        { 2 , (long unsigned *) &SysState.fDebug[0] }, //:fDebug0 [Debug] {GP debug 0}
        { 2 , (long unsigned *) &SysState.fDebug[1] }, //:fDebug1 [Debug] {GP debug 1}
        { 2 , (long unsigned *) &SysState.fDebug[2] }, //:fDebug2 [Debug] {GP debug 2}
        { 2 , (long unsigned *) &SysState.fDebug[3] }, //:fDebug3 [Debug] {GP debug 3}
        { 2 , (long unsigned *) &SysState.fDebug[4] }, //:fDebug4 [Debug] {GP debug 4}
        { 2 , (long unsigned *) &SysState.fDebug[5] }, //:fDebug5 [Debug] {GP debug 5}
        { 2 , (long unsigned *) &SysState.fDebug[6] }, //:fDebug6 [Debug] {GP debug 5}
        { 2 , (long unsigned *) &SysState.fDebug[7] }, //:fDebug7 [Debug] {GP debug 5}
        { 0 , (long unsigned *) &SysState.Status.FaultSummary}, //:FaultSummary [Debug] {Summary of all motor exceptions}
        { 2 , (long unsigned *)&SysState.ManRouteState.ArcDistance[0] }, //:ArcDistance0 [Debug]{ ArcDistance0 - distance traveled on climb by leader }
        { 2 , (long unsigned *)&SysState.ManRouteState.ArcDistance[1] }, //:ArcDistance1 [Debug]{ ArcDistance1 - distance traveled on climb by follower  }
        { 8 , (long unsigned *)&SysState.PoleRun.TargetArmDone}, //:TargetArmDone [Debug]{ TargetArmDone }
        { 0 , (long unsigned *)&lDebug[0] }, //:lDebug0 [Debug] {Debug0}
        { 0 , (long unsigned *)&lDebug[1] }, //:lDebug1 [Debug] {Debug1}
        { 0 , (long unsigned *) & lDebug[2]}, //:lDebug2 [Debug] {Debug2}
        { 0 , (long unsigned *) & lDebug[3]}, //:lDebug3 [Debug] {Debug3}
        { 0 , (long unsigned *) & lDebug[4]}, //:lDebug4 [Debug] {Debug4}
        { 0 , (long unsigned *) & lDebug[5]}, //:lDebug5 [Debug] {Debug5}
        { 0 , (long unsigned *) & lDebug[6]}, //:lDebug6 [Debug] {Debug6}
        { 0 , (long unsigned *) & lDebug[7]}, //:lDebug7 [Debug] {Debug7}
        { 2 , (long unsigned *) & SysState.Package.XPosition}, //:PackageXPosition [Manipulator]
        { 2 , (long unsigned *) & SysState.Package.YPosition}, //:PackageYPosition [Manipulator]
        { 2 , (long unsigned *) & SysState.Package.ThtPosition}, //:PackageTPosition [Manipulator]
        { 12 , (long unsigned *)&SysState.Package.ManipControlWord }, //:ManControlWord [Manipulator]
        { 2 , (long unsigned *)&SysState.Nav.Robot.xc[0] }, //:Robotxc0 [Navigation]{ Robot center x }
        { 2 , (long unsigned *)&SysState.Nav.Robot.xc[1] }, //:Robotxc1 [Navigation]{ Robot center y }
        { 2 , (long unsigned *)&SysState.Nav.Robot.xc[2] }, //:Robotxc2 [Navigation]{ Robot center z }
        { 0 , (long unsigned *)&SysState.ManRouteState.WheelEncoderTargetCand[0] }, //:WheelEncoderTargetCand0 [Mission]{ Right leader target candidate }
        { 0 , (long unsigned *)&SysState.ManRouteState.WheelEncoderTargetCand[1]  }, //:WheelEncoderTargetCand1 [Mission]{ Left leader target candidate }
        { 8 , (long unsigned *) & MQ.nGet},//:MQnGet [AutoMotion]
        { 8 , (long unsigned *) & SysState.Mot.mode},//:Motmode [AutoMotion]
        { 8 , (long unsigned *) & SysState.Mot.ExecutingQueue},//:ExecutingQueue [AutoMotion]
        { 0 , (long unsigned *) &HostTxStatistic}, //:HostTxStatistic [Debug] {GP debug 0}
        { 0 , (long unsigned *) &HostMessageStr.RxCharCounter }, //:RxCharCounter [Debug] {GP debug 0}
        { 0 , (long unsigned *) &HostMessageStr.TxCharCounter }, //:TxCharCounter [Debug] {GP debug 0}
        { 0 , (long unsigned *) &HostMessageStr.TxMsgCounter }, //:TxMsgCounter [Debug] {GP debug 0}
        { 0 , (long unsigned *) &HostMessageStr.RxMsgCounter }, //:RxMsgCounter [Debug] {GP debug 0}
        { 0 , (long unsigned *) &TimingOfIdleLoop[9] }, //:TimingOfIdleLoopCom [Debug] {GP debug 0}
        { 0 , (long unsigned *) &HostMessageStr.PlaceInTxBuf }, //:PlaceInTxBuf [Debug] {GP debug 0}
        { 2 , (long unsigned *) &SysState.Nav.RawQuat[0] }, //:RawQuat0 [Debug] {RawQuat0}
        { 2 , (long unsigned *) &SysState.Nav.RawQuat[1] }, //:RawQuat1 [Debug] {RawQuat1}
        { 2 , (long unsigned *) &SysState.Nav.RawQuat[2] }, //:RawQuat2 [Debug] {RawQuat2}
        { 2 , (long unsigned *) &SysState.Nav.RawQuat[3] }, //:RawQuat3 [Debug] {RawQuat3}
        { 2 , (long unsigned *) &SysState.Nav.RawW[0] }, //:RawW0 [Debug] {RawW0}
        { 2 , (long unsigned *) &SysState.Nav.RawW[1] }, //:RawW1 [Debug] {RawW1}
        { 2 , (long unsigned *) &SysState.Nav.RawW[2] }, //:RawW2 [Debug] {RawW2}
       { 2 , (long unsigned *) &SysState.Mot.RelativePosReport.Azimuth }, //:RelAzimuth [Debug] {RelAzimuth}
        { 2 , (long unsigned *) &SysState.Mot.RelativePosReport.x }, //:Relx [Debug] {Relx}
        { 2 , (long unsigned *) &SysState.Mot.RelativePosReport.y }, //:Rely [Debug] {Rely}
        { 0 , (long unsigned *) &SysState.Mot.TotalMsgCounter}, //:TotalMsgCntr [Debug] {TotalMsgCntr}
        { 2 , (long unsigned *) &WheelProfiler[0].ProfileSpeed }, //:WheelProfile0Speed [Shelf] {WheelProfile0Speed}
        { 2 , (long unsigned *) &WheelProfiler[1].ProfileSpeed }, //:WheelProfile1Speed [Shelf] {WheelProfile1Speed}
        { 2 , (long unsigned *) &WheelProfiler[0].ProfilePos }, //:WheelProfile0Pos [Shelf] {WheelProfile0Pos}
        { 2 , (long unsigned *) &WheelProfiler[1].ProfilePos }, //:WheelProfile1Pos [Shelf] {WheelProfile1Pos}
        { 2 , (long unsigned *) &WheelProfiler[0].PosTarget}, //:WheelProfiler0Target [Shelf] {WheelProfiler0Target}
        { 0 , (long unsigned *) &SysState.ShelfRun.EncoderPosTarget[0] }, //:EncoderPosTarget0 [Shelf] {EncoderPosTarget0}
        { 0 , (long unsigned *) &SysState.ShelfRun.EncoderPosTarget[1] }, //:EncoderPosTarget1 [Shelf] {EncoderPosTarget0}
        { 0 , (long unsigned *) &TimingDiffOfIdleLoop[9] }, //:TimingDiffOfIdleLoop6 [Debug] {GP debug 0}
        { 2 , (long unsigned *)&ManRouteCmd.LineSpeedCmd }, //:LineSpeedCmd [AutoMotion] {Line speed command}
        { 2 , (long unsigned *) &SysState.Mot.BodyCmd.Omega}, //:ManualOmega [ManualMotion] {Manual rotation speed command}
        { 2 , (long unsigned *) &SysState.Mot.BodyCmd.Speed}, //:ManualSpeed [ManualMotion] {Manual Line speed command}
        { 2 , (long unsigned *) &S2M.Items.ActStatus.stat.AxisReadout[0] }, //:AxisReadout_0 [Manipulator]
        { 2 , (long unsigned *) &S2M.Items.ActStatus.stat.AxisReadout[1] }, //:AxisReadout_1 [Manipulator]
        { 2 , (long unsigned *) &S2M.Items.ActStatus.stat.AxisReadout[2] }, //:AxisReadout_2 [Manipulator]
        { 2 , (long unsigned *) &S2M.Items.ActStatus.stat.AxisReadout[5] }, //:AxisReadout_5 [Manipulator]
        { 2 , (long unsigned *) &S2M.Items.ActStatus.stat.AxisReadout[6] }, //:AxisReadout_6 [Manipulator]
        { 2 , (long unsigned *) &S2M.Items.ActStatus.stat.AxisReadout[7] }, //:AxisReadout_7 [Manipulator]
        { 2 , (long unsigned *) &S2M.Items.ActStatus.stat.AxisReadout[8] }, //:AxisReadout_8 [Manipulator]
        { 0 , (long unsigned *) &SysState.Mot.MotLog }, //:MotLog [Mission]
        { 0 , (long unsigned *) &SysState.Mot.MotLog2 }, //:MotLog2 [Mission]
        { 2 , (long unsigned *)&SysState.TrackWidthCtl.TrackTilt}, //:TrackTilt [Track]
        { 2 , (long unsigned *)&SysState.TrackWidthCtl.TrackWidth}, //:TrackWidth  [Track]
        { 2 , (long unsigned *)&SysState.ManRouteState.LeaderSpeedWhCntSec}, //:LeaderSpeed  [Debug]
        { 2 , (long unsigned *)&SysState.ManRouteState.FollowerSpeedWhCntSec}, //:FollowerSpeed  [Debug]
        { 2 , (long unsigned *)&ClaState.Filt.LaserSamp1}, //:LaserAnalog  [Calibration]
        { 2 , (long unsigned *)&SysState.Nav.AzInt} , //:AzInt  [Navigation] {Integral of odometry rotation}
        { 2 , (long unsigned *)&SysState.Nav.RawYaw} , //:RawYaw  [Navigation] {Raw yew reading of the gyro}
        { 0 , (long unsigned *)&SysState.TrackWidthCtl.tOutCnt} , //:tOutCnt  [WheelArm] {Time out counter}
        { 8 , (long unsigned *)&ManRouteCmd.ShelfSubSubMode} , //:ShelfSubSubMode  [WheelArm] {ShelfSubSubMode mode management}
        { 8 , (long unsigned *)&SysState.TrackWidthCtl.bPinState[0]} , //:bPinState0  [WheelArm] {State of pin 0}
        { 8 , (long unsigned *)&SysState.TrackWidthCtl.bPinState[1]} , //:bPinState1  [WheelArm] {State of pin 1}
        { 8 , (long unsigned *)&S2M.Items.WheelArm.stat.RPinPos} , //:RPinPos  [WheelArm] {Position encoder pin 0}
        { 8 , (long unsigned *)&S2M.Items.WheelArm.stat.LPinPos} , //:LPinPos  [WheelArm] {Position encoder pin 1}
        { 2 , (long unsigned *)&SysState.Nav.GyroZOffsetEst} , //:GyroZOffsetEst  [Navigation] {Gyro offset estimator}
        { 2 , (long unsigned *)&SpiErrorLog.LastErr.ul } , //:SpiLastError [Debug] {Last error of host processing}
        { 0 , (long unsigned *) &SysState.Status.ComFaultSummary }, //:ComFaultSummary [Debug] {ComFaultSummary}
        { 0 , (long unsigned *) &Pdo1TxScoreBoardSample }, //:Pdo1TxScoreBoardSample [Debug] {Pdo1TxScoreBoardSample}
        { 2 , (long unsigned *) &SysState.StabilizationPosError }, //:StabilizationPosError [Control] {StabilizationPosError}
        { 0 , (long unsigned *) &SysState.SwitchStatus.ul}, //:SwitchStatus [Rail] {Bit field for switch capturing}
		{ 2 , (long unsigned *) &SysState.CanAxis[4].BH.UserSpeed }, //:LeftSteerUserSpeed [Control] {LeftWheelUserSpeed}
        { 2 , (long unsigned *) &SysState.CanAxis[4].BH.AvgIntervalSpeed }, //:LeftSteerAvgIntervalSpeed [Control] {LeftWheelAvgIntervalSpeed}
        { 2 , (long unsigned *) &SysState.CanAxis[2].BH.UserSpeed }, //:RightSteerUserSpeed [Control] {RightWheelUserSpeed}
        { 2 , (long unsigned *) &SysState.CanAxis[2].BH.AvgIntervalSpeed }, //:RightSteerAvgIntervalSpeed [Control] {RightWheelAvgIntervalSpeed}
        { 2 , (long unsigned *) &SysState.CanAxis[1].BH.UserSpeed }, //:RightWheelUserSpeed [Control] {RightWheelUserSpeed}
        { 2 , (long unsigned *) &SysState.CanAxis[3].BH.UserSpeed }, //:LeftWheelUserSpeed [Control] {RightWheelAvgIntervalSpeed}
        { 2 , (long unsigned *) &SysState.WheelRawTorqueDiff}, //:WheelRawTorqueDiff [Wheels] {WheelRawTorqueDiff}
        { 2 , (long unsigned *) &SysState.WheelFiltAbsTorqueDiff}, //:WheelFiltAbsTorqueDiff [Wheels] {WheelFiltAbsTorqueDiff}
        // Must remain at end of file
        { 128 , (long unsigned *)&S2M.Items.Records.buf[0] }, //:Cpu2Signal_1 [Cpu2Signals] {Signal 1 from CPU2}
        { 128 , (long unsigned *)&S2M.Items.Records.buf[1] }, //:Cpu2Signal_2 [Cpu2Signals] {Signal 2 from CPU2}
        { 128 , (long unsigned *)&S2M.Items.Records.buf[2] }, //:Cpu2Signal_3 [Cpu2Signals] {Signal 3 from CPU2}
        { 128 , (long unsigned *)&S2M.Items.Records.buf[3] }, //:Cpu2Signal_4 [Cpu2Signals] {Signal 4 from CPU2}
        { 128 , (long unsigned *)&S2M.Items.Records.buf[4] }, //:Cpu2Signal_5 [Cpu2Signals] {Signal 5 from CPU2}
        { 128 , (long unsigned *)&S2M.Items.Records.buf[5] }, //:Cpu2Signal_6 [Cpu2Signals] {Signal 6 from CPU2}
        { 128 , (long unsigned *)&S2M.Items.Records.buf[6] }, //:Cpu2Signal_7 [Cpu2Signals] {Signal 7 from CPU2}
        { 128 , (long unsigned *)&S2M.Items.Records.buf[7] }, //:Cpu2Signal_8 [Cpu2Signals] {Signal 8 from CPU2}
        { 128 , (long unsigned *)&S2M.Items.Records.buf[8] }, //:Cpu2Signal_9 [Cpu2Signals] {Signal 9 from CPU2}
        { 128 , (long unsigned *)&S2M.Items.Records.buf[9] }, //:Cpu2Signal_10 [Cpu2Signals] {Signal 10 from CPU2}
        { 128 , (long unsigned *)&S2M.Items.Records.buf[10] }, //:Cpu2Signal_11 [Cpu2Signals] {Signal 11 from CPU2}
        { 128 , (long unsigned *)&S2M.Items.Records.buf[11] }, //:Cpu2Signal_12 [Cpu2Signals] {Signal 12 from CPU2}
        { 128 , (long unsigned *)&S2M.Items.Records.buf[12] }, //:Cpu2Signal_13 [Cpu2Signals] {Signal 13 from CPU2}
        { 128 , (long unsigned *)&S2M.Items.Records.buf[13] }, //:Cpu2Signal_14 [Cpu2Signals] {Signal 14 from CPU2}
        { 128 , (long unsigned *)&S2M.Items.Records.buf[14] }, //:Cpu2Signal_15 [Cpu2Signals] {Signal 15 from CPU2}
        { 128 , (long unsigned *)&S2M.Items.Records.buf[15] }, //:Cpu2Signal_16 [Cpu2Signals] {Signal 16 from CPU2}


 #ifdef __LPSIM
         { 66 , (long unsigned *) &Robot.xrwh[0]}, //100089:RobotRWhX0
        { 66 , (long unsigned *) &Robot.xrwh[1]}, //100090:RobotRWhX1
        { 66 , (long unsigned *) &Robot.xrwh[2]}, //100091:RobotRWhX2
        { 66 , (long unsigned *) &Robot.xlwh[0]}, //100092:RobotLWhX0
        { 66 , (long unsigned *) &Robot.xlwh[1]}, //100093:RobotLWhX1
        { 66 , (long unsigned *) &Robot.xlwh[2]}, //1005:RobotLWhX2
        { 66 , (long unsigned *) &Robot.xc[0]}, //1006:RobotXc0
        { 66 , (long unsigned *) &Robot.xc[1]}, //1007:RobotXc1
        { 66 , (long unsigned *) &Robot.xc[2]}, //1008:RobotXc2
        { 66 , (long unsigned *) &Robot.RSteer}, //1009:RobotRSteer
        { 66 , (long unsigned *) &Robot.LSteer}, //1010:RobotLSteer
        { 66 , (long unsigned *) &Robot.Direction}, //1010:RobotDirection
        { 66 , (long unsigned *) &Robot.rws}, //1010:RobotRSpeed
        { 66 , (long unsigned *) &Robot.lws} ,//1010:RobotLSpeed
        { 66 , (long unsigned *) &Robot.w[2]} ,//1010:RobotWZ
        { 66, (long unsigned *)&Robot.Post.x1} ,//1010:RobotPostX1
        { 66, (long unsigned *)&Robot.Post.x2}, //1010:RobotPostX2
        { 66, (long unsigned *)&Robot.Tilt } , //1010:RobotTilt
        { 66, (long unsigned *)&Robot.HeadRoll }, //1010:RobotHeadRoll
        { 66, (long unsigned *)&Robot.w[0] },  //1010:Robot_w0
        { 66, (long unsigned *)&SimTime },  //:SimTime
        { 0, (long unsigned *)&LpSimDbg.LimitSwStatus }   //:LimitSwStatus [Debug] {Debug LimitSwStatus}
#endif
