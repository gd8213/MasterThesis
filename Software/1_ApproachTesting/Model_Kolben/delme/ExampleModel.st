(*
 *
 * File: ExampleModel.st
 *
 * IEC 61131-3 Structured Text (ST) code generated for subsystem "ExampleModel/Subsystem"
 *
 * Model name                      : ExampleModel
 * Model version                   : 1.16
 * Model creator                   : kaebi
 * Model last modified by          : kaebi
 * Model last modified on          : Thu Jun 16 18:44:37 2022
 * Model sample time               : 0.01s
 * Subsystem name                  : ExampleModel/Subsystem
 * Subsystem sample time           : 0.01s
 * Simulink PLC Coder version      : 3.3 (R2020b) 29-Jul-2020
 * ST code generated on            : Sun Jun 19 18:46:33 2022
 *
 * Target IDE selection            : Beckhoff TwinCAT 3
 * Test Bench included             : No
 *
 *)
FUNCTION_BLOCK Subsystem
VAR_INPUT
    ssMethodType: SINT;
    VelocityGain: LREAL;
END_VAR
VAR_OUTPUT
    PositionPiston: LREAL;
    PositionWheel_Deg: LREAL;
END_VAR
VAR
    c_DiscreteTimeIntegrator_DS: LREAL;
END_VAR
VAR_TEMP
    b_n: SINT;
    b_x: LREAL;
    absx: LREAL;
    d_x: LREAL;
    absx_tmp: LREAL;
END_VAR
CASE ssMethodType OF
    SS_INITIALIZE: 
        (* SystemInitialize for Atomic SubSystem: '<Root>/Subsystem' *)
        (* InitializeConditions for DiscreteIntegrator: '<S1>/Discrete-Time Integrator' *)
        c_DiscreteTimeIntegrator_DS := 0.0;
        (* End of SystemInitialize for SubSystem: '<Root>/Subsystem' *)
    SS_STEP: 
        (* Outputs for Atomic SubSystem: '<Root>/Subsystem' *)
        (* Math: '<S1>/Mod' incorporates:
         *  Constant: '<S1>/Constant'
         *  DiscreteIntegrator: '<S1>/Discrete-Time Integrator' *)
        PositionWheel_Deg := rt_modd(u0 := c_DiscreteTimeIntegrator_DS, u1 := 360.0);
        (* MATLAB Function: '<S1>/MATLAB Function' *)
        (* MATLAB Function 'Subsystem/MATLAB Function': '<S2>:1' *)
        (* '<S2>:1:2' R = 9; *)
        (* '<S2>:1:3' L = 25; *)
        (* '<S2>:1:4' K = 13; *)
        (* '<S2>:1:6' DistanceHeadPiston = K + cosd(PosWheel)*R + sqrt(L^2-(sind(PosWheel)*R)^2); *)
        d_x := rt_remd(u0 := PositionWheel_Deg, u1 := 360.0);
        b_x := d_x;
        absx_tmp := ABS(d_x);
        absx := absx_tmp;
        IF absx_tmp > 180.0 THEN 
            IF d_x > 0.0 THEN 
                b_x := d_x - 360.0;
            ELSE 
                b_x := d_x + 360.0;
            END_IF;
            absx := ABS(b_x);
        END_IF;
        IF absx <= 45.0 THEN 
            b_x := 0.017453292519943295 * b_x;
            b_n := 0;
        ELSIF absx <= 135.0 THEN 
            IF b_x > 0.0 THEN 
                b_x := (b_x - 90.0) * 0.017453292519943295;
                b_n := 1;
            ELSE 
                b_x := (b_x + 90.0) * 0.017453292519943295;
                b_n := -1;
            END_IF;
        ELSIF b_x > 0.0 THEN 
            b_x := (b_x - 180.0) * 0.017453292519943295;
            b_n := 2;
        ELSE 
            b_x := (b_x + 180.0) * 0.017453292519943295;
            b_n := -2;
        END_IF;
        CASE b_n OF
            0: 
                b_x := SIN(b_x);
            1: 
                b_x := COS(b_x);
            -1: 
                b_x :=  -COS(b_x);
            ELSE
                b_x :=  -SIN(b_x);
        END_CASE;
        b_x := b_x * 9.0;
        absx := absx_tmp;
        IF absx_tmp > 180.0 THEN 
            IF d_x > 0.0 THEN 
                d_x := d_x - 360.0;
            ELSE 
                d_x := d_x + 360.0;
            END_IF;
            absx := ABS(d_x);
        END_IF;
        IF absx <= 45.0 THEN 
            d_x := 0.017453292519943295 * d_x;
            b_n := 0;
        ELSIF absx <= 135.0 THEN 
            IF d_x > 0.0 THEN 
                d_x := (d_x - 90.0) * 0.017453292519943295;
                b_n := 1;
            ELSE 
                d_x := (d_x + 90.0) * 0.017453292519943295;
                b_n := -1;
            END_IF;
        ELSIF d_x > 0.0 THEN 
            d_x := (d_x - 180.0) * 0.017453292519943295;
            b_n := 2;
        ELSE 
            d_x := (d_x + 180.0) * 0.017453292519943295;
            b_n := -2;
        END_IF;
        CASE b_n OF
            0: 
                d_x := COS(d_x);
            1: 
                d_x :=  -SIN(d_x);
            -1: 
                d_x := SIN(d_x);
            ELSE
                d_x :=  -COS(d_x);
        END_CASE;
        (* Update for DiscreteIntegrator: '<S1>/Discrete-Time Integrator' incorporates:
         *  Constant: '<S1>/degree per second'
         *  Product: '<S1>/Product' *)
        c_DiscreteTimeIntegrator_DS := ((VelocityGain * 360.0) * 0.01) + c_DiscreteTimeIntegrator_DS;
        (* Outport: '<Root>/PositionPiston' incorporates:
         *  MATLAB Function: '<S1>/MATLAB Function' *)
        PositionPiston := ((d_x * 9.0) + 13.0) + SQRT(625.0 - (b_x * b_x));
        (* End of Outputs for SubSystem: '<Root>/Subsystem' *)
END_CASE;
END_FUNCTION_BLOCK
FUNCTION rt_modd: LREAL
VAR_INPUT
    u0: LREAL;
    u1: LREAL;
END_VAR
VAR_TEMP
    yEq: BOOL;
    q: LREAL;
    temp1: LREAL;
END_VAR
rt_modd := u0;
IF u1 = 0.0 THEN 
    IF u0 = 0.0 THEN 
        rt_modd := u1;
    END_IF;
ELSIF u0 = 0.0 THEN 
    rt_modd := 0.0 / u1;
ELSE 
    rt_modd := rt_remd(u0 := u0, u1 := u1);
    yEq := rt_modd = 0.0;
    IF ( NOT yEq) AND (u1 > rt_floord(u := u1)) THEN 
        q := ABS(u0 / u1);
        temp1 := rt_floord(u := q + 0.5);
        yEq := ABS(q - temp1) <= (2.2204460492503131E-16 * q);
    END_IF;
    IF yEq THEN 
        rt_modd := 0.0;
    ELSIF (u0 < 0.0) <> (u1 < 0.0) THEN 
        rt_modd := rt_modd + u1;
    END_IF;
END_IF;
END_FUNCTION
FUNCTION rt_remd: LREAL
VAR_INPUT
    u0: LREAL;
    u1: LREAL;
END_VAR
VAR_TEMP
    u: LREAL;
    tmp: LREAL;
END_VAR
u := u0 / u1;
IF u1 <= rt_floord(u := u1) THEN 
    rt_remd := u0 - (DINT_TO_LREAL(TRUNC(u)) * u1);
ELSE 
    tmp := ABS(u);
    IF tmp < 4.503599627370496E+15 THEN 
        IF u >= 0.5 THEN 
            rt_remd := rt_floord(u := u + 0.5);
        ELSIF u > -0.5 THEN 
            rt_remd := 0.0;
        ELSE 
            rt_remd := rt_ceild(u := u - 0.5);
        END_IF;
    ELSE 
        rt_remd := u;
    END_IF;
    IF ABS(u - rt_remd) <= (2.2204460492503131E-16 * tmp) THEN 
        rt_remd := 0.0;
    ELSE 
        rt_remd := (u - DINT_TO_LREAL(TRUNC(u))) * u1;
    END_IF;
END_IF;
END_FUNCTION
FUNCTION rt_floord: LREAL
VAR_INPUT
    u: LREAL;
END_VAR
rt_floord := DINT_TO_LREAL(TRUNC(u));
IF u = rt_floord THEN 
    rt_floord := u;
ELSIF u < 0.0 THEN 
    rt_floord := rt_floord - 1.0;
END_IF;
END_FUNCTION
FUNCTION rt_ceild: LREAL
VAR_INPUT
    u: LREAL;
END_VAR
rt_ceild := DINT_TO_LREAL(TRUNC(u));
IF u = rt_ceild THEN 
    rt_ceild := u;
ELSIF u >= 0.0 THEN 
    rt_ceild := rt_ceild + 1.0;
END_IF;
END_FUNCTION
VAR_GLOBAL CONSTANT
    SS_INITIALIZE: SINT := 0;
    SS_STEP: SINT := 1;
END_VAR
