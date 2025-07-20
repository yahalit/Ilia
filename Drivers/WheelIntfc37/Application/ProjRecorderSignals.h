// Flags =  0 : long , 2 float , 4 unsigned , 8 short , 64 dfloat (sim only)  (see more options in the CCmdMode definition)
        { 0 , (long unsigned *) & SysState.Timing.UsecTimer },
        { 4 , (long unsigned *) & SysState.Timing.UsecTimer }, //1:UsecTimer [Time] {Microsecond timer at hardware}
        { 2 , (long unsigned *) &ClaState.Analogs.Pot1 }, //:Pot1 [Analogs] {Pot1}
        { 2 , (long unsigned *) &ClaState.Analogs.ID }, //:ID [Analogs] {ID}
        { 2 , (long unsigned *) &ClaState.Analogs.RailSensor }, //:RailSensor [Analogs] {RailSensor}
        { 2 , (long unsigned *) &ClaState.Analogs.BrakeVolts }, //:BrakeVolts [Analogs] {BrakeVolts}
        { 0 , (long unsigned *) & SysState.Status.LongException}, //:LongException [Status] {Current exception and aborting exception}
        { 2 , (long unsigned *) &SysState.fDebug[0] }, //:fDebug0 [Debug] {GP debug 0}
        { 2 , (long unsigned *) &SysState.fDebug[1] }, //:fDebug1 [Debug] {GP debug 1}
        { 2 , (long unsigned *) &SysState.fDebug[2] }, //:fDebug2 [Debug] {GP debug 2}
        { 2 , (long unsigned *) &SysState.fDebug[3] }, //:fDebug3 [Debug] {GP debug 3}
        { 0 , (long unsigned *)&SysState.lDebug[0] }, //:lDebug0 [Debug] {Debug0}
        { 0 , (long unsigned *)&SysState.lDebug[1] }, //:lDebug1 [Debug] {Debug1}
        { 0 , (long unsigned *) & SysState.lDebug[2]}, //:lDebug2 [Debug] {Debug2}
        { 0 , (long unsigned *) & SysState.lDebug[3]}, //:lDebug3 [Debug] {Debug3}
        { 0 , (long unsigned *) &ClaState.Encoder1.now }, //:now1 [Encoder1] {now encoder 1}
        { 0 , (long unsigned *) &ClaState.Encoder1.TimeLat }, //:TimeLat1 [Encoder1] {TimeLat encoder 1}
        { 2 , (long unsigned *) &ClaState.Encoder1.MotSpeedHz }, //:MotSpeedHz1 [Encoder1] {TimeLat encoder 1}
        { 0 , (long unsigned *) &ClaState.Encoder1.Pos }, //:Pos1 [Encoder1] {Position of encoder 1}
        { 0 , (long unsigned *) &ClaState.Encoder1.SpeedTime }, //:SpeedTime1 [Encoder1] {TimeLat encoder 1}
        { 2 , (long unsigned *) &ClaState.Encoder1.MotSpeedHzFilt }, //:MotSpeedHzFilt1 [Encoder1] {TimeLat encoder 1}
        { 2 , (long unsigned *) &ClaState.Encoder1.UserPosDelta }, //:UserPosDelta1 [Encoder1] {TimeLat encoder 1}
        { 2 , (long unsigned *) &ClaState.Encoder1.UserSpeed }, //:UserSpeed1 [Encoder1] {TimeLat encoder 1}
        { 0 , (long unsigned *) &ClaState.Encoder2.TimeLat }, //:TimeLat2 [Encoder2] {TimeLat encoder 2}
        { 0 , (long unsigned *) &ClaState.Encoder2.now} , //:EncoderNow2 [Encoder2] {now for encoder 2}
        { 2 , (long unsigned *) &ClaState.Encoder2.DeltaT} , //:EncoderDeltaT2 [Encoder2] {DeltaT for encoder 2}
        { 12, (long unsigned *) &ClaState.Encoder2.Stat} , //:EncoderStat2 [Encoder2] {QEPSTS for encoder 2}
        { 2 , (long unsigned *) &ClaState.Encoder2.MotSpeedHz }, //:MotSpeedHz2 [Encoder2] {TimeLat encoder 2}
        { 0 , (long unsigned *) &ClaState.Encoder2.Pos }, //:Pos2 [Encoder2] {Position of encoder 2}
        { 0 , (long unsigned *) &ClaState.Encoder2.SpeedTime }, //:SpeedTime2 [Encoder2] {TimeLat encoder 2}
        { 2 , (long unsigned *) &ClaState.Encoder2.MotSpeedHzFilt }, //:MotSpeedHzFilt2 [Encoder2] {TimeLat encoder 2}
        { 2 , (long unsigned *) &ClaState.Encoder2.UserPosDelta }, //:UserPosDelta2 [Encoder2] {TimeLat encoder 2}
        { 2 , (long unsigned *) &ClaState.Encoder2.UserSpeed }, //:UserSpeed2 [Encoder2] {TimeLat encoder 2}
        { 0 , (long unsigned *) &SysState.AxisState[0].EcapCaptTime }, //:EcapCaptTime0 [Timing] {EcapCaptTime0}
        { 0 , (long unsigned *) &SysState.AxisState[0].EcapNowTime }, //:EcapNowTime0 [Timing] {EcapNowTime0}
        { 0 , (long unsigned *) &SysState.AxisState[0].RxCommTime }, //:RxCommTime0 [Timing] {RxCommTime0}
        { 0 , (long unsigned *) &SysState.AxisState[1].EcapCaptTime }, //:EcapCaptTime1 [Timing] {EcapCaptTime1}
        { 0 , (long unsigned *) &SysState.AxisState[1].EcapNowTime }, //:EcapNowTime1 [Timing] {EcapNowTime1}
        { 0 , (long unsigned *) &SysState.AxisState[1].RxCommTime }, //:RxCommTime1 [Timing] {RxCommTime1}
        { 2 , (long unsigned *) &ClaState.Pot.PotFilt }, //:PotFilt [Sensors] {Potentiometer ratio, filtered}
        { 2 , (long unsigned *) &ClaState.Pot.PotUser }, //:PotUser [Sensors] {Potentiometer ratio, after calibration}
        { 2 , (long unsigned *) &ClaState.Analogs.PotentiometerRef }, //:PotentiometerRef [Sensors] {PotentiometerRef}
        { 2 , (long unsigned *) &ClaState.LLimit.SwitchSummary }, //:LimitSwitchSummary [Switch] {Summary of switch statistics}
        { 2 , (long unsigned *) &ClaState.Filt.IndSenWL  }, //:IndSenWL [Switch] {Analog reading of sensor}
        { 0 , (long unsigned *) &ClaState.Encoder3.Pos}, //:Pos3 [Switch] {Position of wheel encoder}
        { 0 , (long unsigned *) &ClaState.LLimit.CaptEncoderL }, //:CaptEncoderL [Switch] {Captured encoder on fall transition}
        { 0 , (long unsigned *) &ClaState.LLimit.CaptEncoderH }, //:CaptEncoderH [Switch] {Captured encoder on rise transition}
        { 2 , (long unsigned *) &ClaState.LLimit.DetectWidthRaw }, //:DetectWidthRaw [Switch] {Raw detected switch width}
        { 0 , (long unsigned *) &ClaMailOut.EncoderAtSwitch }, //:EncoderAtSwitch [Switch] {Encoder on switch middle}
        { 2 , (long unsigned *) &ClaMailOut.SwitchWidth }, //:SwitchWidth [Switch] {Detected switch width}
        { 2 , (long unsigned *) &ClaState.LLimit.DistIntoSwitch }, //:DistIntoSwitch [Switch] {Distance traveled into switch}
        { 0 , (long unsigned *) &SysState.Timing.InterruptCtr }, //:InterruptCtr [Time] {Interrupt counter}
        { 0 , (long unsigned *) &SysState.Timing.PwmInterruptCtr }, //:InterruptCtr [Time] {ECAP Interrupt miss counter}
        { 0 , (long unsigned *) &SysState.AxisState[0].NoFsiMsgCnt.ul }, //:NoFsiMsgCnt0 [Debug] {FSI axis 0 miss counter}
        { 0 , (long unsigned *) &SysState.AxisState[2].NoFsiMsgCnt.ul }, //:NoFsiMsgCnt2 [Debug] {FSI axis 1 miss counter}
        { 0 , (long unsigned *) &SysState.RailSwitchStatus }, //:RailSwitchStatus [Switch] {RailSwitchStatus}
        { 0 , (long unsigned *) &SysState.Debug.SteerPosReport }, //:SteerPosReport [Debug] {SteerPosReport}
        { 0 , (long unsigned *) &SysState.Debug.WheelPosReport }, //:WheelPosReport [Debug] {WheelPosReport}
