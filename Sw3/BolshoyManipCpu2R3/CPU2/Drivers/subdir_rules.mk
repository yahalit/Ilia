################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
Drivers/%.obj: ../Drivers/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=fpu64 --idiv_support=idiv0 --tmu_support=tmu0 --fp_mode=relaxed --include_path="C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include" --advice:performance=all --define=_DEBUG --define=CFG_AXIS_CPU2 --define=LARGE_MODEL --define=CPU2=1 -g --diag_suppress=880 --diag_suppress=232 --display_error_number --issue_remarks --quiet --gen_func_subsections=on --abi=eabi -k --preproc_with_compile --preproc_dependency="Drivers/$(basename $(<F)).d_raw" --obj_directory="Drivers" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

Drivers/%.obj: ../Drivers/%.asm $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=fpu64 --idiv_support=idiv0 --tmu_support=tmu0 --fp_mode=relaxed --include_path="C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include" --advice:performance=all --define=_DEBUG --define=CFG_AXIS_CPU2 --define=LARGE_MODEL --define=CPU2=1 -g --diag_suppress=880 --diag_suppress=232 --display_error_number --issue_remarks --quiet --gen_func_subsections=on --abi=eabi -k --preproc_with_compile --preproc_dependency="Drivers/$(basename $(<F)).d_raw" --obj_directory="Drivers" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

Drivers/%.obj: ../Drivers/%.cla $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=fpu64 --idiv_support=idiv0 --tmu_support=tmu0 --fp_mode=relaxed --include_path="C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include" --advice:performance=all --define=_DEBUG --define=CFG_AXIS_CPU2 --define=LARGE_MODEL --define=CPU2=1 -g --diag_suppress=880 --diag_suppress=232 --display_error_number --issue_remarks --quiet --gen_func_subsections=on --abi=eabi -k --preproc_with_compile --preproc_dependency="Drivers/$(basename $(<F)).d_raw" --obj_directory="Drivers" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


