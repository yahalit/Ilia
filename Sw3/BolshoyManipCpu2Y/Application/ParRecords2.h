    {& ManGeo.LHumerus,1, 0.1f, 1.0f,G_LHumerus} ,//!< Length of the humerus (elbow to shoulder)
    {& ManGeo.LRadius,2, 0.1f, 1.0f,G_LRadius} ,// !< Length of elbow (wrist to elbow)
    {& ManGeo.LHand,3, 0.01f, 1.0f,G_LHand},// !< Length of hand (from wrist to end of compressed suckers)
    {& ManGeo.XDistWheelShoulderPivot,4, 0.01f, 1.0f,G_XDistWheelShoulderPivot}, // X Distance between wheels center point and manipulator pivot
    {& ManGeo.YDistWheelShoulderPivot,5, 0.01f, 1.0f,G_YDistWheelShoulderPivot },// Y Distance between wheels/rail touch line and manipulator pivot
    {& ManGeo.SideShelfDnPos,6, -0.35f, 1.57f, -0.25F},// !< Stop position when released
    {& ManGeo.SideShelfUpPos,7, 0.0f, 1.7f, 1.2F},// !< Stop position when locking
    {& ManGeo.RDoorCenter,8, 0.0f, 10000.0f, 3283.0F},// !< Zero position range for right door
    {& ManGeo.LDoorCenter,9, 0.0f, 10000.0f, 2521.0F},// !< Zero position range for left door
    {& ManGeo.RDoorGainFac,10, 0.0002f, 0.01f, 0.0015F},// !< Right door , transition / encoder
    {& ManGeo.LDoorGainFac,11, 0.0002f, 0.01f, 0.0015f},// !< Left door , transition / encoder
    {& ManGeo.MaxLaserDistOnHold,15, 0.0f, 0.2f,0.065F}, // Maximum laser reading on laser hold
    {& DynStat12[0].PositionOffset,19, -200000.0f, 200000.0f,0.0F}, // Left stop
    {& DynStat12[1].PositionOffset,20, -200000.0f, 200000.0f,232.0F}, // Right Stop
    {& DynStat12[0].PositionScale,22, -200000.0f, 200000.0f,STOP_POS_SCALE}, // Left stop
    {& DynStat12[1].PositionScale,23, -200000.0f, 200000.0f,STOP_POS_SCALE}, // Right Stop
    {& DynStat12[0].SpeedScale,28, -20000.0f, 20000.0f,STOP_POS_SCALE }, // Left stop
    {& DynStat12[1].SpeedScale,29, -20000.0f, 20000.0f,STOP_POS_SCALE }, // Right Stop
    {& Dynamixel24.CommCycleTimeSec, 30, 0.001f, 1.0f, 5e-3f}, // Cycle time for 24V net communication
    {& Dynamixel12.CommCycleTimeSec, 31 , 0.001f, 1.0f, 100e-3f }, // Cycle time for 12V net communication
    {& ManGeo.ShoulderMaxSpeed,44, 0.01f, 5.0f,0.5F}, //  Max speed for the shoulder
    {& ManGeo.ElbowMaxSpeed,45, 0.01f, 5.0f,0.5F}, // Maximum speed for the elbow
    {& ManGeo.WristMaxSpeed,46, 0.01f, 5.0f,0.85F}, // //Max speed for the wrist
    {& ManGeo.GripperMaxSpeed,47, 0.01f, 5.0f,0.55F}, // //Max speed for the gripper
    {& ManGeo.ManipulatorAccTime,48, 0.01f, 10.0f,0.4F}, // Acceleration time to full speed, any joint, no package
    {& ManGeo.FlexAccTime,49, 0.01f, 10.0f,0.4F}, // Acceleration time to full speed, tape arm, no package
    {& ManGeo.StandbyXTarget,55, -1.0f, 0.0f,-0.335f }, // Standby target for longitudinal position
    {& ManGeo.ScaraStandbyYTarget,56, -1.0f, 1.0f,0.18f }, // Standby target for traverse position
    {& ManGeo.WaitLaserStabilizationTime , 57 , 0.001f , 10.0f , 1.0f} , // Time of waiting in rough position till laser is at hand Sept 2019 was 1.5
    {& ManGeo.ManipulatorAccTimeWithPack,58, 0.01f, 10.0f,0.8F}, // Acceleration time to full speed, any joint, with package
    {& ManGeo.ManipulatorAccTimeReleasePack,64, 0.01f, 10.0f,0.8F}, // Acceleration time to full speed, for releasing package from hold at the end of push
    {& ManGeo.ManipulatorRetreatDistReleasePack,65, -0.1f, 10.0f,0.015F}, // Initial retreat distance, for releasing package from hold at the end of push
    {& ManGeo.UnsuckPackReleaseTime, 66 , 0.01f, 30.0f ,4.0F}, // Time [Sec] waiting from vaccuum release till arm can go back without drawing package.
    {& ManGeo.WHumerus,67, 0.01f, 1.0f,G_WHumerus},// !< Width of Humerus
    {& ManGeo.WHand,68, 0.01f, 1.0f,G_WHand},// !< width of hand
    {& ManGeo.LSucker, 69 , 0 , 1 , G_LSucker} , // !< Length of flexible part of manipulator
    {& ManCmd.IntegralErrorThold, 70 , 0 , 1 , 0.0} , // !< Threshold for low-pass error detection
    {& ManGeo.DecelerationDelayTau,99, 0.0f, 1.0f,0.05F}, // Deceleration delay for stopping curve
    {& ManGeo.MinLaserRange , 100 , -0.1f, 0.5f ,-0.01F},
    {& ManGeo.MaxLaserRange , 101 , 0.1f,  0.5f ,0.28F},
    {& ManGeo.Offset4LaserDistance , 102 , 0, 0.2f ,0.00F},
    {& ManGeo.MaxLaser4PushContact, 103 , 0, 0.2f ,0.10F},
    {& ManGeo.TimeInGoodCurrent4Pull , 104 , 0.001f, 100.0f ,1.0F},
    {& ManGeo.StandbyY4Elbow , 105 , -0.4f, 0.4f ,-0.25F},
    {& ManGeo.TimeForEntireSuck , 106 , 0.001f, 100.0f ,2.4F}, // Sept 2019 was 3
    {& ManGeo.TimeForEntireSuckRelease , 107 , 0.001f, 100.0f ,2.80F}, // Sept 2019 was 3.5
    {& ManGeo.SuckFilterThold , 108 , 0.001f, 100.0e6f ,20000.0F},
    {& ManGeo.FlexStandbyYTarget , 109 , 0.001f, 1.0f ,0.0F},
    {& ManGeo.FlexManipMaxLength , 110 , 0.01f, 3.0e6f ,1.20F},
    {& ManGeo.FlexManipMaxPos4Push , 111 , 0.01f, 3.0e6f ,0.20F},
    {& ManGeo.FlexManipAngleTol  , 112 , 0.001f, 1.0f ,0.02F},
    {& ManGeo.FlexManipPlatePos2Enc, 113 , 1.0f, 1.0e6f ,10000.0f},
    {& ManGeo.FlexPlateSpeed, 114 , 0.01f, 10.0f ,0.5f},
    {& ManGeo.FlexDoorPosDown, 115 , -10.0f, 10.0f ,0.0f},
    {& ManGeo.FlexDoorPosUp, 116 , -10.0f, 10.0f , 1.57f},
    {& ManGeo.FlexMaxSpeed,118, 0.01f, 5.0f,0.2F}, //  Max speed for the flex tape
    {& ManGeo.FlexDiscSpeed,119, 0.01f, 5.0f,0.5F}, //  Max speed for the flex disc
    {& ManGeo.FlexDoorScale, 122 , -10.0f, 10.0f , 0.001533980787886f },  // Rotation of door convert
    {& ManGeo.FlexArmHomingRet2Area, 130 , -10.0f, 10.0f , 0.025f },  // Max speed for plate control    ; // Homing speed for arm
    {& ManGeo.FlexArmMaxTravel, 134 , 0, 10.0f , 1.6f },
    {& ManGeo.FlexPlateColideAngle, 135 , -10.0f, 10.0f , 0.2f }, // The angle of plate where collision occurred if spacer is not in place
    {& ManGeo.FlexXDistWheelShoulderPivot,136, 0.01f, 1.0f,0.54f}, // Tape arm X Distance between wheels center point and manipulator pivot
    {& ManGeo.FlexSpacerHomingSpeed, 137 , -10.0f, 10.0f , 0.05f },  // Homing speed for flex arm spacer
    {& ManGeo.FlexSpacerStandbyPos, 138 , -10.0f, 10.0f , 0.01f },  // // Flex arm spacer stand by position
    {& ManGeo.FlexRetreatDist4SuctRelease, 139 ,0.0f, 10.0f , 0.03f }, // Retreat distance fro suction pressure relief
    {& ManGeo.FlexArmMaxAngle, 140 , -10.0f, 10.0f , 1.8f },
    {& ManGeo.FlexArmMaxLinearTravel , 141 , 0, 10.0f , 0.152f }, // Maximum travel of flex arm linear travel
    {& ManGeo.FlexSpacerOperationalPos, 160 , -10.0f, 10.0f , 0.025f },  // // Flex arm spacer operational position
    {& ManCmd.LineSpeedArr[0],230, 0.0f, 1.0f,0.2f}, // Speed for standby in get package
    {& ManCmd.LineSpeedArr[1],231, 0.0f, 1.0f,0.2f}, // Speed for re-push in get package failure
    {& ManCmd.LineSpeedArr[2],232, 0.0f, 1.0f,0.2f}, // Speed for return with package
    {& ManCmd.LineSpeedArr[3],233, 0.0f, 1.0f,0.2f}, // Speed for pushing a package to place
    {& ManCmd.LineSpeedArr[4],234, 0.0f, 1.0f,0.2f}, // Speed for return after pushing a package to place

