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
    {& ManGeo.TimeForEntireSuck , 106 , 0.001f, 100.0f ,3.0F}, // Sept 2019 was 3
    {& ManGeo.TimeForEntireSuckRelease , 107 , 0.001f, 100.0f ,3.0F}, // Sept 2019 was 3.5
    {& ManGeo.SuckFilterThold , 108 , 0.001f, 100.0e6f ,20000.0F},

    {& ManGeo.FlexDoorPosDown, 110 , -10.0f, 10.0f ,0.0f},
    {& ManGeo.FlexDoorPosUp, 111 , -10.0f, 10.0f , 1.57f},
    {& ManGeo.FlexDoorScale, 112 , -10.0f, 10.0f , 0.001533980787886f },  // Rotation of door convert

    {& ManGeo.FlexManipAngleTol  , 115 , 0.001f, 1.0f ,0.02F},
    {& ManGeo.FlexManipPlatePos2Enc, 116 , 1.0f, 1.0e6f ,10000.0f},

    //{& ManGeo.FlexDiscSpeed,124, 0.01f, 5.0f,0.5F},
    {& ManGeo.FlexPlateSpeed, 125 , 0.01f, 0.6f ,0.5f}, //  Max speed for the flex plate
    {& ManGeo.FlexTapeSpeed,126, 0.01f, 0.5f,0.2f}, //  Max speed for the flex tape
    {& ManGeo.FlexSpacerSpeed, 127 , 0, 0.06f , 0.05f },  // Max speed for flex spacer

    {& ManGeo.FlexArmRetreatDist4SuctRelease, 129 ,0.0f, 10.0f , 0.03f }, // small Retreat distance at slow speed for suction pressure relief (before fast end unit movement)
    //{& ManGeo.FlexArmDistLaser2CupsUnPressed, 130 ,0.0f, 10.0f , 0.15f }, //flex arm Distance laser to suction cups (free)
    {& ManGeo.FlexArmDistLaser2CupsPressed, 131 ,0.0f, 10.0f , 0.11f }, //flex arm Distance laser to suction cups (free)
    {& ManGeo.FlexArmETolForPackageY, 133 ,0.0f, 10.0f , 0.07f }, //Tolerance for Package Y location
    {& ManGeo.FlexArmMaxExtWithinTray, 134 ,0.0f, 10.0f , 0.5f }, //Rough Approach Clearance From Expected Package (fine approach required)
    {& ManGeo.FlexArmActivateSlowApproach, 135 ,0.0f, 10.0f , 0.1f }, //Rough Approach Clearance From Expected Package (fine approach required)
    {& ManGeo.FlexArmPackageGrippedLaserTol, 136 ,0.0f, 10.0f , 0.03f }, //flex arm tolerance for laser measurement result for package gripped
    {& ManGeo.FlexArmPackageOnTrayLaserTol, 137 ,0.0f, 10.0f , 0.03f }, //flex arm tolerance for laser measurement result for package on tray
    {& ManGeo.FlexArmExtUpdateTol, 138 ,0.0f, 10.0f , 0.020f }, //the required change in laser reading to update the get package fine approach Y target
    {& ManGeo.FlexArmPackagePreloadExt, 139 ,0.0f, 10.0f , 0.005f },  //define how much to advance over the current D target in order to pre-load the suction cups
    {& ManGeo.FlexXDistWheel2PackageAt90DegPlate,140, 0.01f, 1.0f,0.553f}, // Tape arm X Distance between wheels center point and manipulator pivot //not used for Flex.
    {& ManGeo.FlexYDistWheel2PackageAtSpacer0Ext0, 141 ,-0.1f, 0.1f , -0.015f }, //distance from y=0 to cups (pressed) surface when tape arm & Spacer at zero positive (positive is at Robot Y - right).
    {& ManGeo.FlexArmSuspectedPackageContactThreshold, 142 ,0.0f, 10.0f , 0.04f }, //Flex Arm Suspected Package Contact Threshold

    //{& ManGeo.FlexManipMaxPos4Push , 139 , 0.01f, 3.0e6f ,0.20F},
    {& ManGeo.FlexMaxAngle, 145 , -10.0f, 10.0f , 1.8f }, //max angle for rotating plate
    {& ManGeo.FlexMaxLinearTravel , 146 , 0, 10.0f , MAX_SPACER_SHIFT }, // Maximum travel of flex arm linear travel
    {& ManGeo.FlexMaxExtensionTravel, 147 , 0, 10.0f , 1.2f }, //Flex tape Arm Max Extension Travel
    {& ManGeo.FlexMaxNeckIncidence, 148 , -10.0f, 10.0f , MAX_NECK_INCIDENCE_PACKAGE_HANDLING }, //max angle for neck incidence - 15deg
    //{& ManGeo.FlexManipMaxLength , 148 , 0.01f, 3.0e6f ,1.20F},

    {& ManGeo.FlexStandbySpacerPos, 151 , -10.0f, 10.0f , STAND_BY_SHIFT },  //  Flex arm spacer operational position (10mm smaller that FlexSpacerStandbyPos, probably can be equal to it).
    {& ManGeo.FlexStandbyExtPos, 152 , -10.0f, 10.0f , STAND_BY_EXT },  // This is the stopping distance at standby from the homing position (switch).

    //{& ManGeo.FlexCupsRel2RotaionCenter, 155 , -10.0f, 10.0f , 0.041f },  //  Flex suction cups center relative to rotation center while Tape arm linear at zero position. positive is behind the center.
    {& ManGeo.FlexSpacerPosSetPackageShelf, 156 , -10.0f, 10.0f , SYNC_POS3_M },  //  Flex spacer position while package handling on shelf //TODO:INTEGRATION check (according to CAD 135)


    {& ManGeo.ShelfTrackPoint1Angle, 163 , -10.0f, 10.0f , 0.0f * deg2rad }, //Shelf Track Point 1 Angle
    {& ManGeo.ShelfTrackPoint1Pos, 164 , -10.0f, 10.0f , STAND_BY_SHIFT },  //Shelf Track Point 1 Position
    {& ManGeo.ShelfTrackPoint2Angle, 165 , -10.0f, 10.0f , 0.0f * deg2rad}, //Shelf Track Point 2 Angle
    {& ManGeo.ShelfTrackPoint2Pos, 166 , -10.0f, 10.0f , ROTATION_ALLOWED_SHIFT },  //Shelf Track Point 2 Position
    {& ManGeo.ShelfTrackPoint3Angle, 167 , -10.0f, 10.0f , SYNC_ANGLE1_DEG * deg2rad},//Shelf Track Point 3 Angle
    {& ManGeo.ShelfTrackPoint3Pos, 168 , -10.0f, 10.0f , SYNC_POS1_M },  //Shelf Track Point 3 Position
    {& ManGeo.ShelfTrackPoint4Angle, 169 , -10.0f, 10.0f , SYNC_ANGLE2_DEG * deg2rad},//Shelf Track Point 4 Angle
    {& ManGeo.ShelfTrackPoint4Pos, 170 , -10.0f, 10.0f , SYNC_POS2_M }, //Shelf Track Point 4 Position
    {& ManGeo.ShelfTrackPoint5Angle, 171 , -10.0f, 10.0f , 90.0f * deg2rad}, //Shelf Track Point 5 Angle
    {& ManGeo.ShelfTrackPoint5Pos, 172 , -10.0f, 90.0f , SYNC_POS3_M }, //Shelf Track Point 5 Position

    {& ManCmd.LineSpeedArr[0],230, 0.0f, 1.0f,0.2f}, // Speed for standby in get package
    {& ManCmd.LineSpeedArr[1],231, 0.0f, 1.0f,0.2f}, // Speed for re-push in get package failure
    {& ManCmd.LineSpeedArr[2],232, 0.0f, 1.0f,0.2f}, // Speed for return with package
    {& ManCmd.LineSpeedArr[3],233, 0.0f, 1.0f,0.2f}, // Speed for pushing a package to place
    {& ManCmd.LineSpeedArr[4],234, 0.0f, 1.0f,0.2f}, // Speed for return after pushing a package to place

