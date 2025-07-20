#ifndef TRAPEZE_PROFILER_H_DEFINED 
#define TRAPEZE_PROFILER_H_DEFINED


enum E_ProfileMode
{
    EProfile_PerAxis = 0 ,
    EProfile_ToolTip = 1
};



struct CProfiler
{
    float ProfileSpeedBuf[8] ; // !< Buffer for un-filtered Profile speed command rad/sec
    float ProfilePosBuf[8] ; // !< Buffer for un-filtered Profile speed command rad/sec
    float ProfileSpeed ; // !< Profile speed command (m or rad)/sec
    float ProfilePos   ; // !< Profile position command
    float tau          ; // !< Expected delay between speed reference and its convergence
    float accel ;
    float dec ;
    float vmax ;
    float PosTarget ;
    float UnfilteredPos ;
    float PosDiff ;
    float PosMax ;
    float PosMin ;
    short unsigned BufCnt ;
    short ProfilerMode ;
    short Done ;
};

void ResetProfiler ( struct CProfiler * pProf , float pos , float v , short unsigned reset );
short ProgramProfiler(  struct CProfiler * pProf , float vmax , float amax , float dmax , float tau , short unsigned mode );
void ReposProfiler ( struct CProfiler * pProf , float pos  );
void ReposRotProfiler ( struct CProfiler * pProf , float pos , float maxdelta  , float deltagain );

short unsigned  AdvanceProfiler(struct CProfiler * pProf , float dt );

#endif 


