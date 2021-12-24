PROGRAM program0
  VAR
    TON0 : TON;
    LocalVar1 : BOOL;
    LocalVar2 : BOOL;
    Timer : TIME;
    Timer0 : TIME;
  END_VAR

  TON0(IN := LocalVar1, PT := T#10000ms);
  LocalVar2 := TON0.Q;
  Timer0 := TON0.ET;
END_PROGRAM


CONFIGURATION Config0

  RESOURCE Res0 ON PLC
    TASK task0(INTERVAL := T#20ms,PRIORITY := 0);
    PROGRAM instance0 WITH task0 : program0;
  END_RESOURCE
END_CONFIGURATION
