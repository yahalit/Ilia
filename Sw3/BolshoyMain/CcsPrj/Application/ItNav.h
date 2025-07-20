#ifndef ITNAV_H_DEFINED
#define ITNAV_H_DEFINED


//#define N_MOTION_SEG_IN_Q 64

#define NEAR_ZERO_COS 0.9995 // slightly < 2 deg

#define AZ_OFFSET_IN_REPORT 16384 // Correct for Olivier's bug in Azimuth report

#ifndef NULL
#define NULL ((void*) 0)
#endif

#ifdef IT_NAV_OWNER
#define IN_EXTERN_TAG
#else
#define IN_EXTERN_TAG extern
#endif



/**
\struct The basic instruction line type as communicated from the master controller

struct CMotionItem
{
    long x ;
    long y ;
    long z ;
    float cx ; // !< Direction cosine, should be already normalized
    float cy ; // !< Direction cosine, should be already normalized
    float cz ; // !< Direction cosine, should be already normalized
    short OpCode ;
    short Mode   ;
};
*/

/**
\struct An actual motion segment for RT execution
*/
struct CMotSegment
{
    short unsigned Type ; // !< 0: Rotate in place , 1: Straight segment , 2: circular arc , 3: clothoid section
    short unsigned OwnIndex ; // !< Its own index for self reference
    short unsigned PrevIndex ; // !< Reference to previous segments
    short unsigned NextIndex ; // !< Reference to next segments
    short unsigned SegId    ; // Geometry identifier
    short unsigned Rsvd     ;
    float x1,x2 ; // !< Entry and exit x
    float y1,y2 ;  // !< entry end exit y
    float z1,z2 ; // !< entry end exit z
    float tht1 , tht2 ; // !< Entrance and exit angles (projection on plane)
    float xc , yc ; // !< Center of curvature x and y (On Clothoid: Starting curvature)
    float xc_turn , yc_turn ; // !< Turn centers
    float radius_or_c0 ; // !< Curvature radius of arc (On Clothoid: Rate of curvature change)
    float s , ds1 , ds2 , dds1 ; // !< Length , line start speed and exit speed , line acceleration
    float slope1 , slope2; // !< Slope at entrance and on exit
} ;

/**
* A queue of  CMotSegment lines, describing a full action
*/
struct CSegQueue
{
    short unsigned nPut ; // !< Place to put the next item in the queue
    short unsigned nGet ;
    short unsigned NumElements ;  // !< Total number of way points storage slots in queue - should equal N_MOTION_SEG_IN_Q
    struct CMotSegment seg[N_MOTION_SEG_IN_SQ] ;
    float  cx1, cy1 , x1 , y1 ; // !< Starting direction cosines and position for the line [nPut]
    struct CQueueBuildExp *pExp; // !< Exception handling descriptor
    struct CConstraint * pCons ; // !< Constraint descriptor
    struct CRobotGeom * pGeom ; // !< Geometry descriptor
};


/**
\struct The constraints on the path: speeds and accelerations not to exceed
*/
struct CConstraint
{
    float MaxCurvature ; // Maximum curvature for ground navigation
    float vmax ; // !< Max line speed
    float aradmax;// !< Maximum radial acceleration
    float amax    ; // !< maximum line acceleration
    float dmax   ; // !< maximum line deceleration
//    float SteerSpeed ; // !< Steering speed maximum
    float MaxNeckSpeedCmd ; // !< Maximum neck speed command
    float MaxNeckAccelerationCmd ; // !< Maximum neck speed command
    float MaxSteerSpeedCmd; // !< Maximum steering speed command
    float MaxSteerAccelerationCmd; // !< Maximum steering acceleration command
    float MaxWheelAccelerationCmd; // !< Maximum wheel rad/ec command
    float SOverC ; // !< worst ratio between steering rate and the corresponding curvature rate
    float MaxWheelDevInTwist ;   // !< Maximum allowed wheel deviation while in twist
    float FunnelLateralTol ; // Lateral tolerance for funnel access
    float FunnelAngularTol; // Angular tolerance for funnel access
    float FunnelSplineMinDist ; // Minimum distance to perform a spline
    float FunnelApproachAcc; // Acceleration when approaching the funnel
    float FunnelApproachSpeed; // Spped when approaching the funnel
    float MotionStartLinearTol ; // Maximum distance deviation from start point, still allowing motion start
    float MotionStartAngularTol ; // Maximum angle deviation from start point, still allowing motion start
    float ZforTimeAtBigTorqueDiff; // Filter constant for max torque difference between the wheels
    //float PreArcCurrentAmp ; // !< Follower current on pre-arc stage m/sec
    //float ArcCurrentAmp ; // !< Follower current on arc stage before 2nd wheel goes up m/sec
    //float DiffRotA ; // !< Acceleration for differential rotation
    //float DiffRotS ; // !< Speed for differential rotation
    //float HalfWhDist ; // !< From robot center to wheels
} ;


struct CQueueBuildExp
{
    short InError ;
    short nPutFirst ;
    short unsigned ErrCodeFirst ;
    short nPut ;
    short unsigned ErrCode ;
} ;

/**
* \struct Run time opening of a trajectory sequence
*/
struct CSegRun
{
    short unsigned SegIndex ; // !< The present segment running
    short unsigned Init     ; // !< Initialization flag
    short unsigned DecFlag  ; // !< Flag for deceleration stage while rotating in place
    short unsigned TerminateSeg ; // !< flag to terminate segment run
    float s0 ; // !< The length parameter at segment start
    float s  ; // !< the present value of length parameter within the segment
    float ds  ; // !< The present value of ds/dt
    float Theta   ; // !< Body angle for rotate - in - place action
    float dTheta  ; // !< Body angle speed for rotate - in - place action
    //float RWspeed ; // !< Right wheel speed
    //float LWspeed ; // !< Left wheel speed
    //float LineSpeed ; // !< Line speed
    //float Curvature ; // !< Curvature for calculating steering angles
    struct CQueueBuildExp *pExp; // !< Exception handler
    short NextQueueReady ; // !< Indication that a queue switch is ready
    short JumpMode ; // !< Mode for the next queue acceptance
    float SegDone ; // !< Distance covered on the run
    float FullSegsDone ; // !< Distance covered on full segments in the run
    float Curvature ; // !< Current speed of motion
    float Slope ; // !< The terrain slope
    short State ; // Profile state
    short SubState ; // Profile substate
} ;

/*
 * \struct for describing specific shelf actions
 */
struct CShelfRunPars
{
    float ArcSpeed  ; // !< THe speed on the arc
    float PoleSpeed ; // !< The speed on the pole
    float PoleLineAcc ; // !< Provision for on-pole acceleration
    float ShelfSpeed ; // !< Speed on the shelf
    float ShelfAcceleration ; // !< Acceleration on the shelf
    //float IntershelfDist ; // !< Inter-shelf distance
    float CenterProjHeight ; // !< Height of the neck projection on the main wheels plane
    float CrabAcceleration ; // !< The acceleration in crab motion
    float CrabSpeed ; // !< The speed of crab motion
    float DiffModeSpeed; // !< Final speed at differential rotation mode
    float DiffModeAcc; // !< Acceleration at differential rotation mode
    float Xbase; // X base for climb. Note that this is a coordinate of the present vertical. Not necessarily the start point
    float Ybase; // Y base for climb. Note that this is a coordinate of the present vertical. Not necessarily the start point
} ;

EXTERN_TAG struct CShelfRunPars AutomaticRunPars ;

struct CYawHistoryItem
{
    short x;
    short y;
    short Tangent;
    short yaw;
};


#define N_YAWHIST_ITEM 32
struct CYawHistory
{
    struct CYawHistoryItem Item[N_YAWHIST_ITEM];
    short  PutPtr;       // At the PutPtr there is always a new measurement, whose distance to the previous
                         // may be shorter than a nominal space interval
    short  RobotTailPtr; // Pointer to the estimated tail position
};
EXTERN_TAG struct CYawHistory YawHistory;



/**
 * \struct Commands for manual routing (robot level travel commands that are not a queued path)
 */
struct CManRouteCmdImg
{
    float LineAcc ;
    float CurvatureAcc ;
    float LineSpeedCmd ;
    float CurvatureCmd ;
    float dCurvatureCmd;

    short CrabCrawl ; // !< Flag to command a crab crawl 1: right, 0: yew , -1: left
//    short ShelfMode ; // !< Mode of motion over shelf
//    short ShelfSubMode ; // !< Submode of motion
};

/**
 * \struct Commands for manual routing (robot level travel commands that are not a queued path)
 */
struct CManRouteCmd
{
    float LineAcc ;
    float CurvatureAcc ;

    float LineSpeedCmd ;
    float CurvatureCmd ;
    float dCurvatureCmd;
    float TangentDir;

    float RefQuat[4]   ; // !< Reference quaternion
    float MonitorQuat[4]   ; // !< Quaternion for detection of line deviation

    short ManipLockRequest ;
    short ManipLockFlag ;

    short CrabCrawl ; // !< Flag to command a crab crawl 1: right, 0: yew , -1: left
    short ShelfMode ; // !< Mode of motion over shelf
    short DisableResetNeckPosTarget ;
    short ShelfSubMode ; // !< Submode of motion
    short ShelfSubSubMode ; // !< Sub sub mode of motion
    short unsigned Algn ;

    struct CShelfRunPars ShelfRunPars ;
    short unsigned ShelfWidthTarget ;
    short unsigned JunctionMode ; // enum E_JunctionMode, whether junction needs be looked for and by what method
};

float GetItemDistance(struct CMotionItem *pItem1, struct CMotionItem *pItem2, float * dTheta);

short ProcSeg(struct CMotionItem *pItem1 , struct CMotionItem *pItem2 , struct CSegQueue *pQ) ;
short QueueCleanup( struct CSegQueue *pQ) ;
short ProcQueueTimes( struct CSegQueue *pQ , float v0 , float vfin  );
void InitSegQueue(  struct CSegQueue *pQ , struct CConstraint *pCons,struct CQueueBuildExp *QExp,  struct CMotionItem *pItem) ;
short unsigned GoMotionQueue( struct CSegQueue *pQ  , struct CSegRun *pRun , float dT , short *RunType );
short CheckMotionQueues( void );
short WhereAmI( struct CSegQueue *pQ  , struct CSegRun *pRun , float *pS , float *pTangent , float *pX , float *pY , struct CMotSegment **ppSeg );
float CurveCorrection( float DeltaS  );

short MotionController(void) ;
//short CheckMotionType( void) ;
short CaptureLastPosition( struct CMotionItem * pItem ) ;
short unsigned IsNearItem( struct CMotionItem * p1 , struct CMotionItem * p2) ;

void StepTowards(float * value, float target, float maxstep);
void StepTowards2Sided(float * value, float target, float maxupstep, float maxdnstep);

short unsigned IsInClimb() ;
short unsigned IsInShelf() ;
float GetDrDtheta(float cin, float cdot);

IN_EXTERN_TAG struct CSegQueue SegQ[1] ;//motion segment with constant acceleration.
IN_EXTERN_TAG struct CManRouteCmd ManRouteCmd ;
IN_EXTERN_TAG struct CManRouteCmdImg ManRouteCmdImage ;

IN_EXTERN_TAG struct CConstraint Constraint ;
IN_EXTERN_TAG struct CQueueBuildExp QExp ;
IN_EXTERN_TAG struct CQueueBuildExp RExp ;
IN_EXTERN_TAG struct CSegRun SegRun ;
IN_EXTERN_TAG short unsigned PdoManTxScoreBoard ;
IN_EXTERN_TAG short unsigned PdoMalinkiTxScoreBoard ;
IN_EXTERN_TAG long unsigned ExpectedPdo1TxScoreBoard;

#endif
