/*
 * FMU_Seperator.cpp
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

#include "FMU_Seperator.h"
#include "FMU_Seperator_private.h"

/* Model step function */
void FMU_Seperator_step(RT_MODEL_FMU_Seperator_T *const FMU_Seperator_M)
{
  B_FMU_Seperator_T *FMU_Seperator_B = FMU_Seperator_M->blockIO;
  DW_FMU_Seperator_T *FMU_Seperator_DW = FMU_Seperator_M->dwork;
  ExtU_FMU_Seperator_T *FMU_Seperator_U = static_cast<ExtU_FMU_Seperator_T *>
    (FMU_Seperator_M->inputs);
  ExtY_FMU_Seperator_T *FMU_Seperator_Y = static_cast<ExtY_FMU_Seperator_T *>
    (FMU_Seperator_M->outputs);
  real_T tmp_1;
  int_T idxDelay;
  uint32_T tmp_0;
  boolean_T tmp;

  /* Delay: '<S4>/Delay6' */
  FMU_Seperator_B->Delay6 = FMU_Seperator_B->Switch_d;

  /* Delay: '<S4>/Delay9' */
  FMU_Seperator_B->Delay9 = FMU_Seperator_B->Switch_p;

  /* Delay: '<S4>/Delay12' */
  FMU_Seperator_B->Delay12 = FMU_Seperator_B->Switch_l;

  /* Outport: '<Root>/ModelToPLC' */
  FMU_Seperator_Y->ModelToPLC[0] = FMU_Seperator_B->Delay6;
  FMU_Seperator_Y->ModelToPLC[1] = FMU_Seperator_B->Delay9;
  FMU_Seperator_Y->ModelToPLC[2] = FMU_Seperator_B->Delay12;

  /* Delay: '<S4>/Delay4' */
  FMU_Seperator_B->Delay4 = FMU_Seperator_B->Switch;

  /* Delay: '<S4>/Delay3' */
  FMU_Seperator_B->Delay3 = FMU_Seperator_B->Switch_g;

  /* Outport: '<Root>/ModelToSignal' */
  FMU_Seperator_Y->ModelToSignal[0] = FMU_Seperator_B->Delay4;
  FMU_Seperator_Y->ModelToSignal[1] = FMU_Seperator_B->Delay3;

  /* Logic: '<S22>/Logical Operator4' incorporates:
   *  Inport: '<Root>/PLCToModel'
   *  Logic: '<S2>/XOR'
   */
  FMU_Seperator_B->LogicalOperator4 = FMU_Seperator_U->PLCToModel[2] ^
    FMU_Seperator_U->PLCToModel[3];

  /* UnitDelay: '<S22>/Unit Delay' incorporates:
   *  Inport: '<Root>/PLCToModel'
   *  Logic: '<S2>/AND'
   *  Logic: '<S2>/NOT'
   */
  FMU_Seperator_B->UnitDelay = !FMU_Seperator_U->PLCToModel[3];
  FMU_Seperator_B->UnitDelay = (FMU_Seperator_B->LogicalOperator4 &&
    FMU_Seperator_U->PLCToModel[2] && FMU_Seperator_B->UnitDelay);

  /* Logic: '<S25>/Logical Operator4' incorporates:
   *  Inport: '<Root>/PLCToModel'
   *  Logic: '<S2>/AND2'
   *  Logic: '<S2>/NOT1'
   */
  FMU_Seperator_B->LogicalOperator4_m = !FMU_Seperator_U->PLCToModel[2];
  FMU_Seperator_B->LogicalOperator4_m = (FMU_Seperator_B->LogicalOperator4_m &&
    FMU_Seperator_U->PLCToModel[3] && FMU_Seperator_B->LogicalOperator4);

  /* Logic: '<S22>/Logical Operator4' incorporates:
   *  Inport: '<Root>/PLCToModel'
   *  Logic: '<S3>/XOR'
   */
  FMU_Seperator_B->LogicalOperator4 = FMU_Seperator_U->PLCToModel[0] ^
    FMU_Seperator_U->PLCToModel[1];

  /* Logic: '<S24>/Logical Operator4' incorporates:
   *  Inport: '<Root>/PLCToModel'
   *  Logic: '<S3>/AND'
   *  Logic: '<S3>/NOT'
   */
  FMU_Seperator_B->LogicalOperator4_f = !FMU_Seperator_U->PLCToModel[1];
  FMU_Seperator_B->LogicalOperator4_f = (FMU_Seperator_B->LogicalOperator4 &&
    FMU_Seperator_U->PLCToModel[0] && FMU_Seperator_B->LogicalOperator4_f);

  /* Logic: '<S23>/Logical Operator4' incorporates:
   *  Inport: '<Root>/PLCToModel'
   *  Logic: '<S3>/AND2'
   *  Logic: '<S3>/NOT1'
   */
  FMU_Seperator_B->LogicalOperator4_j = !FMU_Seperator_U->PLCToModel[0];
  FMU_Seperator_B->LogicalOperator4_j = (FMU_Seperator_B->LogicalOperator4_j &&
    FMU_Seperator_U->PLCToModel[1] && FMU_Seperator_B->LogicalOperator4);

  /* Logic: '<S22>/Logical Operator4' incorporates:
   *  DataTypeConversion: '<S4>/Cast To Boolean'
   *  Inport: '<Root>/SignalToModel'
   */
  FMU_Seperator_B->LogicalOperator4 = (FMU_Seperator_U->SignalToModel[1] != 0.0);

  /* RelationalOperator: '<S16>/Compare' */
  FMU_Seperator_B->Compare = FMU_Seperator_B->LogicalOperator4;

  /* Logic: '<S22>/Logical Operator4' incorporates:
   *  RelationalOperator: '<S5>/FixPt Relational Operator'
   *  UnitDelay: '<S5>/Delay Input1'
   */
  FMU_Seperator_B->LogicalOperator4 = FMU_Seperator_DW->DelayInput1_DSTATE;
  FMU_Seperator_B->LogicalOperator4 = (static_cast<int32_T>
    (FMU_Seperator_B->Compare) > static_cast<int32_T>
    (FMU_Seperator_B->LogicalOperator4));

  /* UnitDelay: '<S26>/Unit Delay' incorporates:
   *  Logic: '<S4>/NOT'
   */
  FMU_Seperator_B->UnitDelay_e = !FMU_Seperator_B->Delay4;

  /* Logic: '<S22>/Logical Operator4' incorporates:
   *  Logic: '<S4>/AND'
   */
  FMU_Seperator_B->LogicalOperator4 = (FMU_Seperator_B->LogicalOperator4 &&
    FMU_Seperator_B->UnitDelay_e);

  /* UnitDelay: '<S26>/Unit Delay' incorporates:
   *  Delay: '<S4>/Delay2'
   */
  FMU_Seperator_B->UnitDelay_e = FMU_Seperator_DW->Delay2_DSTATE;

  /* Logic: '<S26>/Logical Operator4' incorporates:
   *  Logic: '<S4>/NOT1'
   */
  FMU_Seperator_B->LogicalOperator4_e = !FMU_Seperator_B->Delay3;

  /* Logic: '<S4>/AND1' */
  FMU_Seperator_B->AND1 = (FMU_Seperator_B->UnitDelay_e &&
    FMU_Seperator_B->LogicalOperator4_e);

  /* Logic: '<S26>/Logical Operator4' incorporates:
   *  Delay: '<S4>/Delay5'
   */
  FMU_Seperator_B->LogicalOperator4_e = FMU_Seperator_DW->Delay5_DSTATE;

  /* UnitDelay: '<S26>/Unit Delay' incorporates:
   *  Logic: '<S4>/NOT2'
   */
  FMU_Seperator_B->UnitDelay_e = !FMU_Seperator_B->Delay6;

  /* Logic: '<S4>/AND2' */
  FMU_Seperator_B->AND2 = (FMU_Seperator_B->LogicalOperator4_e &&
    FMU_Seperator_B->UnitDelay_e);

  /* Logic: '<S26>/Logical Operator4' incorporates:
   *  Delay: '<S4>/Delay8'
   */
  FMU_Seperator_B->LogicalOperator4_e = FMU_Seperator_DW->Delay8_DSTATE;

  /* UnitDelay: '<S26>/Unit Delay' incorporates:
   *  Logic: '<S4>/NOT3'
   */
  FMU_Seperator_B->UnitDelay_e = !FMU_Seperator_B->Delay9;

  /* Logic: '<S4>/AND3' */
  FMU_Seperator_B->AND3 = (FMU_Seperator_B->LogicalOperator4_e &&
    FMU_Seperator_B->UnitDelay_e);

  /* Logic: '<S26>/Logical Operator4' incorporates:
   *  Delay: '<S4>/Delay11'
   */
  FMU_Seperator_B->LogicalOperator4_e = FMU_Seperator_DW->Delay11_DSTATE;

  /* UnitDelay: '<S26>/Unit Delay' incorporates:
   *  Logic: '<S4>/NOT5'
   */
  FMU_Seperator_B->UnitDelay_e = !FMU_Seperator_B->Delay12;

  /* Logic: '<S24>/Logical Operator4' incorporates:
   *  Logic: '<S4>/NOT6'
   */
  FMU_Seperator_B->LogicalOperator4_f = !FMU_Seperator_B->LogicalOperator4_f;

  /* Logic: '<S23>/Logical Operator4' incorporates:
   *  Logic: '<S4>/AND5'
   */
  FMU_Seperator_B->LogicalOperator4_j = (FMU_Seperator_B->LogicalOperator4_j &&
    FMU_Seperator_B->LogicalOperator4_f);

  /* Logic: '<S4>/AND4' */
  FMU_Seperator_B->AND4 = (FMU_Seperator_B->LogicalOperator4_e &&
    FMU_Seperator_B->UnitDelay_e && FMU_Seperator_B->LogicalOperator4_j);

  /* UnitDelay: '<S22>/Unit Delay' incorporates:
   *  Logic: '<S4>/NOT4'
   */
  FMU_Seperator_B->UnitDelay = !FMU_Seperator_B->UnitDelay;

  /* Logic: '<S25>/Logical Operator4' incorporates:
   *  Logic: '<S4>/AND6'
   */
  FMU_Seperator_B->LogicalOperator4_m = (FMU_Seperator_B->LogicalOperator4_m &&
    FMU_Seperator_B->UnitDelay);

  /* Logic: '<S26>/Logical Operator4' incorporates:
   *  DataTypeConversion: '<S4>/Cast To Boolean6'
   *  Inport: '<Root>/SignalToModel'
   */
  FMU_Seperator_B->LogicalOperator4_e = (FMU_Seperator_U->SignalToModel[2] !=
    0.0);

  /* RelationalOperator: '<S21>/Compare' */
  FMU_Seperator_B->Compare_o = FMU_Seperator_B->LogicalOperator4_e;

  /* Logic: '<S26>/Logical Operator4' incorporates:
   *  Logic: '<S4>/AND7'
   *  RelationalOperator: '<S10>/FixPt Relational Operator'
   *  UnitDelay: '<S10>/Delay Input1'
   */
  FMU_Seperator_B->LogicalOperator4_e = FMU_Seperator_DW->DelayInput1_DSTATE_h;
  FMU_Seperator_B->LogicalOperator4_e = (static_cast<int32_T>
    (FMU_Seperator_B->Compare_o) > static_cast<int32_T>
    (FMU_Seperator_B->LogicalOperator4_e));
  FMU_Seperator_B->LogicalOperator4_e = (FMU_Seperator_B->LogicalOperator4_e &&
    FMU_Seperator_B->LogicalOperator4_m);

  /* Product: '<S4>/Divide' incorporates:
   *  Constant: '<S4>/Constant'
   *  Inport: '<Root>/SignalToModel'
   */
  FMU_Seperator_B->Divide = 0.25 / FMU_Seperator_U->SignalToModel[0];

  /* Delay: '<S4>/Delay' incorporates:
   *  Delay: '<S4>/Delay1'
   *  Delay: '<S4>/Delay10'
   *  Delay: '<S4>/Delay7'
   */
  tmp = rtIsNaN(FMU_Seperator_B->Divide);
  if ((FMU_Seperator_B->Divide < 1.0) || tmp) {
    /* Delay: '<S4>/Delay' */
    FMU_Seperator_B->Delay = FMU_Seperator_B->AND1;
  } else {
    if (FMU_Seperator_B->Divide > 2500.0) {
      tmp_0 = 2500U;
    } else {
      if (FMU_Seperator_B->Divide < 0.0) {
        tmp_1 = std::ceil(FMU_Seperator_B->Divide);
      } else {
        tmp_1 = std::floor(FMU_Seperator_B->Divide);
      }

      if (rtIsNaN(tmp_1) || rtIsInf(tmp_1)) {
        tmp_1 = 0.0;
      } else {
        tmp_1 = std::fmod(tmp_1, 4.294967296E+9);
      }

      tmp_0 = tmp_1 < 0.0 ? static_cast<uint32_T>(-static_cast<int32_T>(
        static_cast<uint32_T>(-tmp_1))) : static_cast<uint32_T>(tmp_1);
    }

    /* Delay: '<S4>/Delay' */
    FMU_Seperator_B->Delay = FMU_Seperator_DW->Delay_DSTATE[2500U - tmp_0];
  }

  /* End of Delay: '<S4>/Delay' */

  /* Delay: '<S4>/Delay1' */
  if ((FMU_Seperator_B->Divide < 1.0) || tmp) {
    /* Delay: '<S4>/Delay1' */
    FMU_Seperator_B->Delay1 = FMU_Seperator_B->AND2;
  } else {
    if (FMU_Seperator_B->Divide > 2500.0) {
      tmp_0 = 2500U;
    } else {
      if (FMU_Seperator_B->Divide < 0.0) {
        tmp_1 = std::ceil(FMU_Seperator_B->Divide);
      } else {
        tmp_1 = std::floor(FMU_Seperator_B->Divide);
      }

      if (rtIsNaN(tmp_1) || rtIsInf(tmp_1)) {
        tmp_1 = 0.0;
      } else {
        tmp_1 = std::fmod(tmp_1, 4.294967296E+9);
      }

      tmp_0 = tmp_1 < 0.0 ? static_cast<uint32_T>(-static_cast<int32_T>(
        static_cast<uint32_T>(-tmp_1))) : static_cast<uint32_T>(tmp_1);
    }

    /* Delay: '<S4>/Delay1' */
    FMU_Seperator_B->Delay1 = FMU_Seperator_DW->Delay1_DSTATE[2500U - tmp_0];
  }

  /* Delay: '<S4>/Delay10' */
  if ((FMU_Seperator_B->Divide < 1.0) || tmp) {
    /* Delay: '<S4>/Delay10' */
    FMU_Seperator_B->Delay10 = FMU_Seperator_B->AND4;
  } else {
    if (FMU_Seperator_B->Divide > 2500.0) {
      tmp_0 = 2500U;
    } else {
      if (FMU_Seperator_B->Divide < 0.0) {
        tmp_1 = std::ceil(FMU_Seperator_B->Divide);
      } else {
        tmp_1 = std::floor(FMU_Seperator_B->Divide);
      }

      if (rtIsNaN(tmp_1) || rtIsInf(tmp_1)) {
        tmp_1 = 0.0;
      } else {
        tmp_1 = std::fmod(tmp_1, 4.294967296E+9);
      }

      tmp_0 = tmp_1 < 0.0 ? static_cast<uint32_T>(-static_cast<int32_T>(
        static_cast<uint32_T>(-tmp_1))) : static_cast<uint32_T>(tmp_1);
    }

    /* Delay: '<S4>/Delay10' */
    FMU_Seperator_B->Delay10 = FMU_Seperator_DW->Delay10_DSTATE[2500U - tmp_0];
  }

  /* Delay: '<S4>/Delay7' */
  if ((FMU_Seperator_B->Divide < 1.0) || tmp) {
    /* Delay: '<S4>/Delay7' */
    FMU_Seperator_B->Delay7 = FMU_Seperator_B->AND3;
  } else {
    if (FMU_Seperator_B->Divide > 2500.0) {
      tmp_0 = 2500U;
    } else {
      if (FMU_Seperator_B->Divide < 0.0) {
        tmp_1 = std::ceil(FMU_Seperator_B->Divide);
      } else {
        tmp_1 = std::floor(FMU_Seperator_B->Divide);
      }

      if (rtIsNaN(tmp_1) || rtIsInf(tmp_1)) {
        tmp_1 = 0.0;
      } else {
        tmp_1 = std::fmod(tmp_1, 4.294967296E+9);
      }

      tmp_0 = tmp_1 < 0.0 ? static_cast<uint32_T>(-static_cast<int32_T>(
        static_cast<uint32_T>(-tmp_1))) : static_cast<uint32_T>(tmp_1);
    }

    /* Delay: '<S4>/Delay7' */
    FMU_Seperator_B->Delay7 = FMU_Seperator_DW->Delay7_DSTATE[2500U - tmp_0];
  }

  /* UnitDelay: '<S26>/Unit Delay' incorporates:
   *  UnitDelay: '<S6>/Delay Input1'
   */
  FMU_Seperator_B->UnitDelay_e = FMU_Seperator_B->Compare_p;

  /* RelationalOperator: '<S17>/Compare' */
  FMU_Seperator_B->Compare_p = FMU_Seperator_B->Delay3;

  /* UnitDelay: '<S26>/Unit Delay' incorporates:
   *  RelationalOperator: '<S6>/FixPt Relational Operator'
   */
  FMU_Seperator_B->UnitDelay_e = (static_cast<int32_T>
    (FMU_Seperator_B->Compare_p) > static_cast<int32_T>
    (FMU_Seperator_B->UnitDelay_e));

  /* Logic: '<S23>/Logical Operator4' incorporates:
   *  UnitDelay: '<S7>/Delay Input1'
   */
  FMU_Seperator_B->LogicalOperator4_j = FMU_Seperator_B->Compare_m;

  /* RelationalOperator: '<S18>/Compare' */
  FMU_Seperator_B->Compare_m = FMU_Seperator_B->Delay6;

  /* Logic: '<S23>/Logical Operator4' incorporates:
   *  RelationalOperator: '<S7>/FixPt Relational Operator'
   */
  FMU_Seperator_B->LogicalOperator4_j = (static_cast<int32_T>
    (FMU_Seperator_B->Compare_m) > static_cast<int32_T>
    (FMU_Seperator_B->LogicalOperator4_j));

  /* Logic: '<S24>/Logical Operator4' incorporates:
   *  UnitDelay: '<S8>/Delay Input1'
   */
  FMU_Seperator_B->LogicalOperator4_f = FMU_Seperator_B->Compare_i;

  /* RelationalOperator: '<S19>/Compare' */
  FMU_Seperator_B->Compare_i = FMU_Seperator_B->Delay9;

  /* Logic: '<S24>/Logical Operator4' incorporates:
   *  RelationalOperator: '<S8>/FixPt Relational Operator'
   */
  FMU_Seperator_B->LogicalOperator4_f = (static_cast<int32_T>
    (FMU_Seperator_B->Compare_i) > static_cast<int32_T>
    (FMU_Seperator_B->LogicalOperator4_f));

  /* Logic: '<S25>/Logical Operator4' incorporates:
   *  UnitDelay: '<S9>/Delay Input1'
   */
  FMU_Seperator_B->LogicalOperator4_m = FMU_Seperator_B->Compare_n;

  /* RelationalOperator: '<S20>/Compare' */
  FMU_Seperator_B->Compare_n = FMU_Seperator_B->Delay12;

  /* Logic: '<S25>/Logical Operator4' incorporates:
   *  RelationalOperator: '<S9>/FixPt Relational Operator'
   */
  FMU_Seperator_B->LogicalOperator4_m = (static_cast<int32_T>
    (FMU_Seperator_B->Compare_n) > static_cast<int32_T>
    (FMU_Seperator_B->LogicalOperator4_m));

  /* UnitDelay: '<S26>/Unit Delay' incorporates:
   *  Logic: '<S22>/Logical Operator'
   */
  FMU_Seperator_B->UnitDelay_e = !FMU_Seperator_B->UnitDelay_e;

  /* UnitDelay: '<S22>/Unit Delay' */
  FMU_Seperator_B->UnitDelay = FMU_Seperator_B->Switch;

  /* UnitDelay: '<S26>/Unit Delay' incorporates:
   *  Logic: '<S22>/Logical Operator5'
   */
  FMU_Seperator_B->UnitDelay_e = (FMU_Seperator_B->UnitDelay_e &&
    FMU_Seperator_B->UnitDelay);

  /* Logic: '<S22>/Logical Operator4' */
  FMU_Seperator_B->LogicalOperator4 = (FMU_Seperator_B->LogicalOperator4 ||
    FMU_Seperator_B->UnitDelay_e);

  /* Switch: '<S22>/Switch' */
  FMU_Seperator_B->Switch = FMU_Seperator_B->LogicalOperator4;

  /* Logic: '<S23>/Logical Operator4' incorporates:
   *  Logic: '<S23>/Logical Operator'
   */
  FMU_Seperator_B->LogicalOperator4_j = !FMU_Seperator_B->LogicalOperator4_j;

  /* UnitDelay: '<S26>/Unit Delay' incorporates:
   *  UnitDelay: '<S23>/Unit Delay'
   */
  FMU_Seperator_B->UnitDelay_e = FMU_Seperator_B->Switch_g;

  /* Logic: '<S23>/Logical Operator4' incorporates:
   *  Logic: '<S23>/Logical Operator5'
   */
  FMU_Seperator_B->LogicalOperator4_j = (FMU_Seperator_B->LogicalOperator4_j &&
    FMU_Seperator_B->UnitDelay_e);
  FMU_Seperator_B->LogicalOperator4_j = (FMU_Seperator_B->Delay ||
    FMU_Seperator_B->LogicalOperator4_j);

  /* Switch: '<S23>/Switch' */
  FMU_Seperator_B->Switch_g = FMU_Seperator_B->LogicalOperator4_j;

  /* Logic: '<S24>/Logical Operator4' incorporates:
   *  Logic: '<S24>/Logical Operator'
   */
  FMU_Seperator_B->LogicalOperator4_f = !FMU_Seperator_B->LogicalOperator4_f;

  /* UnitDelay: '<S26>/Unit Delay' incorporates:
   *  UnitDelay: '<S24>/Unit Delay'
   */
  FMU_Seperator_B->UnitDelay_e = FMU_Seperator_B->Switch_d;

  /* Logic: '<S24>/Logical Operator4' incorporates:
   *  Logic: '<S24>/Logical Operator5'
   */
  FMU_Seperator_B->LogicalOperator4_f = (FMU_Seperator_B->LogicalOperator4_f &&
    FMU_Seperator_B->UnitDelay_e);
  FMU_Seperator_B->LogicalOperator4_f = (FMU_Seperator_B->Delay1 ||
    FMU_Seperator_B->LogicalOperator4_f);

  /* Switch: '<S24>/Switch' */
  FMU_Seperator_B->Switch_d = FMU_Seperator_B->LogicalOperator4_f;

  /* Logic: '<S25>/Logical Operator4' incorporates:
   *  Logic: '<S25>/Logical Operator'
   */
  FMU_Seperator_B->LogicalOperator4_m = !FMU_Seperator_B->LogicalOperator4_m;

  /* UnitDelay: '<S26>/Unit Delay' incorporates:
   *  UnitDelay: '<S25>/Unit Delay'
   */
  FMU_Seperator_B->UnitDelay_e = FMU_Seperator_B->Switch_p;

  /* Logic: '<S25>/Logical Operator4' incorporates:
   *  Logic: '<S25>/Logical Operator5'
   */
  FMU_Seperator_B->LogicalOperator4_m = (FMU_Seperator_B->LogicalOperator4_m &&
    FMU_Seperator_B->UnitDelay_e);
  FMU_Seperator_B->LogicalOperator4_m = (FMU_Seperator_B->Delay7 ||
    FMU_Seperator_B->LogicalOperator4_m);

  /* Switch: '<S25>/Switch' */
  FMU_Seperator_B->Switch_p = FMU_Seperator_B->LogicalOperator4_m;

  /* Logic: '<S26>/Logical Operator4' incorporates:
   *  Logic: '<S26>/Logical Operator'
   */
  FMU_Seperator_B->LogicalOperator4_e = !FMU_Seperator_B->LogicalOperator4_e;

  /* UnitDelay: '<S26>/Unit Delay' */
  FMU_Seperator_B->UnitDelay_e = FMU_Seperator_B->Switch_l;

  /* Logic: '<S26>/Logical Operator4' incorporates:
   *  Logic: '<S26>/Logical Operator5'
   */
  FMU_Seperator_B->LogicalOperator4_e = (FMU_Seperator_B->LogicalOperator4_e &&
    FMU_Seperator_B->UnitDelay_e);
  FMU_Seperator_B->LogicalOperator4_e = (FMU_Seperator_B->Delay10 ||
    FMU_Seperator_B->LogicalOperator4_e);

  /* Switch: '<S26>/Switch' */
  FMU_Seperator_B->Switch_l = FMU_Seperator_B->LogicalOperator4_e;

  /* Update for UnitDelay: '<S5>/Delay Input1' */
  FMU_Seperator_DW->DelayInput1_DSTATE = FMU_Seperator_B->Compare;

  /* Update for Delay: '<S4>/Delay2' */
  FMU_Seperator_DW->Delay2_DSTATE = FMU_Seperator_B->Delay4;

  /* Update for Delay: '<S4>/Delay5' */
  FMU_Seperator_DW->Delay5_DSTATE = FMU_Seperator_B->Delay3;

  /* Update for Delay: '<S4>/Delay8' */
  FMU_Seperator_DW->Delay8_DSTATE = FMU_Seperator_B->Delay6;

  /* Update for Delay: '<S4>/Delay11' */
  FMU_Seperator_DW->Delay11_DSTATE = FMU_Seperator_B->Delay9;

  /* Update for UnitDelay: '<S10>/Delay Input1' */
  FMU_Seperator_DW->DelayInput1_DSTATE_h = FMU_Seperator_B->Compare_o;
  for (idxDelay = 0; idxDelay < 2499; idxDelay++) {
    /* Update for Delay: '<S4>/Delay' */
    FMU_Seperator_DW->Delay_DSTATE[idxDelay] = FMU_Seperator_DW->
      Delay_DSTATE[idxDelay + 1];

    /* Update for Delay: '<S4>/Delay1' */
    FMU_Seperator_DW->Delay1_DSTATE[idxDelay] = FMU_Seperator_DW->
      Delay1_DSTATE[idxDelay + 1];

    /* Update for Delay: '<S4>/Delay10' */
    FMU_Seperator_DW->Delay10_DSTATE[idxDelay] =
      FMU_Seperator_DW->Delay10_DSTATE[idxDelay + 1];

    /* Update for Delay: '<S4>/Delay7' */
    FMU_Seperator_DW->Delay7_DSTATE[idxDelay] = FMU_Seperator_DW->
      Delay7_DSTATE[idxDelay + 1];
  }

  /* Update for Delay: '<S4>/Delay' */
  FMU_Seperator_DW->Delay_DSTATE[2499] = FMU_Seperator_B->AND1;

  /* Update for Delay: '<S4>/Delay1' */
  FMU_Seperator_DW->Delay1_DSTATE[2499] = FMU_Seperator_B->AND2;

  /* Update for Delay: '<S4>/Delay10' */
  FMU_Seperator_DW->Delay10_DSTATE[2499] = FMU_Seperator_B->AND4;

  /* Update for Delay: '<S4>/Delay7' */
  FMU_Seperator_DW->Delay7_DSTATE[2499] = FMU_Seperator_B->AND3;
}

/* Model initialize function */
void FMU_Seperator_initialize(RT_MODEL_FMU_Seperator_T *const FMU_Seperator_M)
{
  B_FMU_Seperator_T *FMU_Seperator_B = FMU_Seperator_M->blockIO;
  DW_FMU_Seperator_T *FMU_Seperator_DW = FMU_Seperator_M->dwork;

  /* InitializeConditions for UnitDelay: '<S5>/Delay Input1' */
  FMU_Seperator_DW->DelayInput1_DSTATE = false;

  /* InitializeConditions for Delay: '<S4>/Delay2' */
  FMU_Seperator_DW->Delay2_DSTATE = false;

  /* InitializeConditions for Delay: '<S4>/Delay5' */
  FMU_Seperator_DW->Delay5_DSTATE = false;

  /* InitializeConditions for Delay: '<S4>/Delay8' */
  FMU_Seperator_DW->Delay8_DSTATE = false;

  /* InitializeConditions for Delay: '<S4>/Delay11' */
  FMU_Seperator_DW->Delay11_DSTATE = false;

  /* InitializeConditions for UnitDelay: '<S10>/Delay Input1' */
  FMU_Seperator_DW->DelayInput1_DSTATE_h = false;

  /* InitializeConditions for Delay: '<S4>/Delay' */
  std::memset(&FMU_Seperator_DW->Delay_DSTATE[0], 0, 2500U * sizeof(boolean_T));

  /* InitializeConditions for Delay: '<S4>/Delay1' */
  std::memset(&FMU_Seperator_DW->Delay1_DSTATE[0], 0, 2500U * sizeof(boolean_T));

  /* InitializeConditions for Delay: '<S4>/Delay10' */
  std::memset(&FMU_Seperator_DW->Delay10_DSTATE[0], 0, 2500U * sizeof(boolean_T));

  /* InitializeConditions for Delay: '<S4>/Delay7' */
  std::memset(&FMU_Seperator_DW->Delay7_DSTATE[0], 0, 2500U * sizeof(boolean_T));

  /* InitializeConditions for UnitDelay: '<S6>/Delay Input1' */
  FMU_Seperator_B->Compare_p = false;

  /* InitializeConditions for UnitDelay: '<S7>/Delay Input1' */
  FMU_Seperator_B->Compare_m = false;

  /* InitializeConditions for UnitDelay: '<S8>/Delay Input1' */
  FMU_Seperator_B->Compare_i = false;

  /* InitializeConditions for UnitDelay: '<S9>/Delay Input1' */
  FMU_Seperator_B->Compare_n = false;

  /* InitializeConditions for UnitDelay: '<S22>/Unit Delay' */
  FMU_Seperator_B->Switch = false;

  /* InitializeConditions for UnitDelay: '<S23>/Unit Delay' */
  FMU_Seperator_B->Switch_g = false;

  /* InitializeConditions for UnitDelay: '<S24>/Unit Delay' */
  FMU_Seperator_B->Switch_d = false;

  /* InitializeConditions for UnitDelay: '<S25>/Unit Delay' */
  FMU_Seperator_B->Switch_p = false;

  /* InitializeConditions for UnitDelay: '<S26>/Unit Delay' */
  FMU_Seperator_B->Switch_l = false;
}

/* Model terminate function */
void FMU_Seperator_terminate(RT_MODEL_FMU_Seperator_T * FMU_Seperator_M)
{
  /* model code */
  rt_FREE(FMU_Seperator_M->blockIO);
  rt_FREE(FMU_Seperator_M->inputs);
  rt_FREE(FMU_Seperator_M->outputs);
  rt_FREE(FMU_Seperator_M->dwork);
  rt_FREE(FMU_Seperator_M);
}

/* Model data allocation function */
RT_MODEL_FMU_Seperator_T *FMU_Seperator(void)
{
  RT_MODEL_FMU_Seperator_T *FMU_Seperator_M;
  FMU_Seperator_M = new RT_MODEL_FMU_Seperator_T();
  if (FMU_Seperator_M == NULL) {
    return NULL;
  }

  /* block I/O */
  {
    B_FMU_Seperator_T *b = (B_FMU_Seperator_T *) malloc(sizeof(B_FMU_Seperator_T));
    rt_VALIDATE_MEMORY(FMU_Seperator_M,b);
    FMU_Seperator_M->blockIO = (b);
  }

  /* states (dwork) */
  {
    DW_FMU_Seperator_T *dwork = static_cast<DW_FMU_Seperator_T *>(malloc(sizeof
      (DW_FMU_Seperator_T)));
    rt_VALIDATE_MEMORY(FMU_Seperator_M,dwork);
    FMU_Seperator_M->dwork = (dwork);
  }

  /* external inputs */
  {
    ExtU_FMU_Seperator_T *FMU_Seperator_U = static_cast<ExtU_FMU_Seperator_T *>
      (malloc(sizeof(ExtU_FMU_Seperator_T)));
    rt_VALIDATE_MEMORY(FMU_Seperator_M,FMU_Seperator_U);
    FMU_Seperator_M->inputs = ((static_cast<ExtU_FMU_Seperator_T *>
      (FMU_Seperator_U)));
  }

  /* external outputs */
  {
    ExtY_FMU_Seperator_T *FMU_Seperator_Y = static_cast<ExtY_FMU_Seperator_T *>
      (malloc(sizeof(ExtY_FMU_Seperator_T)));
    rt_VALIDATE_MEMORY(FMU_Seperator_M,FMU_Seperator_Y);
    FMU_Seperator_M->outputs = (FMU_Seperator_Y);
  }

  {
    B_FMU_Seperator_T *FMU_Seperator_B = FMU_Seperator_M->blockIO;
    DW_FMU_Seperator_T *FMU_Seperator_DW = FMU_Seperator_M->dwork;
    ExtU_FMU_Seperator_T *FMU_Seperator_U = static_cast<ExtU_FMU_Seperator_T *>
      (FMU_Seperator_M->inputs);
    ExtY_FMU_Seperator_T *FMU_Seperator_Y = static_cast<ExtY_FMU_Seperator_T *>
      (FMU_Seperator_M->outputs);

    /* initialize non-finites */
    rt_InitInfAndNaN(sizeof(real_T));

    /* block I/O */
    (void) std::memset((static_cast<void *>(FMU_Seperator_B)), 0,
                       sizeof(B_FMU_Seperator_T));

    /* states (dwork) */
    (void) std::memset(static_cast<void *>(FMU_Seperator_DW), 0,
                       sizeof(DW_FMU_Seperator_T));

    /* external inputs */
    (void)std::memset(FMU_Seperator_U, 0, sizeof(ExtU_FMU_Seperator_T));

    /* external outputs */
    (void) std::memset(static_cast<void *>(FMU_Seperator_Y), 0,
                       sizeof(ExtY_FMU_Seperator_T));
  }

  return FMU_Seperator_M;
}
