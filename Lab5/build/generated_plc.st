PROGRAM program0
  VAR_INPUT
    i1 : BOOL;
    i2 : BOOL;
  END_VAR
  VAR
    CTU0 : CTU;
  END_VAR
  VAR_INPUT
    reset : BOOL;
    reset0 : BOOL;
    CTU1 : CTU;
  END_VAR
  VAR_OUTPUT
    count : INT;
    count0 : INT;
    out : BOOL;
    out0 : BOOL;
  END_VAR
  VAR
    CTD0 : CTD;
    R_TRIG1 : R_TRIG;
    R_TRIG2 : R_TRIG;
  END_VAR

  R_TRIG1(CLK := i1);
  CTU0(CU := R_TRIG1.Q, R := reset, PV := 5);
  out := CTU0.Q;
  count := CTU0.CV;
  R_TRIG2(CLK := i2);
  CTD0(CD := R_TRIG2.Q, LD := reset0, PV := 10);
  out0 := CTD0.Q;
  count0 := CTD0.CV;
END_PROGRAM


CONFIGURATION Config0

  RESOURCE Res0 ON PLC
    TASK task0(INTERVAL := T#20ms,PRIORITY := 0);
    PROGRAM instance0 WITH task0 : program0;
  END_RESOURCE
END_CONFIGURATION
