PROGRAM program0
  VAR
    I1 : BOOL;
    I2 : BOOL;
    I3 : BOOL;
    Q1 : BOOL;
    Q2 : BOOL;
    Q3 : BOOL;
  END_VAR

  Q1 := NOT(I2) AND (I1 OR Q1);
  Q2 := Q1;
  Q3 := Q2;
END_PROGRAM


CONFIGURATION Config0

  RESOURCE Res0 ON PLC
    TASK task0(INTERVAL := T#20ms,PRIORITY := 0);
    PROGRAM instance0 WITH task0 : program0;
  END_RESOURCE
END_CONFIGURATION
