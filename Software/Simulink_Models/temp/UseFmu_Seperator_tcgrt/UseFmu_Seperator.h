/*
 * UseFmu_Seperator.h
 *
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * Code generation for model "UseFmu_Seperator".
 *
 * Model version              : 1.2
 * Simulink Coder version : 9.4 (R2020b) 29-Jul-2020
 * C++ source code generated on : Sun May 29 23:22:47 2022
 *
 * Target selection: TwinCatGrt.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: Intel->x86-64 (Windows64)
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_UseFmu_Seperator_h_
#define RTW_HEADER_UseFmu_Seperator_h_
#include <cstring>
#include <stddef.h>
#include <stdlib.h>
#include "rtwtypes.h"
#include "rtw_continuous.h"
#include "rtw_solver.h"
#include "UseFmu_Seperator_types.h"

/* Shared type includes */
#include "multiword_types.h"
#include "rt_defines.h"

/* Macros for accessing real-time model data structure */
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

#define UseFmu_Seperator_M_TYPE        RT_MODEL_UseFmu_Seperator_T

/* External inputs (root inport signals with default storage) */
typedef struct {
  real_T SamplingTime;                 /* '<Root>/SamplingTime' */
  real_T Signal_CreateContainer;       /* '<Root>/Signal_CreateContainer' */
  real_T Signal_RemoveContainer;       /* '<Root>/Signal_RemoveContainer' */
  real_T Hw_SliderUpExtended;          /* '<Root>/Hw_SliderUpExtended' */
  real_T Hw_SliderDownExtended;        /* '<Root>/Hw_SliderDownExtended' */
} ExtU_UseFmu_Seperator_T;

/* External outputs (root outports fed by signals with default storage) */
typedef struct {
  real_T Hw_SensorUp;                  /* '<Root>/Hw_SensorUp' */
  real_T Hw_SensorMiddle;              /* '<Root>/Hw_SensorMiddle' */
  real_T Hw_SensorDown;                /* '<Root>/Hw_SensorDown' */
  real_T Hw_StorageUp;                 /* '<Root>/Hw_StorageUp' */
  real_T Hw_StorageDown;               /* '<Root>/Hw_StorageDown' */
} ExtY_UseFmu_Seperator_T;

/* Real-time Model Data Structure */
struct tag_RTM_UseFmu_Seperator_T {
  const char_T *errorStatus;
  ExtU_UseFmu_Seperator_T *inputs;
  ExtY_UseFmu_Seperator_T *outputs;
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
  extern RT_MODEL_UseFmu_Seperator_T *UseFmu_Seperator(void);
  extern void UseFmu_Seperator_initialize(RT_MODEL_UseFmu_Seperator_T *const
    UseFmu_Seperator_M);
  extern void UseFmu_Seperator_step(RT_MODEL_UseFmu_Seperator_T *const
    UseFmu_Seperator_M);
  extern void UseFmu_Seperator_terminate(RT_MODEL_UseFmu_Seperator_T
    * UseFmu_Seperator_M);

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
 * '<Root>' : 'UseFmu_Seperator'
 */
#endif                                 /* RTW_HEADER_UseFmu_Seperator_h_ */
