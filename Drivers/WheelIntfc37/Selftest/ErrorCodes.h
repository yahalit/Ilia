#define exp_bad_hall_value 0x900 // [Commutation:Fatal] {Bad Hall reading }
#define exp_hall_ilegal_delta 0x901 // [Commutation:Fatal] {Hall reading jump}
#define exp_over_voltage 0x902 // [Drive:Fatal] {DC voltage too high}
#define exp_under_voltage 0x903 // [Drive:Fatal] {DC voltage too low}
#define exp_overload 0x904 // [Drive:Fatal] {I2t overload}
#define exp_nan_in_control 0x905 // [Drive:Fatal] {Numerical exception NAN in controller }
#define exp_adc_offset_too_large 0x906 // [Drive:Fatal] {ADC offset of current measurement is too large }
#define exp_periodc_service_cut_while_on 0x907 // [Drive:Fatal] {The periodic service is off while motor is on }
#define exp_sto_event  0x908 // [Drive:Fatal] {STO event possibly disables gate drivers }
#define exp_sysmode_fault 0x909 // [Drive:Fatal] {Motor on on fault mode}
#define exp_expecting_sto 0x90a // [Drive:Fatal] {After stopping, shut motor as STO is expected}
#define exp_missing_calib 0x90b // [Drive:Fatal] {Calibration data is missing or bad}
#define exp_auto_mode_requires_closedloop 0x90c // [Drive:Fatal] {Loop closure mode is not sufficient for automatic action}
#define exp_encoder_hall_deviation  0x90d // [Commutation:Fatal] {Hall reading deviates from value expected from encoder reading}
#define err_undefined_proj_id  0x91e // [Drive:Fatal] {Did not identify project ID}
#define err_bad_proj_pars  0x91f // [Drive:Fatal] {Could not calculate project parameters}



#define ERR_ONLY_FOR_MANUALMODE  -126// [Interpreter:Error] {This command can only be executed in manual mode }
#define ERR_CALIBRATION_MISSING  -127// [Interpreter:Error] {Drive has no valid calibrations file }
#define ERR_NORMALLY_UNSUPPORTED_CLOSURE -128 // [Interpreter:Error] {Unsupported closure mode (voltage mode is not normal and has a special object) }
#define ERR_IN_VOLTAGE_OPEN_LOOP -129 // [Interpreter:Error] {Cannot return from voltage mode to normal. Reset CPU. }
#define ERR_TOO_BIG_ADC_OFFSET -130 // [Interpreter:Error] {Cannot start because current measurement offsets are too large }
#define ERR_ONLY_FOR_MOTOROFF  -131// [Interpreter:Error] {This command can only be executed with the motor off }
#define ERR_COULD_NOT_BURN_CALIB -132// [Interpreter:Error] {Could not burn calibration parameters}
#define ERR_RESET_FAILURE_FIRST  -133// [Interpreter:Error] {You must reset the failure before starting the motor }
#define ERR_COULD_NOT_READ_CALIB -134// [Interpreter:Error] {Could not read calibration parameters from flash}
#define ERR_COULD_NOT_ERASE_OLD_CALIB -135 // [Interpreter:Error] {Could not erase calibration parameters from flash}
#define ERR_BAD_FLASH_CHECKSUM -136 // [Interpreter:Error] {Data in flash has bad checksum}
#define ERR_BAD_FLASH_PASSWORD -137 // [Interpreter:Error] {Data in flash has invalid password}
#define ERR_FAILED_TO_OWN_FLASH -138 // [Interpreter:Error] {Failed to own the flash resource}
#define ERR_FAILED_SERFLASH_READ -139 // [Interpreter:Error] {Could not read from flash over the SPI}
#define ERR_UNALIGNED_FLASH_ENTITIES -140 // [Interpreter:Error] {Flash parameters are not aligned}
#define ERR_ODD_LENGTH_IN_FLASH_ACTION -141 // [Interpreter:Error] {Flash read/write must be even amount of words}
#define ERR_SFLASH_INIT_FAILED -142 // [Interpreter:Error] {Flash is not useable, initialization failed}
#define ERR_OUT_OF_RANGE -143 // [Interpreter:Error] {Entered parameter is out of range}

#define ERR_FIXED_PARAMETER -148 // [Interpreter:Error] {Entered parameter is fixed and cant be edited}
#define ERR_COULD_NOT_ERASE_OLD_IDENTITY -149 // [Interpreter:Error] {Could not erase identity parameters from flash}
#define ERR_COULD_NOT_BURN_IDENTITY -150// [Interpreter:Error] {Could not burn identity parameters}
#define ERR_RECORDER_BUFF_IN_USE -151// [Interpreter:Error] {The recorder buffer is in use}
#define ERR_COULD_NOT_ERASE_OLD_PARAMS -152 // [Interpreter:Error] {Could not erase user parameters from flash}
#define ERR_COULD_NOT_BURN_PARAMS -153// [Interpreter:Error] {Could not burn user parameters to flash}
