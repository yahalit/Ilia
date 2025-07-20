    {& SysPars.Imu.AccThold,10, 0.0001f, 10.0f,0.1f} ,
    {&SysPars.Imu.RotThold,11, 0.0001f, 10.0f,0.02f} ,
    {&SysPars.Nav.SegPosCorrectionFac,12,0.0f,1.0f,0.1f },  // Was 0.4 Filter constant, correcting on-route position by odometry
    {& AutomaticRunPars.ArcSpeed,61,0.01f,1.5f,ARC_SPEED}, // !< Auto mode, tHe speed on the arc
    {& AutomaticRunPars.PoleSpeed,62,0.01f,1.5f,0.30f},  // !< Auto mode , The speed on the pole, changed to 0.30 for robot-actuated junctions
    {& AutomaticRunPars.PoleLineAcc,63,0.01f,1.0f,0.25f} ,   // !< Auto mode, Provision for on-pole acceleration
    {& AutomaticRunPars.ShelfSpeed,64,0.0f,1.5f,0.42f},  // !< Auto mode, Speed on the shelf
    {& AutomaticRunPars.CrabAcceleration,65,0.01f,1.5f,0.5f},  // !< Auto mode The acceleration in crab motion
    {& AutomaticRunPars.CrabSpeed,66,0.001f,1.5f,0.1f},  // !< Auto mode The speed of crab motion
    {& AutomaticRunPars.DiffModeSpeed,67,0.001f,1.8f,1.75f }, // !< Keep < 1.75 (gyro range) Auto mode  Final speed at differential rotation mode [rad/sec]
    {& AutomaticRunPars.DiffModeAcc,68,0.001f,3.0f,1.3f }, // !< Auto mode Acceleration at differential rotation mode
    {& Geom.WheelArmAngleExtend30,69,0.1f,1.0f,0.9651f},  // Angle when wheel arm extended, 30in shelf distance
    {& Geom.WheelArmAngleExtend32,70,0.1f,1.0f,0.9651f},  // (NOT working) Angle when wheel arm extended, 32in shelf distance
    {& Geom.ArcEntryPoleHomingPlateDist,87,-0.1f,0.1f,-TERMINAL_APRIL_TAG_2_THEETH_BASE},  // Location of homing plate relative to the climb position
    {& Geom.ArcEntryLength,88,0.001f,1.0f,0.82f},  // Rigid long arc entry length (arc width+robot/2+wheel/2+entry unit), deduced from the run-to-pole distance
    {& SimPars.SimAnalogEnableThold,89,0.0f,5.0f,0.30f},
    {& CommPars.StandardSdoWaitToutSec,90,1e-3f,5.e6f,0.05f},
    {& Geom.WheelArmAngleRetract,91,-1.0f,1.0f,-0.2706f},  // Angle when wheel arm retracted
    {& Geom.WheelArmAngleExtend24,92,0.1f,1.0f,0.2029f},  // Angle when wheel arm extended, 24in shelf distance
    {& Geom.WheelArmAngleExtend28,93,0.1f,1.0f,0.6829f},  // Angle when wheel arm extended, 28in shelf distance
    {& Geom.WheelArmAngleTolerance,94,0.1f,1.0f,0.15f},  // Angle tolerance for wheel arm Vandal must correct
    {& Geom.WheelArmJointDist,95,0.1f,1.0f,0.6231f},  // Shoulder joint distance wheel arm
    {& Geom.WheelArmRodLength4Pin,96,0.1f,1.0f,0.228f}, // Rod length for pin setting
    {& Geom.DistWheelAxis2WagonTip,97,0.001f,1.0f,0.115f},  // Robot half width from center to wagon tip
    {& Geom.HalfDistBetweenWheelAxes,98,0.001f,1.0f,0.2512f},  // Robot half width from center to wagon tip
    {& Geom.TerminalClimbClearance,99,0.001f,1.0f,0.05f},  // Terminal climbing clearance at crab stop
    {& Geom.DefaultqImu2ZeroENUPos[0],100,-1.01f,1.01f,0.986143231562925f },
    {& Geom.DefaultqImu2ZeroENUPos[1],101,-1.01f,1.01f,0.0f},
    {& Geom.DefaultqImu2ZeroENUPos[2],102,-1.01f,1.01f,0.165896132693415f},
    {& Geom.DefaultqImu2ZeroENUPos[3],103,-1.01f,1.01f,0.0f},
   // {& ControlPars.WheelArmPinReleaseRockingStretch ,107,-0.06f,0.08f,0.057}, // !< Rocking amplitude for releasing/setting wheel arm lock pin
    {& ControlPars.WheelArmPinReleaseRockingSpeed ,108, 0.005f,2.0f,0.015f},// !< Rocking speed for releasing/setting wheel arm lock pin
    {& ControlPars.WheelArmPinReleaseCurrentTarget ,109, -10.0f,10.0f,Default_WheelArmLeaderCurPressLimit}, // The current goal for the leader motor while release of wheelarm pin
    {& Geom.rg,110,0.01f,1.0f,0.1f}, // Effective wheel radius for ground navigation
    {& Geom.rrailnom,111,0.001f,1.0f,0.046948356807512f } , //  Was 0.019607790086260, Effective radius, Number encapsulates both gear and radius difference 0.02f ,was 0.0463f
    {& SysState.RelCrabState.XTolShortDist,113,0.00001f,0.1f,X_TOL_SHORT_DIST } , // X tolerance after crab process for active pole homing, set based on measurement ST
    {& SysState.RelCrabState.XTolFinal,114,0.00001f,0.1f,TERMINAL_CLIMB_X_TOL_FINAL } , // Final x tolerance for active pole homing
    {& SysState.RelCrabState.AzTolShortDist ,116,0.00001f,0.1f,TERMINAL_CLIMB_AZ_TOL } , // Azimuth tolerance after crab process for active pole homing
    {& SysState.RelCrabState.AzTolFinal,121,0.00001f,0.1f,TERMINAL_CLIMB_AZ_TOL_FINAL } , // Final azimuth tolerance for active pole homing
    {& SysState.RelCrabState.MaxY,123,0.00001f,2.0f,1.35f } , // Max distance from robot center to active pole homing target
    {& Geom.WheelMotCntRadGnd,124,1000.0f,1000000.0f,1.0f}, // 1.7317e5 / rev
    {& Geom.WheelCntRad,126,1000.0f,1000000.0f,722.0860f}, // User units 1rps
    {& Geom.VerticalSlipFactor,127,-0.1f,0.1f,0.004f } , // Vertical travel correction for vertical wheel slip //moved due to adding a new parameter to 112)
    {& Geom.RSteerMotCntRad,129,1000.0f,2000000.0f,1.0f } , // 741030.0f } ,// 3.705127075179323e+05f},
    {& Geom.LSteerMotCntRad,130,1000.0f,2000000.0f,1.0f } ,// 718780 for new 3.705127075179323e+05f},
    {& Geom.SteerFinalRatRev,131,-100.0f,100.0f,-6.81f}, // Never change
    {& Geom.SteerFinalRatCenter,132,-1.0f,1.0f,0.51f}, // Never change
    {& Geom.NeckMotCntRad,140,1000.0f,1500000.0f,1.0f}, //was 1125124
    {& Geom.Neck1RatCenter,141,0.0f,1.0f,0.4522f}, // Never change
    {& Geom.Neck2RatCenter,142,0.0f,1.0f,0.455f}, // Never change
    {& Geom.Neck1RatRad,143,-1000.0f,1000.0f,-6.9261f},// Never change
    {& Geom.Neck2RatRad,144,-1000.0f,1000.0f,-6.5172f},// Never change
    {& Geom.RWheelArmPotOffset,145,-1000.0f,1000.0f,0.5f},// !< Potentiometer offset for wheel arm angle, right
    {& Geom.LWheelArmPotOffset,146,-1000.0f,1000.0f,0.5f},// !< Potentiometer offset for wheel arm angle, left
    {& Geom.WheelArmPotGain,147,-1000.0f,1000.0f,5.4938f},  // !< Potentiometer gain for wheel arm angle
    {& Geom.Center2WheelDist,150,0.1f,1.0f,0.251f}, // Half the wheel distance (robot center to wheel)
    {& Geom.WheelBase,152,0.4f,2.0,0.75f } ,
    {& Geom.MaxCurvature,153,0.4f,5.0,3.0f } ,
    {& Geom.SteerColumn2WheelDist,154,-0.50f,0.5f,0.06f } , //OBB was 0.65// !< Was 0.075 Horizontal distance between steering axis and wheel touch point
    {& Geom.AlarmWheelUnbalance,155,0.01f,0.5f,19.0f } , // !< Maximum absolute neck stretch for alarm creation
    {& Geom.LeaderMeetsSwitchM,156,0.01f,5.0f,0.98f } ,// !< Max distance since arc start until leader should meet inductive switch
    {& Geom.ArcDist4SecondSwitchM,157,0.01f,5.0f,0.7f } ,   // !< Max distance (at the leader) since leader meet inductive switch until the follower meets the switch
    {& Geom.Error4LeaderTwistPosControlM,158,0.0001f,0.5f,-0.005f } ,// !< Distance to final target where control should switch to active position
    {& Geom.StopAfterLeaderEncountersSwM,159,0.01f,5.0f,0.1f } ,// !< At un-climb: Distance since leader reverts through switch and until un-climb  is over
    { &Geom.NeckRoofAngle,161,0.01f,5.0f,2.0f },// !< The angle of the neck roof, relating shoulder distance to pot reports
    { &Geom.MaxPosErrorToRotateJunc,162,0.0001f,0.1f,0.01f },// !< Maximum position error for which it will still be possible to rotate junction
    {& Geom.Center2WheelDist4Diff,163,0.1f,1.0f,0.325f}, // Half the wheel distance (robot center to wheel)
    { &Geom.ClimbArcOverFloor,164,0.01f,5.0f,0.045f },// !< Height of arc rail over the floor
    { &Geom.DistanceFromShoulderJoint2Slidewheel,165,0.01f,5.0f,0.0493f },// !< Distance from the shoulder joint to the side wheel which enters the groove in the rail
    { &Geom.ClimbArcRadi,166,0.01f,5.0f,0.22025f },// !< Radius of the arc at the initial climb stage
    { &Geom.LeaderMeetsZeroSwitchM,167,-2.0f,2.0f,0.6f },  // !< Max distance until arc entry switch
    { &Geom.Leader2ArcDistWhenClimbStarts,168,0.0f,2.0f,0.1f },  // !< The distance between the leader to the arc when climb is ordered
    { &Geom.LimitSw2DistPosOnArc,171,-0.2f,2.0f,0.081f }, // !< Limit switch 2 position with respect to arc end
    { &Geom.PinMotorCurrentAmp,172,1.0e-04f,3.0f,Default_PinMotorCurrentAmp },// !<Current for wheel arm motors
    { &Constraint.ZforTimeAtBigTorqueDiff,173,1.0e-04f,0.99f,2.048e-3f },// Filter constant for max torque difference between the wheels
    { &Geom.LimitSwWidth ,174,1.0e-04f,1.0f,0.021f },// !< nominal switch width (m)
    { &Geom.LimitSwitchDistFromJuncPole,175,1.0e-04f,1.0f,0.0295f },// !< Was 0.032f, before Was 0.02925f Distance since CG of switch to the disk rotation point, applicable on the pole
    { &Geom.LimitSwitchDistFromJuncShelf,176,1.0e-04f,1.0f,0.02925f },//  !< Distance since CG of switch to the disk rotation point, applicable on the shelf
    { &Geom.MaxIncidence4Package,177,0.0001f,1.0f,0.5f },//  !< Maximum ramp incidence for package loading
    { &Geom.LimitSw2DistPosOnArcDn,178,-0.2f,2.0f,0.08f }, // !< Limit switch 2 position with respect to arc end, down way
    {& GyroInt.WThold4GyroOffsetDiff,179,0.0f,1.0f,0.0020f},
    {& GyroInt.gNom[2],180,-11.0f,11.0f,-9.82f}, // !< Earth gravitation
    {& GyroInt.kKalmanOffsetCorrect,181,0.0f,100.0f,0.007812500000000f},
    {& GyroInt.kKalmanAcc,182,0.0f,100.0f,1.0f},
    {& Constraint.ZforTimeAtBigTorqueDiff,183,1.0e-04f,3.0f,1.0f },// Filter constant for max torque difference between the wheels
    {& Geom.PinMotorCurrentAmpIbit,183,1.0e-04f,3.0f,1.0f },// !<Current for wheel arm latch motors, IBIT only
    {& GyroInt.OdometryDvGain,184,0.0f,1.01f,0.0f},
    {& GyroInt.kKalmanLineOpticalCorrect,185,0.0f,1.0f,0.95f},
    {& GyroInt.kKalmanLineOpticalCorrectAngle,186,0.0f,1.0f,0.3f},
    {& Constraint.MotionStartLinearTol ,187,0.01f,1.0f,0.17f}, // Maximum distance deviation from start point, still allowing motion start
    {& Constraint.MotionStartAngularTol ,188,0.01f,1.0f,0.3f}, // Maximum angle deviation from start point, still allowing motion start
    {& SysState.TrackWidthCtl.GlideDistance,189,0.0001f,0.05f,0.04f}, // Distance for final approach before wheel-arm latch closing
    {& SysState.TrackWidthCtl.GlideSpeed,190,0.0001f,0.3f,0.015f},
    {& SysState.TrackWidthCtl.ExtraGlide4Latch,191,0.0001f,0.1f,0.003},
    {& SysState.TrackWidthCtl.GlideMaxOverShoot,192,0.0f,0.15f,0.08f},
    {& Constraint.MaxWheelAccelerationCmd,193,0.001f,100.0f,40.0f}, // !< Maximum wheel acceleration command
    {& ControlPars.FollowerStoppyBeforeArcDistance,194,0.01f,1.0f,0.295f},// Was 0.275 Distance of body center before arc when stoppy action starts on climb
    {& Constraint.FunnelLateralTol ,195,0.01f,0.1f,0.03f}, // Lateral tolerance for funnel access
    {& Constraint.FunnelAngularTol,196,0.01f,0.1f,0.07f}, // Angular tolerance for funnel access
    {& Constraint.FunnelSplineMinDist,197,0.1f,1.0f,0.4f}, // Minimum distance to perform a spline (above this distance from the pole, a spline is made, below: direct access)
    {& Constraint.FunnelApproachAcc,198,0.1f,2.0f,0.2f}, // Acceleration when approaching the funnel
    {& Constraint.FunnelApproachSpeed,199,0.1f,1.0f,0.15f}, // Speed when approaching the funnel
    {& Constraint.vmax,200,0.0f,100.0f,1.5f}, // !< Max line speed
    {& Constraint.aradmax,201,0.0f,100.0f,1.5f},// !< Maximum radial acceleration for automatic motions
    {& Constraint.amax,202,0.0f,100.0f,0.6f},// !< maximum line acceleration for automatic motions
    {& Constraint.dmax,203,0.0f,100.0f,0.6f}, // !< maximum line deceleration for automatic motions
    {& Constraint.MaxCurvature,204,1.0f,100.0f,2.5f}, // !< Maximum curvature for ground navigation
    {& Constraint.MaxNeckSpeedCmd,205,0.001f,100.0f,1.0f}, // !< Maximum neck speed command
    {& Constraint.MaxSteerSpeedCmd,206,0.001f,100.0f,0.65f}, // !< Maximum steer speed command
    {& Constraint.MaxSteerAccelerationCmd,207,0.001f,100.0f,0.6f}, // !< Maximum steering acceleration command
    {& Constraint.MaxNeckAccelerationCmd,208,0.001f,100.0f,2.3f}, // !< Maximum Neck acceleration command
    {& Constraint.SOverC,209,0.001f,100.0f,0.4f},   // !< worst ratio between steering rate and the corresponding curvature rate
    {& Constraint.MaxWheelDevInTwist,210,0.001f,100.0f,0.03f},   // !< Maximum allowed wheel deviation while in twist before fatal failure
    {&ControlPars.MinArcDist4FollowerPush ,211,-1.0f,100.0f,0.735f},  // Arc distance where follower has full grip and can push
    {&ControlPars.WheelArmPinLockPosStretch ,212,0.0f,0.1f,0.014f},  // Limit for time since arrival at QR position until detection
    {&ControlPars.AngularMotionLimitForStraightLine,213,0.01f,10.0f,0.2f},  // Limit for angular motion on straight line
    {&ControlPars.TimeLimitForArrivalTillQrCode,214,0.1f,100.0f,2.0f},  // Limit for time since arrival at QR position until detection
    {&ControlPars.RollThereshold4FallDetection,215,1e-3f,100.0f,0.045f}, // !< Abrupt roll change threshold for fall detection
    {&ControlPars.TorqueGainPole,216,0.0f,100.0f,0.066f}, // !< Gain for motor torque equalization when vertical on pole
    {& ControlPars.ShelfRescueSpeed,217,0.0f,100.0f,0.30f}, // !< Shelf speed for automatic rescue
    {& ControlPars.WheelPosOnRailGain,218,0.0f,100.0f,4.0f}, // !< Gantry wheel position correction on rail
    {& ControlPars.WheelPosOnPoleGain,219,0.0f,100.0f,4.0f}, // !< Position correction gain for neck spacing
    {& ControlPars.NeckStretchGain,220,0.0f,100.0f,12.0f}, // !< Correction gain for neck stretch control
    {& ControlPars.NeckStretchGainPole,221,0.0f,100.0f,2.5f}, // !< Gain for neck stretch correction when vertical on pole
    {& ControlPars.NeckGyroSlaveMaxRate,222,0.0f,10.0f,1.5f}, // !< Rate limit for gyro - neck enslaving
    {& ControlPars.CurvatureCorrectGain,223,0.0f,1000.0f,1.0f}, // !< Was 0.3 Curvature correction gain
    {& ControlPars.RouteLookAheadDist,224,0.0f,10.0f,0.90f}, // !< Route look ahead distance
    {& ControlPars.NeckAccSlaveGain,225,0.0f,120.0f,0.5f}, // !< Was 0.75: Neck roll enslaving gain
    {& ControlPars.SlipFactor,226,0.0f,1.0f,0.00f},
    {&ControlPars.TorqueGainPoleManual,227,0.0f,100.0f,0.21f}, // !< Gain for motor torque equalization when vertical on pole
    {& ControlPars.NeckPosAlpha,228,0.0f,10.0f,1.5f},// !< Neck roll acceleration
    {& ControlPars.NeckSpeedMaxNoStab,229,0.0f,10.0f,0.2f},// !< Neck roll speed on non-stabilized motions
    {& ControlPars.NeckSpeedFiltGain,230,0.0f,100.0f,62.8f},
    {& ControlPars.GyroXFiltBwRadSec,231,0.0f,100.0f,19.0f}, // !< 1.5f Bandwidth for scaling accelerometer and gyro info neck stabilization
    {& ControlPars.GyroAccCorrectionIntoVert,232,-100.0f,100.0f,-0.0243f*0}, // !< Gyro acceleration correction into roll estimate , as accelerometer is not placed on rotation center
    {&ControlPars.PoleSmoothAcc,233,0.0f,1000.0f,62.3f}, // !< Gyro acceleration correction into roll estimate , as accelerometer is not placed on rotation center
    {&ControlPars.YawCrabSpeed,234,0.0f,1000.0f,0.6f },// Crab turn speed
    {&ControlPars.LateralPoleAccessTol,236,0.001f,0.1f,0.0165f },// Max tolerance for lateral access of pole
    {&ControlPars.AngularPoleAccessTol,237,0.001f,0.1f,0.09f    },// Max tolerance to angular access of pole
    {&ControlPars.NeckDiffSetPoint,238,-0.1f,0.1f,-0.025f    }, // !< Set point for neck difference pole compliance compensation, on the up way
    {&ControlPars.PoleYewOffset,239,-0.1f,0.1f,-0.025f    }, // !< Angle offset to add to the steering when on pole climb (rad)
    {&ControlPars.DeltaWheelPos4ShelfRun,240,-0.015f,0.015f,0.0f    }, // !< Position of leading wheel on the shelf relative to follower wheel (m)
    {&ControlPars.HorizontalRailYewOffset,241,-0.2f,0.2f,-0.0227f    }, // !< Was -0.035f Angle offset to steering when on horizontal shelf (rad)
    {&ControlPars.ShelfAcceleration,242,0.1f,20.0f,0.3f    }, // !< Acceleration on the shelf
    {&ControlPars.DownTolForArcSwitchLoc,243,0.001f,5.0f,0.15f    }, // !< Was 0.06 Tolerance for deviation of start-of-arc switch from its expected position
    {&ControlPars.InitClimbFollowerOverLeader,244,0.8f,1.5f,1.4f    }, // !< Speed ratio between follower and leader on climb start
    {&ControlPars.NeckDiffSetPointDown,245,-0.1f,0.1f,-0.005f    }, // !< Set point for steering offset for pole compliance compensation, on the down way
    {&ControlPars.NeckGainReductionFacOnDown,246,0.0f,2.0f,0.45f} , // !< Reduction of gain , [0..1] , for the neck opening in the down direction w.r.t. up direction
    {&ControlPars.PreArcFollowerYewOffset,247,-0.1f,0.1f,-0.025f    }, // !< Angle offset to add to the steering for follower before it really meets the arc (rad)
    {&ControlPars.PreArcLeaderYewOffset,248,-0.1f,0.1f,-0.030f    }, // !< Angle offset to add to the steering for leader before follower meets the arc (rad)
    {&ControlPars.PauseDeceleration,249,0.1f,5.0f,1.8f    }, // !< Deceleration when accepting in-mission pause command
    {&ControlPars.Tilt4ArcEntry,250,0.01f,5.0f,0.03f } ,// Body tilt to infer arc entry in the lack of optical switch
    {& ManRouteCmdImage.LineAcc,251,0.0f,100.0f,0.45f}, // !< Line acceleration for manual routing
    {& ManRouteCmdImage.CurvatureAcc,252,0.0f,3.0f,0.8f}, // !< Curvature acceleration for manual routing

