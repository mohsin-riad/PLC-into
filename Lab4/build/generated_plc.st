PROGRAM program0
  VAR
    i1 : BOOL;
    i2 : BOOL;
    Q1 : BOOL;
    Q2 : BOOL;
    Q3 : BOOL;
    ET : TIME;
    TOF0 : TOF;
    TON0 : TON;
  END_VAR

  TOF0(IN := i1, PT := T#10s);
  Q1 := NOT(TOF0.Q);
  ET := TOF0.ET;
  TON0(IN := NOT(Q1), PT := T#10s);
  Q2 := TON0.Q;
  ET := TON0.ET;
END_PROGRAM


CONFIGURATION Config0

  RESOURCE Res0 ON PLC
    TASK task0(INTERVAL := T#20ms,PRIORITY := 0);
    PROGRAM instance0 WITH task0 : program0;
  END_RESOURCE
END_CONFIGURATION
