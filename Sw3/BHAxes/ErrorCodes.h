#ifndef LP_ERROR_Codes_Defined
#define LP_ERROR_Codes_Defined

//[Motion Exception Codes]
#define exp_manip_core_no_answer 0x6100 // [Slave:Abort] {Manipulator core does not answer}
#define exp_obj_too_big_4_minipulator 0x6101 // [Slave:Abort] {Manipulator cannot handle > 16bytes in single object}
#define exp_cannot_yet_enter_speedmode 0x6102 // [Slave:Fatal] {Cannot enter speed mode until robot stops}
#define exp_not_ready_wheelarm_cheat 0x6103 // [Slave:Abort] {Cannot enter wheel arm cheat mode (e.g. not in crab) }
#define exp_either_hight_or_planepos_may_change 0x6104 // [Slave:Abort] {Program wanted to change both height and planar position in one line }
#define exp_transition_to_junction_rotation_failed 0x6105 // [Slave:Abort] {Could not enter command to rotate junction }
#define exp_climb_transition_wheels_not_aligned  0x6106 // [Slave:Abort] {Try to climb with the wheels not correctly steered }
#define exp_climb_transition_wheels_not_crabbed  0x6107 // [Slave:Abort] {Try to climb with the wheels not correct crab }
#define exp_abrupt_roll_change_possible_fall  0x6108 // [Motion:Fatal] {Abrupt roll change - suspect a boggie dropped of the rail }
#define exp_axis_overload_rw 0x620a // [Motion:Fatal] {overload limit right wheel }
#define exp_axis_overload_lw 0x620b // [Motion:Fatal] {overload limit left wheel (in code exception: exp_axis_overload_rw))}
#define exp_axis_overload_rs 0x620c // [Motion:Fatal] {overload limit right steer  (in code exception: exp_axis_overload_rw)}
#define exp_axis_overload_ls 0x620d // [Motion:Fatal] {overload limit left steer (in code exception: exp_axis_overload_rw) }
#define exp_axis_overload_nk 0x620e // [Motion:Fatal] {overload limit neck  (in code exception: exp_axis_overload_rw)}
#define exp_axis_overload_r0 0x620f // [Motion:Fatal] {overload limit reserved 0  (in code exception: exp_axis_overload_rw)}
#define exp_axis_overload_r1 0x6210 // [Motion:Fatal] {overload limit reserved 1  (in code exception: exp_axis_overload_rw)}
#define exp_axis_overload_r2 0x6211 // [Motion:Fatal] {overload limit reserved 2  (in code exception: exp_axis_overload_rw)}
#define exp_axis_overload_r3 0x6212 // [Motion:Fatal] {overload limit reserved 3  (in code exception: exp_axis_overload_rw)}
#define exp_failed_to_cmd_sleep 0x6213 // [Motion:Fatal] {Core #2 does not respond to a sleep request}
#define exp_power_failure 0x6214 // [Motion:Fatal] {Servo power supplies failed}
#define exp_could_not_start_dxl12_com 0x6215  // [Motion:Fatal] {Could not initialize the dynamixel 12 net}

#define exp_expected_bootup_found_unknow_id 0x7000 // [General:Fatal] { expected boot-up messages only, found message from unknown id}
#define exp_unexpected_bootup_msg 0x7001 // [General:Fatal] {An unexpected CAN resident issued a boot-up message}
#define exp_trap_overflow 0x7002 // [General:Fatal] {Too much CAN traffic to handle}
#define exp_sci_repeated_error_code  0x7003// [SPI:Warning] {A repeated error code to robot host}
#define exp_shilgum_yozgot_2  0x7004// [General:Fatal] {Something terribly wrong with the software}
#define exp_mot_queue_reject 0x7005 //[Automation:Abort] {Queue rejected, due to erroneous sequence}
#define exp_auto_requires_all_installed 0x7006 //[Automation:Abort] {Automation is possible only if all the axes are present}
#define exp_manipulator_not_installed 0x7007 // [Manipulator:Abort] {No manipulator is installed}
#define exp_init_gnd_nav_on_shelf 0x7008 // [Automation:Warning] {Cannot initialize ground position when on the shelf}
#define exp_mot_queue_schedule_error 0x7009// [Automation:Abort] {Task scheduler encountered a problem}
#define exp_mot_problem_seg_proccessing 0x700a// [Automation:Abort] {Failed to process motion queue by inconsistency}
#define exp_mot_unknown_opcode 0x700b //[General:Warning] {Host specified unknown op code in SPI message}
#define exp_mot_cant_set_mode6060 0x700c // [Motion:Fatal] {Could not switch the mode of a servo drive}
#define exp_bad_pot_reference 0x700d // [Motion:Fatal] {Bad reference voltage for the potentiometers}
#define exp_cant_find_leader_sw_unclimb 0x700e // [Motion:Abort] {Un-climb - Leader wheel cannot find the digital input on arc entry}
#define exp_cant_find_follower_sw 0x700f // [Motion:Abort] {Follower wheel cannot find the digital input on arc entry}
#define exp_cant_premature_follower_sw 0x7010 // [Motion:Abort] {Follower wheel found the digital input prematurely}
#define exp_wrong_crab_mode_on_shelf_climb 0x7011// [Motion:Warn] {Climb was commanded with bad steering angle}
#define exp_error_negative_must_be_wrong_setup 0x7012 // [Motion:Warn] {Bad data for shelf height above the optical switch}
#define exp_leader_cant_find_exit_sw 0x7014 // [Motion:Fatal] {Leader wheel cannot find the digital input on arc exit}
#define exp_follower_cant_find_exit_sw 0x7015 // [Motion:Abort] {Follower wheel cannot find the digital input on arc exit}
#define exp_cant_find_leader_sw_climb 0x7016 // [Motion:Fatal] {Leader wheel cannot find the digital input on arc entry - climb}
#define exp_follower_cant_find_exit_modesw 0x7017 // [Motion:Abort] {Follower wheel did not find the digital input of arc exit on mode switch}
#define exp_shilgum_yozgot_clali  0x7018// [General:Fatal] {This mode should be never called}
#define exp_expected_bootup_found_unknow_id2 0x7019 // [General:Fatal] { expected boot-up messages only, found message from unknown id}
#define exp_unexpected_bootup_msg1 0x7020 // [General:Fatal] {An unexpected CAN resident issued a boot-up message}


#define exp_last_route_loc_error 0x7040 //[Navigation:Abort] {Could not locate a nominal path point near the robot's position}
#define exp_goto_premature_motoroff 0x7060 // [General:Fatal] {A motor went off in the course of re-position}
#define exp_goto_laser_loss 0x7061 // [General:Fatal] {The laser lock of a package was lost}
#define exp_goto_package_lost 0x7062 // [General:Fatal] {The laser lock of a package was lost}
#define exp_goto_suction_lost 0x7063 // [General:Fatal] {The laser lock of a package was lost}
#define exp_goto_suction_lost_at_Init 0x7064 // [General:Abort] {The laser lock of a package was lost}
#define exp_package_handling_general_err 0x7100 // [Manipulator:Warning] {Non-specific package handling errors}
#define err_manipulator_is_busy 0x7101 // [Manipulator:Warning] {Manipulator was busy when asked for action}
#define err_mode_mismatch_for_package 0x7102 // [Manipulator:Warning] {Manipulator may be operated on the shelves only if on shelf run and neck is stabilized}
#define err_side_mismatch_for_package 0x7103 // [Manipulator:Warning] {Manipulator direction undefined or inconsistent with climb direction}
#define err_too_big_incidence_package 0x7104 // [Manipulator:Warning] {Neck incidence out of range}
#define err_package_handeling_timeout 0x7105 // [Manipulator:Fatal] {Package handling did not complete on time}
#define err_package_handeling_failed 0x7106 // [Manipulator:Abort] {Package handling failed, refer CPU2 report for details}
#define err_cant_program_package_x 0x7107 // [Manipulator:Fatal] {PD rejected x coordinate of package}
#define err_cant_program_package_y 0x7108 // [Manipulator:Fatal] {PD rejected y coordinate of package}
#define err_cant_program_reset_pack 0x7109 // [Manipulator:Fatal] {PD rejected reset of package}
#define exp_right_wheel_encoder_mismatch 0x7110  // [Motion:Warning] {Mismatch in counting the right wheel encoder and the motor encoder}
#define exp_left_wheel_encoder_mismatch 0x7111  // [Motion:Warning] {Mismatch in counting the left wheel encoder and the motor encoder}
#define exp_azimuth_correction_too_large 0x7112 // [Motion:Abort] {Required azimuth correction is too large to make sense}
#define exp_distance_correction_too_large 0x7114 // [Motion:Abort] {Required distance correction is too large to make sense}
#define exp_funell_miss_angle_too_large 0x7115 // [Motion:Abort] {The arc to funnel will result in too large angular miss}
#define exp_wrong_crab_transition_on_shelf_climb 0x7116// [Motion:Abort] {Unexpected crab mode change request while on the shelves}
#define exp_height_of_shelf_too_low 0x7117 // [Motion:Abort] {Shelf height specification too low, the follower wheel will not reach the switch reliably}
#define exp_bad_shoulder_too_stretched 0x7118 // [Motion:Fatal] {The shoulder pot difference is too big - shoulder too stretched}
#define exp_unknown_motion_mode 0x7119 // [Motion:Fatal] {Unknown motion mode}
#define exp_unknown_gnd_profiled_mode    0x711a // [Motion:Abort] {An unknown option for profiled ground motion}
#define exp_funell_miss_distance_too_large 0x711b // [Motion:Abort] {Travel to funnel is too long}
#define exp_funell_miss_lateral_fin_too_large 0x711c // [Motion:Abort] {Positioned by the funnel, lateral distance is too large}
#define exp_funell_miss_angular_fin_too_large 0x711d // [Motion:Abort] {Positioned by the funnel, angular distance is too large}
#define exp_auto_motion_requires_calibration 0x711e // [Motion:Abort] {Cannot enter automatic modes when un-calibrated}
#define exp_an_axis_registered_a_fault 0x711f // [Motion:Fatal] {A servo driver signaled a fault, or communication with a servo driver is absent}
#define exp_cant_just_return_after_pole_access 0x7120 // [Motion:Abort] {Cannot proceed to a ground navigation after preparing a climb}
#define exp_bad_shoulder_too_compressed 0x7121 // [Motion:Fatal] {The shoulder pot difference is too big - shoulder too compressed}
#define exp_shelf_travel_never_reached_target 0x7122 // [Motion:Abort] {The shelf travel profile ended, but position never reached destination}
#define exp_shelf_travel_not_accurate_on_disk 0x7123 // [Motion:Warning] {The shelf travel ended, but position does not match the return pole}
#define exp_shelf_mode_undefined 0x7124 // [Motion:Abort] {The travel mode is not defined or obsolete}
#define exp_switch_corrects_target_too_much 0x7125 // [Motion:Abort] {The track correction by switch encounter is larger than expected}
#define exp_pole_travel_never_reached_target 0x7126 // [Motion:Warning] {The pole travel profile ended, but limit switch was never found at motion end}
#define exp_pole_down_arc_leader_sw_toobig_correction 0x7127 // [Motion:Abort] {On descent, leader switch required too big correction}
#define exp_pole_down_arc_follower_sw_toobig_correction 0x7128 // [Motion:Abort] {On descent, follower switch required too big correction}
#define exp_manipulator_actuators_down 0x7129 // [Motion:Abort] {Manipulator has its actuators unhealthy}
#define exp_package_handeling_recovered 0x7130 // [Manipulator:Abort] {Package handling failed, robot recoverable, refer CPU2 report for details}
#define exp_home_verify_failed_neck 0x7131 // [Motion:Fatal] {After homing, neck motor motion and potentiometer indication did not correlate}
#define exp_gyro_not_calibrated 0x7132 // [Motion:Abort] {Gyro calibration did not complete}
#define exp_gyro_still_calibrating 0x7133 // [Motion:Abort] {Gyro calibration still goes on}
#define error_voltages_dont_fall 0x7134 //  [Manipulator:Fatal] {Timed out wait for voltages fall}
#define error_man_voltage_dont_restart 0x7135 // [Manipulator:Fatal]  {Timed out voltage restart}
#define error_manipulator_comm_wake_tout 0x7136 // [Manipulator:Fatal] {Timed out communication wake-up}
#define error_man_communication_absent 0x7137 // [Manipulator:Fatal]  {Time out absent communication with manipulator}
#define error_manipulator_wake_tout_undef_state 0x7138 // [Manipulator:Fatal]  {State of manipulator wake-up is undefined}
#define exp_home_verify_failed_rsteer 0x7139 // [Motion:Fatal] {After homing, right steer motor motion and potentiometer indication did not correlate}
#define exp_home_verify_failed_lsteer 0x713a // [Motion:Fatal] {After homing, left steer motor motion and potentiometer indication did not correlate}
#define exp_gyro_turn_failed  0x713b// [Motion:Abort] {Gyro turn deviated too much in angle}
#define exp_gyro_turn_dist_misplaced_exit  0x713c // [Motion:Abort] {Gyro turn deviated too much as linear distance}
#define exp_bad_angle_at_qr_arrival  0x713d // [Motion:Abort] {QR code reported too high angle error}
#define exp_bad_pos_at_qr_arrival  0x713e // [Motion:Abort] {QR code reported too high distance error}
#define exp_imu_failure   0x713f // [Motion:Abort] {IMU failed and caused abortion of auto mode}
#define err_advance_empty_queue 0x7140 // [Motion:Abort] {Attempt made to advance an empty motion queue}
#define err_cant_program_man_stdby 0x7150 // [Manipulator:Fatal] {PD rejected a standby command}
#define exp_pd_power_reset_fail 0x7151 // [Manipulator:Fatal] {PD failed power cycling}
#define E_CLIMB_START_TOO_FAR_FROM_NAV 0x7152 //[QueueRun:Abort] {Pole climb starts with actual yaw not in shelf direction }
#define exp_bad_package_emcy_cmd 0x7153 //[Manipulator:Abort] {Unknown command for emergency package operation}
#define exp_reset_after_man_reset 0x7154 //[Manipulator:Reset] {Exception code cleared after resetting manipulator}
#define exp_reset_after_pack_success 0x7155 //[Manipulator:Reset] {Exception code cleared after successful package handling}
#define exp_switch_corrects_follower_target_too_much 0x7157 // [Motion:Abort] {Follower detect not complete and suggests too big correction}
#define exp_auto_in_rescue 0x7158 //[Motion:Abort] {rescue attempted when already automatic (restart robot)}
#define exp_kill_pack_mode_before_rescue 0x7159 // [Motion:Abort] {Pack activity when trying shelf rescue }
#define exp_wrong_neck_pos_for_rescue 0x715a // [Motion:Abort] {Neck should be +/-90deg when trying shelf rescue }
#define exp_bad_steer_pos_for_shelf_rescue 0x715b // [Motion:Abort] {Steer should be near zero when trying shelf rescue }
#define exp_bad_height_pos_for_shelf_rescue 0x715c // [Motion:Abort] {Height not well defined when trying shelf rescue }
#define exp_bad_special_action 0x715d // [Motion:Abort] {Undefined action code for rescue }
#define exp_spline_curvature_too_large 0x715e // [Motion:Abort] {Spline to pole will result with too large curvature}
#define exp_wrong_crab_mode_on_unshelf 0x715f// [Motion:Abort] {Un-rotate junction was ordered with improper crabbing state}
#define exp_you_cant_climb_anyway 0x7160// [Motion:Abort] {So you think you can climb, but I wont allow. Na Ba-ozen}
#define exp_spline_distance_too_short 0x7161// [Motion:Abort] {Correction distance to small to design a spine upon}
#define exp_bad_enc_count_on_diff_turn 0x7162// [Motion:Abort] {Too big wheel motion identified in differential move}
#define exp_funnel_distance_too_short 0x7163// [Motion:Abort] {Final approach distance is unexpectedly small}
#define exp_reset_after_man_reboot 0x7164 //[Manipulator:Reset] {Exception code cleared after reboot manipulator}
#define exp_pd_man_boot_fail 0x7165 // [Manipulator:Abort] {PD failed manipulator reboot}
#define error_manipulator_reboot_tout 0x7166 // [Manipulator:Fatal] {Timed out manipulator reboot}
#define error_cant_establish_CANcom 0x7167 // [Motion:Fatal] {Timed out approval of reset from a servo driver over CAN}
#define exp_auto_motion_requires_gyro 0x7168 // [Motion:Abort] {Cannot enter automatic modes when gyro sequence is not done}
#define exp_emergency_stopped 0x7169 // [Motion:Abort] {Stopped by emergency stop command}
#define exp_pole_down_arc_follower_sw_not_found 0x716a // [Motion:Abort] {arc entry expected, but follower did not find switch}
#define exp_incorrect_shoulderwidth  0x716b // [Motion:Fatal] {Shoulder width is incorrect for ground navigation}
#define exp_cant_rock_wheelarm_pin_out_dn  0x716c // [Motion:Fatal] {Cannot rock out the wheel-arm shoulder pin, Down direction }
#define exp_cant_motoron_wheelarm_pin  0x716d // [Motion:Fatal] {Cannot start the wheel-arm shoulder pin motor}
#define exp_cant_rock_wheelarm_pin_in  0x716e // [Motion:Fatal] {Cannot rock in the wheel-arm shoulder pin }
#define exp_cant_set_wheelarm_2_lockpos  0x716f // [Motion:Fatal] {Cannot set the wheel-arm position for shoulder pin re-engage}
#define exp_follower_arcdist_greaterthan_leader  0x7170 // [Motion:Fatal] {Follower has greater arc distance than leader}
#define exp_bad_wheelarm_type  0x7171 // [WheelArm:Fatal] {Unsupported type of wheel arm configuration}
#define exp_wheelarm_not_ready1  0x7172 // [WheelArm:Fatal] {Wheel arm is in incorrect initial state axis must be RW}
#define exp_wheelarm_not_ready2  0x7173 // [WheelArm:Fatal] {Wheel arm is in incorrect initial state axis must be LW}
#define exp_wheelarm_not_ready3  0x7174 // [WheelArm:Fatal] {Wheel arm is in incorrect initial state bad WheelArmState}
#define exp_wheelarm_not_ready4  0x7175 // [WheelArm:Fatal] {Wheel arm is in incorrect initial Not on pole}
#define exp_wheelarm_not_ready5  0x7176 // [WheelArm:Fatal] {Wheel arm is in incorrect initial incorrect submode}
#define exp_wheelarm_not_ready6  0x7177 // [WheelArm:Fatal] {Wheel arm is in unknown on initialization of submode}
#define exp_wheelarm_net_down  0x7178 // [WheelArm:Abort] {Network for tray or Wheel arm actuators is not accessible}
#define exp_wheelarm_not_supported  0x7179 // [WheelArm:Fatal] {Not supported: Wheel arm mechanism is required for width}
#define exp_cant_rock_wheel_arm_pin_out_up  0x717a // [Motion:Fatal] {Cannot rock out the wheel_arm shoulder pin, Up direction }
#define exp_intetional_fault_sim 0x717b // [Motion:Fatal] {Fault simulation, intentional}
#define exp_wheelarm_action_failed 0x717c // [Motion:Fatal] {Fault exp_wheelarm_action_failed , normally hidden by other more explicit fault}
#define exp_no_such_can_slave 0x717d // [General:Fatal] {Attempt to send CAN message to un-identified ID}

#define exp_intetional_7182 0x7182 // [Motion:Fatal] {Fault simulation, intentional}
#define exp_intetional_7183 0x7183 // [Motion:Fatal] {Fault simulation, intentional}
#define exp_exp_in_wheelarm_pin  0x7184 // [WheelArm:Fatal] {Wheel arm, a motor emitted an exception}
#define error_NoCANcom_Axis1 0x7185 // [Motion:Fatal] {Not responding servo drive on reset from Logical#1 over CAN}
#define error_NoCANcom_Axis2 0x7186 // [Motion:Fatal] {Not responding servo drive on reset from Logical#2 over CAN}
#define error_NoCANcom_Axis3 0x7187 // [Motion:Fatal] {Not responding servo drive on reset from Logical#3 over CAN}
#define error_NoCANcom_Axis4 0x7188 // [Motion:Fatal] {Not responding servo drive on reset from Logical#4 over CAN}
#define error_NoCANcom_Axis5 0x7189 // [Motion:Fatal] {Not responding servo drive on reset from Logical#5 over CAN}

#define error_NoCANcom_Axis6 0x718a // [Motion:Fatal] {Not responding servo drive on reset from LOGICAL_RESERVED over CAN}
#define error_NoCANcom_Axis7 0x718b // [Motion:Fatal] {Not responding servo drive on reset from LOGICAL_RESERVED over CAN}
#define error_NoCANcom_Axis8 0x718c // [Motion:Fatal] {Not responding servo drive on reset from LOGICAL_RESERVED over CAN}
#define error_NoCANcom_Axis9 0x718d // [Motion:Fatal] {Not responding servo drive on reset from LOGICAL_RESERVED over CAN}
#define error_NoCANcom_Axis10 0x718e // [Motion:Fatal] {Not responding servo drive on reset from LOGICAL_RESERVED over CAN}
#define error_NoCANcom_Axis11 0x718f // [Motion:Fatal] {Not responding servo drive on reset from LOGICAL_RESERVED over CAN}
#define error_NoCANcom_Axis12 0x7190 // [Motion:Fatal] {Not responding servo drive on reset from LOGICAL_RESERVED over CAN}
#define error_ServoFail_Axis1 0x7195 // [Motion:Fatal] {Failed servo drive on reset from LOGICAL_PLATE over CAN}
#define error_ServoFail_Axis2 0x7196 // [Motion:Fatal] {see in code error_ServoFail_Axis1: Failed servo drive on reset from LOGICAL_ARM over CAN}
#define error_ServoFail_Axis3 0x7197 // [Motion:Fatal] {see in code error_ServoFail_Axis1: Failed servo drive on reset from LOGICAL_SPACER over CAN}
#define error_ServoFail_Axis4 0x7198 // [Motion:Fatal] {see in code error_ServoFail_Axis1: Failed servo drive on reset from LOGICAL_RESERVED over CAN}
#define error_ServoFail_Axis5 0x7199 // [Motion:Fatal] {Failed servo drive on reset from  LOGICAL_RESERVED over CAN}
#define error_ServoFail_Axis6 0x719a // [Motion:Fatal] {Failed servo drive on reset from LOGICAL_RESERVED over CAN}
#define error_ServoFail_Axis7 0x719b // [Motion:Fatal] {Failed servo drive on reset from LOGICAL_RESERVED over CAN}
#define error_ServoFail_Axis8 0x719c // [Motion:Fatal] {Failed servo drive on reset from LOGICAL_RESERVED over CAN}
#define error_ServoFail_Axis9 0x719d // [Motion:Fatal] {Failed servo drive on reset from LOGICAL_RESERVED over CAN}
#define error_ServoFail_Axis10 0x719e // [Motion:Fatal] {Failed servo drive on reset from LOGICAL_RESERVED over CAN}
#define error_ServoFail_Axis11 0x719f // [Motion:Fatal] {Failed servo drive on reset from LOGICAL_RESERVED over CAN}

#define exp_1_axis_registered_a_fault 0x71a0 // [Motion:Fatal] {1 servo driver signaled a fault }
#define exp_2_axis_registered_a_fault 0x71a1 // [Motion:Fatal] {2 servo driver signaled a fault }
#define exp_3_axis_registered_a_fault 0x71a2 // [Motion:Fatal] {3 servo driver signaled a fault }
#define exp_4_axis_registered_a_fault 0x71a3 // [Motion:Fatal] {4 servo driver signaled a fault }
#define exp_5_axis_registered_a_fault 0x71a4 // [Motion:Fatal] {5 servo driver signaled a fault }
#define exp_6_axis_registered_a_fault 0x71a5 // [Motion:Fatal] {6 servo driver signaled a fault }
#define exp_7_axis_registered_a_fault 0x71a6 // [Motion:Fatal] {7 servo driver signaled a fault }
#define exp_8_axis_registered_a_fault 0x71a7 // [Motion:Fatal] {8 servo driver signaled a fault }
#define exp_9_axis_registered_a_fault 0x71a8 // [Motion:Fatal] {9 servo driver signaled a fault }
#define exp_10_axis_registered_a_fault 0x71a9 // [Motion:Fatal] {10 servo driver signaled a fault }


#define exp_1_axis_registered_com_error 0x71b0 // [Motion:Fatal] {1 servo driver signaled a missing PDO}
#define exp_2_axis_registered_com_error 0x71b1 // [Motion:Fatal] {2 servo driver signaled a missing PDO}
#define exp_3_axis_registered_com_error 0x71b2 // [Motion:Fatal] {3 servo driver signaled a missing PDO}
#define exp_4_axis_registered_com_error 0x71b3 // [Motion:Fatal] {4 servo driver signaled a missing PDO}
#define exp_5_axis_registered_com_error 0x71b4 // [Motion:Fatal] {5 servo driver signaled a missing PDO}
#define exp_6_axis_registered_com_error 0x71b5 // [Motion:Fatal] {6 servo driver signaled a missing PDO}
#define exp_7_axis_registered_com_error 0x71b6 // [Motion:Fatal] {7 servo driver signaled a missing PDO}
#define exp_8_axis_registered_com_error 0x71b7 // [Motion:Fatal] {8 servo driver signaled a missing PDO}
#define exp_9_axis_registered_com_error 0x71b8 // [Motion:Fatal] {9 servo driver signaled a missing PDO}
#define exp_10_axis_registered_com_error 0x71b9 // [Motion:Fatal] {10 servo driver signaled a missing PDO}


#define exp_relative_pos_msg_on_shelf 0x71a0 // [Automation:Warning] {Cannot use relative position reports on the shelf}
#define exp_switch_absent_pre_wam 0x71a1 // [Slave:Abort] {A switch must be found before wheel arm action starts}
#define exp_exp_in_wheelarm_neckstretch  0x71a2 // [WheelArm:Fatal] {Wheel arm, neck too stretched}
#define exp_exp_cant_find_follower_junc  0x71a3 // [WheelArm:Abort] {Wheel arm, could not find follower junction}
#define exp_exp_cant_set_leader_junc  0x71a4 // [WheelArm:Fatal] {Wheel arm, could not set leader to junction}
#define exp_big_deviation_in_twist_into 0x71a5 //[Motion:Fatal] {An encoder deviated too much on into shelf twist }
#define exp_big_deviation_in_twist_from 0x71a6 //[Motion:Fatal] {An encoder deviated too much on from shelf twist }
#define exp_bad_steer_pos_for_pole_rescue 0x71a7 // [Motion:Abort] {Steer should be good for crab mode when trying pole rescue }
#define exp_RSteerPotOutRange 0x71a8 // [Motion:Fatal] {Steer Right potentiometer out of range }
#define exp_LSteerPotOutRange 0x71a9 // [Motion:Fatal] {Steer Left potentiometer out of range  }
#define exp_Neck1PotOutRange 0x71aa // [Motion:Fatal] {Neck 2 potentiometer out of range  }
#define exp_Neck2PotOutRange 0x71ab // [Motion:Fatal] {Neck 2 potentiometer out of range }

#define exp_rescue_travel_found_sw1_only 0x71ac // [Motion:Abort] {The rescue travel found a switch, but not its mate }
#define exp_setpitch_bad_steering 0x71ad // [Motion:Abort] {Steering inadequate for automatic pitch recovery }
#define exp_setpitch_bad_neck 0x71ae // [Motion:Abort] {Neck angle inadequate for automatic pitch recovery}
#define exp_wheelarm_pin_hold_loss 0x71af // [Motion:Fatal] {Follower wheel cannot hold position in wheel-arm process}

#define exp_axis_overload_ax0 0x720a // [Motion:Fatal] {overload limit servo axis 0 (plate) }
#define exp_axis_overload_ax1 0x720b // [Motion:Fatal] {overload limit servo axis 1 (tape motor)}
#define exp_axis_overload_ax2 0x720c // [Motion:Fatal] {overload limit servo axis 2 (spacer) }
#define exp_axis_overload_ax3 0x720d // [Motion:Fatal] {overload limit reserved 0  (in code exception: exp_axis_overload_ax0)}
#define exp_axis_overload_ax4 0x720e // [Motion:Fatal] {overload limit reserved 1  (in code exception: exp_axis_overload_ax0)}
#define exp_axis_overload_ax5 0x720f // [Motion:Fatal] {overload limit reserved 2  (in code exception: exp_axis_overload_ax0)}
#define exp_axis_overload_ax6 0x7210 // [Motion:Fatal] {overload limit reserved 3  (in code exception: exp_axis_overload_ax0)}
#define exp_axis_overload_ax7 0x7211 // [Motion:Fatal] {overload limit reserved 4  (in code exception: exp_axis_overload_ax0)}
#define exp_axis_overload_ax8 0x7212 // [Motion:Fatal] {overload limit reserved 5  (in code exception: exp_axis_overload_ax0)}

#define error_ServoOnFail_Axis1 0x7222 // [Motion:Fatal] {Failed servo drive on reset from LOGICAL_PLATE over CAN}
#define error_ServoOnFail_Axis2 0x7223 // [Motion:Fatal] {see in code error_ServoOnFail_Axis1: Failed servo drive on reset from LOGICAL_ARM over CAN}
#define error_ServoOnFail_Axis3 0x7224 // [Motion:Fatal] {see in code error_ServoOnFail_Axis1: Failed servo drive on reset from LOGICAL_SPACER over CAN}
#define error_ServoOnFail_Axis4 0x7225 // [Motion:Fatal] {see in code error_ServoOnFail_Axis1: Failed servo drive on reset from LOGICAL_RESERVED over CAN}
#define error_ServoOnFail_Axis5 0x7226 // [Motion:Fatal] {Failed servo drive on reset from  LOGICAL_RESERVED over CAN}
#define error_ServoOnFail_Axis6 0x7227 // [Motion:Fatal] {Failed servo drive on reset from LOGICAL_RESERVED over CAN}
#define error_ServoOnFail_Axis7 0x7228 // [Motion:Fatal] {Failed servo drive on reset from LOGICAL_RESERVED over CAN}
#define error_ServoOnFail_Axis8 0x7229 // [Motion:Fatal] {Failed servo drive on reset from LOGICAL_RESERVED over CAN}
#define error_ServoOnFail_Axis9 0x722a // [Motion:Fatal] {Failed servo drive on reset from LOGICAL_RESERVED over CAN}
#define error_ServoOnFail_Axis10 0x722b // [Motion:Fatal] {Failed servo drive on reset from LOGICAL_RESERVED over CAN}
#define error_ServoOnFail_Axis11 0x722c // [Motion:Fatal] {Failed servo drive on reset from LOGICAL_RESERVED over CAN}

#define exp_pdo_sequence_incorrect_for_axis1 0x7231 // [Motion:Warning] {Servo drive 1 failed to transmit the full PDO sequence}
#define exp_pdo_sequence_incorrect_for_axis2 0x7232 // [Motion:Warning] {Servo drive 2 failed to transmit the full PDO sequence}
#define exp_pdo_sequence_incorrect_for_axis3 0x7233 // [Motion:Warning] {Servo drive 3 failed to transmit the full PDO sequence}
#define exp_pdo_sequence_incorrect_for_axis4 0x7234 // [Motion:Warning] {Servo drive 4 failed to transmit the full PDO sequence}
#define exp_pdo_sequence_incorrect_for_axis5 0x7235 // [Motion:Warning] {Servo drive 5 failed to transmit the full PDO sequence}
#define exp_pdo_sequence_incorrect_for_axis6 0x7236 // [Motion:Warning] {Servo drive 6 failed to transmit the full PDO sequence}
#define exp_pdo_sequence_incorrect_for_axis7 0x7237 // [Motion:Warning] {Servo drive 7 failed to transmit the full PDO sequence}
#define exp_pdo_sequence_incorrect_for_axis8 0x7238 // [Motion:Warning] {Servo drive 8 failed to transmit the full PDO sequence}
#define exp_pdo_sequence_incorrect_for_axis9 0x7239 // [Motion:Warning] {Servo drive 9 failed to transmit the full PDO sequence}
#define exp_pdo_sequence_incorrect_for_axis10 0x723A // [Motion:Warning] {Servo drive 10 failed to transmit the full PDO sequence}

#define exp_can_axis_failed_to_answer_to_5_nmt_tries 0x7300 // [CAN:Warning] {added in order to warn on stuck on NMT phase}
#define exp_EEF_failed_to_answer_to_5_nmt_tries 0x7301 // [CAN:Warning] {added in order to warn on stuck on NMT phase}

#define exp_could_not_read_cur_limits 0x6216  // [Motion:Fatal] {Could not read current limits from axes}
#define exp_could_not_home_axes 0x6217  // [Motion:Fatal] {Could not home absolute position of axes}
#define exp_could_not_initialize_warm 0x6218 // [Motion:Fatal] {Could not start wheel arm motors}
#define exp_could_not_initialize_gyro 0x6219 // [Motion:Fatal] {Could not initialize the IMU}
#define exp_could_not_tune_gyro_offset 0x621a // [Motion:Fatal] {Could not tune the IMU yaw offset}
#define exp_too_many_pole_approach_its 0x621b // [Motion:Fatal] {Failed too many attempts to home the pole}
#define exp_dist_pole_out_range  0x621c // [Motion:Fatal] {Pole is out of range for approach (too close or too far)}
#define exp_y_dir_dont_match_crab 0x621d // [Motion:Fatal] {Y reading of pole sensor does not match expected crab direction}
#define exp_too_big_angular_on_straight 0x621e// [Motion:Abort] {Too big angular deviation while on should-be straight motion}
#define exp_too_long_wait_end_straight 0x621f// [Motion:Abort] {Too big wait for QR at the end of straight motion}
#define exp_camera_report_median_too_long 0x6220 // [Motion:abort] {Waiting camera report median too long}
#define exp_wrong_terminal_type 0x6221 // [Motion:abort] {wrong terminal type}
#define exp_illeagal_crab_cmd_steer_not_at_zero_pos   0x6222 // [Motion:Fatal] {illegal crab cmd steer not at zero pos}
#define exp_illeagal_terminal_type   0x6223 // [Motion:Fatal] {illegal terminal type}


#define exp_could_not_start_servo_0 0x6300 // [Motion:Fatal] {Failed to start axis 0}
#define exp_could_not_start_servo_1 0x6301 // [Motion:Fatal] {Failed to start axis 1  (in code exception: exp_could_not_start_servo_0)}
#define exp_could_not_start_servo_2 0x6302 // [Motion:Fatal] {Failed to start axis 2  (in code exception: exp_could_not_start_servo_0)}
#define exp_could_not_start_servo_3 0x6303 // [Motion:Fatal] {Failed to start axis 3  (in code exception: exp_could_not_start_servo_0)}
#define exp_could_not_start_servo_4 0x6304 // [Motion:Fatal] {Failed to start axis 4  (in code exception: exp_could_not_start_servo_0)}
#define exp_could_not_start_servo_5 0x6305 // [Motion:Fatal] {Failed to start axis 5  (in code exception: exp_could_not_start_servo_0)}
#define exp_could_not_start_servo_6 0x6306 // [Motion:Fatal] {Failed to start axis 6  (in code exception: exp_could_not_start_servo_0)}
#define exp_could_not_start_servo_7 0x6307 // [Motion:Fatal] {Failed to start axis 7  (in code exception: exp_could_not_start_servo_0)}
#define exp_could_not_start_servo_8 0x6308 // [Motion:Fatal] {Failed to start axis 8  (in code exception: exp_could_not_start_servo_0)}
#define exp_could_not_start_servo_9 0x6309 // [Motion:Fatal] {Failed to start axis 9  (in code exception: exp_could_not_start_servo_0)}

#define exp_could_not_program_sdo_0 0x6310 // [Motion:Fatal] {Failed to program sdo axis 0}
#define exp_could_not_program_sdo_1 0x6311 // [Motion:Fatal] {Failed to program sdo axis 1 (in code exception: exp_could_not_program_sdo_0)}
#define exp_could_not_program_sdo_2 0x6312 // [Motion:Fatal] {Failed to program sdo axis 2(in code exception: exp_could_not_program_sdo_0)}
#define exp_could_not_program_sdo_3 0x6313 // [Motion:Fatal] {Failed to program sdo axis 3(in code exception: exp_could_not_program_sdo_0)}
#define exp_could_not_program_sdo_4 0x6314 // [Motion:Fatal] {Failed to program sdo axis 4(in code exception: exp_could_not_program_sdo_0)}
#define exp_could_not_program_sdo_5 0x6315 // [Motion:Fatal] {Failed to program sdo axis 5(in code exception: exp_could_not_program_sdo_0)}
#define exp_could_not_program_sdo_6 0x6316 // [Motion:Fatal] {Failed to program sdo axis 6(in code exception: exp_could_not_program_sdo_0)}
#define exp_could_not_program_sdo_7 0x6317 // [Motion:Fatal] {Failed to program sdo axis 7(in code exception: exp_could_not_program_sdo_0)}
#define exp_could_not_program_sdo_8 0x6318 // [Motion:Fatal] {Failed to program sdo axis 8(in code exception: exp_could_not_program_sdo_0)}
#define exp_could_not_program_sdo_9 0x6319 // [Motion:Fatal] {Failed to program sdo axis 9(in code exception: exp_could_not_program_sdo_0)}

#define exp_could_not_program_cfg_sdo_0 0x6320 // [Motion:Fatal] {Failed to program cfg sdo axis 0}
#define exp_could_not_program_cfg_sdo_1 0x6321 // [Motion:Fatal] {Failed to program cfg sdo axis 1(in code exception: exp_could_not_program_cfg_sdo_0)}
#define exp_could_not_program_cfg_sdo_2 0x6322 // [Motion:Fatal] {Failed to program cfg sdo axis 2(in code exception: exp_could_not_program_cfg_sdo_0)}
#define exp_could_not_program_cfg_sdo_3 0x6323 // [Motion:Fatal] {Failed to program cfg sdo axis 3(in code exception: exp_could_not_program_cfg_sdo_0)}
#define exp_could_not_program_cfg_sdo_4 0x6324 // [Motion:Fatal] {Failed to program cfg sdo axis 4(in code exception: exp_could_not_program_cfg_sdo_0)}
#define exp_could_not_program_cfg_sdo_5 0x6325 // [Motion:Fatal] {Failed to program cfg sdo axis 5(in code exception: exp_could_not_program_cfg_sdo_0)}
#define exp_could_not_program_cfg_sdo_6 0x6326 // [Motion:Fatal] {Failed to program cfg sdo axis 6(in code exception: exp_could_not_program_cfg_sdo_0)}
#define exp_could_not_program_cfg_sdo_7 0x6327 // [Motion:Fatal] {Failed to program cfg sdo axis 7(in code exception: exp_could_not_program_cfg_sdo_0)}
#define exp_could_not_program_cfg_sdo_8 0x6328 // [Motion:Fatal] {Failed to program cfg sdo axis 8(in code exception: exp_could_not_program_cfg_sdo_0)}
#define exp_could_not_program_cfg_sdo_9 0x6329 // [Motion:Fatal] {Failed to program cfg sdo axis 9(in code exception: exp_could_not_program_cfg_sdo_0)}

#define exp_plate_trajectory_calc_diverge1 0x6331 // [Motion:Fatal] {Failed calculate motion path to expected precision}
#define exp_spacer_trajectory_calc_diverge1 0x6332 // [Motion:Fatal] {Failed calculate motion path to expected precision}
#define exp_plate_trajectory_calc_diverge2 0x6333 // [Motion:Fatal] {Failed calculate motion path to expected precision}
#define exp_spacer_trajectory_calc_diverge2 0x6334 // [Motion:Fatal] {Failed calculate motion path to expected precision}
#define exp_illegal_current_position_or_angle 0x6337 // [Motion:Fatal] {Failed calculate motion path to expected precision}
#define exp_illegal_current_position_or_angle1 0x6338 // [Motion:Fatal] {Failed calculate motion path to expected precision}
#define exp_illegal_current_position_or_angle2 0x6339 // [Motion:Fatal] {Failed calculate motion path to expected precision}

#define exp_target_dir_inconsistent0 0x6341 // [Motion:Fatal] {Package y specification is inconsistent with direction}
#define exp_target_dir_inconsistent1 0x6342 // [Motion:Fatal] {Package y specification is inconsistent with direction}
#define exp_manip_manage_posture_too_long 0x6343 // [Motion:Fatal] {manage posture too long}
#define exp_auto_fix_failed_to_complete_in_time 0x6344 // [Motion:Fatal] {Failed calculate motion path to expected precision}










#define exp_suction_lost_at_Init_Of_Manage_Posture0 0x6350// [Motion:warning] {suction lost at init of manage posture}
#define exp_suction_lost_at_Init_Of_Manage_Posture1 0x6351// [Motion:warning] {suction lost at init of manage posture}

#define exp_suction_lost_During_Package_Handling0 0x6355// [Motion:warning] {suction lost at init of manage posture}
#define exp_suction_lost_During_Package_Handling1 0x6356// [Motion:warning] {suction lost at init of manage posture}

#define exp_laser_lost_During_Package_Handling0 0x6360// [Motion:warning] {package lost at init of manage posture}
#define exp_laser_lost_During_Package_Handling1 0x6361// [Motion:warning] {package lost at init of manage posture}
#define exp_laser_lost_During_Package_Handling2 0x6362// [Motion:warning] {package lost at init of manage posture}

#define exp_automatic_mode_homing_fails 0x6366// [Motion:Fatal] {automatic mode homing failed}
#define exp_illegal_side_switch_away_from_shelf 0x6367 // [Motion:Fatal] {requested an illegal posture command or away from shelf}
#define exp_illegal_side_switch_away_from_shelf1 0x6368 // [Motion:Fatal] {requested an illegal posture command or away from shelf}
#define exp_illegal_side_switch_away_from_shelf2 0x6369 // [Motion:Fatal] {requested an illegal posture command or away from shelf}

#define exp_illegal_deal_package_cmd_side_0 0x6372 // [Motion:Fatal] {requested an illegal package side 0}
#define exp_illegal_deal_package_cmd 0x6373 // [Motion:Fatal] {requested an illegal package side or wrong y coordinate}
#define exp_package_lost_During_Package_Handling 0x6374// [Motion:Fatal] {package lost at init of manage posture}
#define exp_illegal_deal_package_side0 0x6375 // [Motion:Fatal] {requested an illegal package side 0}
#define exp_side_mismatch_y_coordinate 0x6376 // [Motion:Fatal] {requested an illegal package side 0}
#define exp_illegal_cw_more_than_single_cmd 0x6377// [Motion:Fatal] {illegal CW, more than a single command}
#define exp_could_not_determine_final_point_segment 0x6378 //[Motion:Fatal] {illegal command, could not determine final point segment}
#define exp_could_not_determine_current_point_segment 0x6379 //[Motion:Fatal] {illegal current position, could not determine current point segment}
#define exp_EEF_reported_on_missed_cmd 0x6374// [Motion:warning] {EEF reported on missed command}

#define exp_failed_init_package_suction0 0x6380 // [Manipulator:Abort] {Failed in initial package suction}
#define exp_failed_init_package_suction1 0x6381 // [Manipulator:Abort] {Failed in initial package suction}

#define exp_lost_package_grip1 0x6385 // [Manipulator:Abort] {Lost the package grip}
#define exp_did_not_finish_tape_homing_in_time 0x6386 // [Motion:warning] {could not fold tape}
#define exp_did_not_finish_spacer_homing_in_time 0x6387 // [Motion:warning] {could not fold tape}
#define exp_could_not_fold_tape2 0x6388 // [Motion:warning] {could not fold tape}
#define unusedNew123 0x6389 // [Motion:warning] {could not fold tape}
#define exp_could_not_fix_tray_pos 0x638A // [Motion:abort] {could not fix tray position}



#define exp_laser_reading_out_of_valid_range 0x6390 // [Manipulator:Abort] {At expected position , laser doesn't see target}
#define exp_laser_timeout1 0x6391 // [Manipulator:Abort] {At expected position , laser doesn't see target}
#define exp_laser_timeout2 0x6392 // [Manipulator:Abort] {At expected position , laser doesn't see target}

#define exp_manip_initially_out_range 0x6393 // [Manipulator:Abort] {Manipulator position reading is out of range}
#define exp_laser_reading_during_grip_too_close 0x6394 // [Manipulator:Fatal] {Laser reading during grip is too small}
#define exp_repush_requested_but_plate_angle_wrong 0x6395 // [Manipulator:Fatal] {At expected position , laser doesn't see target}
#define exp_package_not_in_place_on_tray 0x6396 // [Manipulator:Fatal] {Package is not in place on tray on set package start }
#define exp_stray_see_pack0 0x6397 // [Manipulator:Abort] {Stray package measured by laser or package not in place during get}
#define exp_Spacer_Not_responding_to_homing_direction_change 0x6398 // [Manipulator:Fatal] {exp Spacer Not responding to homing direction change}
#define exp_Spacer_Not_responding_to_homing_value_message 0x6399 // [Manipulator:Fatal] {Package y specification is inconsistent with direction}
#define exp_OD_Command_Given_without_prior_conditions 0x639A // [Manipulator:Abort] {Package y specification is inconsistent with direction}

#define exp_illegal_Cw_Automatic_WO_MotorOn 0x639B // [Motion:Abort] {requested an illegal CW, automatic WO MotorOn}
#define exp_Motor_is_off_while_in_auto_mode 0x639C // [Motion:Abort] {in Auto mode while motor is off}
#define exp_Motor_is_off_while_in_auto_idle_mode 0x639D // [Motion:Abort] {in AutoIDle mode while motor is off}
#define exp_LC_mode_not_changed_in_time 0x639E // [Motion:Abort] {in AutoIDle mode while motor is off}

#define exp_target_not_reachable0  0x63A0 // [Manipulator:Abort] {Package specification out of manipulator reach}
#define exp_target_not_reachable1  0x63A1 // [Manipulator:Abort] {Package specification out of manipulator reach}
#define exp_target_to_close0  0x63A2 // [Manipulator:Abort] {Package specification out of manipulator reach}

#define exp_package_handling_not_identified0 0x63A5 // [Motion:Fatal] {unidentified exception occured during package handling}
#define exp_package_handling_not_identified1 0x63A6 // [Motion:Fatal] {unidentified exception occured during package handling}


#define exp_illegal_posture_set_point 0x63B0 // [Motion:Fatal] {requested an illegal posture command}
#define exp_illegal_posture_set_point_plate 0x63B1 // [Motion:Fatal] {requested an illegal posture command}
#define exp_illegal_posture_set_point_spacer 0x63B2 // [Motion:Fatal] {requested an illegal posture command}
#define exp_illegal_posture_set_point_tape 0x63B3 // [Motion:Fatal] {requested an illegal posture command}

#define exp_illegal_posture_set_point1 0x63B4 // [Motion:Fatal] {requested an illegal posture command}
#define exp_illegal_posture_set_point_plate1 0x63B5 // [Motion:Fatal] {requested an illegal posture command}
#define exp_illegal_posture_set_point_spacer1 0x63B6 // [Motion:Fatal] {requested an illegal posture command}
#define exp_illegal_posture_set_point_tape1 0x63B7 // [Motion:Fatal] {requested an illegal posture command}

#define exp_illegal_posture_cmd4 0x63B8 // [Motion:Fatal] {requested an illegal posture command}
#define exp_illegal_posture_cmd5 0x63B9 // [Motion:Fatal] {requested an illegal posture command}
#define exp_illegal_posture_cmd6 0x63BA // [Motion:Fatal] {requested an illegal posture command}
#define exp_illegal_neck_incidence_cmd 0x63BB // [Motion:Fatal] {requested an illegal neck incidence command}

#define exp_current_posture_outside_of_axis_range 0x6400 // [Motion:fatal] {could not fold tape}
#define exp_fix_position_after_homing_too_long 0x6401 // [Motion:fatal] {could not fold tape}
#define exp_need_to_perform_homing_first 0x6402 // [Motion:warning] {need to perform homing first}

#define exp_homing_lost_at_auto_mode 0x6403 // [Motion:Fatal] {homing lost at auto mode}
#define exp_manip_goto_posture_too_long 0x6404 // [Motion:Fatal] {homing lost at auto mode}
#define exp_manip_goto_posture_too_long1 0x6404 // [Motion:Fatal] {homing lost at auto mode}
#define exp_manip_axis_goto_too_long1 0x6405 // [Motion:Fatal] {homing lost at auto mode}
#define exp_manip_axis_goto_too_long2 0x6406 // [Motion:Fatal] {homing lost at auto mode}
#define exp_manip_axis_goto_too_long3 0x6407 // [Motion:Fatal] {homing lost at auto mode}
#define exp_manip_axis_goto_too_long4 0x6408 // [Motion:Fatal] {homing lost at auto mode}
#define exp_illegal_segment_length 0x6409 // [Motion:Fatal] {illegal segment length}
#define exp_too_small_segment_change 0x6410 // [Motion:Fatal] {illegal segment length}
#define exp_illegal_segment_length1 0x6411 // [Motion:Fatal] {too short segment length}
#define exp_illegal_cmd_deal_package_while_not_in_standby 0x6412 // [Motion:Fatal] {illegal cmd deal package while not in standby}
#define exp_EEF_Max_Allowed_PDOTx_Missing  0x6413 // [Manipulator:Abort] {EEF PDOTx missing}
#define exp_illegal_Neck_Cmd_Control_Not_Granted 0x6414 // [Motion:Fatal] {illegal neck command, control not granted}
#define exp_Neck_Control_Not_Granted_In_Time 0x6415 // [Motion:Fatal] {Neck control not granted in time}
#define exp_Neck_Cmd_Not_Done_In_Time 0x6416 // [Motion:Fatal] {Neck command not done in time}
#define exp_Neck_Leveling_Cmd_Not_Done_In_Time 0x6417 // [Motion:Fatal] {Neck command not done in time}
#define exp_Neck_Fault 0x6418 // [Motion:Fatal] {neck in fault}
#define exp_Neck_Incidence_Not_Correct_For_Repush 0x6419 // [Motion:Fatal] {Exp neck incidence not correct for repush}







//[SPI message error codes]
#define SPI_ERR_PARAM_BAD 0x0000 // [SPI:AbortMsg] {Addition to error statement by SDO handler}
#define SPI_DONT_HAVE_COMPATIBLE_WARM  0x07ce // [SPI:AbortMsg] {Robot has no compatible wheel arm installed}
#define SPI_IN_MOTOR_FAULT 0x07cf // [SPI:AbortMsg] {Motors are not on as required for motion}
#define SPI_FINE_MOT_BAD_STEERING 0x07d0 // [SPI:AbortMsg] {Fine motion is only allowed with zero steering}
#define SPI_FINE_MOT_TOO_LARGE 0x07d1 // [SPI:AbortMsg] {Fine motion is too large}
#define SPI_TAPEARM_ARG_OUTOF_RANGE 0x07d2 // [SPI:AbortMsg] {Tape arm motion argument out of range}
#define SPI_NO_TAPEARM 0x07d3 // [SPI:AbortMsg] {Tape arm not installed}
#define SPI_WASIM_ON_THE_MOVE 0x07d4 // [SPI:AbortMsg] {wheel arm command is not applicable while on the move}
#define SPI_WASIM_INCORRECT_CRAB 0x07d5 // [SPI:AbortMsg] {wheel arm command is not applicable for present crab}
#define SPI_UNSUPPORTED_TRACKWIDTH  0x07d6 // [SPI:AbortMsg] {Specified track width is not supported}
#define SPI_MESSAGE_LEN_MISMATCH  0x07d7 // [SPI:AbortMsg] {Message length does not match expected contents}
#define SPI_TX_BAD_TOOTHPITCH  0x07d8 // [SPI:AbortMsg] {Bad value for tooth pitch}
#define SPI_TX_MESSAGE_OVERFLOW  0x07d9 // [SPI:AbortMsg] {Message is too long for transmission}
#define SPI_WASIM_REQUIRES_MOTOR_ON_CRABBED1 0x07da // [SPI:AbortMsg] {1-wheel arm command requires motor on and also crabbed condition}
#define SPI_WASIM_ILEGAL_ARGS 0x07db // [SPI:AbortMsg] {Ilegal arguments for wheel arm command}
#define SPI_ERR_NO_MANIPULATOR 0x07dc // [SPI:AbortMsg] {Manipulator does not exist}
#define SPI_ERR_IN_HOST_SPEEDMODE 0x07df // [SPI:AbortMsg] {Cannot accept navigation hints in host-speed mode}
#define SPI_ERR_CMD_WHILE_BUSY 0x07e0 // [SPI:AbortMsg] {Command given while the robot is busy}
#define SPI_ERR_SPECIAL_NEED_BE_FIRST 0x07e1 // [SPI:AbortMsg] {A special SPI message need be indexed zero in the queue}
#define SPI_ERR_MANIPULATOR_BUSY 0x07e2 // [SPI:AbortMsg] {Manipulator is busy}
#define SPI_PACKAGE_REQUIRES_MOTOR_ON 0x07e3 // [SPI:AbortMsg] {Because of neck action, package may only apply when motors are on}
#define SPI_ERR_GYRO_NOT_CALIB 0x07e4 // [SPI:AbortMsg] {Cannot have navigation data before gyro is calibrated}
#define SPI_ERR_BAD_INCIDENCE_4_PACK 0x07e5 // [SPI:AbortMsg] {Bad incidence requested for package handling}
#define SPI_ERR_IN_MOT_QUEUE 0x07e6 // [SPI:AbortMsg] {Running an active motion queue}
#define SPI_ERR_BAD_CLIMB_SPEC 0x07e8 // [SPI:AbortMsg] {Bad climb defined for mode change (legal values: 0, 1) }
#define SPI_ERR_BAD_JUNC_SPEC 0x07e9 // [SPI:AbortMsg] {Bad junction defined for mode change (legal values: 0, 1: 1 is only available if climb=1) }
#define SPI_ERR_BAD_YAW_SPEC 0x07ea // [SPI:AbortMsg] {Bad yaw defined for mode change (legal values: 0, 16384, -16384)}
#define SPI_BAD_INCIDENCE_FOR_PACK 0x07eb // [SPI:AbortMsg] {Bad incidence defined for tail in package access}
#define SPI_BAD_PACK_OUT_MANIPULATOR_RANGE 0x07ec  // [SPI:AbortMsg] {Package is out of manipulator range}
#define SPI_BAD_PACK_SIDE_CMD 0x07ed // [SPI:AbortMsg] {Illegal value for package Right/Left}
#define SPI_BAD_PACK_LOAD_CMD 0x07ee // [SPI:AbortMsg] {Illegal value for package Load/Get}
#define SPI_DELAY_ACT_QUEUE_FULL 0x07ef // [SPI:AbortMsg] {Cannot accept any more delayed actions because the queue is full}
#define SPI_ERR_BAD_NAV_RPT_TIME 0x07f0 // [SPI:AbortMsg] {Bad time report for navigation correction message}
#define SPI_ERR_BAD_STAT_CODE 0x07f1 // [SPI:AbortMsg] {Bad request for type of status report }
#define SPI_ERR_CMD_NOT_WHILE_DEALING_PACK 0x07f2 // [SPI:AbortMsg] {Command cannot be respected when package handling is on}
#define SPI_ERR_CMD_ONLY_FOR_OPERATIONAL 0x07f3 // [SPI:AbortMsg] {Command may only be given while in the operational mode}
#define SPI_ERR_PARAM_NO_INDEX 0x07f4 // [SPI:AbortMsg] {SPI command - no such parameter exists}
#define SPI_ERR_CAN_QUEUE_BAD_DLEN 0x07f5 // [SPI:AbortMsg] {Data length is not suitable for transmission}
#define SPI_ERR_CAN_QUEUE_BAD_ID 0x07f6 // [SPI:AbortMsg] {ID is not suitable for transmission}
#define SPI_ERR_CAN_QUEUE_FULL 0x07f7 // [SPI:AbortMsg] {Cannot place a message in the cmd queue}
#define SPI_ERR_BAD_MODE 0x07f8 // [SPI:AbortMsg] {Bad commanded mode}
#define SPI_ERR_BAD_PATH_DIRECTION 0x07f9 // [SPI:AbortMsg] {Path direction cosines cannot be normalized (all zero?)}
#define SPI_ERR_BAD_WAIT_TIME 0x07fa // [SPI:AbortMsg] {Wait time is too big}
#define SPI_ERR_BAD_ENTRY_TYPE 0x07fb // [SPI:AbortMsg] {Bad op code (queue entry type)}
#define SPI_ERR_BAD_QINDEX 0x07fc // [SPI:AbortMsg] {Bad index within a queue}
#define SPI_ERR_BAD_OPCODE 0x07fd // [SPI:AbortMsg] {Bad command op code}
#define SPI_ERR_BAD_QUEUE 0x07fe  // [SPI:AbortMsg] {Bad queue ID}
#define SPI_ERR_BAD_CS 0x07ff // [SPI:AbortMsg] {Mode of setting queue pointer may be 0 or 1}
#define SPI_WASIM_REQUIRES_MOTOR_ON_CRABBED2 0x0780 // [SPI:AbortMsg] {2-wheel arm command requires motor on and also crabbed condition}
#define SPI_ERR_BAD_SIDE_RELPOS 0x0781 // [SPI:AbortMsg] {Bad side report for relative navigation message}
#define SPI_ERR_CANT_ACCEPT_PROG 0x0782 // [SPI:AbortMsg] {Could not accept new program}
#define SPI_FINE_MOT_TOO_STILL_ON 0x0783 // [SPI:AbortMsg] {Fine motion is still on}
#define SPI_CANT_ACCEPT_PAUSE 0x0784 // [SPI:AbortMsg] {Robot position does not permit pause}
#define SPI_ERR_BAD_WHEEARM_POS 0x785// [SPI:AbortMsg] {Wheelarm is not positioned to accept this command}


// [Queue check exception]
#define     E_Q_EXCEPTION_BASIS 0x0000 // [SPI:AbortMsg] {Addition to error statement by queue checker}
#define     E_Q_SANITY_SHELF_RUN_MUST_BE_HORIZONTAL 0x8e2 //[QueueRun:Abort] {Movement command for shelf run must only include horizontal change }
#define     E_Q_SANITY_POLE_RUN_MUST_BE_VERTICAL 0x8e3 //[QueueRun:Abort] {Movement command for pole run must not include horizontal change }
#define     E_Q_SANITY_JUNC_BAD_VALUE  0x08e4 //[QueueRun:Abort] {Rotation command should be -1, 1 , or 0 }
#define     E_Q_SANITY_JUNC_ALREDAY_UNROTATED  0x08e5 //[QueueRun:Abort] {Attempt to un rotate an already unrotated junction (already vertical) }
#define     E_Q_SANITY_JUNC_ALREDAY_ROTATED  0x08e6 //[QueueRun:Abort] {Attempt to rotate an already rotated junction (already horizontal) }
#define     E_Q_UNCLIMB_NOT_FOLLOWED_BY_NONTRIV_PATH  0x08e7 //[QueueRun:Abort] {An un climb should be followed by a path segment, still at crab mode }
#define     E_Q_UNEXPECTED_UNCRAB 0x08e8  //[QueueRun:Abort] {A crab change to zero is unexpected on ground navigation, not following a pole unclimb }
#define     E_Q_YEW_CHANGED_SHOULD_BE_FOLLOWED_BY_PATH 0x08e9 //[QueueRun:Abort] {A crab change should be followed by a ground segment, from which we infer pos and az target }
#define     E_Q_PATH_CONTRADICS_SHELF_POSITION 0x08ea //[QueueRun:Abort] {When climbing, move only Z. On shelf run, change only X }
#define     E_Q_SANITY_CANNOT_UNCLIMB_DIRECTLY_FROM_SHELF 0x08eb //[QueueRun:Abort] {Must return from shelf to column before un climb}
#define     E_Q_SANITY_BAD_YAW_VALUE 0x08ec //[QueueRun:Abort] {Yew value may be -1 or 1 (for crabbing) or 0 (for auto)}
#define     E_Q_TRANSITION_FROM_JUNC_ROTATE_FAIL 0x08ed //[QueueRun:Abort] {The processing of a run following a junction rotate command returned an error}
#define     E_Q_SANITY_TRANSITION_TO_JUNC_ROTATE_FAIL 0x08ee //[QueueRun:Abort] {The processing of a junction rotate command returned an error}
#define     E_Q_TRANSITION_TO_CLIMB_FAIL 0x08ef //[QueueRun:Abort] {The processing of a climb command returned an error}
#define     E_Q_NEXT_OPCODE_MUST_BE_VERTICAL_TRAVEL 0x08f0  //[QueueRun:Abort] {After a start climb command, the next command must be a vertical travel}
#define     E_Q_CANT_ROTATE_JUNC_ON_GND 0x08f1 // [QueueRun:Abort] {Cannot change junction on ground}
#define     E_Q_SANITY_BAD_OPCODE  0x08f2 // [SPI:AbortMsg] {Unidentified opcode}
#define     E_Q_SANITY_COP_NAV_SEG_ERR  0x08f3 // [SPI:AbortMsg] {Processing a queue failed the sanity check}
#define     E_Q_REPEATED_WAYPOINT  0x08f4  // [SPI:AbortMsg] {Zero distance between consecutive way points}
#define     E_Q_SANITY_WPT_IS_LONE  0x08f5// [SPI:AbortMsg] {At list two way points are required to define a route}
#define     E_Q_DOES_NOT_TERMINATE  0x08f6// [SPI:AbortMsg] {Queue termination not found}
#define     E_Q_PACKAGE_PICK_NOT_IN_TRAVERSE  0x08f7// [SPI:AbortMsg] {cannot pick package on vertical climb}
#define     E_SANITY_CLIMB_TRANSITION_NOT_IN_RIGHT_ANGLE_YEW 0x08f8// [SPI:AbortMsg] {climbing should start at crab crawl position, and no curvature}
#define     E_CLIMB_TRANSITION_NOT_IN_ZERO_HGT 0x08f9// [SPI:AbortMsg] {climbing should start at zero height}
#define     E_Q_ALREADY_CLIMBING  0x08fa // [SPI:AbortMsg] {Command to climb when a,ready climbing}
#define     E_Q_GND_Z_NOT_YET_IMPLEMENTED  0x08fb// [SPI:AbortMsg] {3D ground navigation is not yet implemented}
#define     E_Q_HEIGHT_WITHIN_CLIMB_CURVE  0x08fc// [SPI:AbortMsg] {Requested height will fall within the entry arc}
#define     E_Q_SANITY_HEIGHT_AND_TRAVERSE_CHANGE  0x08fd// [SPI:AbortMsg] {Sanity check: Cannot change ground coordinates and height in the same segment}
#define     E_Q_SANITY_NOT_READY_4_INIT  0x08fe // [SPI:AbortMsg] {Not ready for initialization}
#define     E_Q_SANITY_WPT_REQUIRES_INIT  0x08ff  // [SPI:AbortMsg] {Way point without position initialization}
#define     E_Q_SANITY_BAD_PACKAGE_INCIDENCE 0x0900  //[SPI:AbortMsg] {Package incidence too big}
#define     E_Q_SANITY_UNCLIMB_TRANSITION_WITHNO_SEG1 0x0901 // [QueueRun:Abort] {Un-climb no followed by a path-point}
#define     E_Q_SANITY_UNCLIMB_TRANSITION_WITHNO_SEG2 0x0902 // [QueueRun:Abort] {Un-climb no followed 2 path-points}
#define     E_Q_SANITY_UNCLIMB_TRANSITION_NOT_IN_ZERO_HGT 0x0903 // [QueueRun:Abort] {Un-climb transition not on ground}
#define     E_Q_SANITY_UNCLIMB_TRANSITION_WITHNO_UNCRAB 0x0904 // [QueueRun:Abort] {Un-limb transition not terminated by un-crab change mode}
#define     E_Q_JUNCTION_SW_NOT_DETECTED 0x0905 //[QueueRun:Abort] {Attempt to rotate a junction without prior switch detection}
#define     E_Q_SANITY_UNKNOWN_SPECIAL_MODE  0x0906// [SPI:AbortMsg] {Unknown mode for special queue item}
#define     E_Q_SANITY_MANIPULATOR_MISSING 0x0907 //[SPI:AbortMsg] {manipulator is missing}
#define     E_Q_SANITY_MANIPULATOR_FAULT 0x0908 //[SPI:AbortMsg] {manipulator is faulted}
#define     E_Q_SANITY_BAD_CHG_MODE_START  0x909 // [SPI:AbortMsg] {Mode change as first opcode is only legal for into-shelf departure}
#define     E_Q_SANITY_BAD_CRAB_INTO_SEQ1 0x90a // [SPI:AbortMsg] {Mode change for into-shelf departure: 1-incomplete sequence}
#define     E_Q_SANITY_BAD_CRAB_INTO_SEQ2 0x90b // [SPI:AbortMsg] {Mode change for into-shelf departure: 2-incomplete sequence}
#define     E_Q_SANITY_BAD_CRAB_INTO_SEQ3 0x90c // [SPI:AbortMsg] {Mode change for into-shelf departure: 3-incomplete sequence}
#define     E_Q_SANITY_BAD_CRAB_INTO_SEQ4 0x90d // [SPI:AbortMsg] {Mode change for into-shelf departure: 4-incomplete sequence}
#define     E_Q_SANITY_BAD_CRAB_INTO_SEQ5 0x90e // [SPI:AbortMsg] {Mode change for into-shelf departure: 5-incomplete sequence}
#define     E_Q_SANITY_BAD_TRACK_WIDTH1 0x90f // [SPI:AbortMsg] {1-Out of range specification of inter-shelf spacing}
#define     E_Q_SANITY_BAD_TRACK_WIDTH2 0x910 // [SPI:AbortMsg] {2-Out of range specification of inter-shelf spacing}
#define     E_Q_SANITY_CANNOT_UNCLIMB_WITH_CHANGED_TRACKW 0x911// [SPI:AbortMsg] {Cannot un-climb with changed inter-shelf spacing}
#define     E_Q_SANITY_CANNOT_GROUNDNAV_CHANGED_TRACKW 0x912 // [SPI:AbortMsg] {Cannot go ground navigation with changed inter-shelf spacing}
#define     E_Q_SANITY_NO_MAIPULATOR_DEFINED 0x0913  //[SPI:AbortMsg] {Manipulator is not installed}
#define     E_Q_SANITY_HEIGHT_WITHIN_ARC  0x0914  //[SPI:AbortMsg] {segments ends within arc or below zero}
#define     E_Q_SANITY_BAD_HEIGHT_SPECIAL_MODE   0x0915  //[SPI:AbortMsg] {Bad height in rescue operation}
#define     E_Q_SANITY_BAD_SHELF_HEIGHT   0x0916  //[SPI:AbortMsg] {Too big height to climb}
#define     E_Q_SANITY_BAD_INITIAL_WIDTH 0x917 // [SPI:AbortMsg] {Initial track width is undefined}
#define     E_Q_SANITY_SHELF_MUST_FOLLOW 0x918 // [SPI:AbortMsg] {Pole climb does not go into shelf}
#define     E_Q_SANITY_POLE_NEXT_NOT_CHGMODE 0x919// [SPI:AbortMsg] {Pole climb not followed by change mode}
#define     E_Q_SANITY_NOT_ENOUGH_GND_DIST_CLIMB 0x91a // [SPI:AbortMsg] {Not enough distance from un-crabbing point to end of climb}
#define     E_Q_SANITY_NOT_ENOUGH_GND_DIST_UNCLIMB 0x91b // [SPI:AbortMsg] {Not enough distance from arrival point to start of climb}
#define     E_Q_SANITY_LO_ROTZE 0x91c // [SPI:AbortMsg] {Leave me and go on your life}
#define     E_Q_SANITY_MANIPULATOR_POWER_OFF 0x091d //[SPI:AbortMsg] {manipulator power off}
#define     E_Q_SANITY_MANIPULATOR_NETS_OFF 0x091e //[SPI:AbortMsg] {manipulator nets off}
#define     E_Q_SANITY_MANIPULATOR_INITIALIZING 0x091f //[SPI:AbortMsg] {manipulator initializing}
#define     E_Q_SANITY_EEF_MISSING 0x0920 //[SPI:AbortMsg] {manipulator EEF missing}
#define     E_Q_PD_COM_ERROR 0x0921 //[SPI:AbortMsg] {manipulator, PD com error}


// [Path builder errors]
#define QERR_QUEUE_IS_FULL 0x100 // [QueueProc:Abort] {Motion queue overflow}
#define QERR_ARC_IS_STRAIGHT 0x101 // [QueueProc:Abort] {What should be an arc is really a set of co-linear points}
#define QERR_COULD_NOT_BACKREGULATE 0x102   // [QueueProc:Abort] {Failed to back-calculate segment speeds}
#define QERR_COULD_NOT_FIND_SPLITCOND 0x103 // [QueueProc:Abort] {Could not split a segment to subsegments}
#define QERR_NO_SUCH_SEGTYPE 0x104 // [QueueProc:Abort] {Motion segment of unknown type}
#define QERR_IMPOSSIBLE_ANGLE_COSINES 0x105 // [QueueProc:Abort] {Angle cosines are out of range}
#define QERR_IMPOSSIBLE_SEG_INDEX 0x106 // [QueueProc:Abort] {A segment index is too big for queue size}
#define QERR_ZERO_GRAD_CLOTHOID 0x107 // [QueueProc:Abort] {Clothoid has zero rate of curvature change}
#define qerr_too_big_distance_to_start_pt 0x108 // [QueueProc:Abort] {Too great distance between present position and trajectory start}
#define qerr_too_big_angle_to_start_direction 0x109 // [QueueProc:Abort] {Too great angle between present direction and trajectory start}
#define QERR_LINE_SPEED_NEGATIVE 0x200 // [QueueProc:Abort] {Line speed became negative}


// [CAN exceptions]
#define exp_bootout_timeout 0x8888 // [CAN:Warning] {Boot up message of an axis arrived late or not at all }
#define exp_sdo_timeout     0x8889 // [CAN:Warning] {SDO programming message of an axis arrived late or not at all }
#define exp_sdo_bad_multiplexor 0x888a // [CAN:Warning] {SDO programming message of an axis returned with bad multiplexor }
#define exp_unexpected_sdo_id  0x888b // [CAN:Warning] {Caught unexpected SDO object }
#define exp_sdo_timeout_retry     0x888c // [CAN:Warning] {SDO programming message failed after retry }
#define exp_sdo_Toggle_bit_not_alternated 0x0503 // [CAN:Fatal] {Toggle bit alternation error }
#define exp_sdo_SDO_protocol_timed_out 0x0504 // [CAN:Fatal] {SDO protocol timed out }
#define exp_sdo_Object_does_not_exist_in_the_object_dictionary 0x0602 // [CAN:Fatal] {SDO protocol to invalid object }
#define exp_sdo_Unsupported_access_to_an_object  0x601 // [CAN:Fatal] {SDO incorrect object access }
#define exp_sdo_General_parameter_incompatibility_reason 0x604 // [CAN:Fatal] {SDO bad object access (general incompatibility) }
#define exp_sdo_length_of_service_parameter_does_not_match 0x607 // [CAN:Fatal] {SDO bad data payload length }
#define exp_sdo_Sub_index_does_not_exist 0x609 // [CAN:Fatal] {SDO bad sub-index to object  }
#define exp_waiting_reset 0x610 // [CAN:Fatal] {Waiting CPU Reset  }
#define exp_sdo_Manufacturer_error_detail 0x900 // [CAN:Fatal] {SDO manufacturer specific error }


// [Interpreter]
#define INTER_ERR_NO_SUCH_FUNC -110 // [Interpreter:Error] {Index does not have the access required rights }
#define INTER_ERR_NO_SUCH_MODE -111 // [Interpreter:Error] {Mode not identified }
#define INTER_ERR_FLOAT_OUT_RANGE -112 // [Interpreter:Error] {Floating point argument out of range }
#define INTER_ERR_FLOAT_ASGN_SHORT_OR_US -113 // [Interpreter:Error] {Payload too short to describe a floating point number }
#define INTER_ERR_LONG_OUT_RANGE -114 // [Interpreter:Error] {Long integer argument out of range }
#define INTER_ERR_NO_SUCH_INDEX -115 // [Interpreter:Error] {Index is not in the object dictionary }
#define INTER_ERR_NO_SUCH_VAR_IN_LIST -116 // [Interpreter:Error] {No such variable exists in the recorder list }
#define INTER_ERR_SET_VAL_OUT_OF_RANGE -117 // [Interpreter:Error] {Attempt to set a value out of range }

#define INTER_RECORDER_SET_ERR 0x76 // [Interpreter:Error] {Recorder setting error}
#define INTER_RECORDER_NO_SIGLIST 0x77 // [Interpreter:Error] {Recorder list of signals is empty}
#define INTER_RECORDER_SIGNAL_NOTPROG 0x78 // [Interpreter:Error] {A signal in the recorder list is empty}
#define INTER_RECORDER_SET_UNKNOWN_TRIGTYPE 0x79 // [Interpreter:Error] {Unknown recorder trigger type}
#define INTER_ERR_NOT_ENOUGH_SDO_SPACE -129 // [Interpreter:Error] {String too large for SDO to accept}

#define OBJ_ERR_RADI_TOO_TIGHT_FOR_CRAB  -130 // [Interpreter:Error] {Desired curvature is too big for crab mode}
#define OBJ_ERR_TWIST_WITH_UNDEFINED_SIDE -131// [Interpreter:Error] {Illegal value for junction twist direction} //TODO:EXP - reported to ExceptionTab but not in Core2 code.
#define ERR_COULD_NOT_BURN_CALIB -132// [Interpreter:Error] {Could not burn calibration parameters}
#define ERR_PACKAGE_REQUIRES_NECK_MOT_ON -133// [Interpreter:Error] {Package handling requires the neck turned on}
#define ERR_COULD_NOT_READ_CALIB -134// [Interpreter:Error] {Could not read calibration parameters from flash}
#define ERR_COULD_NOT_ERASE_OLD_CALIB -135 // [Interpreter:Error] {Could not erase calibration parameters from flash}
#define ERR_BAD_FLASH_CHECKSUM -136 // [Interpreter:Error] {Data in flash has bad checksum}
#define ERR_BAD_FLASH_PASSWORD -137 // [Interpreter:Error] {Data in flash has invalid password}
#define ERR_FAILED_TO_OWN_FLASH -138 // [Interpreter:Error] {Failed to own the flash resource}
#define ERR_FAILED_SERFLASH_READ -139 // [Interpreter:Error] {Could not read from flash over the SPI}
#define ERR_UNALIGNED_FLASH_ENTITIES -140 // [Interpreter:Error] {Flash parameters are not aligned}
#define ERR_ODD_LENGTH_IN_FLASH_ACTION -141 // [Interpreter:Error] {Flash read/write must be even amount of words}
#define ERR_SFLASH_INIT_FAILED -142 // [Interpreter:Error] {Flash is not useable, initialization failed}
#define MUST_BE_POSITION_LOOP -143 // [Interpreter:Error] {Motor feedback must be position}
#define FLOAT_ARGUMENT_IS_IMPROPER -144 // [Interpreter:Error] {Floating point number is NAN or INF }
#define MOTOR_MUST_BE_OFF -145 // [Interpreter:Error] {Motor must be off for this command}
#define ONLY_FOR_MANUAL_MODE -146 // [Interpreter:Error] {Applicable only when axis is operated manually}
#define NO_SUCH_SLAVE -147 // [Interpreter:Error] {No such slave on the CAN}
#define AXIS_NOT_INSTALLED -148 // [Interpreter:Error] {Axis is not installed}
#define MOTOR_MUST_BE_ON -149 // [Interpreter:Error] {Motor must be on for this command}
#define ERR_COULD_NOT_ERASE_OLD_CONFIG -150 // [Interpreter:Error] {Could not erase configuration parameters from flash}
#define ERR_COULD_NOT_BURN_CONFIG -151// [Interpreter:Error] {Could not burn configuration parameters}
#define ERR_COULD_NOT_READ_CONFIG -152// [Interpreter:Error] {Could not read configuration parameters from flash}


#define AXES_ERR_NOT_READY -200 // [Interpreter:Error] {Motion system is not ready}
#define ERR_MANIPULATOR_BUSY -201 // [Interpreter:Error] {Manipulator is busy}
#define ERR_NOT_ENOUGH_NIGHT_SLEEP -220  // [Interpreter:Error] {Attempt to wake robot after too short sleep}


// [Manipulator]
#define EXCEPT_MANIPULATOR_FAIL_BASE  0x2000 // [Manipulator:Nothing] {Not a true failure - just where we start count the manipulator failures}
#define EXCEPT_FINAL_PT_NOT_REACHABLE 0x2001 // [Manipulator:Abort] {Package specification out of manipulator reach}
#define EXCEPT_TARGET_NOT_REACHABLE 0x2002 // [Manipulator:Abort] {Package specification out of manipulator reach}
#define EXCEPT_INTERMEDIATE_PT_NOT_REACHABLE 0x2003 // [Manipulator:Abort] {Package specification requires part of path to be out of manipulator reach}
#define EXCEPT_CANT_SET_MON_AUTO 0x2004 // [Manipulator:Abort] {Cannot start manipulator motors}
#define EXCEPT_MAN_TIMEOUT 0x2005 // [Manipulator:Abort] {Manipulator failed to commit motion on time}
#define EXCEPT_SUCK_ERROR 0x2006    // [Manipulator:Abort] {Target sensor does not conform with expected suck state}
#define EXCEPT_LASER_TIMEOUT 0x2007 // [Manipulator:Abort] {At expected position , laser doesn't see target}
#define exp_man_servo_over_err 0x2008 //[Manipulator:Fatal] {Too big, non-converging position error}
#define exp_man_shoulder_over_err 0x2009 //[Manipulator:Fatal] {Too big, non-converging shoulder position error}
#define exp_man_wrist_over_err 0x200a //[Manipulator:Fatal] {Too big, non-converging wrist position error}
#define exp_man_elbow_over_err 0x200b //[Manipulator:Fatal] {Too big, non-converging elbow position error}
#define exp_man_servo_cartese_recover_calc 0x200c //[Manipulator:Fatal] {Could not calculate Cartesian recovery trajectory }
#define exp_unexpected_motor_off 0x200d //[Manipulator:Fatal] {Motor turned off unexpectedly }
#define EXCEPT_STANDBY_PT_NOT_REACHABLE 0x200e // [Manipulator:Abort] {Standby specification out of manipulator reach}
#define EXCEPT_FAILED_INIT_PACKAGE_SUCTION 0x200f // [Manipulator:Abort] {Failed in initial package suction}
#define EXCEPT_LOST_PACKAGE_GRIP 0x2010 // [Manipulator:Abort] {Lost the package grip}
#define EXCEPT_FAILED_CALCULATING_PATH 0x2011 // [Manipulator:Abort] {Failed in calculation the package path}
#define EXCEPT_SHELF_TIMEOUT 0x2012 // [Manipulator:Abort] {A door did not reach desired position}
#define EXCEPT_NO_LASER_AT_RELEASE 0x2013 // [Manipulator:Abort] {Package was not detected at manipulator end till scheduled release }
#define EXCEPT_STRAY_SEE_PACK 0x2014 // [Manipulator:Abort] {Stray package measured by laser or package not in place during get}
#define EXCEPT_PACKAGE_OUT_OF_REACH 0x2015 // [Manipulator:Abort] {Package seen, but out of manipulator reach }
#define EXCEPT_TARGET_DIR_INCONSISTENT 0x2016 // [Manipulator:Abort] {Package y specification is inconsistent with direction}
#define EXCEPT_MANIP_STARTPUSH_OUT_RANGE 0x2018 // [Manipulator:Abort] {Manipulator position too away for push start}
#define EXCEPT_COULD_NOT_ROTATE_PLATE 0x2019 // [Manipulator:Abort] {Manipulator could not sey rotary plate angle}
#define EXCEPT_MANIPULATOR_NOT_INSTALLED 0x202a // [Manipulator:Abort] {Manipulator is not specified, cannot deal package}
#define EXCEPT_COULD_NOT_RETURN_FLEX_NORMAL 0x202b // [Manipulator:Abort] {Tape arm cannot return to work area after home stop detection}
#define EXCEPT_SET_DOOR_NOT_CLOSED 0x202f // [Manipulator:Abort] {Could not close door after action}
#define EXCEPT_CANT_SET_MON_AUTO_MAN 0x2020 // [Manipulator:Abort] {Cannot start manipulator motors DYN24 axis#1}
#define EXCEPT_CANT_SET_MON_AUTO_MAN2 0x2021 // [Manipulator:Abort] {Cannot start manipulator motors DYN24 axis#2}
#define EXCEPT_CANT_SET_MON_AUTO_MAN3 0x2022 // [Manipulator:Abort] {Cannot start manipulator motors DYN24 axis#3}
#define EXCEPT_CANT_SET_MON_AUTO_MAN4 0x2023 // [Manipulator:Abort] {Cannot start manipulator motors DYN24 axis#4}
#define EXCEPT_CANT_SET_MON_AUTO_MAN5 0x2024 // [Manipulator:Abort] {Cannot start manipulator motors DYN24 axis#5}
#define EXCEPT_CANT_SET_MON_AUTO_STOP 0x2025 // [Manipulator:Abort] {Cannot start manipulator DYN12 motors axis#1}
#define EXCEPT_CANT_SET_MON_AUTO_STOP2 0x2026 // [Manipulator:Abort] {Cannot start manipulator DYN12 motors axis#2}
#define EXCEPT_CANT_SET_MON_AUTO_STOP3 0x2027 // [Manipulator:Abort] {Cannot start manipulator DYN12 motors axis#3}
#define EXCEPT_CANT_SET_MON_AUTO_STOP4 0x2028 // [Manipulator:Abort] {Cannot start manipulator DYN12 motors axis#4}
#define EXCEPT_CANT_SET_MON_AUTO_STOP5 0x2029 // [Manipulator:Abort] {Cannot start manipulator DYN12 motors axis#5}
#define exp_core2_disabled_by_sto 0x2040  // [Manipulator:Abort] {Core 2 motors disabled by STO disable (made by core 1)}

#endif
