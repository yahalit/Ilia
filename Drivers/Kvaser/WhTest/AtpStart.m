global DataType %#ok<*GVMIS> 
global TargetCanId 
if exist('RecStruct','var') 
    clear RecStruct ; 
end 
global RecStruct 
global AtpCfg 

global LsTimer 

global BitKillTime 
global DispT
global TmMgrTS
global GuiTimerPeriod 
global GetStateList
% global GetAnalogsList 
global CalibTable 

global EntityTableWheel 
global EntityTableIntfc 
global EntityTableNeck 

global ActiveSetProj 


verbose = 0 ; 
% global ManipCalibFields

BitKillTime = clock ; %#ok<CLOCK> 

% ManipCalibFields = cell( 1,18) ; 
% for cnt = 1:18 
%     ManipCalibFields{cnt} = ['ParManipArr',num2str(cnt)] ; 
% end 
% ManipCalibFields(1:7) = {'RDoorCenter','RDoorGainFac','LDoorCenter','LDoorGainFac','ShoulderCenter','ElbowCenter','WristCenter'} ;

% CAN IDs of the robot: 
% BOOT of INTFC: 36 
% Boot of neck servo 38
% Boot of wheel servo 39 

if ( ~isa(LsTimer,'timer') ) 
    LsTimer =  timer(...
    'ExecutionMode', 'fixedSpacing', ...       % Run timer repeatedly.
    'Period', 10e-2  ) ; 
end

KvaserLibRoot = '..\..\..\SW3\Kvaser'; 

% addpath('..\NKTest');  
% addpath('..\NKTest\ATP');  

if ~isdeployed %change by OBB to determine if run compiled on not.
    addpath([KvaserLibRoot,'\KvaserCom']);  
    addpath([KvaserLibRoot,'\Recorder']);  
    addpath([KvaserLibRoot,'\Util']);  
    addpath([KvaserLibRoot,'\DownloadFW']);  

    addpath('..\..\..\SW3\Matlab\JavaTreeWrapper' ) ; % Add path for tree GUI
    addpath('..\..\..\SW3\Matlab\jsonlab-1.5') ; % Add path for JSON 
    addpath('..\..\..\SW3\Matlab\Rgb') ; % Add path for JSON 
    addpath('..\..\..\SW3\Kvaser\Common');
    addpath('..\ControlDes');  
    addpath('..\Control');  
    addpath('..\Emulation');  
    addpath('.\Test');  
    addpath('.\HelpDoc');  
    addpath('..\Identification');  
    addpath('..\DownloadFW' );  
end

if ~isdeployed()
    EntityDir = '..\..\Entity\'; 
else
    EntityDir = '..\..\Drivers Files\Entity\'; 
end

CreateStruct =  struct('Interpreter','tex','WindowStyle' , 'modal') ; 
load([EntityDir, 'RecentVer.mat']);

MatDir   = '.\Mat\'; 

if isempty(GuiTimerPeriod) || ~isnumeric(GuiTimerPeriod) || GuiTimerPeriod < 0.1 || GuiTimerPeriod > 10 
    GuiTimerPeriod = 0.4 ; 
end 

AtpCfgTemp = struct ( 'FetchRetry' , 3 ,  'FetchRetryCnt' , 0 , 'DefaultCom', @NoneCom , 'GuiTimerPeriod' , GuiTimerPeriod ,'CanChannelAvailable',0 , 'CommType','None','Suspend',0) ; 


% global GoRouteTimer ; 
% GoRouteTimer = timer('ExecutionMode', 'fixedSpacing','Period', 0.3,'TimerFcn', @yobt, 'UserData' , 'GoRouteTimer');


if ~exist('DispT','var') || ~isa(DispT,'DlgTimerObj')
    DispT  = DlgTimerObj ; % Generate an object that owns a timer 
    TmMgrTS = TimerManagerObj('WHBIT'); % This time mahager object issues timing events for all the dialogs
    TmMgrTS.listenToTimer(DispT) ; 
end 

% [NeckRoot,WheelRoot,IntfcRoot,NeckDir,WheelDir,IntfcDir,~,ExeDir] = GetProjDirInfo();

DataType = GetDataType() ; % struct( 'long' , 0 , 'float', 1 , 'short' , 2 , 'char' , 3 ,'string', 9 ,'lvec' , 10 ,'fvec' , 11 , 'ulvec' , 20 ) ; 

% List of hardware projects

AtpCfgTemp.HwProjectsList = struct('NeckDrvBootProjId',hex2dec('92f0'),...
    'NeckDrvOpProjId',hex2dec('9300'),...
    'IntfcDrvBootProjId',hex2dec('98f0'),...
    'IntfcDrvOpProjId',hex2dec('9900'),...
    'WheelDrvBootProjId',hex2dec('93f0'),...
    'WheelDrvOpProjId',hex2dec('9400') , ... 
    'SteerDrvBootProjId',hex2dec('94f0'),...
    'SteerDrvOpProjId',hex2dec('9500') ) ;


% Get the list of implemented SW projects 
x = load([EntityDir, 'ProjcectsList']); %OOB - changed directory to entity
AtpCfgTemp.ProjList = x.ProjList ;  

if ~isfield(AtpCfg,'Done') || ~isequal( AtpCfg.Done , 1 ) 
    ActiveSetProj = 0 ;   
    try 
        pp = load([MatDir, 'ProjSelectOutput.mat']); %OBB
        pp = pp.data ; 
        proj = pp.Proj ; 
        card = pp.Card ;
        axis = pp.Axis ; 
        side = pp.Side ; 
    catch
        AtpCfg.Done = 0; 
        data = struct('Card','Neck','Axis','Neck','Proj','Single','Side','None','CanId',34,'ProjId',37632);
		%save ProjSelectOutput.mat data 
        save ([MatDir, 'ProjSelectOutput.mat'], 'data'); %OBB
        %pp = load('ProjSelectOutput.mat') ;
        pp = load([MatDir, 'ProjSelectOutput.mat']); %OBB
        pp = pp.data ; %OBB: added line
        proj = pp.Proj ; 
        card = pp.Card ; 
        axis = pp.Axis ;  
        side = pp.Side ; 
    end
else
%if isfield(AtpCfg,'Done')
    proj = RecStruct.Proj ; 
    card = RecStruct.Card ; 
    axis = RecStruct.Axis ; 
    side = RecStruct.Side ; 
end 


RecStruct = struct('Gap',1,'Len',300,'TrigSigName','UsecTimer','TrigSig',26,'TrigVal',2,'TrigType',0,'Signals',[1,2,3],...
    'Sync2C', 0 ,'PreTrigCnt', 150 , ...
    'Card',card,'Axis',axis,'Side',side,'Proj',proj) ; % , ... %'SigList' ,{SigTable}, 'SigNames' , {SigNames} , ...

% Get the card versions , just for now 
EntityTableWheel = GetEntityByVersion('Wheel',wheel_srcver,EntityDir,pwd) ; 
EntityTableNeck = GetEntityByVersion('Neck',neck_srcver,EntityDir,pwd) ; 
EntityTableIntfc= GetEntityByVersion('Intfc',Intfc_srcver,EntityDir,pwd) ; 

WhRecStruct  = struct('Proj','Dual','Card', 'Servo','Axis','Wheel','Side','Right')  ; 
[~,WhRecStruct,WhGetStateList,WhCalibTable] = SetCanComTarget(WhRecStruct.Card,WhRecStruct.Side,WhRecStruct.Axis,WhRecStruct.Proj,WhRecStruct,22);
StRecStruct  = struct('Proj','Dual','Card', 'Servo','Axis','Steering','Side','Right')  ; 
[~,StRecStruct,StGetStateList,StCalibTable] = SetCanComTarget(StRecStruct.Card,StRecStruct.Side,StRecStruct.Axis,StRecStruct.Proj,StRecStruct,21);
IntfcRecStruct  = struct('Proj','Dual','Card', 'Intfc','Axis','None','Side','Right')  ; 
[~,IntfcRecStruct,IntfcGetStateList,IntfcCalibTable] = SetCanComTarget(IntfcRecStruct.Card,IntfcRecStruct.Side,IntfcRecStruct.Axis,IntfcRecStruct.Proj,IntfcRecStruct,24);

% Setup the communication adapter
KvaserPortsDescriptor = IdentifyMyKvaser() ; 
[nCan,~]  = size(KvaserPortsDescriptor) ; 
if nCan == 0 
    AtpCfgTemp.CanChannelAvailable = 0 ; 
    msgbox({'\fontsize{12}Can channel not available','Cannot find Kvaser CAN adapter',...
        'Use CommSetup to setup UDP'},CreateStruct) ; 
end
if nCan > 0 
    if ~isfield(AtpCfg,'Done') || ~isequal( AtpCfg.Done , 1 ) ||  ~isfield(AtpCfg,'Port') 
        port = SelectCanPort(KvaserPortsDescriptor) ; 
    else
        port = AtpCfg.Port ; 
    end 
    try
        KvaserCom(2); 
        success = KvaserCom(1,[500000,port]) ; 
        AtpCfgTemp.CanChannelAvailable = 1 ; 
        AtpCfgTemp.Port = port ;
    catch 
        AtpCfgTemp.CanChannelAvailable = 0 ; 
        uiwait( msgbox({'\fontsize{12}Can channel not available','Cannot find Kvaser CAN adapter'},CreateStruct) ) ; 
    end
end



% try
%     success = KvaserCom(1) ; 
%     AtpCfgTemp.CanChannelAvailable = 1 ; 
% catch 
%     AtpCfgTemp.CanChannelAvailable = 0 ; 
%     uiwait( msgbox({'\fontsize{12}Can channel not available','Cannot find Kvaser CAN adapter'},CreateStruct) ) ; 
% end

SlaveDetectComplete = [] ; 
AtpCfgTemp.IsBoot = 0 ; 
if AtpCfgTemp.CanChannelAvailable
    CommType = 'CAN' ; 
    AtpCfgTemp.DefaultCom = @KvaserCom ; 
    DetectedSlaves = KvaserCom(32) ; 
    
    if isempty(DetectedSlaves) 
        disp('No CAN slaves found, cannot configure communication') ; 
    else

        [DetectedSlaves,misfit] = GetDetectedSlavePars(DetectedSlaves) ; 
        if ~isempty(misfit) 
            msg = {'There is a problem in matching project ID and CAN ID';'This can be a result of mismatching Identities';'Of the wheel steering and interface';'In the same assembly'; ...
                'or be a transient after identity burn';'Roobt is not operational';'You need to power ON/Off the robot'};
            h  = errordlg(msg,'ProjId:CanId misfit') ; 
            while isvalid(h) 
                set(h,'WindowStyle' , 'modal') ;
                pause(0.2) ;
            end
        end

        slist = sort( DetectedSlaves(:,1)) ; 
        if ~isequal(slist,unique(slist)) 
            disp(slist) ; 
            error('Detected Slaves list has non unique IDs')  ; 
        end

        nSlaves = size(DetectedSlaves,1) ;
        IsNeckBoot = 0 ; 
        IsIntfcBoot = 0  ; IntBootCnt = 0 ; 
        IsWheelBoot = 0  ; WhBootCnt = 0  ; 
        IsSteerBoot = 0  ; SteerBootCnt = 0  ; 
        
        for cnt = 1:nSlaves
            NextProjId = DetectedSlaves(cnt,1); 

            if  NextProjId > length(AtpCfgTemp.ProjList )+ 32 
                % That is a boot without pre-configuration 
                switch NextProjId
                    case 40 % Interface circuit , right 
                    case 41 % Interface circuit , left 

                    case 65 % PROJ_TYPE_BOOT_NECK
                        AtpCfgTemp.IsBoot = 1 ; 
                        IsNeckBoot = IsNeckBoot + 1 ; 
                        if IsNeckBoot > 1 
                            error('A Neck boot is detected; if accessing a boot, only one slave should be present') ; 
                        end 
                    case 66 % PROJ_TYPE_BOOT_WHEEL
                        AtpCfgTemp.IsBoot = 1 ; 
                        IsWheelBoot = IsWheelBoot + 1 ; 
                        WhBootCnt   = cnt  ; 
%                         if ~isequal(nSlaves,3) || any(DetectedSlaves(:,2) == AtpCfgTemp.HwProjectsList.IntfcDrvOpProjId ) 
%                             error('A wheel boot is detected; if accessing this boot, only one this boot and an operational interface unit should be present') ; 
%                         end 
                    case 67 % PROJ_TYPE_BOOT_INTFC
                        AtpCfgTemp.IsBoot = 1 ; 
                        IsIntfcBoot = IsIntfcBoot + 1 ; 
                        IntBootCnt  = cnt ; 
                        switch nSlaves
                            case 1 
                            case 2
                                error('An interface boot is detected; if accessing this boot, only one this boot and a full wheel unit should be present') ; 
                            case 3
                                % This is the normal case. We dont care about the type of the wheels, we are not going to speak
                                % with them anyway.
%                                 if ~( any(DetectedSlaves(:,2) == AtpCfgTemp.HwProjectsList.WheelDrvOpProjId ) || any(DetectedSlaves(:,2) == AtpCfgTemp.HwProjectsList.WheelDrvBootProjId ))
%                                     error('An interface boot is detected; if accessing this boot, only one this boot and a wheel unit should be present') ; 
%                                 end 
                            otherwise
                                    error('An interface boot is detected; if accessing this boot, only one this boot and a wheel unit should be present') ; 
                        end 
                    case 68 % PROJ_TYPE_BOOT_STEER
                        AtpCfgTemp.IsBoot = 1 ; 
                        IsSteerBoot = IsSteerBoot + 1 ; 
                        SteerBootCnt   = cnt ; 
                    otherwise

                        error('A detected slave is out of range for the projects list') ; 
                end 
            end 
        end

        % Test that wheel/interface booting presence is acceptable 
        if IsIntfcBoot
            if IsIntfcBoot > 1 || nSlaves > 3 
                error('Detected unacceptable number of boot slaves for interface FW loading') ; 
            end
            DetectedSlaves = DetectedSlaves(IntBootCnt,:) ; 
        else 
            if IsWheelBoot > 1 || IsSteerBoot > 1
                error ('Detected unacceptable number of boot slaves for wheel FW loading') ; 
            end
            if IsWheelBoot
                DetectedSlaves = DetectedSlaves(WhBootCnt,:) ; 
            elseif IsSteerBoot
                DetectedSlaves = DetectedSlaves(SteerBootCnt,:) ; 
            end 
        end 

        ProjListWithBoot = strings(1,68); 
        nproj = length(AtpCfgTemp.ProjList) ; 
        ProjListWithBoot(1:nproj) = AtpCfgTemp.ProjList ; 

        for bc=1:length(AtpCfgTemp.ProjList) 
            ProjListWithBoot(bc+20) = AtpCfgTemp.ProjList(bc) + "_BOOT"; 
        end

        ProjListWithBoot(38) = "PROJ_TYPE_WH_INTFC_R_BOOT" ;
        ProjListWithBoot(39) = "PROJ_TYPE_WH_INTFC_L_BOOT" ;
        ProjListWithBoot(40) = "PROJ_TYPE_SERVO_INTFC_R" ;
        ProjListWithBoot(41) = "PROJ_TYPE_SERVO_INTFC_L" ;
        ProjListWithBoot(65:68) = ["PROJ_TYPE_BOOT_NECK","PROJ_TYPE_BOOT_WHEEL","PROJ_TYPE_BOOT_INTFC","PROJ_TYPE_BOOT_STEER"] ; 
        AtpCfgTemp.ProjListWithBoot = ProjListWithBoot ;
        if ~isfield(AtpCfg,'Done') || ~isequal(AtpCfg.Done,1) 
            ActiveSetProj = 0 ; 
            disp('Please use the dialog box to select the project') ; 
            psfig = ProjSelect(ProjListWithBoot,DetectedSlaves  ) ; 
            while isvalid(psfig) 
                try
                set(psfig.ProjectselectorUIFigure,'WindowStyle','alwaysontop');
                catch
                end
                pause(0.2) ; 
            end
        end 
% Setup the communications target    SetCanComTarget(entity,Side,servo,proj,RecStruct) 
        pp = load([MatDir, 'ProjSelectOutput.mat']); %OBB
        pp = pp.data ; 
        proj = pp.Proj ; 
        card = pp.Card ;
        axis = pp.Axis ; 
        side = pp.Side ; 
        try 
            swver = pp.SwVer ; 
            if ~isempty(swver) && swver 
                switch lower(card)
                    case 'servo'
                       wheel_srcver =  swver ;
                    case 'intfc'
                        Intfc_srcver = swver ; 
                    case 'neck'
                        neck_srcver = swver ; 
                end
            end
        catch 
            swver = 0 ; 
        end
        RecStruct.ProjId = pp.ProjId ; 
        RecStruct.Proj  = proj; 
        RecStruct.Card  = card; 
        RecStruct.Axis  = axis; 
        RecStruct.Side  = side; 
        RecStruct.TargetCanId = pp.CanId ; 
        RecStruct.SwVer = swver ; 
        [TargetCanId,RecStruct,GetStateList,CalibTable] = SetCanComTarget(card,side,axis,proj,RecStruct,RecStruct.TargetCanId);
        SlaveDetectComplete = 1 ; 
    end
else
    CommType = 'None' ; 
    AtpCfgTemp.DefaultCom = @NoneCom ; 
    DetectedSlaves = [] ; 
end

% Store update entities 
try 
EntityTableWheel = GetEntityByVersion('Wheel',wheel_srcver,EntityDir,pwd) ; 
catch 
    disp('Cant load wheel entity, will activities will be limited to FW loading') ; 
end
try 
    EntityTableNeck = GetEntityByVersion('Neck',neck_srcver,EntityDir,pwd) ; 
catch 
    disp('Cant load neck entity, will activities will be limited to FW loading') ; 
end
try 
    EntityTableIntfc= GetEntityByVersion('Intfc',Intfc_srcver,EntityDir,pwd) ; 
catch 
    disp('Cant load interface entity, will activities will be limited to FW loading') ; 
end
%save Entities EntityTableWheel EntityTableIntfc EntityTableNeck 
try
save ([MatDir, 'Entities'], 'EntityTableWheel', 'EntityTableIntfc' ,'EntityTableNeck'); 
catch
end


AtpCfgTemp.CommType = CommType; 
AtpCfgTemp.Udp = struct('On',0) ; 
AtpCfgTemp.Support = struct('Udp',0,'BlockUpload',1) ;

if exist('AtpCfg','var') && isfield(AtpCfg,'Done') && AtpCfg.Done 
    SlaveDetectComplete = 1 ; 
end
AtpCfg = AtpCfgTemp ; 
if ~isempty(SlaveDetectComplete)
    AtpCfg.Done = 1 ; 
end

