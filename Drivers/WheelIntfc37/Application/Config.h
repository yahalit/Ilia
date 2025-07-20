/*
 * Config.h
 *
 *  Created on: May 6, 2024
 *      Author: yahal
 */

#ifndef APPLICATION_CONFIG_H_
#define APPLICATION_CONFIG_H_

/*
    float ProjSpecificDataRevision  ;
    float WhMotEncoderCountsFullRev ; // !< # Wheel Motor encoder counts in full revolution
    float StMotEncoderAuxCountsFullRev ; // !< # Steering encoder counts in full revolution
    float AuxEncoderAuxCountsFullRev ; // !< #Aux encoder counts in full revolution
    short ProjIndex ;       // !< Index for project
    short CanId     ;       // !< CAN ID for project
*/




#ifdef CONFIG_OWNER
// If you add new project: Dont forget to update also ProjSpecificCtl[Proj]

    const struct CProjSpecificData ProjSpecificData[] =
    {
     {.ProjIndex = 0 ,// PROJ_UNDEFINED
      .ProjSpecificDataRevision = HwConfigRevision,
      .WhMotEncoderCountsFullRev =  10000,
      .StMotEncoderAuxCountsFullRev =  10000,
      .AuxEncoderAuxCountsFullRev =  10000,
      .CanId = 1
     } ,

      {.ProjIndex = 1 ,// PROJ_TYPE_WH_INTFC_R
       .ProjSpecificDataRevision = HwConfigRevision,
       .WhMotEncoderCountsFullRev =  10000,
       .StMotEncoderAuxCountsFullRev =  10000,
       .AuxEncoderAuxCountsFullRev =  10000,
       .CanId = ID_LOCAL_RIGHT
      } ,

     {.ProjIndex = 2 ,// PROJ_TYPE_WH_INTFC_L
      .WhMotEncoderCountsFullRev = 10000 ,
      .StMotEncoderAuxCountsFullRev = 10000,
      .AuxEncoderAuxCountsFullRev = 10000 ,
      .CanId = ID_LOCAL_LEFT
       } ,

    };

    const unsigned short nProjSpecificData = sizeof(ProjSpecificData) / sizeof(struct CProjSpecificData) ;

    const struct CProjSpecificCtl ProjSpecificCtl[] =
    {
        {
            .CtlPar0 = 1 ,
            .CtlPar1 = 2 ,
            .CtlPar2 = 3 ,
            .UseCase = 4 ,
            .ProjIndex  = 0
        } ,
        {
            .CtlPar0 = 1 ,
            .CtlPar1 = 2 ,
            .CtlPar2 = 3 ,
            .UseCase = 4 ,
            .ProjIndex  = 1
        } ,
        {
            .CtlPar0 = 1 ,
            .CtlPar1 = 2 ,
            .CtlPar2 = 3 ,
            .UseCase = 4 ,
            .ProjIndex  = 2
        }
    };
    const short unsigned nProjSpecificCtl = sizeof(ProjSpecificCtl) / sizeof( struct CProjSpecificCtl) ;

#else
    extern const struct  CProjSpecificData ProjSpecificData[] ;
    extern const unsigned short nProjSpecificData ;

    extern const struct  CProjSpecificCtl ProjSpecificCtl[] ;
    extern const short unsigned nProjSpecificCtl ;
#endif


#endif /* APPLICATION_CONFIG_H_ */
