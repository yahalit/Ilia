// DO NOT change the indexing of the parameters !!!!
{& ClaControlPars.EncoderWhMotCountsFullRev,1, 1.0f,1.0e6f,10000.0f} ,//  !< Encoder resolution wheel motor
   {& ClaControlPars.EncoderStCountsFullRev,2, 1.0f,1.0e6f,4000.0f} ,//  !< Encoder resolution steering motor
   {& ClaControlPars.EncoderWhCountsFullRev,3, 1.0f,1.0e6f,4537.0f} ,//  !< Encoder resolution, wheel, load
   {& ClaControlPars.Rev2PosWhMot,4, 0.00001f,1.0e6f,1.0f} ,// !< Ratio revolutions to position, wheel motor encoder
   {& ClaControlPars.Rev2PosSt,5, 1.0e-6f,1.0e6f,1.0f} ,// !< !< Ratio revolutions to position, steering motor encoder
   {& ClaControlPars.Rev2PosWh,6, 1.0e-6f,1.0e6f,1.0f} ,// !< !< Ratio revolutions to position, wheel encoder
   {& ClaControlPars.SpeedFilterCst,7, 0.1f,1.0f,0.25f} ,// !< Speed filter
   {& ClaControlPars.PotFilterCst,8, 0.0000001f,1.0e6f,0.12f} ,// !< Potentiometer filter
   {& ClaControlPars.RailSenseFilterCst,9, 0.0000001f,1.0e6f,0.12f} ,// !< Rail sensor filter
   {& ClaControlPars.MinPotRef,10, 0.0000001f,1.0e6f,3.0f} ,// !< Minimum acceptable potentiometer reference

