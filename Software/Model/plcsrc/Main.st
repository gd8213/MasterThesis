(*
 *
 * File: Main.st
 *
 * IEC 61131-3 Structured Text (ST) code generated for subsystem "Main/Subsystem Reference"
 *
 * Model name                      : Main
 * Model version                   : 1.23
 * Model creator                   : kaebi
 * Model last modified by          : kaebi
 * Model last modified on          : Tue Mar 15 20:23:11 2022
 * Model sample time               : 0.01s
 * Subsystem name                  : Main/Subsystem Reference
 * Subsystem sample time           : 0.01s
 * Simulink PLC Coder version      : 3.3 (R2020b) 29-Jul-2020
 * ST code generated on            : Tue Mar 15 20:23:53 2022
 *
 * Target IDE selection            : Beckhoff TwinCAT 3
 * Test Bench included             : No
 *
 *)
FUNCTION_BLOCK Subsystem
VAR_INPUT
    ssMethodType: SINT;
    Signal_CreateContainer: LREAL;
    Hw_HubmagnetOben: LREAL;
    Hw_HubmagnetUnten: LREAL;
    SamplingTime: LREAL;
END_VAR
VAR_OUTPUT
    Hw_SensorOben: BOOL;
    Hw_SensorMitte: BOOL;
    Hw_SensorUnten: BOOL;
END_VAR
VAR
    Delay7_DSTATE: ARRAY [0..4999] OF BOOL;
    Delay10_DSTATE: ARRAY [0..4999] OF BOOL;
    Delay1_DSTATE: ARRAY [0..4999] OF BOOL;
    Delay_DSTATE_m: ARRAY [0..4999] OF BOOL;
    Delay_DSTATE_l: ARRAY [0..4999] OF LREAL;
    Delay_DSTATE: ARRAY [0..4999] OF LREAL;
    DelayInput1_DSTATE_j: BOOL;
    Compare: BOOL;
    DelayInput1_DSTATE_m: BOOL;
    DelayInput1_DSTATE_o: BOOL;
    DelayInput1_DSTATE_i: BOOL;
    DelayInput1_DSTATE_g: BOOL;
    UnitDelay_DSTATE_c3: BOOL;
    UnitDelay_DSTATE_c: BOOL;
    UnitDelay_DSTATE_f: BOOL;
    UnitDelay_DSTATE_g: BOOL;
    UnitDelay_DSTATE: BOOL;
    Delay4_DSTATE: BOOL;
    DelayInput1_DSTATE: BOOL;
    Delay12_DSTATE: BOOL;
    Delay11_DSTATE: BOOL;
    Delay9_DSTATE: BOOL;
    Delay8_DSTATE: BOOL;
    Delay6_DSTATE: BOOL;
    Delay3_DSTATE: BOOL;
    Delay5_DSTATE: BOOL;
    Delay2_DSTATE: BOOL;
END_VAR
VAR_TEMP
    rtb_Delay4: BOOL;
    rtb_Compare: BOOL;
    rtb_Delay3: BOOL;
    rtb_AND1: BOOL;
    rtb_AND2: BOOL;
    rtb_AND3: BOOL;
    rtb_AND4: BOOL;
    rtb_Compare_p: BOOL;
    rtb_Compare_d: BOOL;
    rtb_Compare_k: BOOL;
    rtb_Compare_h: BOOL;
    rtb_Divide: LREAL;
    rtb_Divide_i: LREAL;
    rtb_Delay: BOOL;
    rtb_Delay1: BOOL;
    rtb_Delay10: BOOL;
    rtb_Delay7: BOOL;
    rtb_Switch: BOOL;
    i: DINT;
    rtb_Divide_i_tmp: LREAL;
END_VAR
CASE ssMethodType OF
    SS_INITIALIZE: 
        (* SystemInitialize for Atomic SubSystem: '<Root>/Subsystem Reference' *)
        (* InitializeConditions for Delay: '<S2>/Delay4' *)
        Delay4_DSTATE := FALSE;
        (* InitializeConditions for UnitDelay: '<S5>/Delay Input1'
         *
         * Block description for '<S5>/Delay Input1':
         *  
         *  Store in Global RAM *)
        DelayInput1_DSTATE := FALSE;
        (* InitializeConditions for Delay: '<S2>/Delay2' *)
        Delay2_DSTATE := FALSE;
        (* InitializeConditions for Delay: '<S2>/Delay3' *)
        Delay3_DSTATE := FALSE;
        (* InitializeConditions for Delay: '<S2>/Delay5' *)
        Delay5_DSTATE := FALSE;
        (* InitializeConditions for Delay: '<S2>/Delay6' *)
        Delay6_DSTATE := FALSE;
        (* InitializeConditions for Delay: '<S2>/Delay8' *)
        Delay8_DSTATE := FALSE;
        (* InitializeConditions for Delay: '<S2>/Delay9' *)
        Delay9_DSTATE := FALSE;
        (* InitializeConditions for Delay: '<S2>/Delay11' *)
        Delay11_DSTATE := FALSE;
        (* InitializeConditions for Delay: '<S2>/Delay12' *)
        Delay12_DSTATE := FALSE;
        (* End of SystemInitialize for SubSystem: '<Root>/Subsystem Reference' *)
        (* SystemInitialize for Atomic SubSystem: '<Root>/Subsystem Reference' *)
        FOR i := 0 TO 4999 DO 
            (* InitializeConditions for Delay: '<S3>/Delay' *)
            Delay_DSTATE[i] := 0.0;
            (* InitializeConditions for Delay: '<S4>/Delay' *)
            Delay_DSTATE_l[i] := 0.0;
            (* InitializeConditions for Delay: '<S2>/Delay' *)
            Delay_DSTATE_m[i] := FALSE;
            (* InitializeConditions for Delay: '<S2>/Delay1' *)
            Delay1_DSTATE[i] := FALSE;
            (* InitializeConditions for Delay: '<S2>/Delay10' *)
            Delay10_DSTATE[i] := FALSE;
            (* InitializeConditions for Delay: '<S2>/Delay7' *)
            Delay7_DSTATE[i] := FALSE;
        END_FOR;
        (* InitializeConditions for UnitDelay: '<S6>/Delay Input1'
         *
         * Block description for '<S6>/Delay Input1':
         *  
         *  Store in Global RAM *)
        DelayInput1_DSTATE_m := FALSE;
        (* InitializeConditions for UnitDelay: '<S7>/Delay Input1'
         *
         * Block description for '<S7>/Delay Input1':
         *  
         *  Store in Global RAM *)
        DelayInput1_DSTATE_o := FALSE;
        (* InitializeConditions for UnitDelay: '<S8>/Delay Input1'
         *
         * Block description for '<S8>/Delay Input1':
         *  
         *  Store in Global RAM *)
        DelayInput1_DSTATE_i := FALSE;
        (* InitializeConditions for UnitDelay: '<S9>/Delay Input1'
         *
         * Block description for '<S9>/Delay Input1':
         *  
         *  Store in Global RAM *)
        DelayInput1_DSTATE_g := FALSE;
        (* InitializeConditions for UnitDelay: '<S10>/Delay Input1'
         *
         * Block description for '<S10>/Delay Input1':
         *  
         *  Store in Global RAM *)
        DelayInput1_DSTATE_j := FALSE;
        (* InitializeConditions for UnitDelay: '<S22>/Unit Delay' *)
        UnitDelay_DSTATE := FALSE;
        (* InitializeConditions for UnitDelay: '<S23>/Unit Delay' *)
        UnitDelay_DSTATE_g := FALSE;
        (* InitializeConditions for UnitDelay: '<S24>/Unit Delay' *)
        UnitDelay_DSTATE_f := FALSE;
        (* InitializeConditions for UnitDelay: '<S25>/Unit Delay' *)
        UnitDelay_DSTATE_c := FALSE;
        (* InitializeConditions for UnitDelay: '<S26>/Unit Delay' *)
        UnitDelay_DSTATE_c3 := FALSE;
        (* End of SystemInitialize for SubSystem: '<Root>/Subsystem Reference' *)
        
        (* ConstCode for Atomic SubSystem: '<Root>/Subsystem Reference' *)
        (* ConstCode for RelationalOperator: '<S21>/Compare' incorporates:
         *  Constant: '<S21>/Constant' *)
        Compare := FALSE;
        (* End of ConstCode for SubSystem: '<Root>/Subsystem Reference' *)
    SS_STEP: 
        (* Outputs for Atomic SubSystem: '<Root>/Subsystem Reference' *)
        (* Product: '<S2>/Divide' incorporates:
         *  Constant: '<S2>/Constant' *)
        rtb_Divide := 0.25 / SamplingTime;
        (* Delay: '<S2>/Delay4' *)
        rtb_Delay4 := Delay4_DSTATE;
        (* RelationalOperator: '<S16>/Compare' incorporates:
         *  Constant: '<S16>/Constant' *)
        rtb_Compare := Signal_CreateContainer > 0.0;
        (* Delay: '<S2>/Delay3' *)
        rtb_Delay3 := Delay3_DSTATE;
        (* Logic: '<S2>/AND1' incorporates:
         *  Delay: '<S2>/Delay2'
         *  Delay: '<S2>/Delay3'
         *  Logic: '<S2>/NOT1' *)
        rtb_AND1 := Delay2_DSTATE AND ( NOT Delay3_DSTATE);
        (* Delay: '<S2>/Delay6' *)
        Hw_SensorOben := Delay6_DSTATE;
        (* Logic: '<S2>/AND2' incorporates:
         *  Delay: '<S2>/Delay5'
         *  Delay: '<S2>/Delay6'
         *  Logic: '<S2>/NOT2' *)
        rtb_AND2 := Delay5_DSTATE AND ( NOT Delay6_DSTATE);
        (* Delay: '<S2>/Delay9' *)
        Hw_SensorMitte := Delay9_DSTATE;
        (* Product: '<S3>/Divide' incorporates:
         *  Constant: '<S3>/Constant'
         *  Product: '<S4>/Divide' *)
        rtb_Divide_i_tmp := 0.5 / SamplingTime;
        (* Delay: '<S3>/Delay' incorporates:
         *  Product: '<S3>/Divide' *)
        IF rtb_Divide_i_tmp < 1.0 THEN 
            rtb_Divide_i := Hw_HubmagnetOben;
        ELSE 
            IF rtb_Divide_i_tmp > 5000.0 THEN 
                i := 5000;
            ELSE 
                i := UDINT_TO_DINT(DINT_TO_UDINT(TRUNC(rtb_Divide_i_tmp)));
            END_IF;
            rtb_Divide_i := Delay_DSTATE[5000 - DINT_TO_UDINT(i)];
        END_IF;
        (* End of Delay: '<S3>/Delay' *)
        
        (* Saturate: '<S3>/Saturation' *)
        IF rtb_Divide_i >= 1.0 THEN 
            rtb_Divide_i := 1.0;
        ELSIF rtb_Divide_i <= 0.0 THEN 
            rtb_Divide_i := 0.0;
        END_IF;
        (* End of Saturate: '<S3>/Saturation' *)
        
        (* Logic: '<S2>/AND3' incorporates:
         *  Delay: '<S2>/Delay8'
         *  Delay: '<S2>/Delay9'
         *  Logic: '<S2>/NOT3'
         *  Logic: '<S2>/NOT4' *)
        rtb_AND3 := (Delay8_DSTATE AND ( NOT Delay9_DSTATE)) AND (rtb_Divide_i = 0.0);
        (* Outport: '<Root>/Hw_SensorUnten' incorporates:
         *  Delay: '<S2>/Delay12' *)
        Hw_SensorUnten := Delay12_DSTATE;
        (* Delay: '<S4>/Delay' *)
        IF rtb_Divide_i_tmp < 1.0 THEN 
            rtb_Divide_i := Hw_HubmagnetUnten;
        ELSE 
            IF rtb_Divide_i_tmp > 5000.0 THEN 
                i := 5000;
            ELSE 
                i := UDINT_TO_DINT(DINT_TO_UDINT(TRUNC(rtb_Divide_i_tmp)));
            END_IF;
            rtb_Divide_i := Delay_DSTATE_l[5000 - DINT_TO_UDINT(i)];
        END_IF;
        (* End of Delay: '<S4>/Delay' *)
        
        (* Saturate: '<S4>/Saturation' *)
        IF rtb_Divide_i >= 1.0 THEN 
            rtb_Divide_i := 1.0;
        ELSIF rtb_Divide_i <= 0.0 THEN 
            rtb_Divide_i := 0.0;
        END_IF;
        (* End of Saturate: '<S4>/Saturation' *)
        
        (* Logic: '<S2>/AND4' incorporates:
         *  Delay: '<S2>/Delay11'
         *  Delay: '<S2>/Delay12'
         *  Logic: '<S2>/NOT5'
         *  Logic: '<S2>/NOT6' *)
        rtb_AND4 := (Delay11_DSTATE AND ( NOT Delay12_DSTATE)) AND (rtb_Divide_i = 0.0);
        (* Delay: '<S2>/Delay' incorporates:
         *  Delay: '<S2>/Delay1'
         *  Delay: '<S2>/Delay10'
         *  Delay: '<S2>/Delay7' *)
        IF rtb_Divide < 1.0 THEN 
            rtb_Delay := rtb_AND1;
            rtb_Delay1 := rtb_AND2;
            rtb_Delay10 := rtb_AND4;
            rtb_Delay7 := rtb_AND3;
        ELSE 
            IF rtb_Divide > 5000.0 THEN 
                i := 5000;
            ELSE 
                i := UDINT_TO_DINT(DINT_TO_UDINT(TRUNC(rtb_Divide)));
            END_IF;
            rtb_Delay := Delay_DSTATE_m[5000 - DINT_TO_UDINT(i)];
            IF rtb_Divide > 5000.0 THEN 
                i := 5000;
            ELSE 
                i := UDINT_TO_DINT(DINT_TO_UDINT(TRUNC(rtb_Divide)));
            END_IF;
            rtb_Delay1 := Delay1_DSTATE[5000 - DINT_TO_UDINT(i)];
            IF rtb_Divide > 5000.0 THEN 
                i := 5000;
            ELSE 
                i := UDINT_TO_DINT(DINT_TO_UDINT(TRUNC(rtb_Divide)));
            END_IF;
            rtb_Delay10 := Delay10_DSTATE[5000 - DINT_TO_UDINT(i)];
            IF rtb_Divide > 5000.0 THEN 
                i := 5000;
            ELSE 
                i := UDINT_TO_DINT(DINT_TO_UDINT(TRUNC(rtb_Divide)));
            END_IF;
            rtb_Delay7 := Delay7_DSTATE[5000 - DINT_TO_UDINT(i)];
        END_IF;
        (* End of Delay: '<S2>/Delay' *)
        
        (* RelationalOperator: '<S17>/Compare' incorporates:
         *  Delay: '<S2>/Delay12' *)
        rtb_Compare_p := Delay12_DSTATE;
        (* RelationalOperator: '<S18>/Compare' incorporates:
         *  Delay: '<S2>/Delay9' *)
        rtb_Compare_d := Delay9_DSTATE;
        (* RelationalOperator: '<S19>/Compare' incorporates:
         *  Delay: '<S2>/Delay6' *)
        rtb_Compare_k := Delay6_DSTATE;
        (* RelationalOperator: '<S20>/Compare' incorporates:
         *  Delay: '<S2>/Delay3' *)
        rtb_Compare_h := Delay3_DSTATE;
        (* Switch: '<S22>/Switch' incorporates:
         *  Delay: '<S2>/Delay3'
         *  Delay: '<S2>/Delay4'
         *  Logic: '<S22>/Logical Operator'
         *  Logic: '<S22>/Logical Operator4'
         *  Logic: '<S22>/Logical Operator5'
         *  Logic: '<S2>/AND'
         *  Logic: '<S2>/NOT'
         *  RelationalOperator: '<S5>/FixPt Relational Operator'
         *  RelationalOperator: '<S9>/FixPt Relational Operator'
         *  UnitDelay: '<S22>/Unit Delay'
         *  UnitDelay: '<S5>/Delay Input1'
         *  UnitDelay: '<S9>/Delay Input1'
         *
         * Block description for '<S5>/Delay Input1':
         *  
         *  Store in Global RAM
         *
         * Block description for '<S9>/Delay Input1':
         *  
         *  Store in Global RAM *)
        rtb_Switch := ((BOOL_TO_DINT(rtb_Compare) > BOOL_TO_DINT(DelayInput1_DSTATE)) AND ( NOT Delay4_DSTATE)) OR ((BOOL_TO_DINT(Delay3_DSTATE) <= BOOL_TO_DINT(DelayInput1_DSTATE_g)) AND UnitDelay_DSTATE);
        (* Switch: '<S23>/Switch' incorporates:
         *  Delay: '<S2>/Delay6'
         *  Logic: '<S23>/Logical Operator'
         *  Logic: '<S23>/Logical Operator4'
         *  Logic: '<S23>/Logical Operator5'
         *  RelationalOperator: '<S8>/FixPt Relational Operator'
         *  UnitDelay: '<S23>/Unit Delay'
         *  UnitDelay: '<S8>/Delay Input1'
         *
         * Block description for '<S8>/Delay Input1':
         *  
         *  Store in Global RAM *)
        rtb_Delay := rtb_Delay OR ((BOOL_TO_DINT(Delay6_DSTATE) <= BOOL_TO_DINT(DelayInput1_DSTATE_i)) AND UnitDelay_DSTATE_g);
        (* Switch: '<S24>/Switch' incorporates:
         *  Delay: '<S2>/Delay9'
         *  Logic: '<S24>/Logical Operator'
         *  Logic: '<S24>/Logical Operator4'
         *  Logic: '<S24>/Logical Operator5'
         *  RelationalOperator: '<S7>/FixPt Relational Operator'
         *  UnitDelay: '<S24>/Unit Delay'
         *  UnitDelay: '<S7>/Delay Input1'
         *
         * Block description for '<S7>/Delay Input1':
         *  
         *  Store in Global RAM *)
        rtb_Delay1 := rtb_Delay1 OR ((BOOL_TO_DINT(Delay9_DSTATE) <= BOOL_TO_DINT(DelayInput1_DSTATE_o)) AND UnitDelay_DSTATE_f);
        (* Switch: '<S25>/Switch' incorporates:
         *  Delay: '<S2>/Delay12'
         *  Logic: '<S25>/Logical Operator'
         *  Logic: '<S25>/Logical Operator4'
         *  Logic: '<S25>/Logical Operator5'
         *  RelationalOperator: '<S6>/FixPt Relational Operator'
         *  UnitDelay: '<S25>/Unit Delay'
         *  UnitDelay: '<S6>/Delay Input1'
         *
         * Block description for '<S6>/Delay Input1':
         *  
         *  Store in Global RAM *)
        rtb_Delay7 := rtb_Delay7 OR ((BOOL_TO_DINT(Delay12_DSTATE) <= BOOL_TO_DINT(DelayInput1_DSTATE_m)) AND UnitDelay_DSTATE_c);
        (* Switch: '<S26>/Switch' incorporates:
         *  Logic: '<S26>/Logical Operator'
         *  Logic: '<S26>/Logical Operator4'
         *  Logic: '<S26>/Logical Operator5'
         *  RelationalOperator: '<S10>/FixPt Relational Operator'
         *  UnitDelay: '<S10>/Delay Input1'
         *  UnitDelay: '<S26>/Unit Delay'
         *
         * Block description for '<S10>/Delay Input1':
         *  
         *  Store in Global RAM *)
        rtb_Delay10 := rtb_Delay10 OR ((BOOL_TO_DINT(Compare) <= BOOL_TO_DINT(DelayInput1_DSTATE_j)) AND UnitDelay_DSTATE_c3);
        (* Update for Delay: '<S2>/Delay4' *)
        Delay4_DSTATE := rtb_Switch;
        (* Update for UnitDelay: '<S5>/Delay Input1'
         *
         * Block description for '<S5>/Delay Input1':
         *  
         *  Store in Global RAM *)
        DelayInput1_DSTATE := rtb_Compare;
        (* Update for Delay: '<S2>/Delay2' *)
        Delay2_DSTATE := rtb_Delay4;
        (* Update for Delay: '<S2>/Delay3' *)
        Delay3_DSTATE := rtb_Delay;
        (* Update for Delay: '<S2>/Delay5' *)
        Delay5_DSTATE := rtb_Delay3;
        (* Update for Delay: '<S2>/Delay6' *)
        Delay6_DSTATE := rtb_Delay1;
        (* Update for Delay: '<S2>/Delay8' *)
        Delay8_DSTATE := Hw_SensorOben;
        (* Update for Delay: '<S2>/Delay9' *)
        Delay9_DSTATE := rtb_Delay7;
        (* Update for Delay: '<S2>/Delay11' *)
        Delay11_DSTATE := Hw_SensorMitte;
        (* Update for Delay: '<S2>/Delay12' *)
        Delay12_DSTATE := rtb_Delay10;
        FOR i := 0 TO 4998 DO 
            (* Update for Delay: '<S3>/Delay' *)
            Delay_DSTATE[i] := Delay_DSTATE[i + 1];
            (* Update for Delay: '<S4>/Delay' *)
            Delay_DSTATE_l[i] := Delay_DSTATE_l[i + 1];
            (* Update for Delay: '<S2>/Delay' *)
            Delay_DSTATE_m[i] := Delay_DSTATE_m[i + 1];
            (* Update for Delay: '<S2>/Delay1' *)
            Delay1_DSTATE[i] := Delay1_DSTATE[i + 1];
            (* Update for Delay: '<S2>/Delay10' *)
            Delay10_DSTATE[i] := Delay10_DSTATE[i + 1];
            (* Update for Delay: '<S2>/Delay7' *)
            Delay7_DSTATE[i] := Delay7_DSTATE[i + 1];
        END_FOR;
        (* Update for Delay: '<S3>/Delay' *)
        Delay_DSTATE[4999] := Hw_HubmagnetOben;
        (* Update for Delay: '<S4>/Delay' *)
        Delay_DSTATE_l[4999] := Hw_HubmagnetUnten;
        (* Update for Delay: '<S2>/Delay' *)
        Delay_DSTATE_m[4999] := rtb_AND1;
        (* Update for Delay: '<S2>/Delay1' *)
        Delay1_DSTATE[4999] := rtb_AND2;
        (* Update for Delay: '<S2>/Delay10' *)
        Delay10_DSTATE[4999] := rtb_AND4;
        (* Update for Delay: '<S2>/Delay7' *)
        Delay7_DSTATE[4999] := rtb_AND3;
        (* Update for UnitDelay: '<S6>/Delay Input1'
         *
         * Block description for '<S6>/Delay Input1':
         *  
         *  Store in Global RAM *)
        DelayInput1_DSTATE_m := rtb_Compare_p;
        (* Update for UnitDelay: '<S7>/Delay Input1'
         *
         * Block description for '<S7>/Delay Input1':
         *  
         *  Store in Global RAM *)
        DelayInput1_DSTATE_o := rtb_Compare_d;
        (* Update for UnitDelay: '<S8>/Delay Input1'
         *
         * Block description for '<S8>/Delay Input1':
         *  
         *  Store in Global RAM *)
        DelayInput1_DSTATE_i := rtb_Compare_k;
        (* Update for UnitDelay: '<S9>/Delay Input1'
         *
         * Block description for '<S9>/Delay Input1':
         *  
         *  Store in Global RAM *)
        DelayInput1_DSTATE_g := rtb_Compare_h;
        (* Update for UnitDelay: '<S10>/Delay Input1'
         *
         * Block description for '<S10>/Delay Input1':
         *  
         *  Store in Global RAM *)
        DelayInput1_DSTATE_j := Compare;
        (* Update for UnitDelay: '<S22>/Unit Delay' *)
        UnitDelay_DSTATE := rtb_Switch;
        (* Update for UnitDelay: '<S23>/Unit Delay' *)
        UnitDelay_DSTATE_g := rtb_Delay;
        (* Update for UnitDelay: '<S24>/Unit Delay' *)
        UnitDelay_DSTATE_f := rtb_Delay1;
        (* Update for UnitDelay: '<S25>/Unit Delay' *)
        UnitDelay_DSTATE_c := rtb_Delay7;
        (* Update for UnitDelay: '<S26>/Unit Delay' *)
        UnitDelay_DSTATE_c3 := rtb_Delay10;
        (* End of Outputs for SubSystem: '<Root>/Subsystem Reference' *)
END_CASE;
END_FUNCTION_BLOCK
VAR_GLOBAL CONSTANT
    SS_INITIALIZE: SINT := 0;
    SS_STEP: SINT := 1;
END_VAR
