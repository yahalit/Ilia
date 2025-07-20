################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
AXIS_CPU1/%.obj: ../AXIS_CPU1/%.asm $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=fpu64 --idiv_support=idiv0 --tmu_support=tmu0 --fp_mode=relaxed --include_path="C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include" --advice:performance=all --define=_DEBUG --define=LARGE_MODEL -g --diag_suppress=880 --diag_suppress=232 --display_error_number --issue_remarks --quiet --gen_func_subsections=on --abi=eabi -k --preproc_with_compile --preproc_dependency="AXIS_CPU1/$(basename $(<F)).d_raw" --obj_directory="AXIS_CPU1" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


