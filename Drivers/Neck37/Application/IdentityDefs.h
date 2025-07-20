// Flags =  2 float , 4 unsigned , 8 short , 64 dfloat (sim only)  (see more options in the CCmdMode definition)
        { 0 , GetOffsetC(PassWord,CCalib),0.0f}, //1:PassWord [Admin] {Need be 0x12345600 + rec len = 32 }
        { 0 , GetOffsetC(HardwareRevision,CCalib),0.7f},//2:HardwareRevision [Hardware] {Hardware revision (bytes) :  PCB rev , PCB subrev , ECR , Sub ECR }
        { 0 , GetOffsetC(ProductionDate,CCalib),0.7f} ,//3:ProductionDate [Production] {(YYYY-2000 ) , MM , DD Each a byte }
        { 0 , GetOffsetC(RevisionDate,CCalib),2.5f} ,//4:RevisionDate [Production] {(YYYY-2000 ) , MM , DD Each a byte}
        { 0 , GetOffsetC(HardwareId,CCalib),2.5f} ,//5:HardwareId [Production] {HardwareId Project identifier}
        { 0 , GetOffsetCC(ProductionBatchCode,0,CCalib),1.01f} ,//6:ProductionBatchCode [Production] {Code of production batch}
        { 0 , GetOffsetCC(ProductionBatchCode,1,CCalib),1.01f} ,//7:ProductionBatchCode [Production] {Code of production batch}
        { 0 , GetOffsetCC(IdentitySpare,6,CCalib),1.01f} ,//9:IdentitySpare6 [FSpare] {Spare floats}
        { 0 , GetOffsetCC(IdentitySpare,5,CCalib),1.01f} ,//10:IdentitySpare5 [FSpare] {Spare floats}
        { 0 , GetOffsetCC(IdentitySpare,4,CCalib),1.01f} ,//11:IdentitySpare4 [FSpare] {Spare floats}
        { 0 , GetOffsetCC(IdentitySpare,3,CCalib),1.01f} ,//12:IdentitySpare3 [FSpare] {Spare floats}
        { 0 , GetOffsetCC(IdentitySpare,2,CCalib),1.01f} ,//13:IdentitySpare2 [FSpare] {Spare floats}
        { 0 , GetOffsetCC(IdentitySpare,1,CCalib),1.01f} ,//14:IdentitySpare1 [FSpare] {Spare floats}
        { 0 , GetOffsetCC(IdentitySpare,0,CCalib),1.01f} ,//15:IdentitySpare0 [FSpare] {Spare floats}
        { 0 , GetOffsetC(IdentityRevision,CCalib),0.0f}, //1:IdentityRevision [Admin] {Identity set revision }
