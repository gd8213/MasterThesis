(*
 *
 * File: Main.st
 *
 * IEC 61131-3 Structured Text (ST) code generated for subsystem "Main/Vereinzelung"
 *
 * Model name                      : Main
 * Model version                   : 1.36
 * Model creator                   : kaebi
 * Model last modified by          : kaebi
 * Model last modified on          : Wed Mar 23 14:39:40 2022
 * Model sample time               : 0.01s
 * Subsystem name                  : Main/Vereinzelung
 * Subsystem sample time           : 0.01s
 * Simulink PLC Coder version      : 3.3 (R2020b) 29-Jul-2020
 * ST code generated on            : Wed Mar 23 14:39:46 2022
 *
 * Target IDE selection            : Beckhoff TwinCAT 3
 * Test Bench included             : No
 *
 *)
FUNCTION_BLOCK Vereinzelung
VAR_INPUT
    ssMethodType: SINT;
    Signal_CreateContainer: LREAL;
    c_Signal_RemoveContainerOnC: BOOL;
    SamplingTime: LREAL;
    Hw_HubmagnetOben: BOOL;
    Hw_HubmagnetUnten: BOOL;
END_VAR
VAR_OUTPUT
    Signal_Storage2: BOOL;
    Signal_Storage1: BOOL;
    Hw_SensorOben: BOOL;
    Hw_SensorMitte: BOOL;
    Hw_SensorUnten: BOOL;
END_VAR
VAR
    Delay_DSTATE_d: ARRAY [0..2499] OF BOOL;
    Delay7_DSTATE: ARRAY [0..2499] OF BOOL;
    Delay10_DSTATE: ARRAY [0..2499] OF BOOL;
    Delay1_DSTATE: ARRAY [0..2499] OF BOOL;
    Delay_DSTATE_f: ARRAY [0..2499] OF BOOL;
    Delay_DSTATE: ARRAY [0..2499] OF BOOL;
    DelayInput1_DSTATE_b: BOOL;
    DelayInput1_DSTATE_p: BOOL;
    DelayInput1_DSTATE_n: BOOL;
    DelayInput1_DSTATE_l: BOOL;
    DelayInput1_DSTATE_h: BOOL;
    UnitDelay_DSTATE_o: BOOL;
    UnitDelay_DSTATE_a: BOOL;
    UnitDelay_DSTATE_b: BOOL;
    UnitDelay_DSTATE_f: BOOL;
    UnitDelay_DSTATE: BOOL;
    Delay4_DSTATE: BOOL;
    DelayInput1_DSTATE: BOOL;
    Delay12_DSTATE: BOOL;
    Delay11_DSTATE: BOOL;
    Delay9_DSTATE: BOOL;
    Delay8_DSTATE: BOOL;
    Delay6_DSTATE: BOOL;
    Delay5_DSTATE: BOOL;
    Delay3_DSTATE: BOOL;
    Delay2_DSTATE: BOOL;
END_VAR
VAR_TEMP
    rtb_Compare: BOOL;
    rtb_AND1: BOOL;
    rtb_AND2: BOOL;
    rtb_AND3: BOOL;
    rtb_Uk1: BOOL;
    rtb_AND4: BOOL;
    rtb_Compare_h: BOOL;
    rtb_Compare_f: BOOL;
    rtb_Compare_e: BOOL;
    rtb_Compare_l: BOOL;
    rtb_Divide: LREAL;
    rtb_Delay: BOOL;
    rtb_Delay1: BOOL;
    rtb_Delay10: BOOL;
    rtb_Delay7: BOOL;
    rtb_Switch: BOOL;
    i: DINT;
    rtb_Divide_n_tmp: LREAL;
END_VAR
CASE ssMethodType OF
    SS_INITIALIZE: 
        (* SystemInitialize for Atomic SubSystem: '<Root>/Vereinzelung' *)
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
        (* End of SystemInitialize for SubSystem: '<Root>/Vereinzelung' *)
        (* SystemInitialize for Atomic SubSystem: '<Root>/Vereinzelung' *)
        FOR i := 0 TO 2499 DO 
            (* InitializeConditions for Delay: '<S3>/Delay' *)
            Delay_DSTATE[i] := FALSE;
            (* InitializeConditions for Delay: '<S2>/Delay' *)
            Delay_DSTATE_f[i] := FALSE;
            (* InitializeConditions for Delay: '<S2>/Delay1' *)
            Delay1_DSTATE[i] := FALSE;
            (* InitializeConditions for Delay: '<S2>/Delay10' *)
            Delay10_DSTATE[i] := FALSE;
            (* InitializeConditions for Delay: '<S2>/Delay7' *)
            Delay7_DSTATE[i] := FALSE;
            (* InitializeConditions for Delay: '<S4>/Delay' *)
            Delay_DSTATE_d[i] := FALSE;
        END_FOR;
        (* InitializeConditions for UnitDelay: '<S6>/Delay Input1'
         *
         * Block description for '<S6>/Delay Input1':
         *  
         *  Store in Global RAM *)
        DelayInput1_DSTATE_h := FALSE;
        (* InitializeConditions for UnitDelay: '<S7>/Delay Input1'
         *
         * Block description for '<S7>/Delay Input1':
         *  
         *  Store in Global RAM *)
        DelayInput1_DSTATE_l := FALSE;
        (* InitializeConditions for UnitDelay: '<S8>/Delay Input1'
         *
         * Block description for '<S8>/Delay Input1':
         *  
         *  Store in Global RAM *)
        DelayInput1_DSTATE_n := FALSE;
        (* InitializeConditions for UnitDelay: '<S9>/Delay Input1'
         *
         * Block description for '<S9>/Delay Input1':
         *  
         *  Store in Global RAM *)
        DelayInput1_DSTATE_p := FALSE;
        (* InitializeConditions for UnitDelay: '<S10>/Delay Input1'
         *
         * Block description for '<S10>/Delay Input1':
         *  
         *  Store in Global RAM *)
        DelayInput1_DSTATE_b := FALSE;
        (* InitializeConditions for UnitDelay: '<S22>/Unit Delay' *)
        UnitDelay_DSTATE := FALSE;
        (* InitializeConditions for UnitDelay: '<S23>/Unit Delay' *)
        UnitDelay_DSTATE_f := FALSE;
        (* InitializeConditions for UnitDelay: '<S24>/Unit Delay' *)
        UnitDelay_DSTATE_b := FALSE;
        (* InitializeConditions for UnitDelay: '<S25>/Unit Delay' *)
        UnitDelay_DSTATE_a := FALSE;
        (* InitializeConditions for UnitDelay: '<S26>/Unit Delay' *)
        UnitDelay_DSTATE_o := FALSE;
        (* End of SystemInitialize for SubSystem: '<Root>/Vereinzelung' *)
    SS_STEP: 
        (* Outputs for Atomic SubSystem: '<Root>/Vereinzelung' *)
        (* Product: '<S2>/Divide' incorporates:
         *  Constant: '<S2>/Constant' *)
        rtb_Divide := 0.25 / SamplingTime;
        (* Delay: '<S2>/Delay4' *)
        Signal_Storage2 := Delay4_DSTATE;
        (* RelationalOperator: '<S16>/Compare' incorporates:
         *  Constant: '<S16>/Constant'
         *  DataTypeConversion: '<S2>/Cast To Boolean' *)
        rtb_Compare := Signal_CreateContainer <> 0.0;
        (* Delay: '<S2>/Delay3' *)
        Signal_Storage1 := Delay3_DSTATE;
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
        (* Logic: '<S2>/AND3' incorporates:
         *  Delay: '<S2>/Delay8'
         *  Delay: '<S2>/Delay9'
         *  Logic: '<S2>/NOT3' *)
        rtb_AND3 := Delay8_DSTATE AND ( NOT Delay9_DSTATE);
        (* Outport: '<Root>/Hw_SensorUnten' incorporates:
         *  Delay: '<S2>/Delay12' *)
        Hw_SensorUnten := Delay12_DSTATE;
        (* Product: '<S3>/Divide' incorporates:
         *  Constant: '<S3>/Constant'
         *  Product: '<S4>/Divide' *)
        rtb_Divide_n_tmp := 0.5 / SamplingTime;
        (* Delay: '<S3>/Delay' incorporates:
         *  Product: '<S3>/Divide' *)
        IF rtb_Divide_n_tmp < 1.0 THEN 
            rtb_Uk1 := Hw_HubmagnetOben;
        ELSE 
            IF rtb_Divide_n_tmp > 2500.0 THEN 
                i := 2500;
            ELSE 
                i := UDINT_TO_DINT(DINT_TO_UDINT(TRUNC(rtb_Divide_n_tmp)));
            END_IF;
            rtb_Uk1 := Delay_DSTATE[2500 - DINT_TO_UDINT(i)];
        END_IF;
        (* End of Delay: '<S3>/Delay' *)
        
        (* Logic: '<S2>/AND4' incorporates:
         *  Delay: '<S2>/Delay11'
         *  Delay: '<S2>/Delay12'
         *  Logic: '<S2>/NOT5'
         *  Logic: '<S2>/NOT6' *)
        rtb_AND4 := (Delay11_DSTATE AND ( NOT Delay12_DSTATE)) AND ( NOT rtb_Uk1);
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
            IF rtb_Divide > 2500.0 THEN 
                i := 2500;
            ELSE 
                i := UDINT_TO_DINT(DINT_TO_UDINT(TRUNC(rtb_Divide)));
            END_IF;
            rtb_Delay := Delay_DSTATE_f[2500 - DINT_TO_UDINT(i)];
            IF rtb_Divide > 2500.0 THEN 
                i := 2500;
            ELSE 
                i := UDINT_TO_DINT(DINT_TO_UDINT(TRUNC(rtb_Divide)));
            END_IF;
            rtb_Delay1 := Delay1_DSTATE[2500 - DINT_TO_UDINT(i)];
            IF rtb_Divide > 2500.0 THEN 
                i := 2500;
            ELSE 
                i := UDINT_TO_DINT(DINT_TO_UDINT(TRUNC(rtb_Divide)));
            END_IF;
            rtb_Delay10 := Delay10_DSTATE[2500 - DINT_TO_UDINT(i)];
            IF rtb_Divide > 2500.0 THEN 
                i := 2500;
            ELSE 
                i := UDINT_TO_DINT(DINT_TO_UDINT(TRUNC(rtb_Divide)));
            END_IF;
            rtb_Delay7 := Delay7_DSTATE[2500 - DINT_TO_UDINT(i)];
        END_IF;
        (* End of Delay: '<S2>/Delay' *)
        
        (* Delay: '<S4>/Delay' *)
        IF rtb_Divide_n_tmp < 1.0 THEN 
            rtb_Uk1 := Hw_HubmagnetUnten;
        ELSE 
            IF rtb_Divide_n_tmp > 2500.0 THEN 
                i := 2500;
            ELSE 
                i := UDINT_TO_DINT(DINT_TO_UDINT(TRUNC(rtb_Divide_n_tmp)));
            END_IF;
            rtb_Uk1 := Delay_DSTATE_d[2500 - DINT_TO_UDINT(i)];
        END_IF;
        (* End of Delay: '<S4>/Delay' *)
        
        (* RelationalOperator: '<S17>/Compare' incorporates:
         *  Delay: '<S2>/Delay3' *)
        rtb_Compare_h := Delay3_DSTATE;
        (* RelationalOperator: '<S18>/Compare' incorporates:
         *  Delay: '<S2>/Delay6' *)
        rtb_Compare_f := Delay6_DSTATE;
        (* RelationalOperator: '<S19>/Compare' incorporates:
         *  Delay: '<S2>/Delay9' *)
        rtb_Compare_e := Delay9_DSTATE;
        (* RelationalOperator: '<S20>/Compare' incorporates:
         *  Delay: '<S2>/Delay12' *)
        rtb_Compare_l := Delay12_DSTATE;
        (* Switch: '<S22>/Switch' incorporates:
         *  Delay: '<S2>/Delay3'
         *  Delay: '<S2>/Delay4'
         *  Logic: '<S22>/Logical Operator'
         *  Logic: '<S22>/Logical Operator4'
         *  Logic: '<S22>/Logical Operator5'
         *  Logic: '<S2>/AND'
         *  Logic: '<S2>/NOT'
         *  RelationalOperator: '<S5>/FixPt Relational Operator'
         *  RelationalOperator: '<S6>/FixPt Relational Operator'
         *  UnitDelay: '<S22>/Unit Delay'
         *  UnitDelay: '<S5>/Delay Input1'
         *  UnitDelay: '<S6>/Delay Input1'
         *
         * Block description for '<S5>/Delay Input1':
         *  
         *  Store in Global RAM
         *
         * Block description for '<S6>/Delay Input1':
         *  
         *  Store in Global RAM *)
        rtb_Switch := ((BOOL_TO_DINT(rtb_Compare) > BOOL_TO_DINT(DelayInput1_DSTATE)) AND ( NOT Delay4_DSTATE)) OR ((BOOL_TO_DINT(Delay3_DSTATE) <= BOOL_TO_DINT(DelayInput1_DSTATE_h)) AND UnitDelay_DSTATE);
        (* Switch: '<S23>/Switch' incorporates:
         *  Delay: '<S2>/Delay6'
         *  Logic: '<S23>/Logical Operator'
         *  Logic: '<S23>/Logical Operator4'
         *  Logic: '<S23>/Logical Operator5'
         *  RelationalOperator: '<S7>/FixPt Relational Operator'
         *  UnitDelay: '<S23>/Unit Delay'
         *  UnitDelay: '<S7>/Delay Input1'
         *
         * Block description for '<S7>/Delay Input1':
         *  
         *  Store in Global RAM *)
        rtb_Delay := rtb_Delay OR ((BOOL_TO_DINT(Delay6_DSTATE) <= BOOL_TO_DINT(DelayInput1_DSTATE_l)) AND UnitDelay_DSTATE_f);
        (* Switch: '<S24>/Switch' incorporates:
         *  Delay: '<S2>/Delay9'
         *  Logic: '<S24>/Logical Operator'
         *  Logic: '<S24>/Logical Operator4'
         *  Logic: '<S24>/Logical Operator5'
         *  RelationalOperator: '<S8>/FixPt Relational Operator'
         *  UnitDelay: '<S24>/Unit Delay'
         *  UnitDelay: '<S8>/Delay Input1'
         *
         * Block description for '<S8>/Delay Input1':
         *  
         *  Store in Global RAM *)
        rtb_Delay1 := rtb_Delay1 OR ((BOOL_TO_DINT(Delay9_DSTATE) <= BOOL_TO_DINT(DelayInput1_DSTATE_n)) AND UnitDelay_DSTATE_b);
        (* Switch: '<S25>/Switch' incorporates:
         *  Delay: '<S2>/Delay12'
         *  Logic: '<S25>/Logical Operator'
         *  Logic: '<S25>/Logical Operator4'
         *  Logic: '<S25>/Logical Operator5'
         *  RelationalOperator: '<S9>/FixPt Relational Operator'
         *  UnitDelay: '<S25>/Unit Delay'
         *  UnitDelay: '<S9>/Delay Input1'
         *
         * Block description for '<S9>/Delay Input1':
         *  
         *  Store in Global RAM *)
        rtb_Delay7 := rtb_Delay7 OR ((BOOL_TO_DINT(Delay12_DSTATE) <= BOOL_TO_DINT(DelayInput1_DSTATE_p)) AND UnitDelay_DSTATE_a);
        (* Switch: '<S26>/Switch' incorporates:
         *  Logic: '<S26>/Logical Operator'
         *  Logic: '<S26>/Logical Operator4'
         *  Logic: '<S26>/Logical Operator5'
         *  Logic: '<S2>/NOT4'
         *  Logic: '<S2>/OR'
         *  RelationalOperator: '<S10>/FixPt Relational Operator'
         *  RelationalOperator: '<S21>/Compare'
         *  UnitDelay: '<S10>/Delay Input1'
         *  UnitDelay: '<S26>/Unit Delay'
         *
         * Block description for '<S10>/Delay Input1':
         *  
         *  Store in Global RAM *)
        rtb_Uk1 := rtb_Delay10 OR (((BOOL_TO_DINT(c_Signal_RemoveContainerOnC) <= BOOL_TO_DINT(DelayInput1_DSTATE_b)) AND rtb_Uk1) AND UnitDelay_DSTATE_o);
        (* Update for Delay: '<S2>/Delay4' *)
        Delay4_DSTATE := rtb_Switch;
        (* Update for UnitDelay: '<S5>/Delay Input1'
         *
         * Block description for '<S5>/Delay Input1':
         *  
         *  Store in Global RAM *)
        DelayInput1_DSTATE := rtb_Compare;
        (* Update for Delay: '<S2>/Delay2' *)
        Delay2_DSTATE := Signal_Storage2;
        (* Update for Delay: '<S2>/Delay3' *)
        Delay3_DSTATE := rtb_Delay;
        (* Update for Delay: '<S2>/Delay5' *)
        Delay5_DSTATE := Signal_Storage1;
        (* Update for Delay: '<S2>/Delay6' *)
        Delay6_DSTATE := rtb_Delay1;
        (* Update for Delay: '<S2>/Delay8' *)
        Delay8_DSTATE := Hw_SensorOben;
        (* Update for Delay: '<S2>/Delay9' *)
        Delay9_DSTATE := rtb_Delay7;
        (* Update for Delay: '<S2>/Delay11' *)
        Delay11_DSTATE := Hw_SensorMitte;
        (* Update for Delay: '<S2>/Delay12' *)
        Delay12_DSTATE := rtb_Uk1;
        FOR i := 0 TO 2498 DO 
            (* Update for Delay: '<S3>/Delay' *)
            Delay_DSTATE[i] := Delay_DSTATE[i + 1];
            (* Update for Delay: '<S2>/Delay' *)
            Delay_DSTATE_f[i] := Delay_DSTATE_f[i + 1];
            (* Update for Delay: '<S2>/Delay1' *)
            Delay1_DSTATE[i] := Delay1_DSTATE[i + 1];
            (* Update for Delay: '<S2>/Delay10' *)
            Delay10_DSTATE[i] := Delay10_DSTATE[i + 1];
            (* Update for Delay: '<S2>/Delay7' *)
            Delay7_DSTATE[i] := Delay7_DSTATE[i + 1];
            (* Update for Delay: '<S4>/Delay' *)
            Delay_DSTATE_d[i] := Delay_DSTATE_d[i + 1];
        END_FOR;
        (* Update for Delay: '<S3>/Delay' *)
        Delay_DSTATE[2499] := Hw_HubmagnetOben;
        (* Update for Delay: '<S2>/Delay' *)
        Delay_DSTATE_f[2499] := rtb_AND1;
        (* Update for Delay: '<S2>/Delay1' *)
        Delay1_DSTATE[2499] := rtb_AND2;
        (* Update for Delay: '<S2>/Delay10' *)
        Delay10_DSTATE[2499] := rtb_AND4;
        (* Update for Delay: '<S2>/Delay7' *)
        Delay7_DSTATE[2499] := rtb_AND3;
        (* Update for Delay: '<S4>/Delay' *)
        Delay_DSTATE_d[2499] := Hw_HubmagnetUnten;
        (* Update for UnitDelay: '<S6>/Delay Input1'
         *
         * Block description for '<S6>/Delay Input1':
         *  
         *  Store in Global RAM *)
        DelayInput1_DSTATE_h := rtb_Compare_h;
        (* Update for UnitDelay: '<S7>/Delay Input1'
         *
         * Block description for '<S7>/Delay Input1':
         *  
         *  Store in Global RAM *)
        DelayInput1_DSTATE_l := rtb_Compare_f;
        (* Update for UnitDelay: '<S8>/Delay Input1'
         *
         * Block description for '<S8>/Delay Input1':
         *  
         *  Store in Global RAM *)
        DelayInput1_DSTATE_n := rtb_Compare_e;
        (* Update for UnitDelay: '<S9>/Delay Input1'
         *
         * Block description for '<S9>/Delay Input1':
         *  
         *  Store in Global RAM *)
        DelayInput1_DSTATE_p := rtb_Compare_l;
        (* Update for UnitDelay: '<S10>/Delay Input1' incorporates:
         *  RelationalOperator: '<S21>/Compare'
         *
         * Block description for '<S10>/Delay Input1':
         *  
         *  Store in Global RAM *)
        DelayInput1_DSTATE_b := c_Signal_RemoveContainerOnC;
        (* Update for UnitDelay: '<S22>/Unit Delay' *)
        UnitDelay_DSTATE := rtb_Switch;
        (* Update for UnitDelay: '<S23>/Unit Delay' *)
        UnitDelay_DSTATE_f := rtb_Delay;
        (* Update for UnitDelay: '<S24>/Unit Delay' *)
        UnitDelay_DSTATE_b := rtb_Delay1;
        (* Update for UnitDelay: '<S25>/Unit Delay' *)
        UnitDelay_DSTATE_a := rtb_Delay7;
        (* Update for UnitDelay: '<S26>/Unit Delay' *)
        UnitDelay_DSTATE_o := rtb_Uk1;
        (* End of Outputs for SubSystem: '<Root>/Vereinzelung' *)
END_CASE;
END_FUNCTION_BLOCK
VAR_GLOBAL CONSTANT
    SS_INITIALIZE: SINT := 0;
    SS_STEP: SINT := 1;
END_VAR
