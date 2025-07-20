################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
build-1443799137: ../WheelInterface.syscfg
	@echo 'Building file: "$<"'
	@echo 'Invoking: SysConfig'
	"C:/ti/ccs1250/ccs/utils/sysconfig_1.18.0/sysconfig_cli.bat" -s "C:/ti/c2000/C2000Ware_4_01_00_00/.metadata/sdk.json" -d "F28003x" --script "C:/Yahali/Nimrod/Drivers/WheelIntfc37/WheelInterface.syscfg" -o "syscfg" --package 48PT --part F28003x_48PT --compiler ccs
	@echo 'Finished building: "$<"'
	@echo ' '

syscfg/board.c: build-1443799137 ../WheelInterface.syscfg
syscfg/board.h: build-1443799137
syscfg/pinmux.csv: build-1443799137
syscfg/clb_config.h: build-1443799137
syscfg/clb_config.c: build-1443799137
syscfg/clb.dot: build-1443799137
syscfg/clb_sim.cpp: build-1443799137
syscfg/c2000ware_libraries.cmd.genlibs: build-1443799137
syscfg/c2000ware_libraries.opt: build-1443799137
syscfg/c2000ware_libraries.c: build-1443799137
syscfg/c2000ware_libraries.h: build-1443799137
syscfg/: build-1443799137

syscfg/%.obj: ./syscfg/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla2 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcrc -Ooff --fp_mode=relaxed --include_path="C:/Yahali/Nimrod/Drivers/WheelIntfc37" --include_path="C:/ti/c2000/C2000Ware_4_01_00_00" --include_path="C:/Yahali/Nimrod/Drivers/WheelIntfc37/device" --include_path="C:/ti/c2000/C2000Ware_4_01_00_00/driverlib/f28003x/driverlib" --include_path="C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include" --define=DEBUG --define=_FLASH --diag_suppress=10063 --diag_warning=225 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="syscfg/$(basename $(<F)).d_raw" --include_path="C:/Yahali/Nimrod/Drivers/WheelIntfc37/CPU1_FLASH/syscfg" --obj_directory="syscfg" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

syscfg/%.obj: ./syscfg/%.cpp $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla2 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcrc -Ooff --fp_mode=relaxed --include_path="C:/Yahali/Nimrod/Drivers/WheelIntfc37" --include_path="C:/ti/c2000/C2000Ware_4_01_00_00" --include_path="C:/Yahali/Nimrod/Drivers/WheelIntfc37/device" --include_path="C:/ti/c2000/C2000Ware_4_01_00_00/driverlib/f28003x/driverlib" --include_path="C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include" --define=DEBUG --define=_FLASH --diag_suppress=10063 --diag_warning=225 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="syscfg/$(basename $(<F)).d_raw" --include_path="C:/Yahali/Nimrod/Drivers/WheelIntfc37/CPU1_FLASH/syscfg" --obj_directory="syscfg" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


