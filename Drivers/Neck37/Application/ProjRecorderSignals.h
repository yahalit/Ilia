// Flags =  0 : long , 2 float , 4 unsigned , 8 short , 64 dfloat (sim only)  (see more options in the CCmdMode definition)
        { 0 , (long unsigned *) & SysState.Timing.UsecTimer },
        { 4 , (long unsigned *) & SysState.Timing.UsecTimer }, //1:UsecTimer [Time] {Microsecond timer at hardware}
        { 2 , (long unsigned *) &SysState.Debug.fDebug[0] }, //:fDebug0 [Debug] {GP debug 0}
        { 2 , (long unsigned *) &SysState.Debug.fDebug[1] }, //:fDebug1 [Debug] {GP debug 1}
        { 2 , (long unsigned *) &SysState.Debug.fDebug[2] }, //:fDebug2 [Debug] {GP debug 2}
        { 2 , (long unsigned *) &SysState.Debug.fDebug[3] }, //:fDebug3 [Debug] {GP debug 3}
        { 2 , (long unsigned *) &SysState.Debug.fDebug[4] }, //:fDebug4 [Debug] {GP debug 4}
        { 2 , (long unsigned *) &SysState.Debug.fDebug[5] }, //:fDebug5 [Debug] {GP debug 5}
        { 2 , (long unsigned *) &SysState.Debug.fDebug[6] }, //:fDebug6[Debug] {GP debug 6}
        { 2 , (long unsigned *) &SysState.Debug.fDebug[7] }, //:fDebug7 [Debug] {GP debug 7}
        { 0 , (long unsigned *)&SysState.Debug.lDebug[0] }, //:lDebug0 [Debug] {lDebug0}
        { 0 , (long unsigned *)&SysState.Debug.lDebug[1] }, //:lDebug1 [Debug] {lDebug1}
        { 0 , (long unsigned *) & SysState.Debug.lDebug[2]}, //:lDebug2 [Debug] {lDebug2}
        { 0 , (long unsigned *) & SysState.Debug.lDebug[3]}, //:lDebug3 [Debug] {lDebug3}
        { 0 , (long unsigned *) & SysState.Debug.lDebug[4]}, //:lDebug4 [Debug] {lDebug4}
        { 0 , (long unsigned *) & SysState.Debug.lDebug[5]}, //:lDebug5 [Debug] {lDebug5}
        { 0 , (long unsigned *) & SysState.Status.LongException}, //:LongException [Status] {Current exception and aborting exception}
        { 2 , (long unsigned *) & ClaState.Analogs.StoVolts }, //:StoVolts [Analogs] {STO pin voltage}
        { 2 , (long unsigned *) & ClaState.Analogs.Vdc }, //:Vdc [Analogs] {Servo DC voltage}
        { 2 , (long unsigned *) & ClaState.Analogs.PhaseCurUncalibA }, //:PhaseCurUncalibA [Analogs] {Motor current A}
        { 2 , (long unsigned *) & ClaState.Analogs.PhaseCurUncalibB }, //:PhaseCurUncalibB [Analogs] {Motor current B}
        { 2 , (long unsigned *) & ClaState.Analogs.PhaseCurUncalibC }, //:PhaseCurUncalibC [Analogs] {Motor current C}
        { 2 , (long unsigned *) & ClaState.Analogs.PhaseCur[0] }, //:PhaseCur0 [Analogs] {Motor current A}
        { 2 , (long unsigned *) & ClaState.Analogs.PhaseCur[1] }, //:PhaseCur1 [Analogs] {Motor current B}
        { 2 , (long unsigned *) & ClaState.Analogs.PhaseCur[2] }, //:PhaseCur2 [Analogs] {Motor current C}
        { 2 , (long unsigned *) & ClaState.Analogs.BusCurrent }, //:BusCurrent [Analogs] {Bus Current}
        { 2 , (long unsigned *) & SysState.AnalogProc.Temperature}, //:Temperature [Analogs] {Drive temperature}
        { 2 , (long unsigned *) & ClaState.Encoder1.UserPos }, //:UserPos [Sensors] {User position measured by encoder}
        { 2 , (long unsigned *) & ClaState.Encoder1.MotorPos}, //:MotorPos [Sensors] {PU motor position measured by encoder}
        { 2 , (long unsigned *) & SysState.OuterSensor.OuterPos }, //:OuterPos [Sensors] {Outer position measured by encoder/pot}
        { 0 , (long unsigned *) & SysState.OuterSensor.OuterPosInt.l}, //:OuterPosInt [Sensors] {Integer version of auxiliary encoder}
        { 0 , (long unsigned *) & ClaState.Encoder1.Pos }, //:EncCounts [Sensors] {Encoder counts measured by encoder}
        { 0 , (long unsigned *) & ClaState.Encoder1.SpeedTime}, //:SpeedTime [Sensors] {Encoder count time}
        { 0 , (long unsigned *) & ClaState.Encoder1.TimeLat}, //:TimeLat [Sensors] {Encoder count latch time}
        { 2 , (long unsigned *) & ClaState.Encoder1.MotSpeedHz }, //:MotSpeedHz [Sensors] {Speed measured by encoder}
        { 2 , (long unsigned *) & SysState.SpeedControl.SpeedCommand }, //:SpeedCommand [Control] {Speed commanded to speed loop}
        { 2 , (long unsigned *) & SysState.SpeedControl.SpeedReference}, //:SpeedReference [Control] {Speed reference to speed or position loop}
        { 2 , (long unsigned *) & SysState.SpeedControl.PIState }, //:PIState [Control] {Integrator state of speed controller}
        { 2 , (long unsigned *) & SysState.SpeedControl.PiOut}, //:PiOut [Control] {Output of PI speed controller}
        { 2 , (long unsigned *) & SysState.SpeedControl.SpeedError}, //:SpeedError [Control] {Following error of speed controller}
        { 2 , (long unsigned *) & SysState.PosControl.PosErrorR }, //:PosErrorR [Control] {Realized position error after backlash correction}
        { 2 , (long unsigned *) & SysState.PosControl.PosError  }, //:PosError  [Control] {Un compensated position error before backlash correction}
        { 2 , (long unsigned *) & SysState.Mot.CurrentLimitFactor}, //:CurrentLimitFactor [Control] {Current command limiting factor}
        { 2 , (long unsigned *) & ClaState.Encoder1.MotSpeedHzFilt}, //:MotSpeedHzFilt [Sensors] {Filtered Speed measured by encoder}
        { 2 , (long unsigned *) & ClaState.Encoder1.UserSpeed }, //:UserSpeed [Sensors] {User Speed measured by encoder}
        { 0 , (long unsigned *) & HallDecode.ComStat.l}, //:ComStat [Sensors] {Commutation status: Hall and angles data}
        { 2 , (long unsigned *) & ClaState.ThetaPuInUse }, //:ThetaElect [Current] {Electrical angle'}
        { 2 , (long unsigned *) & ClaState.CurrentControl.CurrentReference }, //:CurrentReference [Current] {FF Reference to current control}
        { 2 , (long unsigned *) & ClaState.CurrentControl.CurrentCommand }, //:InternalCurrentCommand [Current] {Directional current command: speed correction + FF}
        { 2 , (long unsigned *) & ClaState.CurrentControl.ExtCurrentCommand }, //:CurrentCommand [Current] {Composite current command: speed correction + FF}
        { 2 , (long unsigned *) & ClaState.CurrentControl.CurrentCommandSlopeLimited }, //:CurrentCommandSlopeLimited [Current] {Limited Reference to current control}
        { 2 , (long unsigned *) & ClaState.CurrentControl.CurrentCmdFilterState0 }, //:CurrentCmdFilterState0 [Current] {Reference filter state 0 to current control}
        { 2 , (long unsigned *) & ClaState.CurrentControl.CurrentCmdFilterState1 }, //:CurrentCmdFilterState1 [Current] {Reference filter state 1 to current control}
        { 2 , (long unsigned *) & ClaState.CurrentControl.ExtCurrentCommandFiltered }, //:CurrentCommandFiltered [Current] {Reference to current control - final filtered}
        { 2 , (long unsigned *) & ClaState.CurrentControl.CurrentCommandFiltered }, //:InternalCurrentCommandFiltered [Current] {Reference to current control - final filtered}
        { 2 , (long unsigned *) & ClaState.CurrentControl.Int_q}, //:Int_q [Current] {Integral, desired value, Q channel}
        { 2 , (long unsigned *) & ClaState.CurrentControl.Int_d }, //:Int_d [Current] {Integral, desired value, D channel}
        { 2 , (long unsigned *) & ClaState.CurrentControl.ExtIq }, //:Iq [Current] {Current Q channel}
        { 2 , (long unsigned *) & ClaState.CurrentControl.Iq }, //:InternalIq [Current] {Current Q channel}
        { 2 , (long unsigned *) & ClaState.CurrentControl.Id }, //:Id [Current] {Current D channel}
        { 2 , (long unsigned *) & ClaState.CurrentControl.Error_q}, //:Error_q [Current] {Current error Q channel}
        { 2 , (long unsigned *) & ClaState.CurrentControl.Error_d }, //:Error_d [Current] {Current error D channel}
        { 2 , (long unsigned *) & ClaState.CurrentControl.vpre_q }, //:vpre0 [Current] {Current control preliminary calculation Q channel }
        { 2 , (long unsigned *) & ClaState.CurrentControl.vpre_d }, //:vpre1 [Current] {Current control preliminary calculation D channel }
        { 2 , (long unsigned *) & ClaState.Vsat }, //:Vsat [Current] {Voltage saturation}
        { 2 , (long unsigned *) & ClaState.PwmFac }, //:PwmFac [Current] {Voltage=PWM scale}
        { 2 , (long unsigned *) & ClaState.vdr }, //:vdr [Current] {Anti realized vd}
        { 2 , (long unsigned *) & ClaState.vqr }, //:vqr [Current] {Anti realized vq}
        { 2 , (long unsigned *) & ClaState.MotorOn }, //:MotorOn [System] {Motor on}
        { 2 , (long unsigned *) & ClaMailOut.AbortReason }, //:AbortReason [System] {Motion failure reason}
        { 2 , (long unsigned *) & SysState.Debug.GRef.Out }, //:GRefOut [Debug] {Output of G reference generator  }
        { 2 , (long unsigned *) & SysState.Debug.GRef.dOut }, //:GRefdOut [Debug] {Speed output of G reference generator }
        { 2 , (long unsigned *) & SysState.Debug.TRef.Out }, //:TRefOut [Debug] {Output of T reference generator  }
        { 2 , (long unsigned *) & SysState.Debug.TRef.dOut }, //:TRefdOut [Debug] {Output of T reference generator  }
        { 2 , (long unsigned *) & ClaMailOut.PwmA }, //:PwmA [Debug] {PWM of channel A  }
        { 2 , (long unsigned *) & ClaMailOut.PwmB }, //:PwmB [Debug] {PWM of channel B  }
        { 2 , (long unsigned *) & ClaMailOut.PwmC }, //:PwmC [Debug] {PWM of channel C  }
        { 8 , (long unsigned *) & ClaState.AdcRaw.PhaseCurAdc[0]}, //:PhaseCurAdc0 [Analogs] {ADC Motor current A}
        { 8 , (long unsigned *) & ClaState.AdcRaw.PhaseCurAdc[1]}, //:PhaseCurAdc1 [Analogs] {ADC Motor current B}
        { 8 , (long unsigned *) & ClaState.AdcRaw.PhaseCurAdc[2]}, //:PhaseCurAdc2 [Analogs] {ADC Motor current C}
        { 2 , (long unsigned *) & Commutation.ComAnglePu}, //:ComAnglePu [Commutation] {Electrical motor angle, per unit}
        { 0 , (long unsigned *) & Commutation.EncoderCounts}, //:EncoderCounts [Commutation] {EncoderCounts}
        { 0 , (long unsigned *) & Commutation.Encoder4Hall}, //:Encoder4Hall [Commutation] {Encoder4Hall}
        { 0 , (long unsigned *) & Commutation.OldEncoder}, //:OldEncoder [Commutation] {OldEncoder}
        { 2 , (long unsigned *) & ClaState.vqd }, //:vqd [Current] {Vq output of q controller }
        { 2 , (long unsigned *) & ClaState.vdd }, //:vdd [Current] {Vd output of d controller }
        { 2 , (long unsigned *) & ClaState.va }, //:va [Current] {Va output of controller }
        { 2 , (long unsigned *) & ClaState.vb }, //:vb [Current] {Vb output of controller }
        { 2 , (long unsigned *) & ClaState.vc }, //:vc [Current] {Vc output of controller }
        { 2 , (long unsigned *) & HallDecode.HallAngle}, //:HallAngle [Commutation] {Motor angle as extracted from Halls}
        { 12 , (long unsigned *) &HallDecode.HallKey}, //:HallKey [Commutation] {Raw reading of Hall sensors}
        { 4 , (long unsigned *) & SysState.CBit.all}, //:CBit [System] {CBit status bit field}
        { 12 , (long unsigned *) & SysState.Mot.KillingException}, //:KillingException [System] {The exception that initially caused motor fault}
        { 12 , (long unsigned *) & SysState.Mot.LastException}, //:LastException [System] {The most recent exception}
        { 12 , (long unsigned *) & SysState.Mot.SafeFaultCode}, //:SafeFaultCode [System] {The most recent pending - safe exception}
        { 2 , (long unsigned *) & ControlPars.qf0.s0}, //:qf0out [Debug] {State of Quad filter 0}
        { 2 , (long unsigned *) & ControlPars.qf1.s0}, //:qf1out [Debug] {State of Quad filter 1}
        { 2 , (long unsigned *) &ClaState.Encoder1.UserPosDelta}, //:UserPosDelta [Control] {Position difference for speed control integration}
        { 12 , (long unsigned *) &Correlations.state}, //:CorrelationState [Debug] {State of identification}
        { 4 , (long unsigned *) & HallDecode.TimerOnCatch}, //:HallUsecTimerCatch [Commutation] {Time of Hall change catch}
        { 2 , (long unsigned *) &HallDecode.HallSpeed}, //:HallSpeed [Commutation] {Speed derived from Hall sensors}
        { 2 , (long unsigned *) &SysState.PosControl.SpeedLimitedPosReference}, //:SpeedLimitedPosReference [Control] {Position reference as input to filter, limited by speed}
        { 2 , (long unsigned *) &SysState.PosControl.PosReference}, //:PosReference [Control] {Position reference before filtering}
        { 2 , (long unsigned *) &SysState.PosControl.FilteredPosReference}, //:FilteredPosReference [Control] {Position reference after filtering}
        { 2 , (long unsigned *) &SysState.PosControl.PosFeedBack}, //:PosFeedBack [Control] {Position feedback by position source}
        { 0 , (long unsigned *)&SysState.Status.Statistics}, //:Statistics [Control] {Control variable statistics}
        { 2 , (long unsigned *) & ClaState.Pot.PotFilt[0] }, //:PotFilt0 [Analogs] {Potentiometer ratio filtered #1 }
        { 2 , (long unsigned *) & ClaState.Pot.PotFilt[1] }, //:PotFilt1 [Analogs] {Potentiometer ratio filtered #2 }
        { 2 , (long unsigned *) & ClaState.Analogs.PotentiometerRef }, //:PotentiometerRef [Potentiometer] {Potentiometer Reference}
        { 2 , (long unsigned *) & ClaState.Analogs.Pot1 }, //:Pot1 [Potentiometer] {Potentiometer slider 1}
        { 2 , (long unsigned *) & ClaState.Analogs.Pot2 }, //:Pot2 [Potentiometer] {Potentiometer slider 2}
        { 2 , (long unsigned *) & ClaState.Pot.PotRat[0] }, //:PotRat1 [Potentiometer] {Potentiometer ratio 1}
        { 2 , (long unsigned *) & ClaState.Pot.PotRat[1]  }, //:PotRat2 [Potentiometer] {Potentiometer ratio 2}
        { 2 , (long unsigned *) & ClaState.Pot.Position[0]  }, //:PotPosition1 [Potentiometer] {Potentiometer Position 1}
        { 2 , (long unsigned *) & ClaState.Pot.Position[1] }, //:PotPosition2 [Potentiometer] {Potentiometer Position2}
        { 2 , (long unsigned *) & ClaState.Pot.PosCenter }, //:PotCenter [Potentiometer] {Potentiometer center}
        { 2 , (long unsigned *) & ClaState.Pot.PosDiff }, //:PotDiff [Potentiometer] {Potentiometer difference}
        { 0 , (long unsigned *) & SysState.ControlWord}, //:ControlWord [System] {Last remote control word }
        { 0 , (long unsigned *) & SysState.StartStop.RefEncoderCountsForAutoStop}, //:RefEncoderCountsForAutoStop [StartStop] {Encoder reference for auto stop}
        { 2 , (long unsigned *) & SysState.StartStop.RefPositionCommandForAutoStop}, //:RefPositionCommandForAutoStop [StartStop] {RefPositionCommandForAutoStop}
        { 2 , (long unsigned *) & SysState.StartStop.StartStopTimer}, //:StartStopTimer [StartStop] {StartStopTimer}
        { 0 , (long unsigned *) & SysState.StartStop.mode}, //:StartStopMode [StartStop] {StartStop Mode}
        { 12 , (long unsigned *) & SysState.NoFsiMsgCnt}, //:NoFsiMsgCnt [Time] {Miss counter for FSI communication}
        { 12 , (long unsigned *) & SysState.Mot.InBrakeEngageDelay}, //:InBrakeEngageDelay [System] {State of brake engagement for motor off }
        { 12 , (long unsigned *) & SysState.Mot.InBrakeReleaseDelay}, //:InBrakeReleaseDelay [System] {State of brake release for motor on}
        { 2 , (long unsigned *) & SysState.EncoderMatchTest.DeltaEncoderMotor}, //:EncoderMatchDeltaEncoderMotor [Debug] {Distance covered since last lock by motor sensor}
        { 2 , (long unsigned *) & SysState.EncoderMatchTest.DeltaEncoderWheel}, //:EncoderMatchDeltaEncoderWheel [Debug] {Distance covered since last lock by wheel sensor}
        { 2 , (long unsigned *) & SysState.EncoderMatchTest.DeltaDeviation}, //:EncoderMatchDeltaDeviation [Debug] {EncoderMatchActualDelta}
        { 2 , (long unsigned *) & SysState.Profiler.PosTarget}, //:PtpPosTarget [Profile] {PtpPosTarget}
        { 2 , (long unsigned *) & SysState.Profiler.ProfileSpeed}, //:PtpSpeed [Profile] {PtpSpeed}
        { 2 , (long unsigned *) & SysState.Profiler.ProfilePos}, //:PtpProfilePos [Profile] {PtpProfilePos}
        { 2 , (long unsigned *) & SysState.Profiler.PosDiff}, //:PtpPosDiff [Profile] {PtpPosDiff}
        { 2 , (long unsigned *) & SysState.Profiler.tauact},//:PtpTauAct [Profile] {PtpTauAct}
        { 0 , (long unsigned *)&SysState.NoFsiMsgCnt.ul}, //:NoFsiMsgCnt [Debug] {NoFsiMsgCnt}
        { 0 , (long unsigned *)&SysState.EcapOnInt}, //:EcapOnInt [Time] {EcapOnInt}
        { 0 , (long unsigned *)&SysState.Timing.ClocksOfInt}, //:ClocksOfInt [Time] {ClocksOfInt}
        { 2, (long unsigned *)&ClaState.tTask}, //:ClaTRun [Time] {ClaTRun}
        { 0 , (long unsigned *)&SysState.CBit2.Lall}, //:CBit2 [System] {CBit2}
        { 2 , (long unsigned *) & SysState.PosControl.SpeedFFExtState} ,//:SpeedFFExtState [Control]{'SpeedFFExtState'}
        { 2 , (long unsigned *) & SysState.PosControl.SpeedFFExt} ,//:SpeedFFExt [Control]{'SpeedFFExt'}
        { 2 , (long unsigned *) & SysState.PosControl.SpeedFFExtState} ,//:SpeedFFExtState [Control]{'SpeedFFExtState'}
        { 2 , (long unsigned *) & SysState.SteerCorrection.WheelAddFilt} ,//:WheelAddFilt [SteeringComp]{'WheelAddFilt'}
        { 2 , (long unsigned *) & SysState.SteerCorrection.SteeringFF} ,//:SteeringFF [SteeringComp]{'SteeringFF'}
