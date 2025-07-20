################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
Ti/libraries/flash_api/f2803x/example_ccsv4/%.obj: ../Ti/libraries/flash_api/f2803x/example_ccsv4/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1210/ccs/tools/compiler/ti-cgt-c2000_22.6.0.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla2 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcrc -Ooff --fp_mode=relaxed --include_path="C:/Yahali/Nimrod/Sw1p5/Neck37/servo_drive_with_can_f28003x" --include_path="C:/ti/ccs1210/ccs/tools/compiler/ti-cgt-c2000_22.6.0.LTS/include" --advice:performance=all --define=_INLINE --define=_FLASH --define=BOOSTXL_8323RS_REVA_N --diag_suppress=10063 --diag_warning=225 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="Ti/libraries/flash_api/f2803x/example_ccsv4/$(basename $(<F)).d_raw" --obj_directory="Ti/libraries/flash_api/f2803x/example_ccsv4" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

Ti/libraries/flash_api/f2803x/example_ccsv4/%.obj: ../Ti/libraries/flash_api/f2803x/example_ccsv4/%.asm $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1210/ccs/tools/compiler/ti-cgt-c2000_22.6.0.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla2 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcrc -Ooff --fp_mode=relaxed --include_path="C:/Yahali/Nimrod/Sw1p5/Neck37/servo_drive_with_can_f28003x" --include_path="C:/ti/ccs1210/ccs/tools/compiler/ti-cgt-c2000_22.6.0.LTS/include" --advice:performance=all --define=_INLINE --define=_FLASH --define=BOOSTXL_8323RS_REVA_N --diag_suppress=10063 --diag_warning=225 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="Ti/libraries/flash_api/f2803x/example_ccsv4/$(basename $(<F)).d_raw" --obj_directory="Ti/libraries/flash_api/f2803x/example_ccsv4" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


