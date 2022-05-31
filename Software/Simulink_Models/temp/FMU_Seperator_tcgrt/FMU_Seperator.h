/*
 * FMU_Seperator.h
 *
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * Code generation for model "FMU_Seperator".
 *
 * Model version              : 1.6
 * Simulink Coder version : 9.4 (R2020b) 29-Jul-2020
 * C++ source code generated on : Fri Apr 29 13:01:53 2022
 *
 * Target selection: TwinCatGrt.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: Intel->x86-64 (Windows64)
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_FMU_Seperator_h_
#define RTW_HEADER_FMU_Seperator_h_
#include <cmath>
#include <cstring>
#include <stddef.h>
#include <stdlib.h>
#include "rtwtypes.h"
#include "rtw_continuous.h"
#include "rtw_solver.h"
#include "FMU_Seperator_types.h"

/* Shared type includes */
#include "multiword_types.h"
#include "rt_nonfinite.h"
#include "rtGetInf.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetBlockIO
#define rtmGetBlockIO(rtm)             ((rtm)->blockIO)
#endif

#ifndef rtmSetBlockIO
#define rtmSetBlockIO(rtm, val)        ((rtm)->blockIO = (val))
#endif

#ifndef rtmGetRootDWork
#define rtmGetRootDWork(rtm)           ((rtm)->dwork)
#endif

#ifndef rtmSetRootDWork
#define rtmSetRootDWork(rtm, val)      ((rtm)->dwork = (val))
#endif

#ifndef rtmGetU
#define rtmGetU(rtm)                   ((rtm)->inputs)
#endif

#ifndef rtmSetU
#define rtmSetU(rtm, val)              ((rtm)->inputs = (val))
#endif

#ifndef rtmGetY
#define rtmGetY(rtm)                   ((rtm)->outputs)
#endif

#ifndef rtmSetY
#define rtmSetY(rtm, val)              ((rtm)->outputs = (val))
#endif

#ifndef rtmGetErrorStatus
#define rtmGetErrorStatus(rtm)         ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
#define rtmSetErrorStatus(rtm, val)    ((rtm)->errorStatus = (val))
#endif

#define FMU_Seperator_M_TYPE           RT_MODEL_FMU_Seperator_T

/* Block signals (default storage) */
typedef struct {
  real_T Divide;                       /* '<S4>/Divide' */
  boolean_T Delay6;                    /* '<S4>/Delay6' */
  boolean_T Delay9;                    /* '<S4>/Delay9' */
  boolean_T Delay4;                    /* '<S4>/Delay4' */
  boolean_T Delay3;                    /* '<S4>/Delay3' */
  boolean_T Compare;                   /* '<S16>/Compare' */
  boolean_T AND1;                      /* '<S4>/AND1' */
  boolean_T AND2;                      /* '<S4>/AND2' */
  boolean_T AND3;                      /* '<S4>/AND3' */
  boolean_T AND4;                      /* '<S4>/AND4' */
  boolean_T Compare_o;                 /* '<S21>/Compare' */
  boolean_T Compare_p;                 /* '<S17>/Compare' */
  boolean_T Compare_m;                 /* '<S18>/Compare' */
  boolean_T Compare_i;                 /* '<S19>/Compare' */
  boolean_T Compare_n;                 /* '<S20>/Compare' */
  boolean_T Switch;                    /* '<S22>/Switch' */
  boolean_T Switch_g;                  /* '<S23>/Switch' */
  boolean_T Switch_d;                  /* '<S24>/Switch' */
  boolean_T Switch_p;                  /* '<S25>/Switch' */
  boolean_T Switch_l;                  /* '<S26>/Switch' */
  boolean_T Delay12;                   /* '<S4>/Delay12' */
  boolean_T Delay;                     /* '<S4>/Delay' */
  boolean_T Delay1;                    /* '<S4>/Delay1' */
  boolean_T Delay10;                   /* '<S4>/Delay10' */
  boolean_T Delay7;                    /* '<S4>/Delay7' */
  boolean_T UnitDelay;                 /* '<S22>/Unit Delay' */
  boolean_T LogicalOperator4;          /* '<S22>/Logical Operator4' */
  boolean_T LogicalOperator4_m;        /* '<S25>/Logical Operator4' */
  boolean_T LogicalOperator4_f;        /* '<S24>/Logical Operator4' */
  boolean_T LogicalOperator4_j;        /* '<S23>/Logical Operator4' */
  boolean_T LogicalOperator4_e;        /* '<S26>/Logical Operator4' */
  boolean_T UnitDelay_e;               /* '<S26>/Unit Delay' */
} B_FMU_Seperator_T;

/* Block states (default storage) for system '<Root>' */
typedef struct {
  boolean_T DelayInput1_DSTATE;        /* '<S5>/Delay Input1' */
  boolean_T Delay2_DSTATE;             /* '<S4>/Delay2' */
  boolean_T Delay5_DSTATE;             /* '<S4>/Delay5' */
  boolean_T Delay8_DSTATE;             /* '<S4>/Delay8' */
  boolean_T Delay11_DSTATE;            /* '<S4>/Delay11' */
  boolean_T DelayInput1_DSTATE_h;      /* '<S10>/Delay Input1' */
  boolean_T Delay_DSTATE[2500];        /* '<S4>/Delay' */
  boolean_T Delay1_DSTATE[2500];       /* '<S4>/Delay1' */
  boolean_T Delay10_DSTATE[2500];      /* '<S4>/Delay10' */
  boolean_T Delay7_DSTATE[2500];       /* '<S4>/Delay7' */
} DW_FMU_Seperator_T;

/* External inputs (root inport signals with default storage) */
typedef struct {
  real_T SignalToModel[3];             /* '<Root>/SignalToModel' */
  boolean_T PLCToModel[4];             /* '<Root>/PLCToModel' */
} ExtU_FMU_Seperator_T;

/* External outputs (root outports fed by signals with default storage) */
typedef struct {
  boolean_T ModelToPLC[3];             /* '<Root>/ModelToPLC' */
  boolean_T ModelToSignal[2];          /* '<Root>/ModelToSignal' */
} ExtY_FMU_Seperator_T;

/* Real-time Model Data Structure */
struct tag_RTM_FMU_Seperator_T {
  const char_T *errorStatus;
  B_FMU_Seperator_T *blockIO;
  ExtU_FMU_Seperator_T *inputs;
  ExtY_FMU_Seperator_T *outputs;
  DW_FMU_Seperator_T *dwork;
};

/* External data declarations for dependent source files */
#ifdef __cplusplus

extern "C" {

#endif

  extern const char *RT_MEMORY_ALLOCATION_ERROR;

#ifdef __cplusplus

}
#endif

#ifdef __cplusplus

extern "C" {

#endif

  /* Model entry point functions */
  extern RT_MODEL_FMU_Seperator_T *FMU_Seperator(void);
  extern void FMU_Seperator_initialize(RT_MODEL_FMU_Seperator_T *const
    FMU_Seperator_M);
  extern void FMU_Seperator_step(RT_MODEL_FMU_Seperator_T *const FMU_Seperator_M);
  extern void FMU_Seperator_terminate(RT_MODEL_FMU_Seperator_T * FMU_Seperator_M);

#ifdef __cplusplus

}
#endif

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'FMU_Seperator'
 * '<S1>'   : 'FMU_Seperator/Subsystem Reference'
 * '<S2>'   : 'FMU_Seperator/Subsystem Reference/Actuator Down'
 * '<S3>'   : 'FMU_Seperator/Subsystem Reference/Actuator Up'
 * '<S4>'   : 'FMU_Seperator/Subsystem Reference/Logic'
 * '<S5>'   : 'FMU_Seperator/Subsystem Reference/Logic/Detect Rise Positive'
 * '<S6>'   : 'FMU_Seperator/Subsystem Reference/Logic/Detect Rise Positive1'
 * '<S7>'   : 'FMU_Seperator/Subsystem Reference/Logic/Detect Rise Positive2'
 * '<S8>'   : 'FMU_Seperator/Subsystem Reference/Logic/Detect Rise Positive3'
 * '<S9>'   : 'FMU_Seperator/Subsystem Reference/Logic/Detect Rise Positive4'
 * '<S10>'  : 'FMU_Seperator/Subsystem Reference/Logic/Detect Rise Positive5'
 * '<S11>'  : 'FMU_Seperator/Subsystem Reference/Logic/Set-Reset Flip-Flop'
 * '<S12>'  : 'FMU_Seperator/Subsystem Reference/Logic/Set-Reset Flip-Flop1'
 * '<S13>'  : 'FMU_Seperator/Subsystem Reference/Logic/Set-Reset Flip-Flop2'
 * '<S14>'  : 'FMU_Seperator/Subsystem Reference/Logic/Set-Reset Flip-Flop3'
 * '<S15>'  : 'FMU_Seperator/Subsystem Reference/Logic/Set-Reset Flip-Flop4'
 * '<S16>'  : 'FMU_Seperator/Subsystem Reference/Logic/Detect Rise Positive/Positive'
 * '<S17>'  : 'FMU_Seperator/Subsystem Reference/Logic/Detect Rise Positive1/Positive'
 * '<S18>'  : 'FMU_Seperator/Subsystem Reference/Logic/Detect Rise Positive2/Positive'
 * '<S19>'  : 'FMU_Seperator/Subsystem Reference/Logic/Detect Rise Positive3/Positive'
 * '<S20>'  : 'FMU_Seperator/Subsystem Reference/Logic/Detect Rise Positive4/Positive'
 * '<S21>'  : 'FMU_Seperator/Subsystem Reference/Logic/Detect Rise Positive5/Positive'
 * '<S22>'  : 'FMU_Seperator/Subsystem Reference/Logic/Set-Reset Flip-Flop/Discrete'
 * '<S23>'  : 'FMU_Seperator/Subsystem Reference/Logic/Set-Reset Flip-Flop1/Discrete'
 * '<S24>'  : 'FMU_Seperator/Subsystem Reference/Logic/Set-Reset Flip-Flop2/Discrete'
 * '<S25>'  : 'FMU_Seperator/Subsystem Reference/Logic/Set-Reset Flip-Flop3/Discrete'
 * '<S26>'  : 'FMU_Seperator/Subsystem Reference/Logic/Set-Reset Flip-Flop4/Discrete'
 */
#endif                                 /* RTW_HEADER_FMU_Seperator_h_ */
