function AtpUpdateDbase() 



KvaserLibRoot = '..\..\..\SW3\Kvaser'; 

addpath([KvaserLibRoot,'\KvaserCom']);  
addpath([KvaserLibRoot,'\Recorder']);  
addpath([KvaserLibRoot,'\Util']);  
addpath('..\..\..\SW3\Matlab\JavaTreeWrapper' ) ; % Add path for tree GUI

addpath('..\ControlDes');  
addpath('..\Control');  
addpath('..\Emulation');  
addpath('.\Test');  
addpath('.\HelpDoc');  
addpath('..\Identification');  
addpath('..\DownloadFW' );  

[NeckRoot,WheelRoot,IntfcRoot,NeckDir,WheelDir,IntfcDir,~,ExeDir,EntityDir] = GetProjDirInfo();
% Get the versions 
neck_srcver  = GetSourceVersion([NeckDir,'Constdef.h']);
wheel_srcver = GetSourceVersion([WheelDir,'Constdef.h']);
Intfc_srcver = GetSourceVersion([IntfcDir,'Constdef.h']);


% Get the list of implemented SW projects 
NeckProjList = GetProjectsList(NeckDir) ; 
WheelProjList = GetProjectsList(WheelDir) ; 
if isempty(NeckProjList) || ~isequal(NeckProjList,WheelProjList) 
    error('Project lists are not identical between the neck and the wheel projects') ; 
end
ProjList = NeckProjList ;
%save ProjcectsList ProjList ;
save ([EntityDir, 'ProjcectsList'], "ProjList");  %OBB - changed directory to entity

CalibTableWheel = ReadCalibList([WheelDir,'CalibDefs.h']) ;
CalibTableIntfc = ReadCalibList([IntfcDir,'CalibDefs.h']) ;
CalibTableNeck = ReadCalibList([NeckDir,'CalibDefs.h']) ;

WhoIsThisProject = ReadWhoIsThisProject([WheelDir,'WhoIsThisProject.h']) ; 
[ParTableWheel,ParFullTableWheel] = ReadParTable([WheelDir,'ParRecords.h'],[],[WheelDir,'HwConfig.h'],WhoIsThisProject) ;
[ParTableIntfc,ParFullTableIntfc] = ReadParTable([IntfcDir,'ParRecords.h'],[]) ;
WhoIsThisProject = ReadWhoIsThisProject([NeckDir,'WhoIsThisProject.h']) ; 
[ParTableNeck,ParFullTableNeck] = ReadParTable([NeckDir,'ParRecords.h'],[],[NeckDir,'HwConfig.h'],WhoIsThisProject) ;

SigTableWheel = ReadSigList( [WheelDir,'ProjRecorderSignals.h'] , 0 , 1 );
SigTableIntfc = ReadSigList( [IntfcDir,'ProjRecorderSignals.h'] , 0 );
SigTableNeck  = ReadSigList( [NeckDir,'ProjRecorderSignals.h'] , 0 );


[CfgTableWheel,CfgFullTableWheel] = ReadCfgList( [WheelDir,'ConfigPars.h']  );
[CfgTableIntfc,CfgFullTableIntfc] = ReadCfgList( [IntfcDir,'ConfigPars.h']  );
[CfgTableNeck,CfgFullTableNeck]  = ReadCfgList( [NeckDir,'ConfigPars.h']  );


SigNamesWheel =cell(length(SigTableWheel),1)  ; 
for cnt = 1:length(SigNamesWheel) , SigNamesWheel{cnt} = SigTableWheel{cnt}{2} ; end 
ErrCodesWheel = ParseErrorCodes( [WheelRoot,'SelfTest\ErrorCodes.h']) ; 

SigNamesIntfc =cell(length(SigTableIntfc),1)  ; 
for cnt = 1:length(SigNamesIntfc) , SigNamesIntfc{cnt} = SigTableIntfc{cnt}{2} ; end 
ErrCodesIntfc = ParseErrorCodes( [IntfcRoot,'SelfTest\ErrorCodes.h']) ; 


SigNamesNeck =cell(length(SigTableNeck),1)  ; 
for cnt = 1:length(SigNamesNeck) , SigNamesNeck{cnt} = SigTableNeck{cnt}{2} ; end 
ErrCodesNeck = ParseErrorCodes( [NeckRoot,'SelfTest\ErrorCodes.h']) ; 

BaseSignalsWheel = {'LongException','StoVolts','Vdc','UserPos','OuterPos','ThetaElect','Iq','UserSpeed','MotorPos','EncCounts'} ;
BaseSignalsIntfc = {'LongException','fDebug0'} ;
BaseSignalsNeck  = {'LongException','StoVolts','Vdc','UserPos','OuterPos','ThetaElect','Iq','UserSpeed','MotorPos','EncCounts'} ;


LoopClosureModes  = ParseEnum( [WheelRoot,'Application\HwConfig.h'],'E_LoopClosureMode') ; 
SysModes  = ParseEnum( [WheelRoot,'Control\ClaDefs.h'],'E_SysMode') ; 
ReferenceModes = ParseEnum( [WheelRoot,'Application\ConstDef.h'],'E_ReferenceModes') ; 
CommutationModes  = ParseEnum( [WheelRoot,'Application\ConstDef.h'],'E_CommutationModes') ; 
SigRefTypes = ParseEnum( [WheelRoot,'Application\ConstDef.h'],'E_SigRefType') ; 
HomeMethodTypes = ParseEnum( [NeckRoot,'Application\ConstDef.h'],'EHM_HomeMethod') ;
HomeSwInUse = ParseEnum( [NeckRoot,'Application\ConstDef.h'],'EHM_SwInUse') ;
HomeDirection = ParseEnum( [NeckRoot,'Application\ConstDef.h'],'EHM_Direction') ;


EnumsWheel = struct('SysModes',SysModes,'LoopClosureModes',LoopClosureModes,'ReferenceModes',ReferenceModes,...
    'CommutationModes',CommutationModes,'SigRefTypes',SigRefTypes,...
    'HomeMethodTypes',HomeMethodTypes,'HomeSwInUse',HomeSwInUse,'HomeDirection',HomeDirection) ; 
EnumsIntfc = struct('SysModes',SysModes,'LoopClosureModes',LoopClosureModes,'ReferenceModes',ReferenceModes) ; 
EnumsNeck  = struct('SysModes',SysModes,'LoopClosureModes',LoopClosureModes,'ReferenceModes',ReferenceModes,...
    'CommutationModes',CommutationModes,'SigRefTypes',SigRefTypes,...
    'HomeMethodTypes',HomeMethodTypes,'HomeSwInUse',HomeSwInUse,'HomeDirection',HomeDirection) ; 
% 'SysModes',SysModes,'LoopClosureModes',LoopClosureModes,'ReferenceModes',ReferenceModes) ; 

AnalogsListWheel = {'PhaseCur0','PhaseCur1','PhaseCur2','PhaseCurAdc0','PhaseCurAdc1','PhaseCurAdc2'} ; 
AnalogsListIntf  = {'Pot1','RailSensor','BrakeVolts'} ; 
AnalogsListNeck = {'PhaseCur0','PhaseCur1','PhaseCur2','PhaseCurAdc0','PhaseCurAdc1','PhaseCurAdc2'} ; 


EntityTableWheel = struct('Entity','Servo','CalibTable',{CalibTableWheel},'ParTable',{ParTableWheel},'SigTable',{SigTableWheel},'CfgTable',CfgTableWheel,...
    'CfgFullTable',CfgFullTableWheel,...
    'SigNames',{SigNamesWheel},'ErrCodes',{ErrCodesWheel},'BaseSignals',{BaseSignalsWheel},'Enums',{EnumsWheel},'ParsXlsFile','WheelParams.xlsx',...
    'CfgXlsFile','WheelCfg.xlsx','AnalogsList',{AnalogsListWheel},'CalibCfg',struct('ProjType','Servo'),...
    'ProjList',WheelProjList,'ParFullTable',ParFullTableWheel ,'Ver',wheel_srcver,'ExeDir',ExeDir) ; 

EntityTableIntfc = struct('Entity','Intfc','CalibTable',{CalibTableIntfc},'ParTable',{ParTableIntfc},'SigTable',{SigTableIntfc},'CfgTable',CfgTableIntfc,...
    'CfgFullTable',CfgFullTableIntfc,...
    'SigNames',{SigNamesIntfc},'ErrCodes',{ErrCodesIntfc},'BaseSignals',{BaseSignalsIntfc},'Enums',{EnumsIntfc},'ParsXlsFile','WheelParams.xlsx',...
    'CfgXlsFile','IntfcCfg.xlsx','AnalogsList',{AnalogsListIntf},'CalibCfg',struct('ProjType','Intfc'),...
     'ParFullTable',ParFullTableIntfc,'Ver',Intfc_srcver,'ExeDir',ExeDir) ; 

EntityTableNeck = struct('Entity','Neck','CalibTable',{CalibTableNeck},'ParTable',{ParTableNeck},'SigTable',{SigTableNeck},'CfgTable',CfgTableNeck,...
    'CfgFullTable',CfgFullTableNeck,...
    'SigNames',{SigNamesNeck},'ErrCodes',{ErrCodesNeck},'BaseSignals',{BaseSignalsNeck},'Enums',{EnumsNeck},'ParsXlsFile','NeckParams.xlsx',...
    'CfgXlsFile','NeckCfg.xlsx','AnalogsList',{AnalogsListNeck},'CalibCfg',struct('ProjType','Neck'),...
    'ProjList',NeckProjList,'ParFullTable',ParFullTableNeck,'Ver',neck_srcver,'ExeDir',ExeDir) ; 

neck_srcver  = GetSourceVersion([NeckDir,'\Constdef.h']);
wheel_srcver = GetSourceVersion([WheelDir,'\Constdef.h']);
Intfc_srcver = GetSourceVersion([IntfcDir,'\Constdef.h']);

EntityTable = EntityTableNeck;
save([EntityDir,'NeckEntity_',num2str(neck_srcver) ],'EntityTable');
EntityTable = EntityTableWheel ;
save([EntityDir,'WheelEntity_',num2str(wheel_srcver) ],'EntityTable');
EntityTable = EntityTableIntfc ;
save([EntityDir,'IntfcEntity_',num2str(Intfc_srcver) ],'EntityTable');

ParTable2Xls(ParFullTableWheel,'WheelParamsB.xlsx','DefaultPars') ;
ParTable2Xls(ParFullTableIntfc,'IntfcParamsB.xlsx','DefaultPars') ;
ParTable2Xls(ParFullTableNeck,'NeckParamsB.xlsx','DefaultPars') ;
ParTable2Xls(CfgFullTableWheel,'WheelCfgB.xlsx','DefaultCfg') ;
ParTable2Xls(CfgFullTableIntfc,'IntfcCfgB.xlsx','DefaultCfg') ;
ParTable2Xls(CfgFullTableNeck,'NeckCfgB.xlsx','DefaultCfg') ;

copyfile('WheelParamsB.xlsx',[EntityDir,'WheelParams_',num2str(wheel_srcver),'.xlsx' ]) ; 
copyfile('IntfcParamsB.xlsx',[EntityDir,'IntfcParams_',num2str(Intfc_srcver),'.xlsx' ]) ; 
copyfile('NeckParamsB.xlsx',[EntityDir,'NeckParams_',num2str(neck_srcver),'.xlsx' ]) ; 

copyfile('WheelCfgB.xlsx',[EntityDir,'WheelCfg_',num2str(wheel_srcver),'.xlsx' ]) ; 
copyfile('IntfcCfgB.xlsx',[EntityDir,'IntfcCfg_',num2str(Intfc_srcver),'.xlsx' ]) ; 
copyfile('NeckCfgB.xlsx',[EntityDir,'NeckCfg_',num2str(neck_srcver),'.xlsx' ]) ; 

%save RecentVer neck_srcver wheel_srcver Intfc_srcver EntityDir
save ([EntityDir, 'RecentVer.mat'], "neck_srcver" , "wheel_srcver" , "Intfc_srcver");

%save (EntityDirName, "EntityTableWheel" , "EntityTableIntfc" , "EntityTableNeck");
end

