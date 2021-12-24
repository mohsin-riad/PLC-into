PROGRAM program0
  VAR
    LocalVar0 : BOOL;
    LocalVar1 : BOOL;
    LocalVar2 : BOOL;
    LocalVar3 : BOOL;
  END_VAR

  LocalVar3 := NOT(LocalVar2) AND NOT(LocalVar1) AND NOT(LocalVar0);
END_PROGRAM


CONFIGURATION Config0

  RESOURCE Res0 ON PLC
    TASK task0(INTERVAL := T#20ms,PRIORITY := 0);
    PROGRAM instance0 WITH task0 : program0;
  END_RESOURCE
END_CONFIGURATION
