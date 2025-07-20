#ifndef LP_ERROR_Codes_Defined
#define LP_ERROR_Codes_Defined

//[Motion Exception Codes]
#define exp_shilgum_yozgot 0x7000 // [General:Fatal] {Something terribly wrong with the software} 
#define exp_unexpected_bootup_msg 0x7001 // [General:Fatal] {An unexpected CAN resident issued a boot-up message}
#define exp_trap_overflow 0x7002 // [General:Fatal] {Too much CAN traffic to handle} 
#define exp_shilgum_yozgot_1  0x7003// [General:Fatal] {Something terribly wrong with the software} 
#define exp_shilgum_yozgot_2  0x7004// [General:Fatal] {Something terribly wrong with the software} 
#define exp_mot_queue_reject 0x7005 //[Automation:Abort] {Queue rejected, due to erroneous sequence} 
#define exp_auto_requires_all_installed 0x7006 //[Automation:Abort] {Automation is possible only if all the axes are present} 
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
#define exp_last_route_loc_error 0x7040 //[Navigation:Abort] {Could not locate a nominal path point near the robot's position} 
#define exp_package_handling_general_err 0x7100 // [Manipulator:Warning] {Non-specific package handling errors}
#define err_manipulator_is_busy 0x7101 // [Manipulator:Warning] {Manipulator was busy when asked for action}  
#define err_mode_mismatch_for_package 0x7102 // [Manipulator:Warning] {Manipulator may be operated on the shelves only if on shelf run and neck is stabilized}  
#define err_side_mismatch_for_package 0x7103 // [Manipulator:Warning] {Manipulator direction undefined or inconsistent with climb direction}  
#define err_too_big_incidence_package 0x7104 // [Manipulator:Warning] {Neck incidence out of range} 
#define err_package_handeling_timeout 0x7105 // [Manipulator:Fatal] {Package handling did not complete on time}
#define err_package_handeling_failed 0x7106 // [Manipulator:Abort] {Package handling failed, refer PD report for details}
#define err_cant_program_package_x 0x7107 // [Manipulator:Fatal] {PD rejected x coordinate of package} 
#define err_cant_program_package_y 0x7108 // [Manipulator:Fatal] {PD rejected y coordinate of package} 
#define err_cant_program_reset_pack 0x7109 // [Manipulator:Fatal] {PD rejected reset of package}
#define exp_right_wheel_encoder_mismatch 0x7110  // [Motion:Warning] {Mismatch in counting the right wheel encoder and the motor encoder}
#define exp_left_wheel_encoder_mismatch 0x7111  // [Motion:Warning] {Mismatch in counting the left wheel encoder and the motor encoder}
#define exp_azimuth_correction_too_large 0x7112 // [Motion:Abort] {Required azimuth correction is too large to make sense} 
#define exp_distance_correction_too_large 0x7114 // [Motion:Abort] {Required distance correction is too large to make sense} 
#define exp_funell_miss_angle_too_large	0x7115 // [Motion:Abort] {The arc to funnel will result in too large angular miss} 
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
#define exp_package_handeling_recovered 0x7130 // [Manipulator:Abort] {Package handling failed, robot recoverable, refer PD report for details}
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
#define E_CLIMB_START_TOO_FAR_FROM_NAV 0x7152 //[QueueRun:Abort] {Pole climb starts too far from its nominal position }
#define exp_bad_package_emcy_cmd 0x7153 //[Manipulator:Abort] {Unknown command for emergency package operation}
#define exp_reset_after_man_reset 0x7154 //[Manipulator:Reset] {Exception code cleared after resetting manipulator}
#define exp_reset_after_pack_success 0x7155 //[Manipulator:Reset] {Exception code cleared after successful package handling}
#define exp_big_deviation_in_twist 0x7156 //[Motion:Fatal] {An encoder deviated too much on into or from shelf twist }
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


//[SPI message error codes]
#define SPI_ERR_PARAM_BAD 0x0000 // [SPI:AbortMsg] {Addition to error statement by SDO handler}
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



// [Queue check exception] 
#define 	E_Q_EXCEPTION_BASIS 0x0000 // [SPI:AbortMsg] {Addition to error statement by queue checker}
#define     E_Q_SHELF_RUN_MUST_BE_HORIZONTAL 0x8e2 //[QueueRun:Abort] {Movement command for shelf run must only include horizontal change }
#define     E_Q_POLE_RUN_MUST_BE_VERTICAL 0x8e3 //[QueueRun:Abort] {Movement command for pole run must not include horizontal change }
#define     E_Q_JUNC_BAD_VALUE  0x08e4 //[QueueRun:Abort] {Rotation command should be -1, 1 , or 0 }
#define     E_Q_JUNC_ALREDAY_UNROTATED  0x08e5 //[QueueRun:Abort] {Attempt to un rotate an already unrotated junction (already vertical) }
#define     E_Q_JUNC_ALREDAY_ROTATED  0x08e6 //[QueueRun:Abort] {Attempt to rotate an already rotated junction (already horizontal) }
#define     E_Q_UNCLIMB_NOT_FOLLOWED_BY_NONTRIV_PATH  0x08e7 //[QueueRun:Abort] {An un climb should be followed by a path segment, still at crab mode }
#define     E_Q_UNEXPECTED_UNCRAB 0x08e8  //[QueueRun:Abort] {A crab change to zero is unexpected on ground navigation, not following a pole unclimb }
#define     E_Q_YEW_CHANGED_SHOULD_BE_FOLLOWED_BY_PATH 0x08e9 //[QueueRun:Abort] {A crab change should be followed by a ground segment, from which we infer pos and az target }
#define     E_Q_PATH_CONTRADICS_SHELF_POSITION 0x08ea //[QueueRun:Abort] {When climbing, move only Z. On shelf run, change only X }
#define     E_Q_CANNOT_UNCLIMB_DIRECTLY_FROM_SHELF 0x08eb //[QueueRun:Abort] {Must return from shelf to column before un climb}
#define     E_Q_BAD_YAW_VALUE 0x08ec //[QueueRun:Abort] {Yew value may be -1 or 1 (for crabbing) or 0 (for auto)}
#define     E_Q_TRANSITION_FROM_JUNC_ROTATE_FAIL 0x08ed //[QueueRun:Abort] {The processing of a run following a junction rotate command returned an error}
#define     E_Q_TRANSITION_TO_JUNC_ROTATE_FAIL 0x08ee //[QueueRun:Abort] {The processing of a junction rotate command returned an error}
#define     E_Q_TRANSITION_TO_CLIMB_FAIL 0x08ef //[QueueRun:Abort] {The processing of a climb command returned an error}
#define     E_Q_NEXT_OPCODE_MUST_BE_VERTICAL_TRAVEL 0x08f0  //[QueueRun:Abort] {After a start climb command, the next command must be a vertical travel}
#define     E_Q_CANT_ROTATE_JUNC_ON_GND 0x08f1 // [QueueRun:Abort] {Cannot change junction on ground}
#define     E_Q_SANITY_BAD_OPCODE  0x08f2 // [SPI:AbortMsg] {Unidentified opcode}
#define     E_Q_SANITY_COP_NAV_SEG_ERR  0x08f3 // [SPI:AbortMsg] {Processing a queue failed the sanity check}
#define     E_Q_REPEATED_WAYPOINT  0x08f4  // [SPI:AbortMsg] {Zero distance between consecutive way points}
#define     E_Q_SANITY_WPT_IS_LONE  0x08f5// [SPI:AbortMsg] {At list two way points are required to define a route}
#define     E_Q_DOES_NOT_TERMINATE  0x08f6// [SPI:AbortMsg] {Queue termination not found}
#define     E_Q_PACKAGE_PICK_NOT_IN_TRAVERSE  0x08f7// [SPI:AbortMsg] {cannot pick package on vertical climb}
#define     E_CLIMB_TRANSITION_NOT_IN_RIGHT_ANGLE_YEW 0x08f8// [SPI:AbortMsg] {climbing should start at crab crawl position, and no curvature}
#define     E_CLIMB_TRANSITION_NOT_IN_ZERO_HGT 0x08f9// [SPI:AbortMsg] {climbing should start at zero height}
#define     E_Q_ALREADY_CLIMBING  0x08fa // [SPI:AbortMsg] {Command to climb when a,ready climbing}
#define     E_Q_GND_Z_NOT_YET_IMPLEMENTED  0x08fb// [SPI:AbortMsg] {3D ground navigation is not yet implemented}
#define     E_Q_HEIGHT_WITHIN_CLIMB_CURVE  0x08fc// [SPI:AbortMsg] {Requested height will fall within the entry arc}
#define     E_Q_EITHER_HEIGHT_OR_TRAVERSE_TO_CHANGE  0x08fd// [SPI:AbortMsg] {Cannot change ground coordinates and height in the same segment}
#define     E_Q_SANITY_NOT_READY_4_INIT  0x08fe // [SPI:AbortMsg] {Not ready for initialization}
#define 	E_Q_SANITY_WPT_REQUIRES_INIT  0x08ff  // [SPI:AbortMsg] {Way point without position initialization}
#define     E_Q_BAD_PACKAGE_INCIDENCE 0x0900  //[SPI:AbortMsg] {Package incidence too big}
#define     E_UNCLIMB_TRANSITION_WITHNO_SEG1 0x0901 // [QueueRun:Abort] {Un-climb no followed by a path-point}
#define     E_UNCLIMB_TRANSITION_WITHNO_SEG2 0x0902 // [QueueRun:Abort] {Un-climb no followed 2 path-points}
#define     E_UNCLIMB_TRANSITION_NOT_IN_ZERO_HGT 0x0903 // [QueueRun:Abort] {Un-climb transition not on ground}
#define     E_UNCLIMB_TRANSITION_WITHNO_UNCRAB 0x0904 // [QueueRun:Abort] {Un-limb transition not terminated by un-crab change mode}
#define     E_Q_JUNCTION_SW_NOT_DETECTED 0x0905 //[QueueRun:Abort] {Attempt to rotate a junction without prior switch detection}
#define     E_Q_SANITY_UNKNOWN_SPECIAL_MODE  0x0906// [SPI:AbortMsg] {Unknown mode for special queue item}
#define     E_Q_SANITY_MANIPULATOR_MISSING 0x0907 //[SPI:AbortMsg] {manipulator is missing}
#define     E_Q_SANITY_MANIPULATOR_FAULT 0x0908 //[SPI:AbortMsg] {manipulator is faulted}



// [Path builder errors]
#define QERR_QUEUE_IS_FULL 0x100 // [QueueProc:Abort] {Motion queue overflow}
#define QERR_ARC_IS_STRAIGHT 0x101 // [QueueProc:Abort] {What should be an arc is really a set of co-linear points}
#define QERR_COULD_NOT_BACKREGULATE 0x102	// [QueueProc:Abort] {Failed to back-calculate segment speeds}
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



#endif 
