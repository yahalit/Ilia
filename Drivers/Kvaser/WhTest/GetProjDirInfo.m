function [NeckRoot,WheelRoot,IntfcRoot,NeckDir,WheelDir,IntfcDir,FracasDir,ExeDir,EntityDir] = GetProjDirInfo()
FracasDir     =  '..\..\..\Hardware\Fracas\'; 
NeckRoot   =  '..\..\Neck37\'; 
WheelRoot   = '..\..\Wheel37\'; 
IntfcRoot   = '..\..\WheelIntfc37\'; 
WheelDir  = [WheelRoot,'Application\'] ; % 'C:\Nimrod\BHT\kvaser\PdTest\CCS';
IntfcDir  = [IntfcRoot,'Application\'] ; % 'C:\Nimrod\BHT\kvaser\PdTest\CCS';
NeckDir  = [NeckRoot,'Application\'] ; 
ExeDir   = '..\..\Exe\'; 
EntityDir   = '..\..\Entity\'; 
end