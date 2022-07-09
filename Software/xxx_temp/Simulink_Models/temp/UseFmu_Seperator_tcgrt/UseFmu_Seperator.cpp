/*
 * UseFmu_Seperator.cpp
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

#include "UseFmu_Seperator.h"
#include "UseFmu_Seperator_private.h"

/* Model step function */
void UseFmu_Seperator_step(RT_MODEL_UseFmu_Seperator_T *const UseFmu_Seperator_M)
{
  /* (no output/update code required) */
  UNUSED_PARAMETER(UseFmu_Seperator_M);
}

/* Model initialize function */
void UseFmu_Seperator_initialize(RT_MODEL_UseFmu_Seperator_T *const
  UseFmu_Seperator_M)
{
  ExtY_UseFmu_Seperator_T *UseFmu_Seperator_Y =
    static_cast<ExtY_UseFmu_Seperator_T *>(UseFmu_Seperator_M->outputs);

  /* ConstCode for Outport: '<Root>/Hw_SensorUp' */
  UseFmu_Seperator_Y->Hw_SensorUp = 0.0;

  /* ConstCode for Outport: '<Root>/Hw_SensorMiddle' */
  UseFmu_Seperator_Y->Hw_SensorMiddle = 0.0;

  /* ConstCode for Outport: '<Root>/Hw_SensorDown' */
  UseFmu_Seperator_Y->Hw_SensorDown = 0.0;

  /* ConstCode for Outport: '<Root>/Hw_StorageUp' */
  UseFmu_Seperator_Y->Hw_StorageUp = 0.0;

  /* ConstCode for Outport: '<Root>/Hw_StorageDown' */
  UseFmu_Seperator_Y->Hw_StorageDown = 0.0;
}

/* Model terminate function */
void UseFmu_Seperator_terminate(RT_MODEL_UseFmu_Seperator_T * UseFmu_Seperator_M)
{
  /* model code */
  rt_FREE(UseFmu_Seperator_M->inputs);
  rt_FREE(UseFmu_Seperator_M->outputs);
  rt_FREE(UseFmu_Seperator_M);
}

/* Model data allocation function */
RT_MODEL_UseFmu_Seperator_T *UseFmu_Seperator(void)
{
  RT_MODEL_UseFmu_Seperator_T *UseFmu_Seperator_M;
  UseFmu_Seperator_M = new RT_MODEL_UseFmu_Seperator_T();
  if (UseFmu_Seperator_M == NULL) {
    return NULL;
  }

  /* external inputs */
  {
    ExtU_UseFmu_Seperator_T *UseFmu_Seperator_U =
      static_cast<ExtU_UseFmu_Seperator_T *>(malloc(sizeof
      (ExtU_UseFmu_Seperator_T)));
    rt_VALIDATE_MEMORY(UseFmu_Seperator_M,UseFmu_Seperator_U);
    UseFmu_Seperator_M->inputs = ((static_cast<ExtU_UseFmu_Seperator_T *>
      (UseFmu_Seperator_U)));
  }

  /* external outputs */
  {
    ExtY_UseFmu_Seperator_T *UseFmu_Seperator_Y =
      static_cast<ExtY_UseFmu_Seperator_T *>(malloc(sizeof
      (ExtY_UseFmu_Seperator_T)));
    rt_VALIDATE_MEMORY(UseFmu_Seperator_M,UseFmu_Seperator_Y);
    UseFmu_Seperator_M->outputs = (UseFmu_Seperator_Y);
  }

  {
    ExtU_UseFmu_Seperator_T *UseFmu_Seperator_U =
      static_cast<ExtU_UseFmu_Seperator_T *>(UseFmu_Seperator_M->inputs);
    ExtY_UseFmu_Seperator_T *UseFmu_Seperator_Y =
      static_cast<ExtY_UseFmu_Seperator_T *>(UseFmu_Seperator_M->outputs);

    /* external inputs */
    (void)std::memset(UseFmu_Seperator_U, 0, sizeof(ExtU_UseFmu_Seperator_T));

    /* external outputs */
    (void) std::memset(static_cast<void *>(UseFmu_Seperator_Y), 0,
                       sizeof(ExtY_UseFmu_Seperator_T));
  }

  return UseFmu_Seperator_M;
}
