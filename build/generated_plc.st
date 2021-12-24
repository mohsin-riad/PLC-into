PROGRAM program1
  VAR
    x : BOOL;
    y : BOOL;
    z : BOOL;
  END_VAR

  z := y AND x;
END_PROGRAM


CONFIGURATION Config0

  RESOURCE Res0 ON PLC
    TASK task0(INTERVAL := T#20ms,PRIORITY := 0);
    PROGRAM instance0 WITH task0 : program1;
  END_RESOURCE
END_CONFIGURATION
