xxx = load( 'ImuVsEncPot.mat') ; 
r = xxx.xxx.RecVec ; 
t = xxx.xxx.t; 
LPot = r(1,:) ; 
RPot = r(2,:) ; 
NEnc  = r(3,:) ;
ImuAcc0 = r(4,:) ; 
ImuAcc1 = r(5,:) ; 
ImuAcc2 = r(6,:) ; 


ang = atan2( ImuAcc1,-ImuAcc2   ) ; 
H1 = [NEnc(:) , NEnc(:)*0+1] ; 
tht1 = (H1' * H1) \ H1' * ang(:) ; 


H2 = [RPot(:) , RPot(:)*0+1] ; 
tht2 = (H2' * H2) \ H2' * ang(:) ; 

H3 = [LPot(:) , LPot(:)*0+1] ; 
tht3 = (H3' * H3) \ H3' * ang(:) ; 

plot ( t , ang , t , H1 * tht1  , t , H2 * tht2 , t , H3 * tht3) ; legend( 'IMU' , 'Enc' , 'Lpot' , 'Rpot' ) ; 