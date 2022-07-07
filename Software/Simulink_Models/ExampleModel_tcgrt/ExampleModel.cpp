/*
 * ExampleModel.cpp
 *
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * Code generation for model "ExampleModel".
 *
 * Model version              : 1.4
 * Simulink Coder version : 9.4 (R2020b) 29-Jul-2020
 * C++ source code generated on : Sat Jun  4 14:44:09 2022
 *
 * Target selection: TwinCatGrt.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: Intel->x86-64 (Windows64)
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "ExampleModel.h"
#include "ExampleModel_private.h"

/*
 * This function updates continuous states using the ODE3 fixed-step
 * solver algorithm
 */
static void rt_ertODEUpdateContinuousStates(RTWSolverInfo *si ,
  RT_MODEL_ExampleModel_T *const ExampleModel_M)
{
  /* Solver Matrices */
  static const real_T rt_ODE3_A[3] = {
    1.0/2.0, 3.0/4.0, 1.0
  };

  static const real_T rt_ODE3_B[3][3] = {
    { 1.0/2.0, 0.0, 0.0 },

    { 0.0, 3.0/4.0, 0.0 },

    { 2.0/9.0, 1.0/3.0, 4.0/9.0 }
  };

  time_T t = rtsiGetT(si);
  time_T tnew = rtsiGetSolverStopTime(si);
  time_T h = rtsiGetStepSize(si);
  real_T *x = rtsiGetContStates(si);
  ODE3_IntgData *id = static_cast<ODE3_IntgData *>(rtsiGetSolverData(si));
  real_T *y = id->y;
  real_T *f0 = id->f[0];
  real_T *f1 = id->f[1];
  real_T *f2 = id->f[2];
  real_T hB[3];
  int_T i;
  int_T nXc = 1;
  rtsiSetSimTimeStep(si,MINOR_TIME_STEP);

  /* Save the state values at time t in y, we'll use x as ynew. */
  (void) std::memcpy(y, x,
                     static_cast<uint_T>(nXc)*sizeof(real_T));

  /* Assumes that rtsiSetT and ModelOutputs are up-to-date */
  /* f0 = f(t,y) */
  rtsiSetdX(si, f0);
  ExampleModel_derivatives(ExampleModel_M);

  /* f(:,2) = feval(odefile, t + hA(1), y + f*hB(:,1), args(:)(*)); */
  hB[0] = h * rt_ODE3_B[0][0];
  for (i = 0; i < nXc; i++) {
    x[i] = y[i] + (f0[i]*hB[0]);
  }

  rtsiSetT(si, t + h*rt_ODE3_A[0]);
  rtsiSetdX(si, f1);
  ExampleModel_step(ExampleModel_M);
  ExampleModel_derivatives(ExampleModel_M);

  /* f(:,3) = feval(odefile, t + hA(2), y + f*hB(:,2), args(:)(*)); */
  for (i = 0; i <= 1; i++) {
    hB[i] = h * rt_ODE3_B[1][i];
  }

  for (i = 0; i < nXc; i++) {
    x[i] = y[i] + (f0[i]*hB[0] + f1[i]*hB[1]);
  }

  rtsiSetT(si, t + h*rt_ODE3_A[1]);
  rtsiSetdX(si, f2);
  ExampleModel_step(ExampleModel_M);
  ExampleModel_derivatives(ExampleModel_M);

  /* tnew = t + hA(3);
     ynew = y + f*hB(:,3); */
  for (i = 0; i <= 2; i++) {
    hB[i] = h * rt_ODE3_B[2][i];
  }

  for (i = 0; i < nXc; i++) {
    x[i] = y[i] + (f0[i]*hB[0] + f1[i]*hB[1] + f2[i]*hB[2]);
  }

  rtsiSetT(si, tnew);
  rtsiSetSimTimeStep(si,MAJOR_TIME_STEP);
}

/* Model step function */
void ExampleModel_step(RT_MODEL_ExampleModel_T *const ExampleModel_M)
{
  B_ExampleModel_T *ExampleModel_B = ExampleModel_M->blockIO;
  X_ExampleModel_T *ExampleModel_X = ExampleModel_M->contStates;
  ExtY_ExampleModel_T *ExampleModel_Y = static_cast<ExtY_ExampleModel_T *>
    (ExampleModel_M->outputs);
  if (rtmIsMajorTimeStep(ExampleModel_M)) {
    /* set solver stop time */
    if (!(ExampleModel_M->Timing.clockTick0+1)) {
      rtsiSetSolverStopTime(ExampleModel_M->solverInfo,
                            ((ExampleModel_M->Timing.clockTickH0 + 1) *
        ExampleModel_M->Timing.stepSize0 * 4294967296.0));
    } else {
      rtsiSetSolverStopTime(ExampleModel_M->solverInfo,
                            ((ExampleModel_M->Timing.clockTick0 + 1) *
        ExampleModel_M->Timing.stepSize0 + ExampleModel_M->Timing.clockTickH0 *
        ExampleModel_M->Timing.stepSize0 * 4294967296.0));
    }
  }                                    /* end MajorTimeStep */

  /* Update absolute time of base rate at minor time step */
  if (rtmIsMinorTimeStep(ExampleModel_M)) {
    ExampleModel_M->Timing.t[0] = rtsiGetT(ExampleModel_M->solverInfo);
  }

  /* TransferFcn: '<Root>/Transfer Fcn' */
  ExampleModel_B->TransferFcn = 0.0;
  ExampleModel_B->TransferFcn += ExampleModel_X->TransferFcn_CSTATE;

  /* Outport: '<Root>/Output' */
  ExampleModel_Y->Output = ExampleModel_B->TransferFcn;
  if (rtmIsMajorTimeStep(ExampleModel_M)) {
    rt_ertODEUpdateContinuousStates(ExampleModel_M->solverInfo, ExampleModel_M);

    /* Update absolute time for base rate */
    /* The "clockTick0" counts the number of times the code of this task has
     * been executed. The absolute time is the multiplication of "clockTick0"
     * and "Timing.stepSize0". Size of "clockTick0" ensures timer will not
     * overflow during the application lifespan selected.
     * Timer of this task consists of two 32 bit unsigned integers.
     * The two integers represent the low bits Timing.clockTick0 and the high bits
     * Timing.clockTickH0. When the low bit overflows to 0, the high bits increment.
     */
    if (!(++ExampleModel_M->Timing.clockTick0)) {
      ++ExampleModel_M->Timing.clockTickH0;
    }

    ExampleModel_M->Timing.t[0] = rtsiGetSolverStopTime
      (ExampleModel_M->solverInfo);

    {
      /* Update absolute timer for sample time: [0.01s, 0.0s] */
      /* The "clockTick1" counts the number of times the code of this task has
       * been executed. The resolution of this integer timer is 0.01, which is the step size
       * of the task. Size of "clockTick1" ensures timer will not overflow during the
       * application lifespan selected.
       * Timer of this task consists of two 32 bit unsigned integers.
       * The two integers represent the low bits Timing.clockTick1 and the high bits
       * Timing.clockTickH1. When the low bit overflows to 0, the high bits increment.
       */
      ExampleModel_M->Timing.clockTick1++;
      if (!ExampleModel_M->Timing.clockTick1) {
        ExampleModel_M->Timing.clockTickH1++;
      }
    }
  }                                    /* end MajorTimeStep */
}

/* Derivatives for root system: '<Root>' */
void ExampleModel_derivatives(RT_MODEL_ExampleModel_T *const ExampleModel_M)
{
  X_ExampleModel_T *ExampleModel_X = ExampleModel_M->contStates;
  ExtU_ExampleModel_T *ExampleModel_U = static_cast<ExtU_ExampleModel_T *>
    (ExampleModel_M->inputs);
  XDot_ExampleModel_T *_rtXdot;
  _rtXdot = ((XDot_ExampleModel_T *) ExampleModel_M->derivs);

  /* Derivatives for TransferFcn: '<Root>/Transfer Fcn' incorporates:
   *  Inport: '<Root>/Input'
   */
  _rtXdot->TransferFcn_CSTATE = 0.0;
  _rtXdot->TransferFcn_CSTATE += -ExampleModel_X->TransferFcn_CSTATE;
  _rtXdot->TransferFcn_CSTATE += ExampleModel_U->Input;
}

/* Model initialize function */
void ExampleModel_initialize(RT_MODEL_ExampleModel_T *const ExampleModel_M)
{
  X_ExampleModel_T *ExampleModel_X = ExampleModel_M->contStates;

  /* InitializeConditions for TransferFcn: '<Root>/Transfer Fcn' */
  ExampleModel_X->TransferFcn_CSTATE = 0.0;
}

/* Model terminate function */
void ExampleModel_terminate(RT_MODEL_ExampleModel_T * ExampleModel_M)
{
  rt_FREE(ExampleModel_M->solverInfo);

  /* model code */
  rt_FREE(ExampleModel_M->blockIO);
  rt_FREE(ExampleModel_M->contStates);
  rt_FREE(ExampleModel_M->inputs);
  rt_FREE(ExampleModel_M->outputs);
  rt_FREE(ExampleModel_M);
}

/* Model data allocation function */
RT_MODEL_ExampleModel_T *ExampleModel(void)
{
  RT_MODEL_ExampleModel_T *ExampleModel_M;
  ExampleModel_M = new RT_MODEL_ExampleModel_T();
  if (ExampleModel_M == NULL) {
    return NULL;
  }

  {
    /* Setup solver object */
    RTWSolverInfo *rt_SolverInfo = (RTWSolverInfo *) malloc(sizeof(RTWSolverInfo));
    rt_VALIDATE_MEMORY(ExampleModel_M,rt_SolverInfo);
    ExampleModel_M->solverInfo = (rt_SolverInfo);
    rtsiSetSimTimeStepPtr(ExampleModel_M->solverInfo,
                          &ExampleModel_M->Timing.simTimeStep);
    rtsiSetTPtr(ExampleModel_M->solverInfo, &rtmGetTPtr(ExampleModel_M));
    rtsiSetStepSizePtr(ExampleModel_M->solverInfo,
                       &ExampleModel_M->Timing.stepSize0);
    rtsiSetdXPtr(ExampleModel_M->solverInfo, &ExampleModel_M->derivs);
    rtsiSetContStatesPtr(ExampleModel_M->solverInfo, (real_T **)
                         &ExampleModel_M->contStates);
    rtsiSetNumContStatesPtr(ExampleModel_M->solverInfo,
      &ExampleModel_M->Sizes.numContStates);
    rtsiSetNumPeriodicContStatesPtr(ExampleModel_M->solverInfo,
      &ExampleModel_M->Sizes.numPeriodicContStates);
    rtsiSetPeriodicContStateIndicesPtr(ExampleModel_M->solverInfo,
      &ExampleModel_M->periodicContStateIndices);
    rtsiSetPeriodicContStateRangesPtr(ExampleModel_M->solverInfo,
      &ExampleModel_M->periodicContStateRanges);
    rtsiSetErrorStatusPtr(ExampleModel_M->solverInfo, (&rtmGetErrorStatus
      (ExampleModel_M)));
    rtsiSetRTModelPtr(ExampleModel_M->solverInfo, ExampleModel_M);
  }

  rtsiSetSolverName(ExampleModel_M->solverInfo,"ode3");

  /* block I/O */
  {
    B_ExampleModel_T *b = (B_ExampleModel_T *) malloc(sizeof(B_ExampleModel_T));
    rt_VALIDATE_MEMORY(ExampleModel_M,b);
    ExampleModel_M->blockIO = (b);
  }

  /* states (continuous) */
  {
    X_ExampleModel_T *x = (X_ExampleModel_T *) malloc(sizeof(X_ExampleModel_T));
    rt_VALIDATE_MEMORY(ExampleModel_M,x);
    ExampleModel_M->contStates = (x);
  }

  /* external inputs */
  {
    ExtU_ExampleModel_T *ExampleModel_U = static_cast<ExtU_ExampleModel_T *>
      (malloc(sizeof(ExtU_ExampleModel_T)));
    rt_VALIDATE_MEMORY(ExampleModel_M,ExampleModel_U);
    ExampleModel_M->inputs = ((static_cast<ExtU_ExampleModel_T *>(ExampleModel_U)));
  }

  /* external outputs */
  {
    ExtY_ExampleModel_T *ExampleModel_Y = static_cast<ExtY_ExampleModel_T *>
      (malloc(sizeof(ExtY_ExampleModel_T)));
    rt_VALIDATE_MEMORY(ExampleModel_M,ExampleModel_Y);
    ExampleModel_M->outputs = (ExampleModel_Y);
  }

  {
    B_ExampleModel_T *ExampleModel_B = ExampleModel_M->blockIO;
    X_ExampleModel_T *ExampleModel_X = ExampleModel_M->contStates;
    ExtU_ExampleModel_T *ExampleModel_U = static_cast<ExtU_ExampleModel_T *>
      (ExampleModel_M->inputs);
    ExtY_ExampleModel_T *ExampleModel_Y = static_cast<ExtY_ExampleModel_T *>
      (ExampleModel_M->outputs);
    rtsiSetSimTimeStep(ExampleModel_M->solverInfo, MAJOR_TIME_STEP);
    ExampleModel_M->intgData.y = ExampleModel_M->odeY;
    ExampleModel_M->intgData.f[0] = ExampleModel_M->odeF[0];
    ExampleModel_M->intgData.f[1] = ExampleModel_M->odeF[1];
    ExampleModel_M->intgData.f[2] = ExampleModel_M->odeF[2];
    ExampleModel_M->contStates = ((X_ExampleModel_T *) ExampleModel_X);
    rtsiSetSolverData(ExampleModel_M->solverInfo, static_cast<void *>
                      (&ExampleModel_M->intgData));
    rtmSetTPtr(ExampleModel_M, &ExampleModel_M->Timing.tArray[0]);
    ExampleModel_M->Timing.stepSize0 = 0.01;

    /* block I/O */
    (void) std::memset((static_cast<void *>(ExampleModel_B)), 0,
                       sizeof(B_ExampleModel_T));

    /* states (continuous) */
    {
      (void) std::memset(static_cast<void *>(ExampleModel_X), 0,
                         sizeof(X_ExampleModel_T));
    }

    /* external inputs */
    ExampleModel_U->Input = 0.0;

    /* external outputs */
    ExampleModel_Y->Output = 0.0;
  }

  return ExampleModel_M;
}
