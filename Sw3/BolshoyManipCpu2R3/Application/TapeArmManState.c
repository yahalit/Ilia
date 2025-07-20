


#include <math.h>
//#include <M2S_S2M.h>

#include "StructDef2.h"

short FlexManipEEFHandlePackageGrip( void );
void FlexGetGripperRobotCoord ( float *x , float *y  , float *theta );
void SetDoorPosition(short IsOpen) ;
short CheckPosture(float AngleCmd , float LengthCmd , float LinearCmd );
short GetAutoLinearCmd (float AngleCmd, float* PositionCmd);
short GoToPosture(float AngleCmd , float LinearCmd, float LengthCmd , short unsigned Flags );
short NoRobotCollision(float PlateAngle, float LinearPos);
short FlexAxisIsOnTarget( short unsigned Id , float PosTarget , float tol );
void SetAxisGoToTimer(short IsSlow);
void ManualCheckConvergence();
short CheckPostureSetPointAllowed(short isOnRails, float PlateAngle, float LinearPosition);
void TapeArmSetPTP(void);
//void FindNextPostureStep (float *nextPlateCmd, float *nextLinearCmd, short segment, short Direction, float TargetAngle, float TargetPosition);

//void ManHandlePackage(float dT , short unsigned updAxis );


#define ThtOffset (78.25f *  MAN_PI_F / 180.0f)
#define MAN_PI_F 3.141592653589793F
#define MAN_2PI_F 6.283185307179586f
#define DoorTilt   (115.89f * MAN_PI_F / 180.0f)
#define x0Mot  (-64.44f)
#define y0Mot  (-10.22f)
#define r1Door  18.0f
#define r2Door  58.0f
#define r3Door  12.13f
#define ThetaDoorMax ((94.95f *  MAN_PI_F / 180.0f)-DoorTilt)
#define ThetaDoorMin ((-14.0f * MAN_PI_F / 180.0f)-DoorTilt)

//used for GoToPosture:
#define NO_FLAGS 0         // No flags
#define FLAG_POST_SEEPACK 1         // Monitor seeing a sucked package while traveling
#define FLAG_POST_SUCK_NO_TEST 2            //Apply suction while traveling
#define FLAG_POST_TURN_OFF_SUCTION_WHEN_DONE 4            //Apply suction while traveling
#define FLAG_POST_SLOW 8            //Go reduced speed
#define FLAG_POST_AUTO_LINEAR_TRACK 16     //Automatic calculation of linear actuator final position based on track segments
#define FLAG_POST_ROBOT_COORD 32    //robot coordinates - 0 angle is to the front of the robot. direction is CCW. Linear is positive to the front of the robot.
#define FLAG_POST_SUCK_TEST 64            //Apply suction while traveling and test it
#define FLAG_POST_KEEP_CURRENT_LINEAR 128 //keep current linear position
#define FLAG_POST_ON_RAIL 256 //On rail - need to avoid shelf collision, move only on tray track segments.


short IsNear ( float x , float y , float tol )
{
    return (fabsf(x-y) < tol) ? 1 : 0 ;
}


//{ 2 , GetOffsetC(FlexDoorTopEndTravel,CCalib),3.0e4f} ,//13:FlexDoorTopEndTravel [TAPEARM] {Flex door top end of travel. Note it is not the top because direction reversed }
//{ 2 , GetOffsetC(FlexDoorBotEndTravel,CCalib),3.0e4f} ,//14:FlexDoorBotEndTravel [TAPEARM] {Flex door bottom end of travel.}


void SetDoorPosition(short IsOpen)
{
    if ( IsOpen )
    {
        ManCmd.Ctl12[MAN_AXIS_LSTOP].L12.PosTarget =  ManGeo.FlexDoorPosDown ;
        ManCmd.Ctl12[MAN_AXIS_RSTOP].L12.PosTarget =  ManGeo.FlexDoorPosDown ;
    }
    else
    {
        ManCmd.Ctl12[MAN_AXIS_LSTOP].L12.PosTarget =  ManGeo.FlexDoorPosUp ;
        ManCmd.Ctl12[MAN_AXIS_RSTOP].L12.PosTarget =  ManGeo.FlexDoorPosUp ;
    }
}



/**
* Program the manipulator by the external environment.
* Sets ManCmd.GetSide, ManCmd.DTarget, ManCmd.XTarget
*/
void ProgramFlexManip (  float Ypack , float Xpack, float NeckIncidence)
{
    ManCmd.GetSide = ( Ypack > 0.0 ) ? 1 : -1 ;
    ManCmd.XTarget = Xpack ; //Not relevant for Flex. AssumedPackagePositionX is relative to wheel's center (robot coordination system).
    ManCmd.DTarget = Ypack ;
    FlexManipControl.NeckIncidenceAngle = NeckIncidence;
}

/**
 * \brief Retrieve the manipulator commands
 *
 */
void GetFlexManipProgram (  short * LaserValid ,  float *Xref ,  float *Yref , float * Dlaser )
{
    *Dlaser     = SysState.Package.LaserDistMedian  ;
    *LaserValid = (short) SysState.Package.LaserMedianValid  ;
    *Xref = ManCmd.XTarget  ;
    *Yref = ManCmd.DTarget  ;
}


/*
 * Are doors converged? Flex manipulator has one door
 */
short TapeArmAreDoorsConverged(void)
{
    if (  ( fabs( DynStat12[AXIS_ID_LSTOP].PositionActual -  ManCmd.Ctl12[AXIS_ID_LSTOP].L12.PosTarget) > 0.2f ) &&
            ( fabs( DynStat12[AXIS_ID_RSTOP].PositionActual -  ManCmd.Ctl12[AXIS_ID_RSTOP].L12.PosTarget) > 0.2f ))
    {
        return 0 ;
    }
    return 1;
}


void Prep2PaletteBack()
{
    SysState.Package.LaserRequest = 0;
    StopSuctionNoMonitor() ;
    //ApplySuck( );
    //SysState.CanAxis[LOGICAL_PLATE].BH.ReferenceMode  = E_PosModeStayInPlace ;
    SetCanAxisReferenceMode(&SysState.CanAxis[LOGICAL_PLATE], E_PosModeStayInPlace);
    SysState.CanAxis[LOGICAL_PLATE].BH.UserSpeedCmd  = 0 ;

    //ApplySuck();
    FlexManipControl.ThetaTarget = 0 ;
}



/*
 * Calculate the geometric position of the manipulator by motor angles
 * The point is the center of the the suction cups line relative to the center of tray rotation.
 * Positive X is front of robot, positive y is right.
 */
void FlexGetGripperRobotCoord ( float *x , float *y  , float *theta )
{
    float tapeArmCupsCenterRadius; //tapearmCupsCenterRadius can be negative if the tape arm is inserted.

    tapeArmCupsCenterRadius = (ManGeo.FlexYDistWheel2PackageAtSpacer0Ext0) + SysState.CanAxis[LOGICAL_TAPEARM].BH.UserPos - SysState.CanAxis[LOGICAL_SPACER].BH.UserPos; //the LOGICAL_SPACER is in minus since its positive direction is inwards.
    *theta = SysState.CanAxis[LOGICAL_PLATE].BH.UserPos  ; // Theta = 0 when the robot in standby position. positive CCW (Right)
    *x = tapeArmCupsCenterRadius * __cos(*theta) ; //Robot direction, positive to the rear, zero at center of rotation.
    *y = tapeArmCupsCenterRadius * __sin(*theta) ; //Robot lateral direction, positive to the robot Right, zero at center of rotation.
}





struct
{
    long PosStart ;
 }FlexHomingStr ;

#define TIME_NOT_MOVING_WINDOW 0.35



 /*
  * Stops Axes motors, update FlexManipAxes.StopError, issue a LogException (exp, ID, fatality);
  * ID - either LOGICAL_PLATE etc. or OWN_EXP_ID
  * Exit with orderly manner from algorithm (set package for example).
  * Sets FlexManipAxes.StopError with 1nd argument
  * Sets FlexManipAxes.StopErrorSrc with 2nd argument
  */
 void SetFlexManipError ( short unsigned exp , short unsigned src ,  short unsigned ID , short fatality )
 {
     //TODO:DOORS add stopping for doors motors

     if (fatality != EXP_WARN)
     {
         FlexManipControl.StopError = exp;
         if ( src < ERROR_SRC_SYS )
         {
             FlexManipControl.StopError += src ; //TODO: check if cases when using src are not overriding other exceptions!
         }
         FlexManipControl.StopErrorSrc = src  ;
     }

     if (fatality == EXP_ABORT)
     {
         ResetFlexManipLogics() ;
         //SetMotionMode(E_SysMotionModeStay) ;
         SetMotionMode(E_SysMotionModeAutomaticIdle) ;
     }

     if (fatality == EXP_FATAL)
     {
         ResetFlexManipLogics() ;
         SetMotionMode(E_SysMotionModeSafeFault) ;
     }

     LogException( ID , fatality , exp ) ; //EXCEPCION OWN_EXP_ID if not specific axis, logical_ID if specific axis.
 }





 /*
  * Compare 2 Floats With predefined Tolerance
  * return value:
  * 0 - floats are equal within tolerance
  * 1 - float1 is larger
  * 2 - float2 is larger
  */
 short CompareFloatsWithTol(float float1, float float2, float tolerance)
 {
     if (fabsf(float2-float1) <= tolerance) return 0;
     if ((float2-float1) > 0) return 2;
     return 1; //    if ((float1-float2) > 0)
 }


 /*
  * return 1 if between the floats (minimum & maximum included)
  * return 0 if not
  */
 short IsBetweenFloats(float value, float edge1, float edge2 , float Tolerance)
 {
     float min, max;
     if (edge1 <= edge2)
     {
         min = edge1;
         max = edge2;
     } else
     {
         min = edge2;
         max = edge1;
     }

     if (CompareFloatsWithTol(value, min, Tolerance) == 2) //position is not smaller that minimum of line
         return 0;
     if (CompareFloatsWithTol(value, max, Tolerance) == 1) //position is not smaller that minimum of line
         return 0;

     return 1;
 }



 /*
   * checks is a point is on a curve (the curve must be with constant angle or constant position)
   * position - the variable that is constant on the required curve
   * angle - The ranged variable command
   * segmentNum - number of track segment. segment 0 - starts with point 0.
   *
   * return value:
   * 1 - on curve
   * 0 - not on curve
   */
  short IsOnCurve(float position, float angle, short segmentNum)
  {
      short isBetweenLineEdges;
      float DistPoint2LineNominator, DistPoint2LineNominatorSqr, DistPoint2LineDenominatorSqr;
      float x1, x2, x0, y1, y2, y0, DistSqr, allowedDistSqr, radius, temp, ans; //y are the linear movement, x are 0.5*angle (assumed average radius of tape arm 0.5m).

      angle = fabsf(angle);

      if (CompareFloatsWithTol(TrayShelfTrackPnt[segmentNum].angle, TrayShelfTrackPnt[segmentNum+1].angle, SysState.PosCompTolSpacer) == 0 ) //equal
      { //same angle, shift only segment
          isBetweenLineEdges = (CompareFloatsWithTol(angle, TrayShelfTrackPnt[segmentNum].angle, SysState.PosCompTolPlate) == 0 ) &&
                  IsBetweenFloats(position, TrayShelfTrackPnt[segmentNum].position, TrayShelfTrackPnt[segmentNum+1].position, SysState.PosCompTolSpacer);
          return isBetweenLineEdges;
      }
      else
      {//non shift only segment - check only if the requested angle is between the segment angles.
          isBetweenLineEdges = IsBetweenFloats(angle, TrayShelfTrackPnt[segmentNum].angle, TrayShelfTrackPnt[segmentNum+1].angle, SysState.PosCompTolPlate);
          if (!isBetweenLineEdges) return 0;
      }

      //if non shift only segment, between segment angles:

      radius = 0.5;
      x1 = radius * TrayShelfTrackPnt[segmentNum].angle;
      y1 = TrayShelfTrackPnt[segmentNum].position;
      x2 = radius * TrayShelfTrackPnt[segmentNum+1].angle;
      y2 = TrayShelfTrackPnt[segmentNum+1].position;
      x0 = radius * angle;
      y0 = position;

      DistPoint2LineNominator = fabsf( (y2-y1)*x0 - (x2-x1)*y0 + x2*y1 - y2*x1 );
      DistPoint2LineNominatorSqr = DistPoint2LineNominator * DistPoint2LineNominator;
      DistPoint2LineDenominatorSqr = (y2-y1)*(y2-y1) + (x2-x1)*(x2-x1);
      if (DistPoint2LineDenominatorSqr < MinimumAllowedSegmentLength*MinimumAllowedSegmentLength)
      {
          SetFlexManipError ( exp_illegal_segment_length1 , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ;
      }
      DistSqr = DistPoint2LineNominatorSqr/DistPoint2LineDenominatorSqr;

      temp = (SysState.PosCompTolPlate * radius);
      allowedDistSqr = temp*temp + SysState.PosCompTolSpacer*SysState.PosCompTolSpacer + 2*temp*SysState.PosCompTolSpacer;

      ans = ( (DistSqr <= allowedDistSqr) && isBetweenLineEdges ) ? 1 : 0;
      return ans;
  }




  /*
    * Parameters:
    *      isOnRails: 1 - on rails, 0 - on ground (no shelf collision risk).
   *       PlateAngle
   *       LinearPosition
   *  return value:
   *  1 - allowed
   *  0 - not allowed
   *  -1 : illegal posture: tape arm
   *  -2 : illegal posture: plate
   *  -3:  illegal posture: spacer
   *
    */
   short CheckPostureSetPointAllowed(short isOnRails, float PlateAngle, float LinearPosition)
   {
       short segmentNum, checkPostureResult;

       //check if allowed based on each axis max and minimum range. FlexStandbyExtPos added since it is always a legal extension.
       checkPostureResult = CheckPosture( PlateAngle , ManGeo.FlexStandbyExtPos , LinearPosition );
       if (checkPostureResult <0) return checkPostureResult;

       //verify that the new set point is on either movement curve
       if (isOnRails)
       {
           for (segmentNum=0; segmentNum<=FlexManipControl.numOfLastSegment ; segmentNum++)
           {
               if (IsOnCurve(LinearPosition, PlateAngle, segmentNum )) return 1;
           }
       }

       if (!isOnRails && NoRobotCollision(PlateAngle, LinearPosition))
       {
               return 1;
       }

       return 0;
   }



/*
* small fix to nominal values on track
*/
void FixToNominalValuesOnTracks(float* nextPlateCmd, float* nextLinearCmd)
{
    //Fix to nominal values on the curves (to make sure we are not on the wrong side of it after stopping).
    if (IsOnCurve(*nextLinearCmd, *nextPlateCmd, 1 )) //check if close to track segment 1, than command nominal track segment value
    {
        *nextLinearCmd = TrayShelfTrackPnt[1].position;
    }
    if (IsOnCurve(*nextLinearCmd, *nextPlateCmd, 3 )) //check if close to track segment 3, than command nominal track segment value
    {
        *nextLinearCmd = TrayShelfTrackPnt[3].position;
    }
    if (IsOnCurve(*nextLinearCmd, *nextPlateCmd, 0 )) //check if close to track segment 1, than command nominal track segment value
    {
        *nextPlateCmd = TrayShelfTrackPnt[0].angle;
    }
    if (IsOnCurve(*nextLinearCmd, *nextPlateCmd, 2 )) //check if close to track segment 2, than command nominal track segment value
    {
        *nextPlateCmd = TrayShelfTrackPnt[2].angle;
    }
}




 /*
 * big fix to legal track values (and legal out of range angle).
 */
 void FixToLegalValuesOnTracks(float* nextPlateCmd, float* nextLinearCmd)
 {
     //SetFlexManipError ( exp_current_posture_outside_of_axis_range , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ;
     short CheckPostureSetPointAllowedResult;

     //if the angle command is out of range than fix it.
     if ( fabsf(*nextPlateCmd) > 90.0f * deg2rad)
     {
         *nextPlateCmd = 90.0f * deg2rad * (*nextPlateCmd)/fabsf(*nextPlateCmd);
     }

     GetAutoLinearCmd(*nextPlateCmd, nextLinearCmd);
     CheckPostureSetPointAllowedResult = CheckPostureSetPointAllowed(1, *nextPlateCmd, *nextLinearCmd);

     switch (CheckPostureSetPointAllowedResult)
     {
         case 0:
             SetFlexManipError ( exp_illegal_posture_set_point1 , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ; //General ID OWN_EXP_ID. stops motors, Sets FlexManipAxes.StopError with 2nd argument, Sets FlexManipAxes.StopErrorSrc with 1st argument
             return;
         case -1:
             SetFlexManipError ( exp_illegal_posture_set_point_tape1 , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ; //General ID OWN_EXP_ID. stops motors, Sets FlexManipAxes.StopError with 2nd argument, Sets FlexManipAxes.StopErrorSrc with 1st argument
             return;
         case -2:
             SetFlexManipError ( exp_illegal_posture_set_point_plate1 , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ; //General ID OWN_EXP_ID. stops motors, Sets FlexManipAxes.StopError with 2nd argument, Sets FlexManipAxes.StopErrorSrc with 1st argument
             return;
         case -3:
             SetFlexManipError ( exp_illegal_posture_set_point_spacer1 , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ; //General ID OWN_EXP_ID. stops motors, Sets FlexManipAxes.StopError with 2nd argument, Sets FlexManipAxes.StopErrorSrc with 1st argument
             return;
         default:
             return;
     }
 }




 /*
  * Verify that the set point has no collision with the robot
  * 1 - no collision.
  * 0 - there is a collision.
  */
 short NoRobotCollision(float PlateAngle, float LinearPos)
 {
     float AutoSpacerPos;

     if (!GetAutoLinearCmd(PlateAngle, &AutoSpacerPos))
     {
         SetFlexManipError ( exp_illegal_posture_cmd5 , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ; //General ID OWN_EXP_ID. stops motors, Sets FlexManipAxes.StopError with 2nd argument, Sets FlexManipAxes.StopErrorSrc with 1st argument
         return 0;
     }

     if (LinearPos <= AutoSpacerPos)
     { //for sure OK
         return 1;
     }

     //also need to check if on a spacer shift curve (there is more than a single possible auto spacer position and all allowed).



     //above curve 1 - linear position under the curve 1 position
     if ( (CompareFloatsWithTol(fabsf(PlateAngle), TrayShelfTrackPnt[2].angle    , SysState.PosCompTolPlate) == 2 ) &&
          (CompareFloatsWithTol(fabsf(PlateAngle), TrayShelfTrackPnt[1].angle    , SysState.PosCompTolPlate) == 1 ) &&
          (CompareFloatsWithTol(LinearPos        , TrayShelfTrackPnt[2].position , SysState.PosCompTolSpacer) == 1) )
     {
         return 0;
     }
     //check if rotation on curve 1 but not legally on curve 1
     if ( (CompareFloatsWithTol(fabsf(PlateAngle), TrayShelfTrackPnt[0].angle    , SysState.PosCompTolPlate) == 0 ) &&
          ( (CompareFloatsWithTol(LinearPos        , TrayShelfTrackPnt[0].position , SysState.PosCompTolSpacer) == 1 ) ||
            (CompareFloatsWithTol(LinearPos        , TrayShelfTrackPnt[1].position , SysState.PosCompTolSpacer) == 2 ) ) )
     {
         return 0;
     }
     //check if rotation on curve 3 but not above it
     if ( (CompareFloatsWithTol(fabsf(PlateAngle), TrayShelfTrackPnt[2].angle    , SysState.PosCompTolPlate) == 0 ) &&
          ( (CompareFloatsWithTol(LinearPos        , TrayShelfTrackPnt[2].position , SysState.PosCompTolSpacer) == 1 ) ||
            (CompareFloatsWithTol(LinearPos        , TrayShelfTrackPnt[3].position , SysState.PosCompTolSpacer) == 2 ) ) )
     {
         return 0;
     }
     return 1 ;
 }









void FixCurrentPosture()
 {
     float nextLinearCmd, nextPlateCmd;

     volatile struct CCanAxis *pAxisPlate ;
     volatile struct CCanAxis *pAxisSpacer ;

     pAxisPlate = &SysState.CanAxis[LOGICAL_PLATE] ;
     pAxisSpacer =&SysState.CanAxis[LOGICAL_SPACER] ;

     nextPlateCmd = pAxisPlate->BH.UserPosCmd;
     nextLinearCmd = pAxisSpacer->BH.UserPosCmd;

//     checkPostureResult = CheckPostureSetPointAllowed(isOnRails, nextPlateCmd, nextLinearCmd);
//     if (checkPostureResult<=0)
//     {
//         return -1;
//     }

     nextPlateCmd = SysState.CanAxis[LOGICAL_PLATE].BH.UserPosCmd;
     FixToLegalValuesOnTracks(&nextPlateCmd, &nextLinearCmd );

//     if ( IsNear(nextPlateCmd , pAxisPlate->BH.UserPosCmd , SysState.CurrentInitialSetPointTol) &&
//          IsNear(nextLinearCmd, pAxisSpacer->BH.UserPosCmd, SysState.CurrentInitialSetPointTol) )

     TrayAxisGoto( LOGICAL_SPACER , nextLinearCmd  , FlexManipControl.GoTo.Flags  );
     TrayAxisGoto( LOGICAL_PLATE , nextPlateCmd  , FlexManipControl.GoTo.Flags  );
     FlexManipControl.GoTo.angle = nextPlateCmd;
     FlexManipControl.GoTo.Linear = nextLinearCmd;
     FlexManipControl.GoTo.IsActive = 1;
     FlexManipControl.PostureFix = 1;
     SetSysTimerTargetSec ( TIMER_MAN_POSTURE_FIX_TOUT , TimeAllowedPosturefix ,&SysTimerStr); //TODO:TIME reduce (5?)

     //C'ant use GoToPosture due to ilegal position.
     //GoToPosture(nextPlateCmd, nextLinearCmd, ManGeo.FlexStandbyExtPos, FLAG_POST_ON_RAIL | FLAG_POST_AUTO_LINEAR_TRACK  );
 }



 /*
  * Test if flex manipulator is stopped
  */
 short IsFlexManipStopped()
 {
     short unsigned cnt ;
     short stopped ;
     struct  CCanAxis * pAxis ;
     stopped = 1 ;
     for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
     {
         pAxis  = & SysState.CanAxis[cnt] ;
         if ( pAxis->Installed && (pAxis->BH.AxisCbit.bit.MotionConverged == 1 ) &&( pAxis->BH.NewCmdCnt == 0 ) )
         {
             stopped = 0 ;
             break ;
         }
     }
     return stopped  ;
 }



/*
 * Manage the tape arm homing process
 */
void  FlexHoming(void)
{
// Take the manipulator HOME
    struct CCanAxis * pAxis ; //volatile struct CCanAxis * pAxis ;
    struct CCanAxis * pAxisTape ; //volatile struct CCanAxis * pAxisTape ; //OBB3: show Yahali that the volotile was removed
    struct CCanAxis * pAxisPlate ; // volatile struct CCanAxis * pAxisPlate ;
    struct CCanAxis * pAxisSpacer ; //volatile struct CCanAxis *pAxisSpacer ;
    short unsigned cnt;
    short unsigned mask ;
    long unsigned stat1;
    long Lpayload;

    if ( SysState.WaitValidCanCtr )
    { // Verify command is accepted by axes
        return ;
    }

    pAxisTape = &SysState.CanAxis[LOGICAL_TAPEARM] ;
    pAxisPlate = &SysState.CanAxis[LOGICAL_PLATE] ;
    pAxisSpacer =&SysState.CanAxis[LOGICAL_SPACER] ;

    if (FlexManipControl.HomingState == E_FlexHomeState_Init)
    {
        Lpayload = (FlexAxisIsOnTarget(LOGICAL_PLATE, ManGeo.ShelfTrackPoint5Angle , SysState.PosCompTolPlate ) || //TODO: change to angle above SHIFT_ALLOWING_ANGLE_DEG
                    FlexAxisIsOnTarget(LOGICAL_PLATE, -ManGeo.ShelfTrackPoint5Angle, SysState.PosCompTolPlate )) ? 1 : -1 ;
        stat1 = SendSdo2Slave ( 0x2223 , 0 , &Lpayload  , 4 , LOGICAL_SPACER ); //Set the homing direction to -1 while on the floor (spacer direction was defined -1 (positive away from shelf) in SlaveDirectionTab) hence towards shelf.
        if ( stat1 )
        {
            mask = BlockInts() ;
            SetFlexManipError ( exp_Spacer_Not_responding_to_homing_direction_change , ERROR_SRC_SYS , LOGICAL_SPACER, EXP_FATAL ) ;
            RestoreInts( mask) ;
        }

        //TODO: check if required to send the homing value.
        //            Fpayload = 0;
        //
        //            stat1 = SendSdo2Slave ( 0x220d , 16 , (long*)&Fpayload , 4 , LOGICAL_SPACER ); // Set the homing value to 0;
        //            if ( stat1 )
        //            {
        //                SetFlexManipError ( exp_Spacer_Not_responding_to_homing_value_message , ERROR_SRC_SYS , LOGICAL_SPACER, EXP_ABORT ) ;
        //            }
    }

    mask = BlockInts() ;

    switch( FlexManipControl.HomingState  )
    {
        case E_FlexHomeState_Init:
            for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
            {
                pAxis = &SysState.CanAxis[cnt] ;
                pAxis->BH.UserSpeedCmd =  0 ;    ;
                //pAxis->BH.ReferenceMode  = E_PosModeStayInPlace ;
                SetCanAxisReferenceMode(&SysState.CanAxis[cnt], E_PosModeStayInPlace);
                pAxis->BH.LoopClosureMode  = E_LC_Speed_Mode; //pAxis->BH.PositionLoopClosureMode ;
				//pAxis->BH.BhCw.bit.MotorOnCmd = 1 ;
                pAxis->BH.BhCw.bit.KillHoming = 1 ;
            }

            FlexManipControl.HomingSubState = 0;

            SysState.WaitValidCanCtr = 2 ;

            if ( SysState.Debug.BypassTapeHoming || (pAxisTape->Installed == 0 ) )
            {
                FlexManipControl.HomingState = E_FlexHomeState_GoSpacerHome ;
                break ;
            }

            FlexManipControl.HomingState = E_FlexHomeState_Go2Home ;
            SetSysTimerTargetSec( TMR_PREPARE_STABILIZE_TMR ,  0.5f  ,&SysTimerStr) ; //time to change LC mode and ref mode
            break ;

        case E_FlexHomeState_Go2Home:
            if ( IsSysTimerElapse(TMR_PREPARE_STABILIZE_TMR,&SysTimerStr) == 0 )
            {
                break;
            }

            // Wait automatic homing procedure by arm driver
            if ( FlexManipControl.HomingSubState == 0 )
            {
                for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
                {
                    SysState.CanAxis[cnt].BH.BhCw.bit.KillHoming = 0 ;
                    if (SysState.CanAxis[cnt].BH.AxisCbit.bit.LoopClosureMode != E_LC_Speed_Mode)
                    {
                        SetFlexManipError ( exp_LC_mode_not_changed_in_time , ERROR_SRC_SYS , cnt, EXP_ABORT ) ;
                        //SysState.CanAxis[cnt].BH.ReferenceMode =  E_PosModeStayInPlace ;
                        SetCanAxisReferenceMode(&SysState.CanAxis[cnt], E_PosModeStayInPlace);
                        FlexManipControl.HomingState = E_FlexHomeState_Error;
                    }
                }

                //pAxisTape->BH.ReferenceMode =  E_RefModeSpeed2Home ;
                SetCanAxisReferenceMode(pAxisTape, E_RefModeSpeed2Home);
                SysState.WaitValidCanCtr = 2 ;
                FlexManipControl.HomingSubState = 1 ;
                SetSysTimerTargetSec( TMR_PREPARE_TMR ,  10.0f  ,&SysTimerStr) ;
                break;
            }

            if ( IsSysTimerElapse(TMR_PREPARE_TMR,&SysTimerStr) == 0 )
            {
                if ( pAxisTape->BH.AxisCbit.bit.Homed  )
                {
                    SetSysTimerTargetSec( TMR_PREPARE_STABILIZE_TMR ,  5.0f  ,&SysTimerStr) ;

                    //pAxisTape->BH.ReferenceMode  = E_PosModeStayInPlace ;
                    SetCanAxisReferenceMode(pAxisTape, E_PosModeStayInPlace);
                    //pAxisSpacer->BH.ReferenceMode =  E_RefModeSpeed2Home ;
                    SetCanAxisReferenceMode(pAxisSpacer, E_RefModeSpeed2Home);
                    SysState.WaitValidCanCtr = 2 ;
                    FlexManipControl.HomingSubState = 0 ;


                    FlexManipControl.HomingState = E_FlexHomeState_GoSpacerHome ;
                }
            }
            else
            { // Too much time
                SetFlexManipError ( exp_did_not_finish_tape_homing_in_time , ERROR_SRC_SYS , OWN_EXP_ID, EXP_WARN ) ;
                //pAxisTape->BH.ReferenceMode =  E_PosModeStayInPlace ;
                SetCanAxisReferenceMode(pAxisTape, E_PosModeStayInPlace);
                FlexManipControl.HomingState = E_FlexHomeState_Error;
            }
            break ;

        case E_FlexHomeState_GoSpacerHome:
            // Wait automatic homing procedure by arm driver. Homing will be to the far part
            if ( FlexManipControl.HomingSubState == 0 )
            {
                SysState.WaitValidCanCtr = 2 ;
                //pAxisSpacer->BH.ReferenceMode =  E_RefModeSpeed2Home ;
                SetCanAxisReferenceMode(pAxisSpacer, E_RefModeSpeed2Home);
                FlexManipControl.HomingSubState = 1 ;
                SetSysTimerTargetSec( TMR_PREPARE_TMR ,  3.0f  ,&SysTimerStr) ;
                break;
            }

            if ( IsSysTimerElapse(TMR_PREPARE_TMR,&SysTimerStr) == 0 )
            {
                if ( pAxisSpacer->BH.AxisCbit.bit.Homed  )
                { // If timer elapsed, we are no more moving
                    SetSysTimerTargetSec( TMR_PREPARE_STABILIZE_TMR ,  10.0f  ,&SysTimerStr) ;

                    //pAxisSpacer->BH.ReferenceMode  = E_PosModeStayInPlace ;
                    SetCanAxisReferenceMode(pAxisSpacer, E_PosModeStayInPlace);
                    //pAxisPlate->BH.ReferenceMode =  E_RefModeSpeed2Home ;
                    SetCanAxisReferenceMode(pAxisPlate, E_RefModeSpeed2Home);
                    SysState.WaitValidCanCtr = 2 ;
                    FlexManipControl.HomingSubState = 0 ;

                    FlexManipControl.HomingState = E_FlexHomeState_GoPlateHome ;
                }
            }
            else
            { // Too much time
                SetFlexManipError ( exp_did_not_finish_spacer_homing_in_time , ERROR_SRC_SYS , OWN_EXP_ID, EXP_WARN ) ;
                FlexManipControl.HomingState = E_FlexHomeState_Error;
                //pAxisSpacer->BH.ReferenceMode =  E_PosModeStayInPlace ;
                SetCanAxisReferenceMode(pAxisSpacer, E_PosModeStayInPlace);
            }
            break ;


        case E_FlexHomeState_GoPlateHome:

            // Wait automatic homing procedure by arm driver
            if ( FlexManipControl.HomingSubState == 0 )
            {
                SysState.WaitValidCanCtr = 2 ;
                //pAxisPlate->BH.ReferenceMode =  E_RefModeSpeed2Home ;
                SetCanAxisReferenceMode(pAxisPlate, E_RefModeSpeed2Home);
                FlexManipControl.HomingSubState = 1 ;
                SetSysTimerTargetSec( TMR_PREPARE_TMR ,  1.0f  ,&SysTimerStr) ;
                break;
            }

            if ( IsSysTimerElapse(TMR_PREPARE_TMR,&SysTimerStr) == 0 )
            {
                if ( pAxisPlate->BH.AxisCbit.bit.Homed  )
                { // If timer elapsed, we are no more moving
                    SetSysTimerTargetSec( TMR_PREPARE_STABILIZE_TMR ,  15.0f  ,&SysTimerStr) ;

                    //pAxisPlate->BH.ReferenceMode  = E_PosModeStayInPlace ;
                    SetCanAxisReferenceMode(pAxisPlate, E_PosModeStayInPlace);
                    SysState.WaitValidCanCtr = 2 ;
                    FlexManipControl.HomingSubState = 0 ;

                    FlexManipControl.HomingState = E_FlexHomeState_AlmostDone ;
                  }
            }
            else
            { // Too much time
                SetFlexManipError ( exp_could_not_fold_tape2 , ERROR_SRC_SYS , OWN_EXP_ID, EXP_WARN ) ;
                FlexManipControl.HomingState = E_FlexHomeState_Error;
                //pAxisPlate->BH.ReferenceMode =  E_PosModeStayInPlace ;
                SetCanAxisReferenceMode(pAxisPlate, E_PosModeStayInPlace);
            }
            break ;

        case E_FlexHomeState_AlmostDone:
            FlexManipControl.AxesHomed = 1;
            FlexManipControl.PerformHomingFromIdleLoop = 0;
            FlexManipControl.ControlWordCopy.DoHoming = 0; //reset pending homing command.
            FlexManipControl.HomingState = E_FlexHomeState_Done;
            break ;
        case E_FlexHomeState_Done:
            break ;
        case E_FlexHomeState_Error:
            //pAxisTape->BH.ReferenceMode = E_PosModeStayInPlace ;
            SetCanAxisReferenceMode(pAxisTape, E_PosModeStayInPlace);
            break ;
        default:
            //pAxisTape->BH.ReferenceMode = E_PosModeStayInPlace ;
            SetCanAxisReferenceMode(pAxisTape, E_PosModeStayInPlace);
            break ;

    }

    RestoreInts( mask) ;
}



/*
 * Performed at the start of getPackage/ setPackage
 */
short PrepareForDealPackage(void)
{
    struct CCanAxis *pAxis  ;
    short unsigned cnt ;

    // Reset the mechanism for retry if package suckers failed
    SysState.Package.SuckCmd.us = 0 ;
    SysState.Package.SuckRequest.us = 0 ;
    FlexManipControl.FailedPackageGrip = 0 ;
    SysState.Package.LaserRequest = 0;

    // Put to initialize state, cancelled, already at MAN_ST_INIT
//    if ( FlexManipControl.ControlWordCopy.MotorsOn) //not sampled. check directly in the CW.
//    {
//        FlexManipControl.State = MAN_ST_INIT ; //ready for new standBy/ deal package command
//    }

    SetSysTimerTargetSec ( TMR_WAIT_SUCK_CHNG , 3.0f ,&SysTimerStr);

    GetThetaTarget( & FlexManipControl.ThetaTarget) ;

    // Reset all the controllers
    for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++)
    {
        //pAxis  = &SysState.CanAxis[cnt] ;
        //pAxis->BH.ReferenceMode = E_SysMotionModeAutomaticIdle ;
        SetCanAxisReferenceMode(pAxis, E_PosModeStayInPlace);

    }

    if (FlexManipControl.ControlWordCopy.Side == 0)
    {
        return -1 ;
    }
    return 0 ;
}


/*
 * \brief Safe state transition,
 * preventing accidental failure exit
 *
 */
void SafeTransitFlexManState( short DesiredState)
{
    if ( FlexManipControl.State != MAN_ST_FAILURE )
    {
        FlexManipControl.State = DesiredState ;
    }
}


/*
 * Update FlexManipAxes.ControlWordCopy command - done only in the following cases:
 * Performed at the start of getPackage/ setPackage / if not homed/ if motors are off/ if no standby/deal package command given.
 */
short ResetFlexManipLogics(void)
{
    struct CCanAxis *pAxis  ;
    short unsigned cnt ;

    //Here FlexManipAxes.ControlWordCopy used to be set based on FlexManipAxes.ControlWord
    //FlexManipAxes.ControlWordCopy = FlexManipAxes.ControlWord;

    // Reset the mechanism for retry if package suckers failed
    SysState.Package.SuckCmd.us = 0 ;
    SysState.Package.SuckRequest.us = 0 ;
    // Reset the mechanism for retry if package suckers failed
    FlexManipControl.FailedPackageGrip = 0 ;
    SysState.Package.LaserRequest = 0;
    FlexManipControl.NewCommand = 0;
    FlexManipControl.ControlWordCopy.DealPackage = 0;
    FlexManipControl.ControlWordCopy.Standby = 0;
    FlexManipControl.ControlWordCopy.DoHoming = 0;
    FlexManipControl.GoTo.IsActive = 0;

    FlexManipEEFHandlePackageGrip(); //in order for SuckCmd to take affect.
    ResetAxesSpeedAcc();

    if (SysState.CanAxis[LOGICAL_TAPEARM].BH.LoopClosureMode == E_LC_Speed_Mode)
    {
        TapeArmSetPTP();
    }

    //TapeArmCmd.StdbyRequest = 0 ;

    // Put to initialize state
    if ( FlexManipControl.ControlWordCopy.MotorsOn) //not sampled. check directly in the CW.
    {
        FlexManipControl.State = MAN_ST_INIT ; //ready for new standBy/ deal package command
    }

    SetSysTimerTargetSec ( TMR_WAIT_SUCK_CHNG , 3.0f ,&SysTimerStr);

    GetThetaTarget( & FlexManipControl.ThetaTarget) ;

    // Reset all the controllers
    for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++)
    {
        //pAxis  = &SysState.CanAxis[cnt] ;
        //pAxis->BH.ReferenceMode = E_PosModeStayInPlace ;
        SetCanAxisReferenceMode(pAxis, E_PosModeStayInPlace);
    }

    if (FlexManipControl.ControlWordCopy.Side == 0)
    {
        return -1 ;
    }

    return 0 ;
}



/*
 * Issue a stopping command to all the manipulator motors
 */
short unsigned FlexManipAxesStopMan(void )
{
    short unsigned cnt , Stopped;
    struct CCanAxis *pAxis ;
    Stopped = 1 ;

    if (SysState.CanAxis[LOGICAL_TAPEARM].BH.LoopClosureMode == E_LC_Speed_Mode)
    {
        TapeArmSetPTP();
    }

    for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
    {
        pAxis= &SysState.CanAxis[cnt] ;
        pAxis->BH.ReferenceMode  = E_PosModeStayInPlace ;
        if ( pAxis->BH.AxisCbit.bit.MotionConverged == 0 )
            Stopped = 0 ;
    }
    return Stopped ;
}


/*
 * Immediately shuts motors down.
 */
void FlexManipAxesShutMotors(void )
{
    short unsigned cnt;
    struct CCanAxis *pAxis ;
    for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
    {
        pAxis = & SysState.CanAxis[cnt] ;
        KillMotor(pAxis); //pAxis->BH.BhCw.bit.MotorOnCmd = 0 ;
    }
}



/*
 *return DTarget absolute value from Y target (no validation tests)
 */
float getDTargetAbsFromYTarget(float YTarget)
{
    //FlexManipControl.YTarget =  fabsf(FlexManipControl.DTarget) - ManGeo.FlexYDistWheel2PackageAtSpacer0Ext0 + ManGeo.FlexSpacerPosSetPackageShelf ; //D target may be negative but for Y target purposes (tape arm extension) we need its absolute value
    return (YTarget + ManGeo.FlexYDistWheel2PackageAtSpacer0Ext0 -ManGeo.FlexSpacerPosSetPackageShelf);  //D target may be negative but for Y target purposes (tape arm extension) we need its absolute value
}

/*
 *return YTarget absolute value from D target (no validation tests)
 */
float getYTargetFromDTargetAbs(float DTarget)
{
    return (fabsf(DTarget) - ManGeo.FlexYDistWheel2PackageAtSpacer0Ext0 + ManGeo.FlexSpacerPosSetPackageShelf) ; //D target may be negative but for Y target purposes (tape arm extension) we need its absolute value
}



short FlexInitPackSanity(void)
{
    float MaxDTarget, MinDTarget;
    FlexManipControl.StopError = 0 ;

    // Freeze the control word and reset indications
    if ( PrepareForDealPackage() < 0)
    {
        SetFlexManipError ( exp_target_dir_inconsistent1 , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ;
        return -1 ;
    }
    ManCBit.GripFail = 0 ;

    MinDTarget = ManGeo.FlexYDistWheel2PackageAtSpacer0Ext0 + ManGeo.FlexStandbyExtPos - ManGeo.FlexSpacerPosSetPackageShelf; //may be on tray //TODO:INTEGRATION update to outside of tray only
    MaxDTarget = ManGeo.FlexYDistWheel2PackageAtSpacer0Ext0 + ManGeo.FlexMaxExtensionTravel - ManGeo.FlexSpacerPosSetPackageShelf ;

    // Target in range (DTarget is the package position, FlexMaxExtensionTravel is the axis position).
    if ( fabsf(FlexManipControl.DTarget)  > (MaxDTarget-0.02f) )  //ManCmd.DTarget is set in SetManipulatorControlWord() --> ProgramFlexManip(), FlexManipAxes.DTarget <-- FlexManipAxes.DTarget in ManCmd2FlexManipAxesCopyCommand().
    {
        SetFlexManipError ( exp_target_not_reachable0 , ERROR_SRC_SYS , OWN_EXP_ID, EXP_ABORT ) ;
        return -1;
    }

    if ( fabsf(FlexManipControl.DTarget)  < (MinDTarget+0.02f) )  //ManCmd.DTarget is set in SetManipulatorControlWord() --> ProgramFlexManip(), FlexManipAxes.DTarget <-- FlexManipAxes.DTarget in ManCmd2FlexManipAxesCopyCommand().
    {
        SetFlexManipError ( exp_target_to_close0 , ERROR_SRC_SYS , OWN_EXP_ID, EXP_ABORT ) ;
        return -1;
    }

    // - If actuator is in the direction and over stretched, this is an error
    if (  FlexManipControl.y > fabsf(FlexManipControl.DTarget) )
    {
        SetFlexManipError ( exp_manip_initially_out_range , ERROR_SRC_SYS , OWN_EXP_ID, EXP_ABORT ) ;
        return -1;
    }

    if ( fabsf(FlexManipControl.NeckIncidenceAngle) > ManGeo.FlexMaxNeckIncidence)
    {
        SetFlexManipError ( exp_illegal_neck_incidence_cmd , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ;
        return -1;
    }

    return 0;
}



enum ESB_GOTOANGLE
{
    ESB_StandbyNone = 0 ,
    ESB_StandbyInit = 1 ,
    ESB_StandbyCloseDoor = 2 ,
    ESB_StandbySetTape = 3 ,
    ESB_StandbyStateDone = 4 ,
    ESB_StandbyStateFailure = 15
};


short IsInternalPoint(float a , float b , float c )
{
    return ( ( a - b ) * ( c - b  ) <= 0 ) ? 1 : 0 ;
}




void TrayAxisGoto( short unsigned Id , float PosTarget , short unsigned flags  )
{
    struct CCanAxis *pAxis ;
    pAxis = &SysState.CanAxis[Id] ;
    //pAxis->BH.ReferenceMode = E_PosModePTP ;
    SetCanAxisReferenceMode(pAxis, E_PosModePTP);
    pAxis->BH.LoopClosureMode  = pAxis->BH.PositionLoopClosureMode ;
    //pAxis->BH.UserPosCmd = PosTarget ;
    SetCanAxisPosTarget( pAxis , PosTarget);

    if ( FLAG_POST_SLOW & flags)
    {
        pAxis->BH.BhCw.bit.GoSlow = 1 ;
    }
    else
    {
        pAxis->BH.BhCw.bit.GoSlow = 0 ;
    }
    pAxis->BH.NewCmdCnt = 4 ;
    pAxis->BH.AxisCbit.bit.ProfileConverged = 0 ; //TODO:bit should be updated only from CBIT
    pAxis->BH.AxisCbit.bit.MotionConverged = 0 ;
    SetAxisGoToTimer(flags & FLAG_POST_SLOW);
}


short FlexIsMotionDone( short unsigned Id )
{
    struct CCanAxis *pAxis ;
    pAxis = &SysState.CanAxis[Id] ;
    return (pAxis->BH.AxisCbit.bit.MotionConverged ? 1 : 0 ) ;
}

/*
short IsMotorOn(short unsigned Id)
{
    return ( SysState.CanAxis[Id].BH.AxisCbit.bit.MotorOn ? 1 : 0  );
}
*/

short FlexAxisIsOnTarget( short unsigned Id , float PosTarget , float tol )
{
    struct CCanAxis *pAxis ;
    short IsNearResult;

    pAxis = &SysState.CanAxis[Id] ;
    IsNearResult = IsNear(pAxis->BH.UserPosCmd , PosTarget, tol)  ? 1 : 0;

    return ((IsMotorOn(pAxis) || IsMotorReady(pAxis)) && (pAxis->BH.AxisCbit.bit.LoopClosureMode == pAxis->BH.PositionLoopClosureMode)
            && ((pAxis->BH.AxisCbit.bit.ReferenceMode == E_PosModeStayInPlace) || (pAxis->BH.AxisCbit.bit.ReferenceMode == E_PosModePTP))
            && pAxis->BH.AxisCbit.bit.ProfileConverged //&& pAxis->BH.AxisCbit.bit.MotionConverged
            && IsNearResult );
}

void CheckSideSwitch (float PlateCurrentPos, float FinalPlateCmd, short *SwitchSides, short *MovementSide)
{
    short FinalSide;
    short CurrentSide;

    FinalSide = CompareFloatsWithTol(FinalPlateCmd, 0, SysState.PosCompTolPlate);
    CurrentSide = CompareFloatsWithTol(PlateCurrentPos, 0,SysState.PosCompTolPlate);

    //Side switching is allowed only of rails, checked during go to post as well.
    *SwitchSides = ((FinalSide == 1) && (CurrentSide == 2)) || ((FinalSide == 2) && (CurrentSide == 1)) ? 1 : 0;

    *MovementSide = fmax(FinalSide, CurrentSide) == 1 ? 1 : -1; // 1 - positive angle (right), 2 - negative angle (left)
}




/*
 * Finds the next interval command (nextPlateCmd, nextLinearCmd).
 * Paramters:
 *  segment #
 *  direction - 1 is forward (towards high segments), -1 is backwards.
 *      if direction = 0 then the direction will be set based on the target values!
 *      if the direction is 1/ -1 then the target values will be ignored.
 *  TargetAngle, TargetPosition (already verified to be on this segment!)
 */
//void FindNextIntervalOnSegment (float *nextPlateCmd, float *nextLinearCmd, short segment, short Direction, float TargetAngle, float TargetPosition)
//{
//    float PlateAxisCurrentPosCmd, LinearAxisCurrentPosCmd;
//    float forwardUnitVectorAngle, forwardUnitVectorPos;
//    float SegmentAngleChange, SegmentPositionChange;
//    float forwardUnitVectorAngleToTarget, forwardUnitVectorPosNewToTarget;
//    float EndPoint1Angle, EndPoint2Angle, EndPoint1Pos, EndPoint2Pos;
//    float vectorSize;
//    short ActualDirection;
//
//    PlateAxisCurrentPosCmd = SysState.CanAxis[LOGICAL_PLATE].BH.UserPosCmd;
//    LinearAxisCurrentPosCmd = SysState.CanAxis[LOGICAL_SPACER].BH.UserPosCmd;
//
//    SegmentAngleChange = TrayShelfTrackPnt[segment + 1].angle - TrayShelfTrackPnt[segment].angle;
//    SegmentPositionChange = TrayShelfTrackPnt[segment + 1].position - TrayShelfTrackPnt[segment].position;
//
//    vectorSize = Ysqrt(SegmentAngleChange * SegmentAngleChange + SegmentPositionChange * SegmentPositionChange);
//
//    if (vectorSize < MinimumAllowedSegmentLength) //not allowed segment of less than 10mm
//    {
//        SetFlexManipError ( exp_illegal_segment_length , ERROR_SRC_SYS , OWN_EXP_ID, EXP_ABORT ) ; //General ID OWN_EXP_ID. stops motors, Sets FlexManipAxes.StopError with 2nd argument, Sets FlexManipAxes.StopErrorSrc with 1st argument
//    }
//
//    forwardUnitVectorAngle = SegmentAngleChange/ vectorSize;
//    forwardUnitVectorPos = SegmentPositionChange/ vectorSize;
//
//    if (Direction == 0)
//    {
//        if (SegmentAngleChange > MinimumAllowedSegmentChange)
//        { //non too steep position change, the direction will be set based on the angles
//            ActualDirection = (TargetAngle - PlateAxisCurrentPosCmd)/ forwardUnitVectorAngle;
//        }
//        else
//        { //very steep position change, zero angle change (not allowed angle change less than 10mm), the direction will be set based on the positions
//            if (SegmentPositionChange > MinimumAllowedSegmentChange)
//            {
//                ActualDirection = (TargetPosition - LinearAxisCurrentPosCmd)/ SegmentPositionChange;
//            }
//            else
//            {
//                SetFlexManipError ( exp_too_small_segment_change , ERROR_SRC_SYS , OWN_EXP_ID, EXP_ABORT ) ; //General ID OWN_EXP_ID. stops motors, Sets FlexManipAxes.StopError with 2nd argument, Sets FlexManipAxes.StopErrorSrc with 1st argument
//            }
//        }
//
//        forwardUnitVectorAngleToTarget = ActualDirection >= 0 ? forwardUnitVectorAngle : -forwardUnitVectorAngle;
//        forwardUnitVectorPosNewToTarget = ActualDirection >= 0 ? forwardUnitVectorPos : -forwardUnitVectorPos;
//
//        *nextPlateCmd = PlateAxisCurrentPosCmd + forwardUnitVectorAngleToTarget * IntervalSize;
//        *nextLinearCmd = LinearAxisCurrentPosCmd + forwardUnitVectorPosNewToTarget * IntervalSize;
//
//        if (ActualDirection >= 0)
//        {
//            EndPoint1Angle = TrayShelfTrackPnt[segment].angle;
//            EndPoint2Angle = TargetAngle;
//            EndPoint1Pos = TrayShelfTrackPnt[segment].position;
//            EndPoint2Pos = TargetPosition;
//        }
//        else
//        {
//            EndPoint1Angle = TargetAngle;
//            EndPoint2Angle = TrayShelfTrackPnt[segment+1].angle;
//            EndPoint1Pos = TargetPosition;
//            EndPoint2Pos = TrayShelfTrackPnt[segment+1].position;
//        }
//    }
//    else
//    { //Direction != 0
//        *nextPlateCmd = PlateAxisCurrentPosCmd + forwardUnitVectorAngle * Direction * (float)IntervalSize;
//        *nextLinearCmd = LinearAxisCurrentPosCmd + forwardUnitVectorPos * Direction * (float)IntervalSize;
//        ActualDirection = Direction;
//
//        EndPoint1Angle = TrayShelfTrackPnt[segment].angle;
//        EndPoint2Angle = TrayShelfTrackPnt[segment+1].angle;
//        EndPoint1Pos = TrayShelfTrackPnt[segment].position;
//        EndPoint2Pos = TrayShelfTrackPnt[segment+1].position;
//    }
//
//
//    if ( IsBetweenFloats(*nextPlateCmd, EndPoint1Angle, EndPoint2Angle, SysState.PosCompTolPlate) &&
//         IsBetweenFloats(*nextLinearCmd, EndPoint1Pos, EndPoint2Pos, SysState.PosCompTolSpacer)  )
//    { //inside the line
//        return;
//    }
//    else
//    { //outside the line, need to return the end of line
//        *nextPlateCmd = ActualDirection == 1 ? EndPoint2Angle : EndPoint1Angle;
//        *nextLinearCmd = ActualDirection == 1 ? EndPoint2Pos : EndPoint1Pos;
//    }
//}




void SetAxesSpeed(short Segment)
{
    float SpeedRatio; //relative change ratio between linear (m) and plate (rad) [m/rad]
    float SpacerSpeed, PlateSpeed;
    float DeltaAngle, DeltaLinear;

    DeltaAngle = fabsf(TrayShelfTrackPnt[Segment+1].angle - TrayShelfTrackPnt[Segment].angle);
    DeltaLinear = fabsf(TrayShelfTrackPnt[Segment+1].position - TrayShelfTrackPnt[Segment].position);
    SpeedRatio =  (DeltaAngle > MinimumAllowedSegmentChange) ? DeltaLinear / DeltaAngle : -1; //-1 means 0 plate movement, its speed is not relevant, linear speed is nominal.

    PlateSpeed = ManGeo.FlexPlateSpeed;
    SpacerSpeed = (SpeedRatio >= 0) ? PlateSpeed * SpeedRatio : ManGeo.FlexSpacerSpeed; //if SpeedRatio<0 --> DeltaAngle == 0 --> need spacer at full speed

    if (FlexManipControl.SpacerSpeed > ManGeo.FlexSpacerSpeed)
    {
        PlateSpeed = ManGeo.FlexPlateSpeed * ManGeo.FlexSpacerSpeed / SpacerSpeed;
        SpacerSpeed = ManGeo.FlexSpacerSpeed;
        //TODO: make sure FlexManipControl.PlateSpeed, FlexManipControl.SpacerSpeed, ManGeo.FlexTapeSpeed set by PDO
    }

    SysState.CanAxis[LOGICAL_PLATE].BH.UserProfileSpeed = PlateSpeed;
    SysState.CanAxis[LOGICAL_SPACER].BH.UserProfileSpeed = SpacerSpeed;

    SysState.CanAxis[LOGICAL_PLATE].BH.UserProfileAcc = NominalLinearAxesAcc * PlateSpeed / ManGeo.FlexPlateSpeed;
    SysState.CanAxis[LOGICAL_SPACER].BH.UserProfileAcc = NominalLinearAxesAcc * SpacerSpeed / ManGeo.FlexSpacerSpeed;
}


/*
 * 1 - ok
 * 0 - no allowed
 */
short CheckCurrentPosture(short isOnRails)
{
    float PlateAxisCurrentPosCmd, LinearAxisCurrentPosCmd;
    short checkPostureResult;

    PlateAxisCurrentPosCmd = SysState.CanAxis[LOGICAL_PLATE].BH.UserPosCmd;
    LinearAxisCurrentPosCmd = SysState.CanAxis[LOGICAL_SPACER].BH.UserPosCmd;

    //verify that current tray position is allowed.
    checkPostureResult = CheckPostureSetPointAllowed(isOnRails, PlateAxisCurrentPosCmd , LinearAxisCurrentPosCmd);

    if (checkPostureResult<=0)
    {
        SetFlexManipError ( exp_illegal_current_position_or_angle2 , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ; //illegal current position or angle. exception exp_trajectory_calc_diverge
        return 0;
    }

    return 1;
}



/* Finds Next Posture Command position and angle.
 * returns 1 if final step, 2 if there are more to be performed.
 * parameters:
 * OnRails: 1- on rails. 0 - not on rails.
 * FinalPlateCmd, FinalLinearCmd - required final position and angle.
 * *nextPlateCmd, *nextLinearCmd - returned first step command
 *
 * return value:
 *      1 - returned a valid new posture command and this is the last motion segment (set point = final set point).
 *      2 - returned a valid new posture command and this is **not** the last motion segment (set point != final set point).
 *      0 - entered a non-allowed Final set point.
 *      -1 - current set point command is a non-allowed set point.
 *      -2 - illegal current position or angle. exception exp_trajectory_calc_diverge
 *      -3 - exp_could_not_determine_current_point_segment
 *      -4 - exp_could_not_determine_final_point_segment
 */
short FindNextPostureCmd( short isOnRails, float FinalPlateCmd, float FinalLinearCmd, float* nextPlateCmd, float* nextLinearCmd)
{
    short i, j;
    short checkPostureResult;
    short FinalSetPoingSegment = 0, currentSetPoingSegment = 0; //current and final segments. if they are the same so this is the final step.
    short FinalLoopDirection, CurrentLoopDirection;
    short CurrentSegNum, FinalSegNum;
    short LinearComparisonAnswer, PlateComparisonAnswer;
    short SwitchSides;
    short MovementSide;

    float PlateAxisCurrentPosCmd, LinearAxisCurrentPosCmd;
    float FinalPlateCmdAbs;
    float PlateAxisReportPosCmdAbs;

    SwitchSides = 0;

    PlateAxisCurrentPosCmd = SysState.CanAxis[LOGICAL_PLATE].BH.UserPosCmd;
    LinearAxisCurrentPosCmd = SysState.CanAxis[LOGICAL_SPACER].BH.UserPosCmd;

    FinalPlateCmdAbs = fabs(FinalPlateCmd);
    PlateAxisReportPosCmdAbs = fabs(PlateAxisCurrentPosCmd);
    //check if final command is allowed.
    //PlateSign = SysState.Package.Side ;  // base on package side, // The package side: side = ( Ypack > 0.0 ) ? 1 : -1 ;

    checkPostureResult = CheckPostureSetPointAllowed(isOnRails, FinalPlateCmd, FinalLinearCmd);

    if (checkPostureResult<=0)
    {
        return -1;
    }

    if (!CheckCurrentPosture(isOnRails)) return -2;

    CheckSideSwitch(PlateAxisCurrentPosCmd, FinalPlateCmd, &SwitchSides, &MovementSide);
    // collision risk with the package is checked in GetPackage.

    if (isOnRails)
    {
        //On rails not allowed to switch sides.

        if (SwitchSides)
        { //not allowed, checked also in here for precaution, checked also in go to post.
            SetFlexManipError ( exp_illegal_side_switch_away_from_shelf1 , ERROR_SRC_SYS , LOGICAL_PLATE, EXP_FATAL ) ; //General ID OWN_EXP_ID.
        }

        //both current plate angle and the FinalPlateCmd are on the same side. Continue calculations in absolute value and then restore sign.
        //verified that both current command and new set point are on the allowed curves.

        FinalLoopDirection = (FinalPlateCmdAbs >= PlateAxisReportPosCmdAbs) ? 1 : 0 ;
        CurrentLoopDirection = 1 - FinalLoopDirection;
        currentSetPoingSegment = -1;
        FinalSetPoingSegment = -1;

        for (i = 0; i <= FlexManipControl.numOfLastSegment; i++)
        {
            FinalSegNum = FinalLoopDirection ? i : (FlexManipControl.numOfLastSegment - i);

            if (IsOnCurve(FinalLinearCmd, FinalPlateCmdAbs, FinalSegNum ))
            {//found on which segment the final set point is on (lowest numbered segment in case there are two).
                FinalSetPoingSegment = FinalSegNum;

                //check is the current segment is identical (there are points that are on two tracks and we might find the other track instead)
                if (IsOnCurve(LinearAxisCurrentPosCmd, PlateAxisCurrentPosCmd, FinalSetPoingSegment ))
                {
                    currentSetPoingSegment = FinalSetPoingSegment;
                    break;
                }

                for (j = 0; j <= 3; j++)
                {
                    CurrentSegNum = CurrentLoopDirection ? j : (FlexManipControl.numOfLastSegment - j);
                    if (IsOnCurve(LinearAxisCurrentPosCmd, PlateAxisCurrentPosCmd, CurrentSegNum ))
                    {
                        currentSetPoingSegment = CurrentSegNum;
                        break;
                    }
                }
                break;
            }
        }

        if (currentSetPoingSegment == -1)
        {
            return -3; //could not determine current point segment
        }
        if (FinalSetPoingSegment == -1)
        {
            return -4; //could not determine final point segment
        }

        SetAxesSpeed(currentSetPoingSegment); //TODO: uncomment

        //both current and final points on the same track segment
        if (currentSetPoingSegment == FinalSetPoingSegment)
        {
            *nextPlateCmd = FinalPlateCmd;
            *nextLinearCmd = FinalLinearCmd;
            return 1;
        }

        if (currentSetPoingSegment < FinalSetPoingSegment)
        {
            *nextPlateCmd = TrayShelfTrackPnt[currentSetPoingSegment+1].angle * MovementSide;
            *nextLinearCmd = TrayShelfTrackPnt[currentSetPoingSegment+1].position;
            return 2;
        }
        else
        { //(currentSetPoingSegment > FinalSetPoingSegment)
            *nextPlateCmd = TrayShelfTrackPnt[currentSetPoingSegment].angle * MovementSide;
            *nextLinearCmd = TrayShelfTrackPnt[currentSetPoingSegment].position;
            return 2;
        }
    }
    else //not on rails, verified that the new command is legal
    { //on the floor required two dimensional movement when there is no risk of robot collision. required to set the shift first to ManGeo.Range2LinearPos. then allowed any angle.

        // if currently on track0 and rotation is larger --> decrease linear to TrayShelfTrackPnt[1].position == 0.01.
        if (IsOnCurve(LinearAxisCurrentPosCmd, PlateAxisReportPosCmdAbs, 0 ) &&
           !IsOnCurve(LinearAxisCurrentPosCmd, PlateAxisReportPosCmdAbs, 1 ) &&
           (CompareFloatsWithTol(FinalPlateCmdAbs, TrayShelfTrackPnt[0].angle , SysState.PosCompTolPlate) != 0))
        { //The command is on segment 0 and the rotation is larger (in absolute value) than of segment 0 (0 deg)).
            *nextPlateCmd = TrayShelfTrackPnt[0].angle;
            *nextLinearCmd = TrayShelfTrackPnt[1].position;
            return 2;
        }

        //compared without Abs
        PlateComparisonAnswer = CompareFloatsWithTol(PlateAxisCurrentPosCmd, FinalPlateCmd, SysState.PosCompTolPlate);

        if (PlateComparisonAnswer == 0)
        { //The command and current rotation are the same. since both final and current set points are legal we can always perform a shift between them (only linear required).
            *nextPlateCmd = FinalPlateCmd;
            *nextLinearCmd = FinalLinearCmd;
            FixToNominalValuesOnTracks(nextPlateCmd, nextLinearCmd);
            return 1;
        }

        //Handle cases of switch sides OR final on Track0
        if (IsOnCurve(FinalLinearCmd, FinalPlateCmdAbs, 0 ) || SwitchSides)
        {//also known that (PlateComparisonAnswer != 0) - The command and current rotation are not the same.
            if (CompareFloatsWithTol(LinearAxisCurrentPosCmd, TrayShelfTrackPnt[1].position, SysState.PosCompTolSpacer) != 0)
            { // only the final is on curve 0.
                *nextPlateCmd = PlateAxisCurrentPosCmd;
                *nextLinearCmd = TrayShelfTrackPnt[1].position;
                FixToNominalValuesOnTracks(nextPlateCmd, nextLinearCmd );
                return 2;
            }
            else
            { // LinearAxisReportPosCmd is on TrayShelfTrackPnt[1].position - rotation is allowed
                *nextPlateCmd = FinalPlateCmd;
                *nextLinearCmd = TrayShelfTrackPnt[1].position;
                FixToNominalValuesOnTracks(nextPlateCmd, nextLinearCmd );
                return 2;
            }
        }

        //not switching sides! already handled

        //Check if the final linear position is larger than the current position
        LinearComparisonAnswer = CompareFloatsWithTol(LinearAxisCurrentPosCmd, FinalLinearCmd, SysState.PosCompTolSpacer);

        if (LinearComparisonAnswer == 0) //the FinalLinearCmd is equal to LinearAxisReportPosCmd --> need to rotate only (no shelf collision risk). always allowed if not on track 0 (checked above).
        {
            *nextLinearCmd = LinearAxisCurrentPosCmd;
            *nextPlateCmd = FinalPlateCmdAbs;
            FixToNominalValuesOnTracks(nextPlateCmd, nextLinearCmd);
            *nextPlateCmd = *nextPlateCmd * MovementSide;
            return 1;
        }
        if (LinearComparisonAnswer == 2) //the FinalLinearCmd is larger than LinearAxisReportPosCmd (linear is increased, hence getting closer to robot) --> rotation first. always allowed if not on track 0 (checked above).
        {
            //set destination points for rotation first, the rotation movement may be on track segment 1.
            *nextPlateCmd = FinalPlateCmdAbs;
            *nextLinearCmd = LinearAxisCurrentPosCmd;
            FixToNominalValuesOnTracks(nextPlateCmd, nextLinearCmd );
            *nextPlateCmd = *nextPlateCmd * MovementSide;
            return 2;
        }
        else //the FinalLinearCmd is lower than LinearAxisReportPosCmd (linear is decreased, hence getting farther from robot) --> linear first. Need to make sure the final is not on Track0!!!
        {
            //set destination points for linear first
            *nextPlateCmd = PlateAxisReportPosCmdAbs;
            *nextLinearCmd = FinalLinearCmd;
            FixToNominalValuesOnTracks(nextPlateCmd, nextLinearCmd );
            *nextPlateCmd = *nextPlateCmd * MovementSide;

            return 2;
        }
    }
}

void FlexStopAxis( short unsigned Id  )
{
    //SysState.CanAxis[Id].BH.ReferenceMode  = E_PosModeStayInPlace ;
    SetCanAxisReferenceMode(&SysState.CanAxis[Id], E_PosModeStayInPlace);
}


short FlexIsStabilized()
{
    short Id ;
    for ( Id = 0 ; Id < N_CAN_SLAVES ; Id++)
    {
        if ( SysState.CanAxis[Id].BH.AxisCbit.bit.MotionConverged == 0  )
        {
            return  0 ;
        }
    }
    return 1;
}



/*
 * Set the entire manipulator mechanism on
 */
void FlexManipChangeToAutomaticIdleMode(void )
{
    // Set the servo axes on
    SetMotionMode(E_SysMotionModeAutomaticIdle) ;

#if DEF_NUM_12V_MANIP_AXES > 0
    // Set dynamixel to on
    mask = BlockInts() ;
    {
        ManCmd.Ctl12[MAN_AXIS_LSTOP].MotorOnRequest = 1 ;
        ManCmd.Ctl12[MAN_AXIS_RSTOP].MotorOnRequest = 1 ;

        if ( CanNet.ManOnRequestFlag == 0 )
        { // Time out the motor on of DXL
            SetSysTimerTargetSec ( TIMER_DYNAMIXEL_ON_TMR12 , DYNAMIXEL_MOTOR_ON_TOUT ,&SysTimerStr);
        }
        CanNet.ManOnRequestFlag = 1 ;
        ResetManRecovery12 () ;
    }
    RestoreInts(mask) ;
#endif
}


enum E_SetPlateState
{
    ES_PaletteNothing = 0 ,
    ES_Palette_Init = 1 ,
    ES_WaitSpacer = 2 ,
    ES_WaitAngle = 3 ,
    ES_Palette_Done = 4,
    ES_Palette_Error = 7
};



/*
 * Check if a posture is legal (reachable)
 *  0 : posture OK
 * -1 : LengthCmd command not in acceptable range
 * -2 : AngleCmd command not in acceptable range
 * -3 : LinearCmd command not in acceptable range
 */
short CheckPosture(float AngleCmd , float LengthCmd , float LinearCmd )
{
    if ( LengthCmd < (0-SysState.PosCompTolTape)  ||  LengthCmd > (ManGeo.FlexMaxExtensionTravel + SysState.PosCompTolTape ) )
    {
        return -1 ;
    }
    if ( fabsf(AngleCmd) > (ManGeo.FlexMaxAngle + SysState.PosCompTolPlate))
    {
        return -2 ;
    }
    if ( LinearCmd < (ROTATION_ALLOWED_SHIFT-SysState.PosCompTolSpacer)  || LinearCmd > (ManGeo.FlexMaxLinearTravel + SysState.PosCompTolSpacer))
    {
        return -3 ;
    }

    return 0;
}


/*
 * \brief Command the robot a new posture.
 * \arguments: float angleCmd , float LinearCmd, float LengthCmd , short unsigned Flags
 *  AngleCmd (a note below) , LengthCmd:
 *                                   LengthCmd - zero is center of tray. positive is to the rear
 *                                   AngleCmd - zero if to the rear, positive is CCW.
 *      in FLAG_POST_ROBOT_COORD:    LengthCmd - zero is center of tray. positive is to the front
 *                                   AngleCmd - zero if to the front, positive is CCW.
 *  Linear:  Length of the linear actuator when operation ends
 *  Flags: A bit field
 *  FLAG_POST_SEEPACK (1) : Monitor seeing a sucked package while traveling
 *   FLAG_POST_SUCK_TEST (2)    : Apply suction while traveling
 *   FLAG_POST_SLOW (4)    : Go reduced speed
 *   FLAG_POST_AUTO_LINEAR (8)  : Automatic calculation of linear actuator final position
 *   FLAG_POST_ROBOT_COORD (16) : Interpret angle and linear shift in robot coordinates
 *
 *  \Returns:
 *  0 if ok
 *  -1 : -3  is out of range (nothing is commanded)
 *  -4 : illegal current posture
 *
 * \Note:
 * (a) without (FLAG_POST_ROBOT_COORD) The command is in manipulator base coordinates: at zero angle the manipulator points back
 * (b) With FLAG_POST_AUTO_LINEAR the "Linear" argument is "don't care"
 */
short GoToPosture(float AngleCmd , float LinearCmd, float LengthCmd , short unsigned Flags )
{
    short CheckPostureSetPointAllowedResult;
    float ActualLinearCmd; // either LinearCmd OR auto position result.
    float LinearAxisCurrentPosCmd, PlateAxisCurrentPosCmd;
    float PlateUserPosCmd, SpacerUserPosCmd, TapeUserPosCmd;
    short SwitchSides, MovementSide;

    ActualLinearCmd = LinearCmd;

    if ( Flags & FLAG_POST_AUTO_LINEAR_TRACK) //Automatic calculation of linear actuator final position based on track segments
    {
        if (!GetAutoLinearCmd(AngleCmd, &ActualLinearCmd))
        {
            SetFlexManipError ( exp_illegal_posture_cmd4 , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ; //General ID OWN_EXP_ID. stops motors, Sets FlexManipAxes.StopError with 2nd argument, Sets FlexManipAxes.StopErrorSrc with 1st argument
        }
    }

    LinearAxisCurrentPosCmd = SysState.CanAxis[LOGICAL_SPACER].BH.UserPosCmd;

    if ( Flags & FLAG_POST_KEEP_CURRENT_LINEAR )
    {
        ActualLinearCmd = LinearAxisCurrentPosCmd;
    }

    if ( Flags & FLAG_POST_ROBOT_COORD ) //TODO:INTEGRATION check in integration
    {
        AngleCmd  = mod2piS ( AngleCmd - PI )  ;
        ActualLinearCmd = -ActualLinearCmd ;
    }

    PlateAxisCurrentPosCmd = SysState.CanAxis[LOGICAL_PLATE].BH.UserPosCmd;
    CheckSideSwitch(PlateAxisCurrentPosCmd, AngleCmd, &SwitchSides, &MovementSide);

    if (SwitchSides && (Flags & FLAG_POST_ON_RAIL))
    {
        SetFlexManipError ( exp_illegal_side_switch_away_from_shelf2 , ERROR_SRC_SYS , LOGICAL_PLATE, EXP_FATAL ) ; //General ID OWN_EXP_ID.
        return -1 ;
    }

    //verify that current tray position is allowed.
    if (!CheckCurrentPosture( (Flags & FLAG_POST_ON_RAIL) ? 1 : 0 ) ) return -4;

    CheckPostureSetPointAllowedResult = CheckPostureSetPointAllowed( ((Flags & FLAG_POST_ON_RAIL) ? 1 : 0), AngleCmd , ActualLinearCmd );
    switch (CheckPostureSetPointAllowedResult)
    {
        case 0:
            SetFlexManipError ( exp_illegal_posture_set_point , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ; //General ID OWN_EXP_ID. stops motors, Sets FlexManipAxes.StopError with 2nd argument, Sets FlexManipAxes.StopErrorSrc with 1st argument
            break;
        case -1:
            SetFlexManipError ( exp_illegal_posture_set_point_tape , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ; //General ID OWN_EXP_ID. stops motors, Sets FlexManipAxes.StopError with 2nd argument, Sets FlexManipAxes.StopErrorSrc with 1st argument
            break;
        case -2:
            SetFlexManipError ( exp_illegal_posture_set_point_plate , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ; //General ID OWN_EXP_ID. stops motors, Sets FlexManipAxes.StopError with 2nd argument, Sets FlexManipAxes.StopErrorSrc with 1st argument
            break;
        case -3:
            SetFlexManipError ( exp_illegal_posture_set_point_spacer , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ; //General ID OWN_EXP_ID. stops motors, Sets FlexManipAxes.StopError with 2nd argument, Sets FlexManipAxes.StopErrorSrc with 1st argument
            break;
        default:
            break;
    }
    if (CheckPostureSetPointAllowedResult <= 0)
    {
        return -1 ;
    }

    PlateUserPosCmd = SysState.CanAxis[0].BH.UserPosCmd;
    TapeUserPosCmd = SysState.CanAxis[1].BH.UserPosCmd;
    SpacerUserPosCmd = SysState.CanAxis[2].BH.UserPosCmd;

    if (Flags & FLAG_POST_ON_RAIL)
    {
        //Verify that both the current plate angle and the FinalPlateCmd are on the same side (allowed zero value for both).
        if (CompareFloatsWithTol(AngleCmd, 0, SysState.PosCompTolPlate) && CompareFloatsWithTol(PlateUserPosCmd, 0, SysState.PosConvTolPlate))
        { //both non-zero, need to check they are on the same direction.
            if ((AngleCmd * PlateUserPosCmd) < 0) //not on the same direction
            {
                SetFlexManipError ( exp_illegal_side_switch_away_from_shelf , ERROR_SRC_SYS , LOGICAL_PLATE, EXP_FATAL ) ; //General ID OWN_EXP_ID. stops motors, Sets FlexManipAxes.StopError with 2nd argument, Sets FlexManipAxes.StopErrorSrc with 1st argument
                return -1 ;
            }
        }
    }

    if ( (CompareFloatsWithTol(AngleCmd, PlateUserPosCmd, SysState.PosCompTolPlate) != 0) ||
         (CompareFloatsWithTol(LengthCmd, TapeUserPosCmd, SysState.PosCompTolTape) != 0) ||
         (CompareFloatsWithTol(LinearCmd, SpacerUserPosCmd, SysState.PosCompTolSpacer) != 0) )
//            ( LengthCmd != FlexManipControl.GoTo.length ) || (  FlexManipControl.GoTo.Linear != ActualLinearCmd ))
    { // Something changed in the command, then do it: Otherwise do nothing
        FlexManipControl.GoTo.State = EGT_GoToInit ;
        FlexManipControl.GoTo.angle  = AngleCmd ;
        FlexManipControl.GoTo.length = LengthCmd  ;
        FlexManipControl.GoTo.Linear = ActualLinearCmd ;
        FlexManipControl.GoTo.Error = 0 ;
        FlexManipControl.GoTo.Flags = Flags ;
        FlexManipControl.GoTo.IsActive  = 2 ; //when FlexManipAxes.GoTo.IsActive > 0 then the FlexManipHandleOperations will run ManagePosture continously until done (and not enter getPackage/ setPacakge) until done.
        if (FlexManipControl.GoTo.Flags & FLAG_POST_SLOW)
        {
            SetSysTimerTargetSec ( TIMER_MAN_GO_TO_POSTURE_TOUT , TimeAllowedGoToPostureSlow ,&SysTimerStr); //set timer for manage posture //TODO:OPTIMIZE
        }
        else
        {
            SetSysTimerTargetSec ( TIMER_MAN_GO_TO_POSTURE_TOUT , TimeAllowedGoToPosture ,&SysTimerStr); //set timer for manage posture TODO:OPTIMIZE
        }
    }
    else
    { //in case there was an old OD command that was denied, reset GoTo to current positions.
        FlexManipControl.GoTo.angle  = SysState.CanAxis[LOGICAL_PLATE].BH.UserPos ;
        FlexManipControl.GoTo.length = SysState.CanAxis[LOGICAL_SPACER].BH.UserPos  ;
        FlexManipControl.GoTo.Linear = SysState.CanAxis[LOGICAL_TAPEARM].BH.UserPos ;
    }
    return 0 ;
}

/*
 * 1 - segment found
 * 0 - no segment found;
 * if on a shift segment, returns the closet point to the robot body as possible (required for collision check)
 */
short GetAutoLinearCmd (float AngleCmd, float *PositionCmd)
{
    float PlateAxisReportPosCmd;//, LinearAxisReportPosCmd;
    float nextPointAngle, currentPointAngle, currentPointPos, nextPointPos;
    short i, LoopDirection, SegNum;

    PlateAxisReportPosCmd  = SysState.CanAxis[LOGICAL_PLATE].BH.UserPosCmd;
    //LinearAxisReportPosCmd = SysState.CanAxis[LOGICAL_SPACER].BH.UserPosCmd;

    //Determine search order
    LoopDirection = (fabs(AngleCmd) >= fabs(PlateAxisReportPosCmd)) ? 1 : 0;

    //finds the first/ last (depends on search ordeR) segment that includes AngleCmd angle
    for (i = 0; i <= FlexManipControl.numOfLastSegment; i++)
    {
        SegNum = LoopDirection ? i : (FlexManipControl.numOfLastSegment - i);

        currentPointAngle = TrayShelfTrackPnt[SegNum].angle;
        nextPointAngle = TrayShelfTrackPnt[SegNum + 1].angle;
        currentPointPos = TrayShelfTrackPnt[SegNum].position;
        nextPointPos = TrayShelfTrackPnt[SegNum + 1].position;

        //if ((fabs(AngleCmd) >= currentPointAngle) && (fabs(AngleCmd) <= nextPointAngle))  //both condition are equal included in case of linear segment
        if ((CompareFloatsWithTol(fabs(AngleCmd), currentPointAngle, SysState.PosCompTolPlate) != 2 ) && (CompareFloatsWithTol(fabs(AngleCmd) , nextPointAngle, SysState.PosConvTolPlate) != 1))  //both condition are equal included in case of linear segment
        {//segment segmentNum includes the angle AngleCmd
            if (CompareFloatsWithTol(currentPointAngle, nextPointAngle, SysState.PosCompTolSpacer) != 0 ) //at least MinimumAllowedSegmentChange difference
            { //on a non shift only change segment
                *PositionCmd = TrayShelfTrackPnt[SegNum].position + (TrayShelfTrackPnt[SegNum+1].position - TrayShelfTrackPnt[SegNum].position)* (fabs(AngleCmd) - currentPointAngle)/ (nextPointAngle - currentPointAngle);
                return 1;
            }
            else
            {
                //on a linear change segment - return the linear position that is closer to the current linear position.
//                *PositionCmd = (fabs(LinearAxisReportPosCmd - TrayShelfTrackPnt[SegNum].position) <= fabs(LinearAxisReportPosCmd - TrayShelfTrackPnt[SegNum + 1].position)) ?
//                    TrayShelfTrackPnt[SegNum].position : TrayShelfTrackPnt[SegNum + 1].position;

                //on a linear change segment - return the linear position that is closer to the robot body (highest value).
                *PositionCmd = (currentPointPos > nextPointPos) ? currentPointPos : nextPointPos;
                return 1;
            }
        }
    }
    return 0;
}

/*
 * returns the distance from suction cups (pressed) to the package (measured by laser).
 * Does not check SysState.Package.LaserMedianValid!
 */
inline float GetPackageDistFromCups()
{
    return SysState.Package.LaserDistMedian - ManGeo.FlexArmDistLaser2CupsPressed;
}

void SetAxisGoToTimer(short IsSlow)
{
    if (IsSlow)
    {
        SetSysTimerTargetSec(TIMER_MAN_AXIS_GOTO_TOUT, TimeAllowedGoToAxisSlow, &SysTimerStr); //set timer for manage posture
    }
    else
    {
        SetSysTimerTargetSec(TIMER_MAN_AXIS_GOTO_TOUT, TimeAllowedGoToAxis, &SysTimerStr); //set timer for manage posture
    }
}


/*
 * checks for go to posture timer elapsed, then issue error
 */
void CheckAxisGoToTout(short errorNum, short fatality)
{
    if (IsSysTimerElapse(TIMER_MAN_AXIS_GOTO_TOUT, &SysTimerStr))
    {
        SetFlexManipError(errorNum, ERROR_SRC_SYS, OWN_EXP_ID, fatality);
    }
}



//reset all speeds and acceleration to default values.
void ResetAxesSpeedAcc()
{
    SysState.CanAxis[LOGICAL_PLATE].BH.UserProfileSpeed = ManGeo.FlexPlateSpeed;
    SysState.CanAxis[LOGICAL_PLATE].BH.UserProfileAcc = NominalAngularAxesAcc;
    SysState.CanAxis[LOGICAL_SPACER].BH.UserProfileSpeed = ManGeo.FlexSpacerSpeed;
    SysState.CanAxis[LOGICAL_SPACER].BH.UserProfileAcc = NominalLinearAxesAcc;
    SysState.CanAxis[LOGICAL_TAPEARM].BH.UserProfileSpeed = ManGeo.FlexTapeSpeed;
    SysState.CanAxis[LOGICAL_TAPEARM].BH.UserProfileAcc = NominalLinearAxesAcc;
}


//PerformTapeArmHoming
void TapeArmHoming(void)
{
    if (!FlexAxisIsOnTarget( LOGICAL_TAPEARM, ManGeo.FlexStandbyExtPos , SysState.PosCompTolSpacer ))
    {
        SysState.CanAxis[LOGICAL_TAPEARM].BH.KillHomeRequestCnt += 1 ;
        SysState.CanAxis[LOGICAL_TAPEARM].BH.LoopClosureMode = E_LC_Speed_Mode;
        SetCanAxisReferenceMode(&SysState.CanAxis[LOGICAL_TAPEARM], E_RefModeSpeed2Home);
    }
}

void TapeArmSetPTP(void)
{
    if ((SysState.CanAxis[LOGICAL_TAPEARM].BH.LoopClosureMode == E_LC_Speed_Mode) && (SysState.CanAxis[LOGICAL_TAPEARM].BH.AxisCbit.bit.Homed))
    {
        SysState.CanAxis[LOGICAL_TAPEARM].BH.LoopClosureMode = E_LC_Pos_Mode;
        SetCanAxisReferenceMode(&SysState.CanAxis[LOGICAL_TAPEARM], E_PosModePTP);
    }
}

/*
 * Manage the movement to the next posture
 */
void  ManagePosture(float suckResult) //gets a single final destination and manage posture manages all other sub-movements (linear movement etc.).
{
    //struct LinkControl *pCtlPlate  ;
    //struct LinkControl *pCtlSpacer  ;
    //struct CCanAxis *pAxisPlate  ;

    struct CCanAxis *pAxisTape , *pAxisSpacer , *pAxisPlate   ;
    //struct CCanAxis *pAxisSpacer  ;

    short isFirstTrayMotionStep, FindNextPostureResult;

    //pAxisPlate  = pCtlPlate->pAxis ;
    pAxisTape   = &SysState.CanAxis[LOGICAL_TAPEARM] ;
    pAxisSpacer   = &SysState.CanAxis[LOGICAL_SPACER] ;
    pAxisPlate   = &SysState.CanAxis[LOGICAL_PLATE] ;
    //pAxisSpacer = pCtlSpacer->pAxis ;

    //verify that during current manage posture manipulations the tray has not arrived to a forbidden state.
    CheckCurrentPosture(FlexManipControl.GoTo.Flags & FLAG_POST_ON_RAIL);

    if (FlexManipControl.PostureFix)    //only for posture fix purposes
    {
        if (IsSysTimerElapse(TIMER_MAN_POSTURE_FIX_TOUT,&SysTimerStr))
        {
            SetFlexManipError ( exp_auto_fix_failed_to_complete_in_time , ERROR_SRC_SYS , LOGICAL_PLATE, EXP_FATAL ) ; //General ID OWN_EXP_ID. stops motors, Sets FlexManipAxes.StopError with 2nd argument, Sets FlexManipAxes.StopErrorSrc with 1st argument
            FlexManipControl.GoTo.IsActive = 0;
            FlexManipControl.PostureFix = 0;
            return;
        }
        if (!FlexAxisIsOnTarget( LOGICAL_PLATE , FlexManipControl.GoTo.angle , SysState.PosCompTolPlate ) ||
            !FlexAxisIsOnTarget( LOGICAL_SPACER , FlexManipControl.GoTo.Linear , SysState.PosCompTolSpacer ) ) //based on axes profile converged
        {
            return;
        }

        FlexManipControl.GoTo.IsActive = 0;
        FlexManipControl.PostureFix = 0;
        return;
    }

    if ( IsSysTimerElapse(TIMER_MAN_GO_TO_POSTURE_TOUT , &SysTimerStr) )
    { //manage posture too long
        SetFlexManipError ( exp_manip_manage_posture_too_long , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ; //General ID OWN_EXP_ID
    }


    if ( (!IsMotorOn(pAxisSpacer) && !IsMotorReady(pAxisSpacer)) || (!IsMotorOn(pAxisTape) && !IsMotorReady(pAxisTape)) || (!IsMotorOn(pAxisPlate) && !IsMotorReady(pAxisPlate)) )
    {
        FlexManipControl.GoTo.State = EGT_Error ;
        //FlexManipControl.GoTo.Error = exp_goto_premature_motoroff ;
        SetFlexManipError ( exp_goto_premature_motoroff , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ; //General ID OWN_EXP_ID. stops motors, Sets FlexManipAxes.StopError with 2nd argument, Sets FlexManipAxes.StopErrorSrc with 1st argument
    }

#ifndef debug_ignore_laser
    if ( FlexManipControl.GoTo.Flags & FLAG_POST_SEEPACK)
    {
        SysState.Package.LaserRequest =   1;

        if (FlexManipControl.GoTo.State == EGT_GoToInit)
        {
            SetSysTimerTargetSec ( TMR_WAIT_LASER_READ , 5.0f ,&SysTimerStr); // Avoid loss of package //TODO: reduce time limit, check why 0.4sec is not enough
        }
        else
        {
            if ( SysState.Package.LaserMedianValid )
            {
                if (CompareFloatsWithTol(GetPackageDistFromCups(), 0 , ManGeo.FlexArmPackageGrippedLaserTol) != 0)
                {
                    FlexManipControl.GoTo.State = EGT_Error ;
                    //FlexManipControl.GoTo.Error = exp_goto_package_lost ;
                    SetFlexManipError ( exp_goto_package_lost , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ; //General ID OWN_EXP_ID. stops motors, Sets FlexManipAxes.StopError with 2nd argument, Sets FlexManipAxes.StopErrorSrc with 1st argument
                }
            }
            else
            {
                if ( IsSysTimerElapse(TMR_WAIT_LASER_READ,&SysTimerStr) )
                {
                    FlexManipControl.GoTo.State = EGT_Error ;
                    //FlexManipControl.GoTo.Error = exp_goto_laser_loss ;
                    SetFlexManipError ( exp_goto_laser_loss , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ; //General ID OWN_EXP_ID. stops motors, Sets FlexManipAxes.StopError with 2nd argument, Sets FlexManipAxes.StopErrorSrc with 1st argument
                }
            }
        }
    }
#endif


    if ( FlexManipControl.GoTo.Flags & FLAG_POST_SUCK_NO_TEST )
    {
        InitSuctionNoMonitor() ;
    }

    if ( FlexManipControl.GoTo.Flags & FLAG_POST_SUCK_TEST )
    {
        if (FlexManipControl.GoTo.State < EGT_WaitSuctionOff)
        {
            InitSuctionMonitor() ;
            if (suckResult == -1) //is there chance that suckResult == -1 from previous operation. anyway this is not acceptable. possible since as InitSuctionMonitor just ran and FlexManipEEFHandlePackageGrip() didn't run yet?
            {
                FlexManipControl.GoTo.State = EGT_Error ;
                if (FlexManipControl.GoTo.State == EGT_GoToInit)
                {
                    FlexManipControl.GoTo.Error = exp_goto_suction_lost_at_Init ;
                }
                else
                {
                    //FlexManipControl.GoTo.Error = exp_goto_suction_lost ;
                    SetFlexManipError ( exp_goto_suction_lost , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ; //General ID OWN_EXP_ID. stops motors, Sets FlexManipAxes.StopError with 2nd argument, Sets FlexManipAxes.StopErrorSrc with 1st argument
                }
            }
        }
    }

    if ( FlexManipControl.GoTo.Error )
    {
        FlexManipAxesStopMan() ;
        SetFlexManipError ( FlexManipControl.GoTo.Error , ERROR_SRC_SYS , LOGICAL_PLATE, EXP_ABORT ) ; //General ID OWN_EXP_ID. stops motors, Sets FlexManipAxes.StopError with 2nd argument, Sets FlexManipAxes.StopErrorSrc with 1st argument
        FlexManipControl.GoTo.IsActive  = 0 ; //when FlexManipAxes.GoTo.IsActive > 0 then the FlexManipHa   ndleOperations will run ManagePosture continously until done (and not enter getPackage/ setPacakge) until done.
        return ;
    }

    switch ( FlexManipControl.GoTo.State )
    {
    case EGT_GoToInit: //initial state of ManagePosture, set in GoToPosture
        //don't start moving before suckResult is 1
        if (( FlexManipControl.GoTo.Flags & FLAG_POST_SUCK_TEST ) && (suckResult != 1))
        {
            break;
        }

        isFirstTrayMotionStep = 1;

        //reset all speeds and acceleration to default values.
        ResetAxesSpeedAcc();

        //OLD: if new tape arm extension is smaller that current then retract.
        //if ( pAxisTape->BH.ReportPosCmd > FlexManipAxes.GoTo.length )
        // is tape arm is extended then retract to standBy position

        //If either plate or spacer need to move, then retract tape arm (if not in standby already).
        if ( ( (!FlexAxisIsOnTarget( LOGICAL_PLATE , FlexManipControl.GoTo.angle, SysState.PosCompTolPlate ))
            || (!FlexAxisIsOnTarget( LOGICAL_SPACER , FlexManipControl.GoTo.Linear , SysState.PosCompTolSpacer)) )
            && (!FlexAxisIsOnTarget(LOGICAL_TAPEARM , ManGeo.FlexStandbyExtPos , SysState.PosCompTolTape)))
        {
            //TrayAxisGoto( LOGICAL_TAPEARM , ManGeo.FlexStandbyExtPos  , FlexManipControl.GoTo.Flags  );
            TapeArmHoming();
            FlexStopAxis(LOGICAL_PLATE) ;
            FlexStopAxis(LOGICAL_SPACER);
            FlexManipControl.GoTo.State = EGT_WaitInitRetract ;
        }
        else
        {
            FlexStopAxis(LOGICAL_TAPEARM);
            FlexStopAxis(LOGICAL_PLATE) ;
            FlexStopAxis(LOGICAL_SPACER);
            FlexManipControl.GoTo.State = EGT_SetTrayStep ;
        }
        break ;

    case EGT_WaitInitRetract: //waiting for tape arm retracting if required

        TapeArmSetPTP();

        CheckAxisGoToTout(exp_manip_axis_goto_too_long1, EXP_FATAL);

        if ( FlexAxisIsOnTarget( LOGICAL_TAPEARM , ManGeo.FlexStandbyExtPos , SysState.PosCompTolTape ))
        {
            FlexManipControl.GoTo.State = EGT_SetTrayStep ;
        }
        break ;

    case EGT_SetTrayStep: //ready for next step
        if (!FlexManipControl.ProfilerStopped) //based on axes profile converged
        { //verify that all motors motion converged before moving on to next step.
            break;
        }
        if (!isFirstTrayMotionStep)
        {
            if (!FlexAxisIsOnTarget( LOGICAL_PLATE , FlexManipControl.GoTo.nextPlateCmd , SysState.PosCompTolPlate))
            {
                SetFlexManipError ( exp_plate_trajectory_calc_diverge1 , ERROR_SRC_SYS , LOGICAL_PLATE, EXP_FATAL ) ; //General ID OWN_EXP_ID. stops motors, Sets FlexManipAxes.StopError with 2nd argument, Sets FlexManipAxes.StopErrorSrc with 1st argument
            }
            if (!FlexAxisIsOnTarget( LOGICAL_SPACER , FlexManipControl.GoTo.nextLinearCmd , SysState.PosCompTolSpacer ))
            {
                SetFlexManipError ( exp_spacer_trajectory_calc_diverge1 , ERROR_SRC_SYS , LOGICAL_SPACER, EXP_FATAL ) ; //General ID OWN_EXP_ID. stops motors, Sets FlexManipAxes.StopError with 2nd argument, Sets FlexManipAxes.StopErrorSrc with 1st argument
            }
        }
        //FindNextPostureCmd returns 1 if final step, 2 if there are more to be performed
        FindNextPostureResult = FindNextPostureCmd((FlexManipControl.GoTo.Flags & FLAG_POST_ON_RAIL) ? 1 : 0,
                                                   FlexManipControl.GoTo.angle, FlexManipControl.GoTo.Linear,
                                                   &FlexManipControl.GoTo.nextPlateCmd, &FlexManipControl.GoTo.nextLinearCmd);

        switch (FindNextPostureResult)
        {
        case -1:
            SetFlexManipError ( exp_illegal_posture_cmd6 , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ; //General ID OWN_EXP_ID. stops motors, Sets FlexManipAxes.StopError with 2nd argument, Sets FlexManipAxes.StopErrorSrc with 1st argument
            return;

        case -3:
            SetFlexManipError (exp_could_not_determine_current_point_segment , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ; //General ID OWN_EXP_ID. stops motors, Sets FlexManipAxes.StopError with 2nd argument, Sets FlexManipAxes.StopErrorSrc with 1st argument
            return;

        case -4:
            SetFlexManipError (exp_could_not_determine_final_point_segment , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ; //General ID OWN_EXP_ID. stops motors, Sets FlexManipAxes.StopError with 2nd argument, Sets FlexManipAxes.StopErrorSrc with 1st argument
            return;

        case 0: //entered a non-allowed Final set point.
            SetFlexManipError ( exp_illegal_deal_package_cmd , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ; //General ID OWN_EXP_ID. stops motors, Sets FlexManipAxes.StopError with 2nd argument, Sets FlexManipAxes.StopErrorSrc with 1st argument
            return;

        case 2:
            TrayAxisGoto( LOGICAL_PLATE , FlexManipControl.GoTo.nextPlateCmd  , FlexManipControl.GoTo.Flags  );
            TrayAxisGoto( LOGICAL_SPACER , FlexManipControl.GoTo.nextLinearCmd  , FlexManipControl.GoTo.Flags  );
            isFirstTrayMotionStep = 0;
            break;

        case 1:
            TrayAxisGoto( LOGICAL_PLATE , FlexManipControl.GoTo.nextPlateCmd  , FlexManipControl.GoTo.Flags  );
            TrayAxisGoto( LOGICAL_SPACER , FlexManipControl.GoTo.nextLinearCmd  , FlexManipControl.GoTo.Flags  );
            isFirstTrayMotionStep = 0;
            FlexManipControl.GoTo.State = EGT_WaitLastTrayStep ;
            break;

        default:
            break;
        }
        break;


    case EGT_WaitLastTrayStep: //wait for step motion to converge

        CheckAxisGoToTout(exp_manip_axis_goto_too_long2, EXP_FATAL);

        if (!FlexManipControl.ProfilerStopped) //if (!FlexManipControl.ServoStopped)
        { //verify that all motors profiles converged before moving on to next step.
            break;
        }

#ifndef debug_ignore_convergence
        if (!FlexAxisIsOnTarget( LOGICAL_PLATE , FlexManipControl.GoTo.nextPlateCmd , SysState.PosCompTolPlate ))
        {
            SetFlexManipError ( exp_plate_trajectory_calc_diverge2 , ERROR_SRC_SYS , LOGICAL_PLATE, EXP_FATAL ) ; //stops motors, Sets FlexManipAxes.StopError with 2nd argument, Sets FlexManipAxes.StopErrorSrc with 1st argument
        }
        if (!FlexAxisIsOnTarget( LOGICAL_SPACER , FlexManipControl.GoTo.nextLinearCmd , SysState.PosCompTolSpacer ))
        {
            SetFlexManipError ( exp_spacer_trajectory_calc_diverge2 , ERROR_SRC_SYS , LOGICAL_SPACER, EXP_FATAL ) ; //General ID OWN_EXP_ID. stops motors, Sets FlexManipAxes.StopError with 2nd argument, Sets FlexManipAxes.StopErrorSrc with 1st argument
        }
#endif

        if (CompareFloatsWithTol(FlexManipControl.GoTo.length, ManGeo.FlexStandbyExtPos, TAPE_ARM_THRESHOLD_FOR_HOMING_INSTEAD_OF_GOTO) == 0)
        {
            TapeArmHoming();
        } else
        {
            TrayAxisGoto( LOGICAL_TAPEARM , FlexManipControl.GoTo.length ,FlexManipControl.GoTo.Flags  );
        }

        if ( FlexManipControl.GoTo.Flags & FLAG_POST_SUCK_NO_TEST )
        {
            InitSuctionMonitor()  ;
        }
        FlexManipControl.GoTo.State = EGT_WaitLength;
        break;

    case EGT_WaitLength:

        TapeArmSetPTP();

        CheckAxisGoToTout(exp_manip_axis_goto_too_long3, EXP_FATAL);

        if ( !FlexAxisIsOnTarget( LOGICAL_TAPEARM , FlexManipControl.GoTo.length , SysState.PosCompTolTape))
        {
            break;
        }

        if (!FlexManipControl.ServoStopped)
        {// since this is the last motion, we need to make sure all axes are with motion converged - check FlexManipControl.ServoStopped rather than FlexManipControl.ProfilerStopped
            break;
        }

        if ( FlexManipControl.GoTo.Flags & FLAG_POST_TURN_OFF_SUCTION_WHEN_DONE )
        {
            StopSuctionMonitor()  ;
            FlexManipControl.GoTo.State = EGT_WaitSuctionOff;
            break;
        }

        FlexManipControl.GoTo.State = EGT_Done;
        break;

    case EGT_WaitSuctionOff:
        if (SysState.Pump.IsDepleted)
        {
            FlexManipControl.GoTo.State = EGT_Done;
        }
        break;

    case EGT_Done:
        FlexManipControl.GoTo.IsActive  = 0 ;
        break ;

    default:
        break;
    }
}


/*
 * Manage host commands for homing of all 3 axes, return 1 if all are homed (S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Homed == 1) and no new homing command received
 */
void FlexDealHomingCommands(void)
{
    if ( FlexManipControl.ControlWordCopy.KillHoming ) //Used control word!!! even if another action is in progress, just kill homing.
    { // Kill homing on request
        FlexManipControl.AxesHomed = 0;
        FlexManipControl.HomingState = E_FlexHomeStateNothing ;
        FlexManipControl.ControlWordCopy.KillHoming = 0;
    }

    if (FlexManipControl.AxesHomed == 0)
    {
        if ( FlexManipControl.ControlWordCopy.DoHoming == 0 )
        {
            FlexManipControl.HomingState = E_FlexHomeStateNothing;
            SetMotionMode(E_SysMotionModeAutomaticIdle) ;
            FlexManipAxesStopMan();
        }
        else
        {
            // Commanded for home
            if ( FlexManipControl.HomingState < E_FlexHomeState_Init )
            { // If had not started yet, do it now
                FlexManipControl.HomingState = E_FlexHomeState_Init;
            }

            // Manage homing of all 3 axes until all are homed (or failed)
            //FlexHoming( ) ;

            if ( FlexManipControl.HomingState == E_FlexHomeState_Error )
            {
                FlexManipControl.ControlWordCopy.DoHoming = 0;
                SetFlexManipError ( exp_automatic_mode_homing_fails , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ; //Consider if EXP_ABORT should also abort GHoming process
            }

            FlexManipControl.PerformHomingFromIdleLoop = 1;
            SetSysTimerTargetSec ( TIMER_MAN_HOMING_TOUT , 10.0f ,&SysTimerStr);
        }
    }
    else
    {//axes are homed,
        FlexManipControl.ControlWordCopy.DoHoming = 0; //reset pending homing command if already homed (for example if given a command when allready homed).
        if (FlexManipControl.ControlWordCopy.Automatic)
        {
            SetMotionMode(E_SysMotionModeAutomaticIdle);
        }
        else
        {
            SetMotionMode(E_SysMotionModeStay);
        }
    }
    //return ( FlexManipControl.AxesHomed &&  (FlexManipControl.ControlWordCopy.DoHoming == 0) ) ? 1 : 0  ;
}


inline void CheckCwForChangeToAutomaticIdle()
{
    if ( ( FlexManipControl.CwOwner && FlexManipControl.ControlWord.Automatic ) ||
         ( (FlexManipControl.CwOwner ==  0) && FlexManipControl.ControlWordOD.Automatic ) )
    {
        if ( ( FlexManipControl.CwOwner && FlexManipControl.ControlWord.MotorsOn ) ||
             ( !FlexManipControl.CwOwner && FlexManipControl.ControlWordOD.MotorsOn ) )
        {
            FlexManipChangeToAutomaticIdleMode() ; // Command all the motors to on
        }
        else
        {
            SetFlexManipError ( exp_illegal_Cw_Automatic_WO_MotorOn , ERROR_SRC_SYS , OWN_EXP_ID, EXP_ABORT ) ;
        }
    }
}


short CheckCwForChangeToStayInPlace()
{
    if ( ( FlexManipControl.CwOwner && !FlexManipControl.ControlWord.Automatic ) ||
         ( (FlexManipControl.CwOwner ==  0) && !FlexManipControl.ControlWordOD.Automatic ) )
    {
        SetMotionMode(E_SysMotionModeStay) ; // Command all the motors to on
        return 1;
    }
    return 0;
}


//inline CheckKillHoming()
//{
//    short cnt;
//    if ( (FlexManipControl.NewCwFromManCmd && FlexManipControl.ControlWordCopy.KillHoming && FlexManipControl.CwOwner  ) ||
//                  (FlexManipControl.NewCwFromOD     && FlexManipControl.ControlWordOD.KillHoming   && !FlexManipControl.CwOwner ) )
//    {
//         for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
//         {
//             SysState.CanAxis[cnt].BH.KillHomeRequestCnt += 1 ;
//         }
//
//         FlexManipControl.NewCwFromManCmd = 0;
//         FlexManipControl.NewCwFromOD = 0;
//    }
//}


/**
 * \brief Operate the manipulator control function
 * Applies suction, if motor is on then --> check homing and deal homing commands if not homed
 * if absolute position is known for tapearm (all axis) then perform TapeArmHandleOperations
 *
 * \param UpdAxis : The axis whose feedback is just update
 * \param pMonRequest -> Motor on request
 * \param pSpeedCmdRadSec -> Speed command
 *
 */
void  UpdateFlexManipControl( void )
{
    short NewCmdManCmd, NewCmdOD, NewHomingManCmd, NewHomingODCmd;

    switch (SysState.Mot.mode)
    {
    case E_SysMotionModeSafeFault:
        break;

    case E_SysMotionModeFault:
        break;

    case E_SysMotionModeMotorOff:
        break;

    case E_SysMotionModeStay://motors always on
        FlexManipAxesStopMan();
        CheckCwForChangeToAutomaticIdle();
        break;

    case E_SysMotionModeIndividual: // Each axis will have its own reference
        FlexManipControl.State = MAN_ST_INIT ;

        //Manual suction cups
        SysState.Package.SuckRequest.us = ManualManCmd.SuctionOn ;
        //SetSysTimerTargetSec ( TIMER_DYNAMIXEL_ON_TMR12 , DYNAMIXEL_MOTOR_ON_TOUT ,&SysTimerStr );
        SysState.Package.LaserRequest = 0;

        FlexManipEEFHandlePackageGrip(); // this is individual activation of the EEF suction (unless OverRideSwitches == 1);
        ApplyFlexLaserLed(); //moved from IdleCBitFlexManip (currently there is no override elements activation for laser and pump since was activated non-directly by core1)
        break;

    case E_SysMotionHoming:
        FlexDealHomingCommands();
        break;

    case E_SysMotionModeAutomaticIdle:   // Nothing to do , just shut manipulator (motors are still on, E_PosModeStayInPlace)
         if (CheckCwForChangeToStayInPlace())
         {
             break;
         }
         if ( !FlexManipControl.ServoMotorOn )
         {
             SetFlexManipError ( exp_Motor_is_off_while_in_auto_idle_mode , ERROR_SRC_SYS , OWN_EXP_ID, EXP_ABORT ) ;
             ManCBit.ManFail = 1;
             break;
         }
         FlexManipAxesStopMan();
         ResetFlexManipLogics() ;

//         CheckKillHoming();

         NewHomingManCmd = (FlexManipControl.NewCwFromManCmd && FlexManipControl.CwOwner)
             && (FlexManipControl.ControlWordCopy.DoHoming || FlexManipControl.ControlWordCopy.KillHoming);

         NewHomingODCmd = (FlexManipControl.NewCwFromOD && !FlexManipControl.CwOwner)
                     && (FlexManipControl.ControlWordOD.DoHoming || FlexManipControl.ControlWordOD.KillHoming);

         if (NewHomingManCmd || NewHomingODCmd )
         {
             if (NewHomingManCmd)
             {
                FlexManipControl.ControlWordCopy = FlexManipControl.ControlWord ;
                FlexManipControl.NewCwFromManCmd = 0;
             }
             if (NewHomingODCmd)
             {
                FlexManipControl.ControlWordCopy = FlexManipControl.ControlWordOD ;
                FlexManipControl.NewCwFromOD = 0;
             }
             SetMotionMode(E_SysMotionHoming);
         }

         NewCmdManCmd = (FlexManipControl.NewCwFromManCmd && FlexManipControl.CwOwner)
                     && (FlexManipControl.ControlWordCopy.Standby || FlexManipControl.ControlWordCopy.DealPackage );

         NewCmdOD =     (FlexManipControl.NewCwFromOD &&  !FlexManipControl.CwOwner)
                     && (FlexManipControl.ControlWordOD.Standby || FlexManipControl.ControlWordOD.DealPackage || FlexManipControl.postureCmdOD);

         if (NewCmdManCmd || NewCmdOD)
         { // each sampled command is being reset when the command is done executing. At this point (no previous pending commands) if there is a new command it will start executing.
             AdvanceEefCounter(); //will trigger sending a new command to EEF
             if (NewCmdManCmd)
             {
                 FlexManipControl.ControlWordCopy = FlexManipControl.ControlWord ;
                 FlexManipControl.NewCwFromManCmd = 0;
             }
             if (NewCmdOD)
             {
                 FlexManipControl.ControlWordCopy = FlexManipControl.ControlWordOD ;
                 FlexManipControl.NewCwFromOD = 0;
             }

             FlexManipControl.NewCommand = 1; //used to signal there is a new command (used only for standBy, homing and deal package are managed as state machine and need to enter every time).

             if ((FlexManipControl.ControlWordCopy.DoHoming + FlexManipControl.ControlWordCopy.Standby + FlexManipControl.ControlWordCopy.DealPackage ) > 1)
             {
                 SetFlexManipError ( exp_illegal_cw_more_than_single_cmd , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ;

                 ResetFlexManipLogics() ;
                 break;
             }

             SetMotionMode(E_SysMotionModeAutomatic) ;
         }

        break;

    case E_SysMotionModeAutomatic: //motors always on, Auto mode - run motion planner

#if DEF_NUM_12V_MANIP_AXES > 0 //if the number of Dynamixel axes greater than 0
        if ( FlexManipControl.ServoMotorOn  == 0 || FlexManipControl.DoorsMotorsOn == 0) //verify that 12V motor on didn't shut down.
        {
            if ( IsSysTimerElapse ( TIMER_DYNAMIXEL_ON_TMR12  ,&SysTimerStr ) )
            {
                //SetManError ( EXCEPT_CANT_SET_MON_AUTO_MAN+N_CAN_SLAVES-1 , ERROR_SRC_SYS ) ;
                SetFlexManipError ( EXCEPT_CANT_SET_MON_AUTO_MAN , ERROR_SRC_SYS , OWN_EXP_ID, EXP_ABORT ) ;
            }
        }
        else
        {
#else
        if ( !FlexManipControl.ServoMotorOn )
        {
            SetFlexManipError ( exp_Motor_is_off_while_in_auto_mode , ERROR_SRC_SYS , OWN_EXP_ID, EXP_ABORT ) ;
            break;
        }
        {//if axes BhCw.bit.MotorOnCmd change this cycle than TapeArmCmd.ServoMotorOn is not yet updated (based on BH.AxisCbit).
#endif
            // Motors are on

#ifdef debug_ignore_convergence
            ManualCheckConvergence();
#endif

            if ( FlexManipControl.AxesHomed ) //Must condition (FlexManipAxes.ControlWord.DoHoming != 0  )
            { // Absolute position is known for all 3 axes, because homing procedure have been successfully completed and no new homing command received.
                // Standby command can be given at any time, including while dealing package. new FlexManipAxes.ControlWordCopy.DealPackage commands are ignored while old DealPackage commands are performed.
                if ( (FlexManipControl.ControlWordCopy.Standby == 0) &&
                     (FlexManipControl.ControlWordCopy.DealPackage == 0) && //sampled dealPackage command not yet finished
                      !(FlexManipControl.postureCmdOD && !FlexManipControl.CwOwner)) //new DealPackage command that need to be sampled
                { // No commanded to do anything
                    SysState.Package.LaserRequest =  0 ;
                    ResetFlexManipLogics() ;
                    FlexManipAxesStopMan() ;
                    SysState.EEF.ControlWord.bit.ActivatePackageGrip = 0;
                    SetMotionMode(E_SysMotionModeAutomaticIdle) ;
                }
                else
                {
                    // Normal operating of the manipulator if received any command: standby/ deal package (put/ get)/ do homing
                    FlexManipHandleOperations( );
                }
            }
            else
            {
                if (FlexManipControl.ControlWordCopy.DoHoming == 0) //in case of kill homing command
                {
                    SetFlexManipError ( exp_homing_lost_at_auto_mode , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ;//homing lost at auto mode
                    SetMotionMode(E_SysMotionModeStay) ;
                }
            }
        }
        break;
    }
}



void ManualCheckConvergence()
{
    short i;
    float threshold[3];

    threshold[0] = SysState.PosConvTolPlate;
    threshold[1] = SysState.PosConvTolTape;
    threshold[2] = SysState.PosConvTolSpacer;
    FlexManipControl.ProfilerStopped = 1;
    FlexManipControl.ServoStopped = 1;

    for (i=0; i <=2 ; i++)
    {
        if (fabsf(SysState.CanAxis[i].BH.UserPosCmd - SysState.CanAxis[i].BH.UserPos) < threshold[i])
        {
            SysState.CanAxis[i].BH.AxisCbit.bit.MotionConverged = 1;
            SysState.CanAxis[i].BH.AxisCbit.bit.ProfileConverged = 1;
        }
        if (!SysState.CanAxis[i].BH.AxisCbit.bit.ProfileConverged) //was MotionConverged
        {
            FlexManipControl.ProfilerStopped = 0;
            FlexManipControl.ServoStopped = 0;
        }
    }
}



/*
 * This routine manages the flex-arm manipulator, called after verifying Motor On,  This routine is called only on automatic mode
 * Note - the correct method to give sequential commands is to give one command, reset it (will not stop current command) give another one only after this first is done!
 */
void FlexManipHandleOperations(void )
{
    short suckResult ;
    //short FixResult;

    // Manage suction
    SysState.Package.SuckRequest.items.DoNotTestSuction = 1; //TODO: cancel and integrate
    suckResult = FlexManipEEFHandlePackageGrip(); //Set SysState.EEF.ControlWord based on SysState.EEF.EEFAutomaticRequest.
    if( suckResult <0 )
    { // Waiting sucker to reach desired state, nothing more to do
        FlexManipAxesStopMan() ;
        return ;
    }

    if ( FlexManipControl.ControlWordCopy.Standby && FlexManipControl.NewCommand )
    { // //There is a new standBy command
        //TODO: need to check if the current posture is on track based on Cw.ON_RAIL
        GoToPosture( 0, ManGeo.FlexStandbySpacerPos , ManGeo.FlexStandbyExtPos, FLAG_POST_ON_RAIL * FlexManipControl.ControlWordCopy.OnRail ) ; //FLAG_POST_AUTO_LINEAR flag removed.
        FlexManipControl.NewCommand = 0;
    }

    if ( (FlexManipControl.postureCmdOD==2) && FlexManipControl.NewCommand )
    { // //There is a new standBy command
        FixCurrentPosture();
        FlexManipControl.NewCommand = 0;
    }

    if ( (FlexManipControl.postureCmdOD==1) && FlexManipControl.NewCommand )
    { // //There is a FlexManipControl command
        GoToPosture( FlexManipControl.PlateOdCmd, FlexManipControl.SpacerOdCmd , FlexManipControl.TapearmOdCmd ,(FlexManipControl.OnRails ? FLAG_POST_ON_RAIL | FLAG_POST_AUTO_LINEAR_TRACK : NO_FLAGS) ) ; //FLAG_POST_AUTO_LINEAR flag removed.
        FlexManipControl.NewCommand = 0;
        //FlexManipControl.postureCmdOD = 0;
    }

    //IsActive is set when using GoToPosture, not when using TrayAxisGoto (usually used for tape arm axis)!!!!!
    if ( FlexManipControl.GoTo.IsActive ) //set by GoToPosture
    { // Wait completion of current posture go

        ManagePosture(suckResult) ;
        return ;
    }

    //We know that FlexManipAxes.GoTo.IsActive == 0 which means that the ManagePosture is done
    if  ( FlexManipControl.postureCmdOD == 1)
    {
        FlexManipAxesStopMan();
        SafeTransitFlexManState(MAN_ST_DONE) ;
        FlexManipControl.postureCmdOD = 0;
    }

    if  ( FlexManipControl.postureCmdOD == 2)
    {
        FlexManipAxesStopMan();
        SafeTransitFlexManState(MAN_ST_DONE) ;
        FlexManipControl.postureCmdOD = 0;
    }

    //We know that FlexManipAxes.GoTo.IsActive == 0 which means that the ManagePosture is done. If FlexManipAxes.ControlWord.Standby is set than the movement was going to Standby.
    if  ( FlexManipControl.ControlWordCopy.Standby )//|| FlexManipControl.ControlWordCopy.PostureCorrection)
    {// Standby completed, no just deal the book keeping
        FlexManipAxesStopMan();
        SafeTransitFlexManState(MAN_ST_DONE) ;
        FlexManipControl.ControlWordCopy.Standby = 0; //reset sampled StandBy command.
        //FlexManipControl.ControlWordCopy.PostureCorrection = 0; //reset sampled StandBy command.
        return ;
    }

    // Package get or put (only options left)

    // Log suspect package contacts
    LogHoldingState() ;

    // It is known that TapeArmHandleOperations() is called for either command for StandBy/ Deal package. StandBy handled with return.
    if (!FlexManipControl.ControlWordCopy.DealPackage)
    {
        return;
    }
    if ( FlexManipControl.ControlWordCopy.PackageGet ) //if received command get package
    {
        FlexGetPackageNew(  suckResult , FLAG_POST_ON_RAIL ) ;
        ApplyFlexLaserLed();
        return ;
    }
    else //if received command put package
    {
        FlexSetPackageNew(  suckResult  ,  FlexManipControl.ControlWordCopy.RepeatAction , FLAG_POST_ON_RAIL ) ;
        ApplyFlexLaserLed();
    }

    //Set laser & LED based on request.
}


void inline AdvanceEefCounter()
{
    SysState.EEF.sentCmdCounter = (SysState.EEF.sentCmdCounter == 0xFF) ? 0 : SysState.EEF.sentCmdCounter+1 ; //the new command is not necessarily different from the previous one!
}


/*
 * build EEF PDORx to be sent to EEF (OutEEFMsg.data[0])
 */
void inline BuildEEFPdoRx1Message(void) //inline syntax means the lines functionality will be copied (allow definition of new local variables) to main code (no function calling).
{
    if (SysState.EEF.ControlWord.all != OutEEFMsg.data[0])
    {
        AdvanceEefCounter();
    }

    OutEEFMsg.data[0] = SysState.EEF.ControlWord.all   ;
    OutEEFMsg.data[1] = (unsigned char) SysState.EEF.sentCmdCounter   ;
    SysState.EEF.bIssueMsg2EEF = bEnableSync ;
}


/*
 * Command laser according to SysState.Package.LaserRequest
 */
void ApplyFlexLaserLed()
{
    if (( SysState.EEF.OverRideSwitches == 0 ) && ( SysState.EEF.PackageGripByODMode == 0 ))
    {
        //set by ObjectDictionary --> SetDxlManual sets ManCmd.ControlWord.Package & ManCmd.ControlWord.PackageGet

        SysState.EEF.ControlWord.bit.LaserOnCmd = SysState.Package.LaserRequest;
        SysState.EEF.ControlWord.bit.LedOnCmd = SysState.Package.LedRequest;
    }
}



void IdleCBitFlexManip()
{
    SysState.Package.LaserMedianValid = SysState.EEF.Status.ElementsStates.bits.LaserMedianValid ;
    SysState.Package.LaserDistMedian = SysState.EEF.Status.ElementsStates.bits.LaserMedianValid ? ((float)SysState.EEF.Status.LaserMedianM) : 0 ;

    ManCBit.NoSuck1 = !SysState.EEF.Status.GripState.bits.FullyGripped;

    if (SysState.Package.LaserMedianValid)

    // if SysState.Package.SuckRequest.items.DoNotTestSuction then FlexManipEEFHandlePackageGrip() always returns 1.
    // otherwise it check (if required by suction state) SysState.Pump.IsHolding & SysState.Pump.IsDepleted.
    SysState.Pump.IsDepleted = SysState.EEF.Status.GripState.bits.Fullyreleased ? 1 : 0 ;
    SysState.Pump.IsHolding =  SysState.EEF.Status.GripState.bits.FullyGripped  ? 1 : 0 ;

    SysState.Package.ManOnState.WellnessStatus = IsManipulatorWell();

    SysState.Package.ManHolds = SysState.EEF.Status.PackageState.all; //done also in LogHoldingState

//    if (SysState.EEF.ControlWord.bit.ActivatePackageGrip && SysState.EEF.Status.GripState.bits.GripError)
//    {
//        SysState.EEF.ControlWord.bit.ActivatePackageGrip = 0;
//    }

    if (SysState.EEF.Status.ElementsStates.bits.CommandMissed)
    {
        SetFlexManipError ( exp_EEF_reported_on_missed_cmd , ERROR_SRC_SYS , OWN_EXP_ID, EXP_WARN ) ;
    }

    if (M2S.Items.ActCmd.cmd.ManualBrakeReleaseCmd & 0xfffe) //activate rotation brake
    {
        SetMotionMode(E_SysMotionModeStay) ;
        ForceMotorOffAndBrakeRelease(&SysState.CanAxis[LOGICAL_PLATE] ,1) ;
    }

    if (M2S.Items.ActCmd.cmd.ManualBrakeReleaseCmd & 0xfffd) //activate rotation brake
    {
        SetMotionMode(E_SysMotionModeStay) ;
        ForceMotorOffAndBrakeRelease(&SysState.CanAxis[LOGICAL_TAPEARM] ,1) ;
    }

    ManCmd.StopError = FlexManipControl.StopError ;
    ManCmd.StopErrorSrc = FlexManipControl.StopErrorSrc  ;
    ManCmd.State = FlexManipControl.State;
}



/* TODO: move to TapeArmManState.c
 * Flex manipulator package grip automatic activation/ dis-activation.
 * Set SysState.EEF.ControlWord based on SysState.EEF.EEFAutomaticRequest.
 * return value:
 * 1: OK
 * 0: Transition to new state not finished.
 * -1: error - EEF did not finish state transition in time.
 *
 * Equivalent to ApplySuckBody() in ManState.
 */
short FlexManipEEFHandlePackageGrip( void ) //used to return 1 if OK, now should be tested in CBit
{
    float twait ;

    //EEF elements are operated directly by Object Dictionary (SDO from CAN1/ M2S.messages) when  OverRideSwitches == 1 (same as the CAN axes are have Individual activation).
    if ( SysState.EEF.OverRideSwitches || SysState.EEF.PackageGripByODMode ) // In OverRideSwitches, SysState.Package.SuckRequest doesn't set the pneumatics activation. It will be set directly by the command word.
    {
        return 0 ;
    }

    //update EEF commands for automatic package release/ grip start. Start timers.

    // If suck command changed, arm change timer
    if ( SysState.Package.SuckRequest.items.DoSuck != SysState.Package.SuckCmd.items.DoSuck )
    {
        twait = ( SysState.Package.SuckRequest.items.DoSuck )  ? ManGeo.TimeForEntireSuck : ManGeo.TimeForEntireSuckRelease ; //TODO:INTEGRATION update values for ManGeo.TimeForEntireSuck & ManGeo.TimeForEntireSuckRelease
        SetSysTimerTargetSec ( TMR_WAIT_SUCK_CHNG , twait + 0.2f ,&SysTimerStr );
    }
    else
    {//if there is no new suck request, verify that the command bit is reset
        if (SysState.EEF.ControlWord.bit.ActivatePackageGrip && SysState.EEF.Status.GripState.bits.GripError)
        {
            SysState.EEF.ControlWord.bit.ActivatePackageGrip = 0;
        }
    }
    SysState.Package.SuckCmd.us = SysState.Package.SuckRequest.us; //copies the SuckRequest to the SuckCmd (only 3 bits, copies as short only).

    SysState.EEF.ControlWord.bit.ActivatePackageGrip = SysState.Package.SuckCmd.items.DoSuck ? 1 : 0 ;

    if ( (SysState.Package.SuckRequest.items.DoSuck && SysState.Pump.IsHolding) ||  ( (SysState.Package.SuckRequest.items.DoSuck == 0) && SysState.Pump.IsDepleted))
    {
        return 1 ; // As expected
    }

    if ( SysState.Package.SuckRequest.items.DoNotTestSuction )
    { // Flagged to apply suction but not to test it
        return 1 ;
    }

    if ( IsSysTimerElapse(TMR_WAIT_SUCK_CHNG,&SysTimerStr) )
        return -1 ; // Failure

    return 0 ; // No match, but still acceptable
}


/*
 * if package lost then return 1.
 */
short IsPackageLost()
{
    if (FlexManipControl.GoTo.Error == exp_goto_package_lost)
    { //package is lost - need to stop all robot operations due to concern of falling package.
        return 1;
    }
    return 0;
}


///*
// * checks if during managePosture, GoTo.Error was set for suction lost failure.
// */
//short IsSuctionLost()
//{
//    if (FlexManipAxes.GoTo.Error == exp_goto_suction_lost)
//    { //suction is lost.
//        return 1;
//    }
//    return 0;
//}


///*
// * checks if during managePosture, GoTo.Error was set for suction lost at init failure.
// */
//short IsSuctionLostAtInit()
//{
//    if (FlexManipAxes.GoTo.Error == exp_goto_suction_lost)
//    { //suction is lost.
//        return 1;
//    }
//    return 0;
//}



///*
// * return 1 is laser lost
// */
//short IsLaserLost()
//{
//    if ( FlexManipAxes.GoTo.Error == exp_goto_laser_loss ) //FlexManipAxes.GoTo.Error is set in managePosture()
//    {
//        return 1;
//    }
//    return 0;
//}

void RequestNeckControl(float NeckAngle2Horizon)
{
    S2M.Items.RobotControl.RemoteCommand.RemoteCommandRequest = 1;
    S2M.Items.RobotControl.RemoteCommand.NeckCommandValid = 0;
    SetSysTimerTargetSec ( TIMER_NECK_CONTROL_REQUEST_TOUT , 0.5f ,&SysTimerStr); // Avoid premature "Stopped" indication
}


short IsNeckControlGranted(void)
{
    if (M2S.Items.ActCmd.cmd.SlaveStatus.Status.NeckFault)
    {
        SetFlexManipError ( exp_Neck_Fault , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ;
    }
    return M2S.Items.ActCmd.cmd.bGrantNeckControl;
}


short IsNeckConvergedToAngle(float NeckAngle2Horizon)
{
    return (M2S.Items.ActCmd.cmd.SlaveStatus.Status.NeckMotionConverged && (CompareFloatsWithTol( M2S.Items.ActCmd.cmd.NeckAngle , NeckAngle2Horizon, AxisToleranceNeck) == 0));
}


short VerifyNeckIncidence (float NeckAngle2Horizon)
{
    short result;

    result = ((CompareFloatsWithTol( M2S.Items.ActCmd.cmd.NeckAngle , NeckAngle2Horizon, AxisToleranceNeck) == 0) && (M2S.Items.ActCmd.cmd.SlaveStatus.Status.NeckMotionConverged) );
    return result;
}


void SetNeckIncidence(float NeckAngle2Horizon)
{
    if (M2S.Items.ActCmd.cmd.bGrantNeckControl)
    {
        S2M.Items.RobotControl.RemoteCommand.NeckCommandRad = NeckAngle2Horizon;
        S2M.Items.RobotControl.RemoteCommand.AutoCompensateLevel = 1;
        S2M.Items.RobotControl.RemoteCommand.RemoteCommandRequest = 1;
        S2M.Items.RobotControl.RemoteCommand.NeckCommandValid = 1;
        SetSysTimerTargetSec ( TIMER_NECK_CMD_TOUT , 2.0f ,&SysTimerStr);
    }
    else
    {
        SetFlexManipError ( exp_illegal_Neck_Cmd_Control_Not_Granted , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ;
    }
}


/*
 * TODO:  Start with tape arm folded. Required to have a final exact tape arm extension.
 * Verify StateMachine.
 */
void FlexSetPackageNew( short suckResult , short IsRepush , short unsigned OnRailFlag)
{
    (void) suckResult ;

    switch ( FlexManipControl.State )
    {
    case MAN_ST_FAILURE:
        break;
    case MAN_ST_INIT: //Tray axes homed (with known position).

        // Initial sanity tests
        if ( FlexInitPackSanity() < 0 ) //no particular issue, but need to notice that FlexInitPackSanity also resets FlexManipAxes.State to MAN_ST_INIT (within the switch statement).
        {
            FlexManipAxesStopMan();
            return ;
        }

        if ( FlexManipControl.State == MAN_ST_FAILURE )
        {
            break ; // Failed already
        }

#ifdef NUM_12V_MANIP_AXES
        // Actuate platform
        ManCmd.Ctl12[AXIS_ID_LSTOP].L12.PosTarget = ManGeo.FlexDoorPosDown ;
        ManCmd.Ctl12[AXIS_ID_RSTOP].L12.PosTarget = ManGeo.FlexDoorPosDown ;
#endif

        // Sucker off, we just go to start position
        StopSuctionNoMonitor(); // Don't suck, don't test

        FlexManipGetThetaTarget(&FlexManipControl.ThetaTarget); //get FlexManipAxes.ThetaTarget based on FlexManipAxes.ControlWordCopy.Side. also set FlexManipAxes.ControlWordCopy.Side based on FlexManipAxes.ControlWord.Side

        SysState.Package.LaserRequest =   1; // Laser will shine all the time allowing package hold detection
        //GetThetaTarget(&FlexManipControl.ThetaTarget); // done in FlexInitPackSanity()

#ifndef debug_ignore_neck_incidence
        RequestNeckControl();
#endif

        SafeTransitFlexManState( TAPE_WAIT_NECK_CONTROL) ; // Verify that the package to be pushed is in place

        break ;

    case TAPE_WAIT_NECK_CONTROL:

#ifndef debug_ignore_neck_incidence
        if (IsSysTimerElapse(TIMER_NECK_CONTROL_REQUEST_TOUT , &SysTimerStr))
        {
            SetFlexManipError ( exp_Neck_Control_Not_Granted_In_Time , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ;
        }
        if (!IsNeckControlGranted())
        {
            return;
        }
#endif

#ifndef debug_ignore_neck_incidence
        if (IsRepush)
        {
            if (!VerifyNeckIncidence(FlexManipControl.NeckIncidenceAngle))
            {
                SetFlexManipError ( exp_Neck_Incidence_Not_Correct_For_Repush , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ;
            }
            SetSysTimerTargetSec ( TIMER_NECK_CMD_TOUT , 2.0f ,&SysTimerStr); //Timer set although already converged
        }
        else
        {
            SetNeckIncidence(FlexManipControl.NeckIncidenceAngle);
        }
#endif

        SafeTransitFlexManState( TAPE_WAIT_NECK_INCIDENCE) ; // Verify that the package to be pushed is in place
        break;

    case TAPE_WAIT_NECK_INCIDENCE: //enter when GoToPosture done (IsActive == 0) unless package is lost.
#ifndef debug_ignore_neck_incidence
        if (IsSysTimerElapse(TIMER_NECK_CMD_TOUT , &SysTimerStr))
        {
            SetFlexManipError ( exp_Neck_Cmd_Not_Done_In_Time , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ;
        }
        if (!IsNeckConvergedToAngle(FlexManipControl.NeckIncidenceAngle))
        {
            return;
        }
#endif

        //TODO:PHASE2 consider changing neck angle during re-push
        if ( IsRepush ) //TODO: verify neck incidence set - FlexManipControl.NeckIncidenceAngle
        { // No need to verify package, just go
            if (FlexAxisIsOnTarget( LOGICAL_PLATE,FlexManipControl.ThetaTarget , SysState.PosCompTolPlate))
            {
                FlexManipControl.YTarget =  getYTargetFromDTargetAbs(FlexManipControl.DTarget) ; //D target may be negative but for Y target purposes (tape arm extension) we need its absolute value
                GoToPosture(FlexManipControl.ThetaTarget, ManGeo.FlexSpacerPosSetPackageShelf , FlexManipControl.YTarget , FLAG_POST_SEEPACK | FLAG_POST_SUCK_NO_TEST | FLAG_POST_TURN_OFF_SUCTION_WHEN_DONE) ;
                SafeTransitFlexManState( TAPE_PUSH_PACK) ; // Verify that the package to be pushed is in place
            }
            else
            {
                SetFlexManipError ( exp_repush_requested_but_plate_angle_wrong , ERROR_SRC_SYS , OWN_EXP_ID, EXP_ABORT ) ;
            }
        }
        else
        {//rotate the plate toward the package, keep tape arm inside until laser is functional.
            if ( (FlexAxisIsOnTarget( LOGICAL_PLATE, 0 , SysState.PosCompTolPlate)) &&
                 (FlexAxisIsOnTarget( LOGICAL_SPACER, ManGeo.FlexStandbySpacerPos , SysState.PosCompTolSpacer)) )
            {
                GoToPosture(FlexManipControl.ThetaTarget, ManGeo.FlexSpacerPosSetPackageShelf , ManGeo.FlexStandbyExtPos , OnRailFlag) ;
                SafeTransitFlexManState( TAPE_WAIT_PACK_VERIFY) ; // Verify that the package to be pushed is in place
            }
            else
            {
                SetFlexManipError ( exp_illegal_cmd_deal_package_while_not_in_standby , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ;
            }
        }
        break ;

    case TAPE_WAIT_PACK_VERIFY: //enter when GoToPosture done (IsActive == 0) unless package is lost.
        // Go to initial position, wait laser indication if fetching

#ifndef debug_ignore_laser
        if (SysState.EEF.Status.ElementsStates.bits.LaserMedianFailed) //indication on Failed to achieve laser median in time
        { // Enough time already in place
            SetFlexManipError ( exp_laser_reading_out_of_valid_range , ERROR_SRC_SYS , OWN_EXP_ID, EXP_ABORT ) ;
            break;
        }
#endif

        // Take laser only if stopped at position
#ifndef debug_ignore_laser
        if ( SysState.Package.LaserMedianValid )
        {
            if (fabsf(GetPackageDistFromCups()) <= ManGeo.FlexArmPackageOnTrayLaserTol) //check is the package is in place on the tray
            {
#endif
                FlexManipControl.YTarget =  getYTargetFromDTargetAbs(FlexManipControl.DTarget) ; //D target may be negative but for Y target purposes (tape arm extension) we need its absolute value
                GoToPosture( FlexManipControl.ThetaTarget, ManGeo.FlexSpacerPosSetPackageShelf , FlexManipControl.YTarget , OnRailFlag | FLAG_POST_SUCK_TEST | FLAG_POST_SEEPACK | FLAG_POST_TURN_OFF_SUCTION_WHEN_DONE ); // rotate plate before tapeArm movement.
                SafeTransitFlexManState( TAPE_PUSH_PACK) ; // Verify that the package to be pushed is in place
#ifndef debug_ignore_laser
            }
            else
            { //Package is not in place on tray
                SetFlexManipError ( exp_package_not_in_place_on_tray , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ;
            }
        }
        else
        { //there is no valid measurement
            SetFlexManipError ( exp_laser_timeout2 , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ;
        }
#endif
        break ;

    case TAPE_PUSH_PACK:// tape arm extended. entered only after ManagePosture() for pushing is done

        if (FlexManipControl.GoTo.Error == exp_goto_suction_lost_at_Init)
        {
            SetFlexManipError ( exp_suction_lost_at_Init_Of_Manage_Posture0 , ERROR_SRC_SYS , OWN_EXP_ID, EXP_WARN ) ; //stops motors, Sets FlexManipAxes.StopError with 2nd argument, Sets FlexManipAxes.StopErrorSrc with 1st argument
            //Suck action failed, abort mission
            StopSuctionMonitor()  ;
            GoToPosture( 0 , ManGeo.FlexStandbySpacerPos , ManGeo.FlexStandbyExtPos , OnRailFlag | FLAG_POST_SUCK_TEST | FLAG_POST_SEEPACK | FLAG_POST_TURN_OFF_SUCTION_WHEN_DONE ) ;
            FlexManipControl.StopError = exp_failed_init_package_suction0;  // SetFlexManipError () not used in order to not stop the motors.
            FlexManipControl.StopErrorFatality = EXP_ABORT;
            SafeTransitFlexManState( TAPE_FINISH_MOTION_BEFORE_FAILURE ) ;
            break ;
        }

        if (FlexManipControl.GoTo.Error == exp_goto_suction_lost) //As currently defined, already in Fatal error!
        { //restart the package set from current position
            ManCBit.GripFail = 1;
        //            SetFlexManipError ( exp_suction_lost_During_Package_Handling0 , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ; //stops motors, Sets FlexManipAxes.StopError with 2nd argument, Sets FlexManipAxes.StopErrorSrc with 1st argument
        //            GoToPosture( FlexManipControl.ThetaTarget, ManGeo.FlexSpacerPosSetPackageShelf , FlexManipControl.YTarget , OnRailFlag | FLAG_POST_SUCK_TEST | FLAG_POST_SEEPACK | FLAG_POST_TURN_OFF_SUCTION_WHEN_DONE ); // rotate plate before tapeArm movement.
        //            //stay at this state and retry
            break ;
        }

        //#ifndef debug_ignore_laser
        //        if (FlexManipControl.GoTo.Error == exp_goto_package_lost)
        //        {
        //            SetFlexManipError ( exp_package_lost_During_Package_Handling , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ;
        //            break;
        //        }
        //#endif

        //        if (FlexManipControl.GoTo.Error == exp_goto_laser_loss)
        //        {
        //            SetFlexManipError ( exp_laser_lost_During_Package_Handling0 , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ;
        //            break;
        //        }


#ifndef debug_ignore_laser
        if(FlexManipControl.GoTo.Error != 0)
        {
            SetFlexManipError ( exp_package_handling_not_identified0 , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ;
            ManCBit.GripFail = 1;
            break;
        }
#endif


        //ManagePosture done and finished without errors.
        StopSuctionMonitor() ;
        //SetSysTimerTargetSec ( TIMER_MAN_TOUT , 1.0f ,&SysTimerStr); // Avoid premature "Stopped" indication
        SafeTransitFlexManState( TAPE_RELEASE_SUCTION ) ; // Verify that the package to be pushed is in place
        break ;


    case TAPE_RELEASE_SUCTION: //if grip released the go to  FlexArmRetreatDist4SuctRelease
        //if ( IsSysTimerElapse(TIMER_MAN_TOUT , &SysTimerStr)  )// Enough time already since suction stop (no need to wait for full release yet).
        if (SysState.Pump.IsDepleted) //once deleted then go to FlexArmRetreatDist4SuctRelease slowly
        {
            GoToPosture(FlexManipControl.ThetaTarget , ManGeo.FlexSpacerPosSetPackageShelf , FlexManipControl.YTarget - ManGeo.FlexArmRetreatDist4SuctRelease, OnRailFlag );//TODO:YAHALI FLAG_POST_SLOW ) ;
            SafeTransitFlexManState( TAPE_GOTO_STANDBY ) ; // Verify that the package to be pushed is in place
        }
        break;

    case TAPE_GOTO_STANDBY: //tape arm at FlexArmRetreatDist4SuctRelease (after grip released). go to standBy
        GoToPosture( 0 , ManGeo.FlexStandbySpacerPos , ManGeo.FlexStandbyExtPos , OnRailFlag ) ;
        SafeTransitFlexManState( TAPE_RESET_NECK_INCIDENCE ) ;
        break;

    case TAPE_RESET_NECK_INCIDENCE: //tape arm at FlexArmRetreatDist4SuctRelease (after grip released). go to standBy
#ifndef debug_ignore_neck_incidence
        SetNeckIncidence(0);
#endif
        SafeTransitFlexManState( TAPE_RETREAT_SDTBY ) ;
        break;

    case TAPE_RETREAT_SDTBY:
#ifndef debug_ignore_neck_incidence
        if (IsSysTimerElapse(TIMER_NECK_CMD_TOUT , &SysTimerStr))
        {
            SetFlexManipError ( exp_Neck_Leveling_Cmd_Not_Done_In_Time , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ;
        }
        if (!IsNeckConvergedToAngle(0))
        {
            return;
        }
#endif
        FlexManipControl.ControlWordCopy.DealPackage = 0; //signal that the dealPackge operation done.
        SafeTransitFlexManState( MAN_ST_DONE ) ; // Verify that the package to be pushed is in place
        break;

    case MAN_ST_DONE:
            // Final
            SysState.Package.LaserRequest = 0;
            StopSuctionMonitor() ;
            break;

    case TAPE_FINISH_MOTION_BEFORE_FAILURE:
        ManCBit.GripFail = 1;
        SafeTransitFlexManState(MAN_ST_FAILURE) ;
        break;

    case TAPE_PACSET_DONE:
        break;
    }
}

/*
 * returns the tape arm extension fine approach value
 */
inline float GetTapeArmExtFineApproach(float LaserDistMedian)
{
    return SysState.CanAxis[LOGICAL_TAPEARM].BH.UserPos + (SysState.Package.LaserDistMedian - ManGeo.FlexArmDistLaser2CupsPressed);
}

/*
 * returns 1 is the laser package measurement is OK to continue GetPackage
 */
inline short IsPackageMeasuredDistOK(float YTargetExtFineApproach, float Dtarget)
{
    float YTargetExpectedExtFineApproach;
    //DExpectedExtFineapproach will keep updating when we get closer to the package
    YTargetExpectedExtFineApproach = getYTargetFromDTargetAbs(FlexManipControl.DTarget);
    return (  (YTargetExtFineApproach <= ManGeo.FlexMaxExtensionTravel ) && ( fabsf(YTargetExtFineApproach - YTargetExpectedExtFineApproach) <= ManGeo.FlexArmETolForPackageY ) );
}



/**
 * \brief Get the angle target and the direction based on FlexManipAxes.CmdSamp.Side
 * If commanded to a specific direction, its the final angle, otherwise the existing commanded position
 */
short FlexManipGetThetaTarget(float * ThetaTarget)
{
    short dir ;
    switch ( FlexManipControl.ControlWordCopy.Side )
    {
    case PICKDIR_LEFT: //left
        *ThetaTarget =  -HalfPi ;
        dir = -1;
        break ;
    case PICKDIR_RIGHT: //right
        *ThetaTarget = HalfPi ;
        dir = 1;
        break ;
    default:
        //*ThetaTarget = SysState.CanAxis[LOGICAL_PLATE].BH.UserPos   ;
        SetFlexManipError ( exp_illegal_deal_package_side0 , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ; //General ID OWN_EXP_ID. stops motors, Sets FlexManipAxes.StopError with 2nd argument, Sets FlexManipAxes.StopErrorSrc with 1st argument
        dir = 0 ; //side not set correctly for Get/ set package.
        break;
    }
    return dir ;
}




/*
 * \brief Get package with enhanced speed
 * TODO:  Start without final destination of tape arm known, get close to the package, then decide on more accurate tape arm extension and apply suction.
 * Verify StateMachine.
 * OnRailFlag = FLAG_POST_ON_RAIL (64) - on rail, 0 - not on rail
 */
void FlexGetPackageNew(short suckResult , short unsigned OnRailFlag)
{
    short unsigned readyForCmdUpdate, OutOfslowApprochRange;
    float YTargetExpectedExtCaorseApproach;
    float YTargerExtFineApproach;

    FlexManipControl.RetryGripPackge = 0;
    //FlexManipAxesStopped = IsFlexManipStopped() ;

    switch ( FlexManipControl.State )
    {
    case MAN_ST_FAILURE:
        break;
    case MAN_ST_INIT:

        FlexManipControl.doneSlowApproch1stItteration = 0;
        // Initial sanity tests
        if ( FlexInitPackSanity() < 0 )
        {
            FlexManipAxesStopMan();
            return ;
        }

        if ( FlexManipControl.State == MAN_ST_FAILURE )
        {
            break ; // Failed already
        }

#ifdef NUM_12V_MANIP_AXES
        // Actuate platform
        ManCmd.Ctl12[AXIS_ID_LSTOP].L12.PosTarget = ManGeo.FlexDoorPosDown ;
        ManCmd.Ctl12[AXIS_ID_RSTOP].L12.PosTarget = ManGeo.FlexDoorPosDown ;
#endif

        // Set the sucker according to Get/Set: on to put package
        StopSuctionNoMonitor()  ; // No suck yet, no wait

        // Time Out
        FlexManipAxesStopMan() ;
        // Go to starting position including rough approach
        FlexManipGetThetaTarget(&FlexManipControl.ThetaTarget); //get FlexManipAxes.ThetaTarget based on FlexManipAxes.ControlWordCopy.Side. also set FlexManipAxes.ControlWordCopy.Side based on FlexManipAxes.ControlWord.Side

#ifndef debug_ignore_neck_incidence
        RequestNeckControl();
#endif
        SafeTransitFlexManState( MAN_ST_WAIT_NECK_CONTROL ); // Prevent next gate only if failed already
        break ;

    case MAN_ST_WAIT_NECK_CONTROL:
#ifndef debug_ignore_neck_incidence
        if (IsSysTimerElapse(TIMER_NECK_CONTROL_REQUEST_TOUT , &SysTimerStr))
        {
            SetFlexManipError ( exp_Neck_Control_Not_Granted_In_Time , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ;
        }
        if (!IsNeckControlGranted())
        {
            return;
        }
#endif

#ifndef debug_ignore_neck_incidence
        if (IsRepush)
        {
            if (!VerifyNeckIncidence(FlexManipControl.NeckIncidenceAngle))
            {
                SetFlexManipError ( exp_Neck_Incidence_Not_Correct_For_Repush , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ;
            }
            SetSysTimerTargetSec ( TIMER_NECK_CMD_TOUT , 2.0f ,&SysTimerStr); //Timer set although already converged
        }
        else
        {
            SetNeckIncidence(FlexManipControl.NeckIncidenceAngle);
        }
#endif

        SafeTransitFlexManState( MAN_ST_WAIT_NECK_INCIDENCE ); // Prevent next gate only if failed already
        break;

    case MAN_ST_WAIT_NECK_INCIDENCE:
#ifndef debug_ignore_neck_incidence
        if (IsSysTimerElapse(TIMER_NECK_CMD_TOUT , &SysTimerStr))
        {
            SetFlexManipError ( exp_Neck_Cmd_Not_Done_In_Time , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ;
        }
        if (!IsNeckConvergedToAngle(FlexManipControl.NeckIncidenceAngle))
        {
            return;
        }
#endif
        // Calculate Rough approach.
        YTargetExpectedExtCaorseApproach = getYTargetFromDTargetAbs(FlexManipControl.DTarget) - FlexManipControl.DFinalApproach; //D target may be negative but for Y target purposes (tape arm extension) we need its absolute value
        FlexManipControl.YTarget = (YTargetExpectedExtCaorseApproach > ManGeo.FlexArmMaxExtWithinTray) ? YTargetExpectedExtCaorseApproach : ManGeo.FlexStandbyExtPos ;
        GoToPosture( FlexManipControl.ThetaTarget, ManGeo.FlexSpacerPosSetPackageShelf , FlexManipControl.YTarget , OnRailFlag ); // rotate plate before tapeArm movement.

        //FlexManipAxes.YTarget =  fabsf(FlexManipAxes.DTarget)  ;

        SysState.Package.LaserRequest =   1;
        SetSysTimerTargetSec ( TMR_LASER_START, 0.35f , &SysTimerStr); // Time for laser to become valid

        SafeTransitFlexManState( MAN_ST_GO_FINE_POSITION ); // Prevent next gate only if failed already
        break ;

    case MAN_ST_EMCSTOP:
        if ( IsSysTimerElapse(TIMER_MAN_TOUT , &SysTimerStr)  )//send the manipulator back home after had the time for full stop (after seeing a stray package).
        {
            //TrayAxisGoto( LOGICAL_TAPEARM , ManGeo.FlexStandbyExtPos , 0 );
            GoToPosture( 0 , ManGeo.FlexStandbySpacerPos , ManGeo.FlexStandbyExtPos , OnRailFlag ) ;
            SafeTransitFlexManState(  MAN_ST_DO_EDGE_STOP ) ;
            //SetSysTimerTargetSec(TIMER_MAN_FINE_POSITION_TOUT, 10.0f, &SysTimerStr); //set timer for manage posture
        }
        else
        {
            FlexManipAxesStopMan()  ;
        }
        break ;

    case MAN_ST_GO_FINE_POSITION: //fine tape arm extension, use TrayAxisGoto in order to reconsider new laser measurements to update the extension distance

        if ( !IsSysTimerElapse(TMR_LASER_START , &SysTimerStr) )  //been enough time for a laser reading
        {
            break;
        }

//        if ( IsSysTimerElapse(TIMER_MAN_FINE_POSITION_TOUT , &SysTimerStr) )  //been enough time for a laser reading
//        {
//            break;
//        }

        //check if there is a valid laser median (and is defined PERFORM_ROUGH_APPROACH also check if to finish rough approach and start fine approach).
        if ( SysState.Package.LaserMedianValid ) //updated in CBit (idle loop) from EEF status.
        {
            //Fine approach - tape arm fine approach extension based on the laser reading.
            YTargerExtFineApproach = GetTapeArmExtFineApproach(SysState.Package.LaserDistMedian)  ;
            // YTargerExtFineApproach = SysState.CanAxis[LOGICAL_TAPEARM].BH.UserPos + (GetPackageDistFromCups())

            if (  IsPackageMeasuredDistOK( YTargerExtFineApproach, FlexManipControl.DTarget) )
            {//Indication a proper distance for tape arm predicted extension based on the laser reading (not too far & close enough to expected target).
                //update the Tape arm command

                FlexManipControl.YTarget = YTargerExtFineApproach + ManGeo.FlexArmPackagePreloadExt;
                
                readyForCmdUpdate = (fabsf(FlexManipControl.YTarget - FlexManipControl.YTargetPreviousCycle) > ManGeo.FlexArmExtUpdateTol) ?  1 : 0;
                OutOfslowApprochRange = (GetPackageDistFromCups() > ManGeo.FlexArmActivateSlowApproach) ? 1 : 0;

                if (GetPackageDistFromCups() > ManGeo.FlexArmSuspectedPackageContactThreshold) //otherwise stops updating tape arm command
                {
                    if (OutOfslowApprochRange  && readyForCmdUpdate)
                    {
                        TrayAxisGoto( LOGICAL_TAPEARM , FlexManipControl.YTarget , 0 ); //doesn't set IsActive flag! will keep entering GetPackage
                        FlexManipControl.YTargetPreviousCycle = FlexManipControl.YTarget;
                    } else
                    {
                        if ( !OutOfslowApprochRange && (readyForCmdUpdate || !FlexManipControl.doneSlowApproch1stItteration) )
                        {
                            TrayAxisGoto( LOGICAL_TAPEARM , FlexManipControl.YTarget , FLAG_POST_SLOW ); //doesn't set IsActive flag! will keep entering GetPackage
                            FlexManipControl.YTargetPreviousCycle = FlexManipControl.YTarget;
                            InitSuctionNoMonitor(); //activate suction without monitor (without testing for timeout and without verifying package by laser)
                            FlexManipControl.doneSlowApproch1stItteration = 1;
                        }
                    }
                } else
                { //stops updating tape arm command
                    if( FlexManipControl.ServoStopped ) //package fine approach done and converged.
                    {
                        FlexManipControl.YTargetRepush = FlexManipControl.YTarget; //set re-push accurate value
                        InitSuctionMonitor();
                        GoToPosture(FlexManipControl.ThetaTarget, ManGeo.FlexSpacerPosSetPackageShelf, ManGeo.FlexStandbyExtPos , OnRailFlag | FLAG_POST_SUCK_TEST | FLAG_POST_SEEPACK | FLAG_POST_TURN_OFF_SUCTION_WHEN_DONE);
                        SafeTransitFlexManState( MAN_ST_RETREAT_WITH_PACAKGE ) ;
                    }
                }
            }
            else
            {//received a laser measurement not expected.
                SetSysTimerTargetSec ( TIMER_MAN_TOUT, 1.5 , &SysTimerStr); // time for complete stop
                FlexManipAxesStopMan()  ;
                SetFlexManipError ( exp_stray_see_pack0 , ERROR_SRC_SYS , OWN_EXP_ID, EXP_ABORT ) ; //stops motors, Sets FlexManipAxes.StopError with 1st argument, Sets FlexManipAxes.StopErrorSrc with 2nd argument
                SafeTransitFlexManState(  MAN_ST_EMCSTOP ) ;
                break;
            }

            CheckAxisGoToTout(exp_manip_axis_goto_too_long4, EXP_FATAL);
        }
        else
        { //no laser reading valid after time out
            //if (  SysState.CanAxis[LOGICAL_TAPEARM].BH.UserPos > fabsf(FlexManipControl.DTarget)  - FlexManipControl.DFinalApproach )
            GoToPosture( 0 , ManGeo.FlexStandbySpacerPos , ManGeo.FlexStandbyExtPos , OnRailFlag );
            SetFlexManipError ( exp_laser_timeout1 , ERROR_SRC_SYS , OWN_EXP_ID, EXP_ABORT ) ; //stops motors, Sets FlexManipAxes.StopError with 1st argument, Sets FlexManipAxes.StopErrorSrc with 2nd argument
            SafeTransitFlexManState( MAN_ST_FAILURE ) ;
            break;
        }

#ifdef NUM_12V_MANIP_AXES
        if ( TapeArmAreDoorsConverged() == 0 )
        {
            //TrayAxisGoto( LOGICAL_TAPEARM , ManGeo.FlexStandbyExtPos , OnRailFlag ); //TODO:DOORS if doors used, consider replace with GoToPosture.
            TapeArmHoming();
            FlexManipControl.StopError = EXCEPT_SHELF_TIMEOUT; // SetFlexManipError () not used in order to not stop the motors.
            //TapeArmCmd.StopError = EXCEPT_LASER_TIMEOUT;
            SafeTransitManState(  MAN_ST_RETREAT ) ;
        }
#endif
        break ;

    case MAN_ST_RETREAT_WITH_PACAKGE: //after package grip (if no errors), given command to retreat by GoToPosture.

        if (FlexManipControl.GoTo.Error == exp_goto_suction_lost_at_Init)
        {
            SetFlexManipError ( exp_suction_lost_at_Init_Of_Manage_Posture1 , ERROR_SRC_SYS , OWN_EXP_ID, EXP_WARN ) ; //stops motors, Sets FlexManipAxes.StopError with 2nd argument, Sets FlexManipAxes.StopErrorSrc with 1st argument
            //Suck action failed, abort mission
            StopSuctionMonitor()  ;
            // Start the long way home
            //GoToPosture( FlexManipAxes.ThetaTarget, ManGeo.FlexSpacerPosSetPackageShelf, ManGeo.FlexStandbyExtPos , OnRailFlag | FLAG_POST_SUCK_TEST | FLAG_POST_SEEPACK);
            GoToPosture( 0 , ManGeo.FlexStandbySpacerPos , ManGeo.FlexStandbyExtPos , OnRailFlag | FLAG_POST_SUCK_TEST | FLAG_POST_SEEPACK | FLAG_POST_TURN_OFF_SUCTION_WHEN_DONE ) ;
            FlexManipControl.StopError = exp_failed_init_package_suction1; // SetFlexManipError () not used in order to not stop the motors.
            FlexManipControl.StopErrorFatality = EXP_ABORT;
            SafeTransitFlexManState( MAN_ST_RESET_NECK_INCIDENCE ) ;
            break ;
        }

//        if (FlexManipControl.GoTo.Error == exp_goto_suction_lost)
//        {//before trying to push back, try to re-grip. //need to r-epush package back to its original place
//            SetFlexManipError ( exp_suction_lost_During_Package_Handling1 , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ; //stops motors, Sets FlexManipAxes.StopError with 2nd argument, Sets FlexManipAxes.StopErrorSrc with 1st argument
//            SafeTransitFlexManState(MAN_ST_RE_GRIP_PACKAGE) ;
//            break;
//        }

//        if (FlexManipControl.GoTo.Error == exp_goto_package_lost)
//        {//package got disconnected
//            SetFlexManipError ( exp_laser_lost_During_Package_Handling1 , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ; //stops motors, Sets FlexManipAxes.StopError with 2nd argument, Sets FlexManipAxes.StopErrorSrc with 1st argument
//            SafeTransitFlexManState(MAN_ST_RE_GRIP_PACKAGE) ;
//            break;
//        }

//        if (FlexManipControl.GoTo.Error == exp_goto_laser_loss) //for some reason the laser turned off. need to put the package back in place.
//        {
//            SetFlexManipError ( exp_laser_lost_During_Package_Handling2 , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ; //stops motors, Sets FlexManipAxes.StopError with 2nd argument, Sets FlexManipAxes.StopErrorSrc with 1st argument
//            SafeTransitFlexManState(MAN_ST_FAILURE) ;
//            break;
//        }

        if (FlexManipControl.GoTo.Error != 0) //any other un-captured error
        {
            SetFlexManipError ( exp_package_handling_not_identified1 , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ;
            SafeTransitFlexManState(MAN_ST_FAILURE) ;
            break;
        }

        // No error, this mean that ManagePosture ended well.
        StopSuctionNoMonitor()  ; // Stop sucking , no wait
        GoToPosture( 0 , ManGeo.FlexStandbySpacerPos , ManGeo.FlexStandbyExtPos , OnRailFlag ) ;
        SafeTransitFlexManState( MAN_ST_RESET_NECK_INCIDENCE ) ;
        break;

//    case MAN_ST_RELEASE_WAIT_STOP:
//        // Command the stop shelves to close
//#ifdef NUM_12V_MANIP_AXES
//        ManCmd.Ctl12[MAN_AXIS_LSTOP].L12.PosTarget = ManGeo.FlexDoorPosUp ;
//        ManCmd.Ctl12[MAN_AXIS_RSTOP].L12.PosTarget = ManGeo.FlexDoorPosUp ;
//
//        SetSysTimerTargetSec ( TMR_WAIT_MAN_FPOS , 0.5f ,&SysTimerStr);
//#else
//        SetSysTimerTargetSec ( TMR_WAIT_MAN_FPOS , 0 ,&SysTimerStr);
//#endif
//        SafeTransitFlexManState(  MAN_ST_DO_EDGE_STOP ) ;
//        break ;

    case MAN_ST_DO_EDGE_STOP: //wait stop shelves to close
        if ( IsSysTimerElapse(TMR_WAIT_MAN_FPOS,&SysTimerStr) )
        {
            if ( FlexManipControl.StopError == 0 ) //need to check in case of retreat after failure.
            {
                SafeTransitFlexManState( MAN_ST_RESET_NECK_INCIDENCE ) ;
                GoToPosture( 0 , ManGeo.FlexStandbySpacerPos , ManGeo.FlexStandbyExtPos , OnRailFlag ) ;
                //Prep2PaletteBack();
            }
            else
            {
                SafeTransitFlexManState(MAN_ST_FAILURE) ;
            }
        }
        break ;

    case MAN_ST_RE_GRIP_PACKAGE:
        if (GetPackageDistFromCups() > ManGeo.FlexArmPackageGrippedLaserTol)
        { //package got disconnected, try to re-grip it
            YTargerExtFineApproach = GetTapeArmExtFineApproach(SysState.Package.LaserDistMedian)  ;
            if (FlexManipControl.RetryGripPackge)
            {
                StopSuctionNoMonitor() ; // Stop sucking , no monitor
                FlexManipControl.YTarget = FlexManipControl.YTargetRepush ;
                SetFlexManipError ( exp_lost_package_grip1 , ERROR_SRC_SYS , OWN_EXP_ID, EXP_WARN ) ; //stops motors, Sets FlexManipAxes.StopError with 1st argument, Sets FlexManipAxes.StopErrorSrc with 2nd argument
                //TODO:INTEGRATION Limit the tape arm current based on tests to avoid crushing packages. limit the driver current.
                //try to re-put package in place
                GoToPosture( FlexManipControl.ThetaTarget, ManGeo.FlexSpacerPosSetPackageShelf, FlexManipControl.YTarget , OnRailFlag | FLAG_POST_SUCK_TEST | FLAG_POST_SEEPACK | FLAG_POST_TURN_OFF_SUCTION_WHEN_DONE);
                SafeTransitFlexManState( MAN_ST_BACK_TO_STANDBY ) ;
                //SetManError ( EXCEPT_PACKAGE_LOST_DURING_GET , ERROR_SRC_SYS ) ;
                break;
            }
            if (YTargerExtFineApproach <= ManGeo.FlexMaxExtensionTravel )
            {
                FlexManipControl.YTarget = YTargerExtFineApproach + ManGeo.FlexArmPackagePreloadExt;
                FlexManipControl.RetryGripPackge = 1;
                GoToPosture(FlexManipControl.ThetaTarget, ManGeo.FlexSpacerPosSetPackageShelf, FlexManipControl.YTarget , OnRailFlag | FLAG_POST_SUCK_NO_TEST );
                SafeTransitFlexManState(MAN_ST_START_RETREAT_AFTER_RE_GRIP_PACKAGE) ;

                break;
            }
            else
            {
                SetFlexManipError ( exp_target_not_reachable1 , ERROR_SRC_SYS , OWN_EXP_ID, EXP_ABORT ) ;
                SafeTransitFlexManState(MAN_ST_FAILURE) ;
                break;
            }
        }
        else
        { // package reading not feasible, throw exception
            SetFlexManipError ( exp_laser_reading_during_grip_too_close , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ;
            SafeTransitFlexManState(MAN_ST_FAILURE) ;
        }
        break;

    case MAN_ST_START_RETREAT_AFTER_RE_GRIP_PACKAGE:
        GoToPosture(FlexManipControl.ThetaTarget, ManGeo.FlexSpacerPosSetPackageShelf, ManGeo.FlexStandbyExtPos , OnRailFlag | FLAG_POST_SUCK_TEST | FLAG_POST_SEEPACK | FLAG_POST_TURN_OFF_SUCTION_WHEN_DONE);
        SafeTransitFlexManState( MAN_ST_RETREAT_WITH_PACAKGE ) ;
        break;

    case MAN_ST_RESET_NECK_INCIDENCE:
#ifndef debug_ignore_neck_incidence
        SetNeckIncidence(0);
#endif
        SafeTransitFlexManState( MAN_ST_WAIT_BEFORE_DONE ) ;
        break;

    case MAN_ST_WAIT_BEFORE_DONE:
#ifndef debug_ignore_neck_incidence
        if (IsSysTimerElapse(TIMER_NECK_CMD_TOUT , &SysTimerStr))
        {
            SetFlexManipError ( exp_Neck_Leveling_Cmd_Not_Done_In_Time , ERROR_SRC_SYS , OWN_EXP_ID, EXP_FATAL ) ;
        }
        if (!IsNeckConvergedToAngle(0))
        {
            return;
        }
#endif
        FlexManipControl.ControlWordCopy.DealPackage = 0; //signal that the dealPackge operation done.
        if (FlexManipControl.StopError)
        {
            SetFlexManipError ( FlexManipControl.StopError , ERROR_SRC_SYS , OWN_EXP_ID, FlexManipControl.StopErrorFatality ) ;
        }
        else
        {
            SafeTransitFlexManState(MAN_ST_DONE) ;
        }
        break;

    case MAN_ST_BACK_TO_STANDBY: // Re-put package in place done. need to retract tape arm and rotate back to stand by
        GoToPosture( 0 , ManGeo.FlexStandbySpacerPos , ManGeo.FlexStandbyExtPos , OnRailFlag ) ;
        SafeTransitFlexManState( MAN_ST_RESET_NECK_INCIDENCE ) ;
        break ;

    case MAN_ST_DONE:
            // Final
            SysState.Package.LaserRequest = 0;
            StopSuctionMonitor() ;
            break;

    default :
        SafeTransitFlexManState(MAN_ST_FAILURE) ;
        break ;
    }
}





/*
 * For Tape arm manipulator get the cartesian position and the reachable space
 */
void TapeArmGetManipulatorLimits (float *x1_out, float *y1_out , float *ymin_out , float *ymax_out  )
{
    *x1_out = 0 ; //currently supported only X=- FlexXDistWheel2PackageAt90DegPlate
    *y1_out = 0 ;
    *ymax_out = 0 ;
    *ymin_out = 0 ;
}





