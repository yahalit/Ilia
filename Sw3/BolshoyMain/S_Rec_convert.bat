set DEBDIR=..\..\DebugDsp

erase %DEBDIR%\BolshoyBoot%1.s19

%HEX2000_PATH%\hex2000 -m %DEBDIR%\BolshoyBoot%1.out -romwidth 16 -memwidth 16 -datawidth 16 -o %DEBDIR%\BolshoyBoot%1.s19

erase %DEBDIR%\Boot280049_CPU%1.s19
type ..\..\PrefixS19ForBoot.txt > %DEBDIR%\Boot280049_CPU%1.s19
type %DEBDIR%\BolshoyBoot%1.s19 >> %DEBDIR%\Boot280049_CPU%1.s19
pause

