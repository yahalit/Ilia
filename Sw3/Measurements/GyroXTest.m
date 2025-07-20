r=Mat2Struct('GyroXTest.mat') ; 
% ImuOmega0: [1x680 double]
% ImuOmega1: [1x680 double]
% ImuOmega2: [1x680 double]
% ImuAcc0: [1x680 double]
% ImuAcc1: [1x680 double]
% ImuAcc2: [1x680 double]

dT = mean( diff ( r.t)) ;
tht = unwrap( atan2(r.ImuAcc1 , r.ImuAcc2)) ; 

figure(1) ; 
clf ;
plot( r.t , tht  ) ;

figure(2) ; 
clf ; 
plot( r.t ,cumsum(r.ImuOmega0) * dT , r.t , tht -tht(1) ) ;  