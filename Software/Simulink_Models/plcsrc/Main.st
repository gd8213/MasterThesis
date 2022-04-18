(*
 *
 * File: Main.st
 *
 * IEC 61131-3 Structured Text (ST) code generated for subsystem "Main/Model_Seperator"
 *
 * Model name                      : Main
 * Model version                   : 1.153
 * Model creator                   : kaebi
 * Model last modified by          : kaebi
 * Model last modified on          : Wed Apr 13 18:28:10 2022
 * Model sample time               : 0.001s
 * Subsystem name                  : Main/Model_Seperator
 * Subsystem sample time           : 0.001s
 * Simulink PLC Coder version      : 3.3 (R2020b) 29-Jul-2020
 * ST code generated on            : Wed Apr 13 18:28:27 2022
 *
 * Target IDE selection            : Beckhoff TwinCAT 3
 * Test Bench included             : No
 *
 *)
FUNCTION_BLOCK Model_Seperator
VAR_INPUT
    ssMethodType: SINT;
    Signal_CreateContainer: BOOL;
    c_Signal_RemoveContainerOnC: BOOL;
    SamplingTime: LREAL;
    Hw_AktObenEinfahren: BOOL;
    Hw_AktObenAusfahren: BOOL;
    Hw_AktUntenEinfahren: BOOL;
    Hw_AktUntenAusfahren: BOOL;
END_VAR
VAR_OUTPUT
    Signal_Storage2: BOOL;
    Signal_Storage1: BOOL;
    Hw_SensorOben: BOOL;
    Hw_SensorMitte: BOOL;
    Hw_SensorUnten: BOOL;
END_VAR
VAR
    Delay7_DSTATE: ARRAY [0..2499] OF BOOL;
    Delay10_DSTATE: ARRAY [0..2499] OF BOOL;
    Delay1_DSTATE: ARRAY [0..2499] OF BOOL;
    Delay_DSTATE: ARRAY [0..2499] OF BOOL;
    DelayInput1_DSTATE_c: BOOL;
    DelayInput1_DSTATE_cd: BOOL;
    DelayInput1_DSTATE_d: BOOL;
    DelayInput1_DSTATE_n: BOOL;
    DelayInput1_DSTATE_a: BOOL;
    UnitDelay_DSTATE_c: BOOL;
    UnitDelay_DSTATE_k: BOOL;
    UnitDelay_DSTATE_m: BOOL;
    UnitDelay_DSTATE_h: BOOL;
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
    rtb_Uk1: BOOL;
    rtb_AND: BOOL;
    rtb_AND2: BOOL;
    rtb_AND1: BOOL;
    rtb_AND2_b: BOOL;
    rtb_AND3: BOOL;
    rtb_Compare_h: BOOL;
    rtb_Compare_o: BOOL;
    rtb_Compare_bf: BOOL;
    rtb_Compare_j: BOOL;
    rtb_Divide: LREAL;
    rtb_Delay: BOOL;
    rtb_Delay1: BOOL;
    rtb_Delay10: BOOL;
    rtb_Delay7: BOOL;
    rtb_Switch: BOOL;
    i: DINT;
END_VAR
CASE ssMethodType OF
    SS_INITIALIZE: 
        (* SystemInitialize for Atomic SubSystem: '<Root>/Model_Seperator' *)
        (* InitializeConditions for Delay: '<S4>/Delay4' *)
        Delay4_DSTATE := FALSE;
        (* InitializeConditions for UnitDelay: '<S5>/Delay Input1'
         *
         * Block description for '<S5>/Delay Input1':
         *  
         *  Store in Global RAM *)
        DelayInput1_DSTATE := FALSE;
        (* InitializeConditions for Delay: '<S4>/Delay2' *)
        Delay2_DSTATE := FALSE;
        (* InitializeConditions for Delay: '<S4>/Delay3' *)
        Delay3_DSTATE := FALSE;
        (* InitializeConditions for Delay: '<S4>/Delay5' *)
        Delay5_DSTATE := FALSE;
        (* InitializeConditions for Delay: '<S4>/Delay6' *)
        Delay6_DSTATE := FALSE;
        (* InitializeConditions for Delay: '<S4>/Delay8' *)
        Delay8_DSTATE := FALSE;
        (* InitializeConditions for Delay: '<S4>/Delay9' *)
        Delay9_DSTATE := FALSE;
        (* InitializeConditions for Delay: '<S4>/Delay11' *)
        Delay11_DSTATE := FALSE;
        (* InitializeConditions for Delay: '<S4>/Delay12' *)
        Delay12_DSTATE := FALSE;
        (* InitializeConditions for UnitDelay: '<S10>/Delay Input1'
         *
         * Block description for '<S10>/Delay Input1':
         *  
         *  Store in Global RAM *)
        DelayInput1_DSTATE_c := FALSE;
        (* End of SystemInitialize for SubSystem: '<Root>/Model_Seperator' *)
        (* SystemInitialize for Atomic SubSystem: '<Root>/Model_Seperator' *)
        FOR i := 0 TO 2499 DO 
            (* InitializeConditions for Delay: '<S4>/Delay' *)
            Delay_DSTATE[i] := FALSE;
            (* InitializeConditions for Delay: '<S4>/Delay1' *)
            Delay1_DSTATE[i] := FALSE;
            (* InitializeConditions for Delay: '<S4>/Delay10' *)
            Delay10_DSTATE[i] := FALSE;
            (* InitializeConditions for Delay: '<S4>/Delay7' *)
            Delay7_DSTATE[i] := FALSE;
        END_FOR;
        (* InitializeConditions for UnitDelay: '<S6>/Delay Input1'
         *
         * Block description for '<S6>/Delay Input1':
         *  
         *  Store in Global RAM *)
        DelayInput1_DSTATE_a := FALSE;
        (* InitializeConditions for UnitDelay: '<S7>/Delay Input1'
         *
         * Block description for '<S7>/Delay Input1':
         *  
         *  Store in Global RAM *)
        DelayInput1_DSTATE_n := FALSE;
        (* InitializeConditions for UnitDelay: '<S8>/Delay Input1'
         *
         * Block description for '<S8>/Delay Input1':
         *  
         *  Store in Global RAM *)
        DelayInput1_DSTATE_d := FALSE;
        (* InitializeConditions for UnitDelay: '<S9>/Delay Input1'
         *
         * Block description for '<S9>/Delay Input1':
         *  
         *  Store in Global RAM *)
        DelayInput1_DSTATE_cd := FALSE;
        (* InitializeConditions for UnitDelay: '<S22>/Unit Delay' *)
        UnitDelay_DSTATE := FALSE;
        (* InitializeConditions for UnitDelay: '<S23>/Unit Delay' *)
        UnitDelay_DSTATE_h := FALSE;
        (* InitializeConditions for UnitDelay: '<S24>/Unit Delay' *)
        UnitDelay_DSTATE_m := FALSE;
        (* InitializeConditions for UnitDelay: '<S25>/Unit Delay' *)
        UnitDelay_DSTATE_k := FALSE;
        (* InitializeConditions for UnitDelay: '<S26>/Unit Delay' *)
        UnitDelay_DSTATE_c := FALSE;
        (* End of SystemInitialize for SubSystem: '<Root>/Model_Seperator' *)
    SS_STEP: 
        (* Outputs for Atomic SubSystem: '<Root>/Model_Seperator' *)
        (* Logic: '<S2>/XOR' *)
        rtb_Uk1 := Hw_AktUntenEinfahren XOR Hw_AktUntenAusfahren;
        (* Logic: '<S2>/AND' incorporates:
         *  Logic: '<S2>/NOT' *)
        rtb_AND := (rtb_Uk1 AND Hw_AktUntenEinfahren) AND ( NOT Hw_AktUntenAusfahren);
        (* Logic: '<S2>/AND2' incorporates:
         *  Logic: '<S2>/NOT1' *)
        rtb_AND2 := (( NOT Hw_AktUntenEinfahren) AND Hw_AktUntenAusfahren) AND rtb_Uk1;
        (* Logic: '<S3>/XOR' *)
        rtb_Uk1 := Hw_AktObenEinfahren XOR Hw_AktObenAusfahren;
        (* Product: '<S4>/Divide' incorporates:
         *  Constant: '<S4>/Constant' *)
        rtb_Divide := 0.25 / SamplingTime;
        (* Delay: '<S4>/Delay4' *)
        Signal_Storage2 := Delay4_DSTATE;
        (* Delay: '<S4>/Delay3' *)
        Signal_Storage1 := Delay3_DSTATE;
        (* Logic: '<S4>/AND1' incorporates:
         *  Delay: '<S4>/Delay2'
         *  Delay: '<S4>/Delay3'
         *  Logic: '<S4>/NOT1' *)
        rtb_AND1 := Delay2_DSTATE AND ( NOT Delay3_DSTATE);
        (* Delay: '<S4>/Delay6' *)
        Hw_SensorOben := Delay6_DSTATE;
        (* Logic: '<S4>/AND2' incorporates:
         *  Delay: '<S4>/Delay5'
         *  Delay: '<S4>/Delay6'
         *  Logic: '<S4>/NOT2' *)
        rtb_AND2_b := Delay5_DSTATE AND ( NOT Delay6_DSTATE);
        (* Delay: '<S4>/Delay9' *)
        Hw_SensorMitte := Delay9_DSTATE;
        (* Logic: '<S4>/AND3' incorporates:
         *  Delay: '<S4>/Delay8'
         *  Delay: '<S4>/Delay9'
         *  Logic: '<S4>/NOT3' *)
        rtb_AND3 := Delay8_DSTATE AND ( NOT Delay9_DSTATE);
        (* Outport: '<Root>/Hw_SensorUnten' incorporates:
         *  Delay: '<S4>/Delay12' *)
        Hw_SensorUnten := Delay12_DSTATE;
        (* Logic: '<S3>/NOT1' incorporates:
         *  Logic: '<S3>/AND' *)
        rtb_Delay :=  NOT Hw_AktObenEinfahren;
        (* Logic: '<S4>/AND4' incorporates:
         *  Delay: '<S4>/Delay11'
         *  Delay: '<S4>/Delay12'
         *  Logic: '<S3>/AND'
         *  Logic: '<S3>/AND2'
         *  Logic: '<S3>/NOT'
         *  Logic: '<S3>/NOT1'
         *  Logic: '<S4>/AND5'
         *  Logic: '<S4>/NOT5'
         *  Logic: '<S4>/NOT6' *)
        rtb_Uk1 := (Delay11_DSTATE AND ( NOT Delay12_DSTATE)) AND (((rtb_Delay AND Hw_AktObenAusfahren) AND rtb_Uk1) AND ((( NOT rtb_Uk1) OR rtb_Delay) OR Hw_AktObenAusfahren));
        (* Delay: '<S4>/Delay' incorporates:
         *  Delay: '<S4>/Delay1'
         *  Delay: '<S4>/Delay10'
         *  Delay: '<S4>/Delay7' *)
        IF rtb_Divide < 1.0 THEN 
            rtb_Delay := rtb_AND1;
            rtb_Delay1 := rtb_AND2_b;
            rtb_Delay10 := rtb_Uk1;
            rtb_Delay7 := rtb_AND3;
        ELSE 
            IF rtb_Divide > 2500.0 THEN 
                i := 2500;
            ELSE 
                i := UDINT_TO_DINT(DINT_TO_UDINT(TRUNC(rtb_Divide)));
            END_IF;
            rtb_Delay := Delay_DSTATE[2500 - DINT_TO_UDINT(i)];
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
        (* End of Delay: '<S4>/Delay' *)
        
        (* RelationalOperator: '<S17>/Compare' incorporates:
         *  Delay: '<S4>/Delay3' *)
        rtb_Compare_h := Delay3_DSTATE;
        (* RelationalOperator: '<S18>/Compare' incorporates:
         *  Delay: '<S4>/Delay6' *)
        rtb_Compare_o := Delay6_DSTATE;
        (* RelationalOperator: '<S19>/Compare' incorporates:
         *  Delay: '<S4>/Delay9' *)
        rtb_Compare_bf := Delay9_DSTATE;
        (* RelationalOperator: '<S20>/Compare' incorporates:
         *  Delay: '<S4>/Delay12' *)
        rtb_Compare_j := Delay12_DSTATE;
        (* Switch: '<S22>/Switch' incorporates:
         *  Delay: '<S4>/Delay3'
         *  Delay: '<S4>/Delay4'
         *  Logic: '<S22>/Logical Operator'
         *  Logic: '<S22>/Logical Operator4'
         *  Logic: '<S22>/Logical Operator5'
         *  Logic: '<S4>/AND'
         *  Logic: '<S4>/NOT'
         *  RelationalOperator: '<S16>/Compare'
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
        rtb_Switch := ((BOOL_TO_DINT(Signal_CreateContainer) > BOOL_TO_DINT(DelayInput1_DSTATE)) AND ( NOT Delay4_DSTATE)) OR ((BOOL_TO_DINT(Delay3_DSTATE) <= BOOL_TO_DINT(DelayInput1_DSTATE_a)) AND UnitDelay_DSTATE);
        (* Switch: '<S23>/Switch' incorporates:
         *  Delay: '<S4>/Delay6'
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
        rtb_Delay := rtb_Delay OR ((BOOL_TO_DINT(Delay6_DSTATE) <= BOOL_TO_DINT(DelayInput1_DSTATE_n)) AND UnitDelay_DSTATE_h);
        (* Switch: '<S24>/Switch' incorporates:
         *  Delay: '<S4>/Delay9'
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
        rtb_Delay1 := rtb_Delay1 OR ((BOOL_TO_DINT(Delay9_DSTATE) <= BOOL_TO_DINT(DelayInput1_DSTATE_d)) AND UnitDelay_DSTATE_m);
        (* Switch: '<S25>/Switch' incorporates:
         *  Delay: '<S4>/Delay12'
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
        rtb_Delay7 := rtb_Delay7 OR ((BOOL_TO_DINT(Delay12_DSTATE) <= BOOL_TO_DINT(DelayInput1_DSTATE_cd)) AND UnitDelay_DSTATE_k);
        (* Switch: '<S26>/Switch' incorporates:
         *  Logic: '<S26>/Logical Operator'
         *  Logic: '<S26>/Logical Operator4'
         *  Logic: '<S26>/Logical Operator5'
         *  Logic: '<S4>/AND6'
         *  Logic: '<S4>/AND7'
         *  Logic: '<S4>/NOT4'
         *  RelationalOperator: '<S10>/FixPt Relational Operator'
         *  RelationalOperator: '<S21>/Compare'
         *  UnitDelay: '<S10>/Delay Input1'
         *  UnitDelay: '<S26>/Unit Delay'
         *
         * Block description for '<S10>/Delay Input1':
         *  
         *  Store in Global RAM *)
        rtb_AND := rtb_Delay10 OR (((BOOL_TO_DINT(c_Signal_RemoveContainerOnC) <= BOOL_TO_DINT(DelayInput1_DSTATE_c)) OR (( NOT rtb_AND2) OR rtb_AND)) AND UnitDelay_DSTATE_c);
        (* Update for Delay: '<S4>/Delay4' *)
        Delay4_DSTATE := rtb_Switch;
        (* Update for UnitDelay: '<S5>/Delay Input1' incorporates:
         *  RelationalOperator: '<S16>/Compare'
         *
         * Block description for '<S5>/Delay Input1':
         *  
         *  Store in Global RAM *)
        DelayInput1_DSTATE := Signal_CreateContainer;
        (* Update for Delay: '<S4>/Delay2' *)
        Delay2_DSTATE := Signal_Storage2;
        (* Update for Delay: '<S4>/Delay3' *)
        Delay3_DSTATE := rtb_Delay;
        (* Update for Delay: '<S4>/Delay5' *)
        Delay5_DSTATE := Signal_Storage1;
        (* Update for Delay: '<S4>/Delay6' *)
        Delay6_DSTATE := rtb_Delay1;
        (* Update for Delay: '<S4>/Delay8' *)
        Delay8_DSTATE := Hw_SensorOben;
        (* Update for Delay: '<S4>/Delay9' *)
        Delay9_DSTATE := rtb_Delay7;
        (* Update for Delay: '<S4>/Delay11' *)
        Delay11_DSTATE := Hw_SensorMitte;
        (* Update for Delay: '<S4>/Delay12' *)
        Delay12_DSTATE := rtb_AND;
        (* Update for UnitDelay: '<S10>/Delay Input1' incorporates:
         *  RelationalOperator: '<S21>/Compare'
         *
         * Block description for '<S10>/Delay Input1':
         *  
         *  Store in Global RAM *)
        DelayInput1_DSTATE_c := c_Signal_RemoveContainerOnC;
        FOR i := 0 TO 2498 DO 
            (* Update for Delay: '<S4>/Delay' *)
            Delay_DSTATE[i] := Delay_DSTATE[i + 1];
            (* Update for Delay: '<S4>/Delay1' *)
            Delay1_DSTATE[i] := Delay1_DSTATE[i + 1];
            (* Update for Delay: '<S4>/Delay10' *)
            Delay10_DSTATE[i] := Delay10_DSTATE[i + 1];
            (* Update for Delay: '<S4>/Delay7' *)
            Delay7_DSTATE[i] := Delay7_DSTATE[i + 1];
        END_FOR;
        (* Update for Delay: '<S4>/Delay' *)
        Delay_DSTATE[2499] := rtb_AND1;
        (* Update for Delay: '<S4>/Delay1' *)
        Delay1_DSTATE[2499] := rtb_AND2_b;
        (* Update for Delay: '<S4>/Delay10' *)
        Delay10_DSTATE[2499] := rtb_Uk1;
        (* Update for Delay: '<S4>/Delay7' *)
        Delay7_DSTATE[2499] := rtb_AND3;
        (* Update for UnitDelay: '<S6>/Delay Input1'
         *
         * Block description for '<S6>/Delay Input1':
         *  
         *  Store in Global RAM *)
        DelayInput1_DSTATE_a := rtb_Compare_h;
        (* Update for UnitDelay: '<S7>/Delay Input1'
         *
         * Block description for '<S7>/Delay Input1':
         *  
         *  Store in Global RAM *)
        DelayInput1_DSTATE_n := rtb_Compare_o;
        (* Update for UnitDelay: '<S8>/Delay Input1'
         *
         * Block description for '<S8>/Delay Input1':
         *  
         *  Store in Global RAM *)
        DelayInput1_DSTATE_d := rtb_Compare_bf;
        (* Update for UnitDelay: '<S9>/Delay Input1'
         *
         * Block description for '<S9>/Delay Input1':
         *  
         *  Store in Global RAM *)
        DelayInput1_DSTATE_cd := rtb_Compare_j;
        (* Update for UnitDelay: '<S22>/Unit Delay' *)
        UnitDelay_DSTATE := rtb_Switch;
        (* Update for UnitDelay: '<S23>/Unit Delay' *)
        UnitDelay_DSTATE_h := rtb_Delay;
        (* Update for UnitDelay: '<S24>/Unit Delay' *)
        UnitDelay_DSTATE_m := rtb_Delay1;
        (* Update for UnitDelay: '<S25>/Unit Delay' *)
        UnitDelay_DSTATE_k := rtb_Delay7;
        (* Update for UnitDelay: '<S26>/Unit Delay' *)
        UnitDelay_DSTATE_c := rtb_AND;
        (* End of Outputs for SubSystem: '<Root>/Model_Seperator' *)
END_CASE;
END_FUNCTION_BLOCK
VAR_GLOBAL CONSTANT
    SS_INITIALIZE: SINT := 0;
    SS_STEP: SINT := 1;
END_VAR
