PROGRAM Summe;
  VAR
    n : Longint;
    i : Longint;
    sum : Longint;

BEGIN
  READ(n);
  sum := 0;
  IF n > 0 THEN
    BEGIN
      FOR i := 1 TO n DO
        sum += i;
      WRITELN(sum)
    END
  ELSE
    WRITELN('Bitte geben Sie eine gueltige Zahl ein.')
END.
