del .\Exe\*.out
del .\Exe\*.hex


rem copy .\BolshoyMain\CcsPrj\CPU1\DebugDsp\BolshoyMain.hex .\Exe
rem copy .\BolshoyMain\CcsPrj\CPU1\DebugDsp\BolshoyMain.out .\Exe
rem copy .\BolshoyManipCpu2\CPU2\DebugDsp\BolshoyManip.hex .\Exe
rem copy .\BolshoyManipCpu2\CPU2\DebugDsp\BolshoyManip.out .\Exe

call  BolshoyMainRelease
call  BolshoyManipRelease

copy .\Malinki\Debug\Malinki.hex .\Exe
copy .\PDSoft\Debug\NimrodPD.hex .\Exe

copy .\Malinki\Debug\Malinki.out .\Exe
copy .\PDSoft\Debug\NimrodPD.out .\Exe

copy .\BolshoyBoot\CcsPrj\CPU1\DebugDsp\BolshoyBoot.out .\Exe
copy .\BolshoyBoot2\CPU2\DebugDsp\BolshoyBoot2.out .\Exe
copy .\Loader377\Boot377\Debug\Boot377.out .\Exe\PdBoot.out
copy .\MalinkiBoot\Debug\MalinkiBoot.out .\Exe

copy .\Exe\*.* ..\Sw1p5Release\SquidMC\Exe
dir .\Exe

pause 
