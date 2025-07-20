################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
src_device/f28003x_codestartbranch.obj: C:/ti/ccs1210/ccs/eclipse/C2000WARE_DEVICE_SUPPORT_ROOT/common/source/f28003x_codestartbranch.asm $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1210/ccs/tools/compiler/ti-cgt-c2000_22.6.0.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --tmu_support=tmu0 -O2 --fp_mode=relaxed --include_path="C:/Yahali/Nimrod/SwG3/Neck37/servo_drive_with_can_f28003x" --include_path="/common/include/" --include_path="/headers/include/" --include_path="C:/ti/ccs1210/ccs/tools/compiler/ti-cgt-c2000_22.6.0.LTS/include" --advice:performance=all --define=_INLINE --define=_FLASH --define=BOOSTXL_8323RS_REVA_N --diag_suppress=10063 --diag_warning=225 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="src_device/$(basename $(<F)).d_raw" --obj_directory="src_device" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

src_device/f28003x_globalvariabledefs.obj: C:/ti/ccs1210/ccs/eclipse/C2000WARE_DEVICE_SUPPORT_ROOT/headers/source/f28003x_globalvariabledefs.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1210/ccs/tools/compiler/ti-cgt-c2000_22.6.0.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --tmu_support=tmu0 -O2 --fp_mode=relaxed --include_path="C:/Yahali/Nimrod/SwG3/Neck37/servo_drive_with_can_f28003x" --include_path="/common/include/" --include_path="/headers/include/" --include_path="C:/ti/ccs1210/ccs/tools/compiler/ti-cgt-c2000_22.6.0.LTS/include" --advice:performance=all --define=_INLINE --define=_FLASH --define=BOOSTXL_8323RS_REVA_N --diag_suppress=10063 --diag_warning=225 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="src_device/$(basename $(<F)).d_raw" --obj_directory="src_device" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


