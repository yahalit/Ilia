#ifndef GYRO_H_DEFINED 
#define GYRO_H_DEFINED

short CheckMat(float m[3][3]);

float NormalizeQuat ( float q3t[3] , float q3[3] ) ;
float NormalizeVec ( float q3t[3] , float q3[3] ) ;
void QuatEnu2Ned( float * q1, float * q2  );
void QuatOnQuat( const float * q1, const float * q2 , float * q3 ) ;
void ApplyYaw2Quat( const float y, const float * q2 , float * q3 ) ;
void QNED2ENU( const float * q1, float * q2  );
void QuatSimilarity( float * q1, float * q2 , float * q3 );
void IntegrateQuat( float * q2, float * w , float dT , float * q3 ) ;
void CrossProd( float * a, float *b , float *c) ;
void CorrectQuatByMeasVec ( float * q1, float *anom , float *ameas , float k , float *q3 ) ;

void CorrectZQuatByMeasVec ( float * q2, float * vert , float k  );

void CopyQuat ( float *qSrc  , float * qDst  ) ; 
void ScaleQuat ( float *qSrc  , float * qDst ,float k  ); 
void InvertQuat ( const float *qSrc  , float * qDst  );
void QuatOnInvQuat( float * q1, float * q2 , float * q3 ) ;
void InvQuatOnQuat( const float * q1, const float * q2 , float * q3 ) ;
void Rot2Quat( float Q[3][3],  float q[4]  ) ;
void Quat2Rot( float q[4] , float r[3][3]) ;
void RotateVecByQuat ( float q1[] , float v1[] , float v2[]);
void RotateYByQuat(float q1[] , float v2[]);
void RotateXByQuat ( float q1[] , float v2[]);
void RotateZByQuat ( float q1[] , float v2[]); 

void BuildQuat ( float * axis , float ang , float *qt) ; 
void UnityQuat ( float *q );
void Interpolate (float *a1 , float *a2 , float k , float * a3 )  ; 
float VecMag( float *a) ; 
float VecDist( float *a , float *b ) ;
float FindProximalPoint( float x0 , float y0 , float x1 , float y1 , float tht , float *x2 , float *y2, short unsigned bArcLengtCompensation ) ;
float FindArcRoute(  float x1 , float y1 , float tht, float x2 , float y2  , float * slen );
float FindSplineRoute(float x1, float y1, float tht1, float x2, float y2, float tht2 , float * slen, struct CSpline * pS , short *Fail);


void RotateVecByVecMat( float r[9] , float v1[3] , float v2[3] ) ;
void RotateVecByVecTransposeMat(float r[9], float v1[3], float v2[3]);
void VecMat2Mat( float r[9] , float M[3][3] );


void RotateVecByMat( float r[3][3] , float v1[3] , float v2[3] ) ;
void RotateVecByTransposeMat( float r[3][3] , float v1[3] , float v2[3] ) ;
void UnityMat3( float m[3][3] ) ;
void UnityQuat( float q[4]) ;
void ZeroVec ( float *a ) ;
void SubtractVec ( float *a , float *b , float *c ) ; 
void AddVec ( float *a , float *b , float *c );
float MeanAngle( float a , float b ) ;

float ScalarAngle( float * a, float *b );
float DotProduct( float * a, float *b ) ;
void MeanVec ( float *a , float *b , float *c ) ;
void ScaleVec( float a[] , float s , float b[]) ;


short unsigned IsInBodyAcc(void) ; 
short unsigned IsInBodyRot(void) ; 
short IsInAutoStabilization(void) ; 



//short GetNominalLineDirection( long unsigned TimeValid , float *NomDir ) ;
short CorrectImuWithDelay ( float xnom[] , float xact[] , float k , long unsigned TimeValid ) ;
short CorrectPosWithDelay ( struct CMotionItem * pItem , float d , float k , long unsigned TimeValid );
short unsigned CorrectImuByLine( float LineAngle , float LineOffset , long unsigned TimeValid  );


void GyroAction ( float w[3]  , float newQ[4]  , float dt ) ;
void QuattoEuler(float q[4], float * yaw, float *pitch, float * roll);
float QuattoRoll(float q[4]);
float QuattoYew(float q[4]);
void Euler2Quat(float yaw, float pitch,float roll, float q[]);
void InitGyroIntegration( void) ;

short GetPosWithDelay(long pos[3], float * eta, float * LineSpeed , struct CRouteLogItem *pRoute, long unsigned TimeValid);

#endif
