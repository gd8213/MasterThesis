/*
 * Test.cpp
 *
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * Code generation for model "Test".
 *
 * Model version              : 1.6
 * Simulink Coder version : 9.4 (R2020b) 29-Jul-2020
 * C++ source code generated on : Sat Apr 30 14:21:31 2022
 *
 * Target selection: TwinCatGrt.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: Intel->x86-64 (Windows64)
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "Test.h"
#include "Test_private.h"

/* Model step function */
void Test_step(RT_MODEL_Test_T *const Test_M)
{
  ExtU_Test_T *Test_U = static_cast<ExtU_Test_T *>(Test_M->inputs);
  ExtY_Test_T *Test_Y = static_cast<ExtY_Test_T *>(Test_M->outputs);

  /* Outport: '<Root>/Output' incorporates:
   *  Constant: '<Root>/Constant'
   *  Inport: '<Root>/Input'
   *  Sum: '<Root>/Sum'
   */
  Test_Y->Output = (Test_U->Input[0] + 66.0) + Test_U->Input[1];
}

/* Model initialize function */
void Test_initialize(RT_MODEL_Test_T *const Test_M)
{
  UNUSED_PARAMETER(Test_M);
}

/* Model terminate function */
void Test_terminate(RT_MODEL_Test_T * Test_M)
{
  /* model code */
  rt_FREE(Test_M->inputs);
  rt_FREE(Test_M->outputs);
  rt_FREE(Test_M);
}

/* Model data allocation function */
RT_MODEL_Test_T *Test(void)
{
  RT_MODEL_Test_T *Test_M;
  Test_M = new RT_MODEL_Test_T();
  if (Test_M == NULL) {
    return NULL;
  }

  /* external inputs */
  {
    ExtU_Test_T *Test_U = static_cast<ExtU_Test_T *>(malloc(sizeof(ExtU_Test_T)));
    rt_VALIDATE_MEMORY(Test_M,Test_U);
    Test_M->inputs = ((static_cast<ExtU_Test_T *>(Test_U)));
  }

  /* external outputs */
  {
    ExtY_Test_T *Test_Y = static_cast<ExtY_Test_T *>(malloc(sizeof(ExtY_Test_T)));
    rt_VALIDATE_MEMORY(Test_M,Test_Y);
    Test_M->outputs = (Test_Y);
  }

  {
    ExtU_Test_T *Test_U = static_cast<ExtU_Test_T *>(Test_M->inputs);
    ExtY_Test_T *Test_Y = static_cast<ExtY_Test_T *>(Test_M->outputs);

    /* external inputs */
    {
      int32_T i;
      for (i = 0; i < 6; i++) {
        Test_U->Input[i] = 0.0;
      }
    }

    /* external outputs */
    Test_Y->Output = 0.0;
  }

  return Test_M;
}
