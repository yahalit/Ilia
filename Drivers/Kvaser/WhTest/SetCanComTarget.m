function [TargetCanId,RecStruct,GetStateList,CalibTable] = SetCanComTarget(entity,Side,servo,proj,RecStruct,CanId) 
% function SetCanComTarget(entity,Side,servo,Project,RecStruct)
% Set the default entity to communicate with
% entity: an entity struct, or a string 'Servo' or 'Intfc' or 'Neck';
% Side  : 'Right' or 'Left' 
% servo : Required only for wheel card ('Wheel' or 'Steering') 
% Project: 'Dual' for wheel/steering cards 'Single' for neck etc..
% RecStruct:  Data structure for project operations, to be modified 
% Returns: 
% TargetCanId: CAN ID for selected target 
% RecStruct: Modofied Data structure for project operations
% GetStateList: Variables list for the SGetState function 
% CalibTable  : Calibrations definition 


% global ProjectDir %#ok<*GVMIS> 
% global ProjectRoot 


% [NeckRoot,WheelRoot,IntfcRoot,NeckDir,WheelDir,IntfcDir] = GetProjDirInfo(); 
if nargin < 6
    CanId = [] ; 
end 

AxisName = [] ; 
cl = class( entity);   
if ( isequal(cl,'char') || isequal(cl,'string') )
    AxisName = servo ; % lower(char(entity)) ; 
end

baseEnt = 1 ; 
if isstruct(entity) 
    f = fieldnames(entity) ;
    if isempty( setdiff({'Entity','SigTable','SigNames','ProjList','Ver','ExeDir'},f )  )
        baseEnt = 0 ;
    end
end

if baseEnt
    if isequal(lower(proj(1:2)),'si')
        entity = evalin('base','EntityTableNeck')  ;
    else
        if ( isequal(cl,'char') || isequal(cl,'string') )
            entity = lower( char(entity) ) ; 
            if isequal(entity(1:2),'in')
                if nargin < 2 
                    error ( 'Requires 2 arguments'); 
                end 
                entity = evalin('base','EntityTableIntfc')  ;
            else
                if  isequal( entity(1:2),'se' ) 
                    if nargin < 3 
                        error ( 'Requires 3 arguments'); 
                    end 
                    entity = evalin('base','EntityTableWheel')  ;
                else
                    error ( 'Unidentified card')   ; 
                end 
            end 
        end 
    end
end

card   = entity.Entity ; 

if ~any( strcmp( lower(char(card)) ,{'servo' ,'intfc' ,'neck'} ) ) %#ok<STCI> 
    error('Entity points an unknown card' ) ;
end
% if isequal(lower(char(card)),'servo')
% %     ProjectRoot   = WheelRoot; 
% %     ProjectDir  = WheelDir ; 
% else
%     if isequal(lower(char(card)),'intfc')
% %         ProjectRoot   = IntfcRoot; 
% %         ProjectDir  = IntfcDir ;  
%     else
%         if isequal(lower(char(card)),'neck')
% %             ProjectRoot   = NeckRoot; 
% %             ProjectDir  = NeckDir ;  
%         else
%             error('Entity points an unknown card' ) ;
%         end
%     end
% end 
CalibTable  = entity.CalibTable  ; 

RecStruct.SigList = entity.SigTable ; 
RecStruct.SigNames = entity.SigNames ; 
RecStruct.ParList  = entity.ParTable ; 
RecStruct.ErrCodes   = entity.ErrCodes ;
RecStruct.CfgTable   = entity.CfgTable ;
RecStruct.CfgFullTable   = entity.CfgFullTable ;
RecStruct.Enums = entity.Enums ;
RecStruct.ParsXlsFile = entity.ParsXlsFile;
RecStruct.CfgXlsFile= entity.CfgXlsFile;
RecStruct.CalibCfg = entity.CalibCfg ; 

% Side = 'Left' ; 
NeckCanId = 30 ; 
if ~isempty(Side) && isequal( lower(Side(1)) , 'r') 
    IntfCanId = 24  ; 
    WhCanId = 22 ; 
    StCanId = 21 ; 
    RecStruct.Side = 'Right' ; 
else
    IntfCanId = 14  ; 
    WhCanId = 12 ; 
    StCanId = 11 ; 
    RecStruct.Side = 'Left' ; 
end

if isequal(lower(proj(1:2)),'si') 
    RecStruct.Card = 'Neck' ; 
    RecStruct.Axis = 'Neck' ; 
    if isempty(AxisName)
        TargetCanId = NeckCanId  ;
    else
        if contains(lower(AxisName),'neck')
            TargetCanId = NeckCanId  ;
        elseif  contains(AxisName,'tape')   
            TargetCanId = 35  ;
        elseif  contains(AxisName,'rotator')   
            TargetCanId = 34  ;
        elseif  contains(AxisName,'shifter')   
            TargetCanId = 36  ;
        else
            error('Unknow axis for CAN ID selection') ; 
        end
    end
else
    if isequal(lower(card(1:2)),'se') 
        if  isequal(lower( servo(1:2) ) ,'wh') 
            RecStruct.Card = 'Servo' ; 
            RecStruct.Axis = 'Wheel' ; 
            TargetCanId = WhCanId  ; 
        else
            if  isequal(lower( servo(1:2) ) ,'st') 
                RecStruct.Card = 'Servo' ; 
                RecStruct.Axis = 'Steering' ; 
                TargetCanId = StCanId  ; 
            else
                error ('Unknown axis') ;
            end
        end
    else
        if isequal(lower(card(1:2)),'in') 
            RecStruct.Card = 'Intfc' ; 
            RecStruct.Axis = [] ; 
            TargetCanId = IntfCanId  ; 
        else
            error('Unknown card') ; 
        end
    end
end


% Construct the SGetState  base signals 
if ~isempty(CanId)
    TargetCanId = CanId ; 
end

RecStruct.TargetCanId = TargetCanId ;
RecStruct.TargetCanId2 = TargetCanId ;

GetStateList = GetSignalIndex(entity.BaseSignals,[],RecStruct) ; 
RecStruct.AnalogsList =  GetSignalIndex(entity.AnalogsList,[],RecStruct) ;
end
