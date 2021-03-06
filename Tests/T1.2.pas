(* Die erste Aufgabe (T1.1) kann mithilfe 
   einer verketteten Liste gelöst werden *)

PROGRAM OhneArray;

TYPE
  Knoten = ^Rec;
  Rec = RECORD
          wert : Integer;
          naechste : Knoten;
         END;

VAR
  kopf, ende, iter : Knoten;
  n, k, neu : Integer;


PROCEDURE Eingabe(val : Integer);
VAR
  temp : Knoten;
BEGIN
  new(temp);
  temp^.wert := val;
  temp^.naechste := NIL;
  IF kopf = NIL THEN 
    kopf := temp
  ELSE 
    ende^.naechste := temp;
  ende := temp;
END;


PROCEDURE Schreiben;
VAR
  temp : Knoten;
BEGIN
  temp := kopf;
  WHILE temp <> NIL DO
    BEGIN
      WRITELN(temp^.wert);
      temp := temp^.naechste;
    END;
END;


BEGIN
  kopf := NIL;
  READ(n);
  FOR k := 1 TO n do
    BEGIN
      READ(neu);
      Eingabe(neu);
    END;
  
  iter := kopf;
  FOR k := 1 TO n do
    BEGIN
      IF iter^.wert MOD 2 = 0 THEN
        WRITE(iter^.wert, ' ');
      iter := iter^.naechste;
    END;

  WRITELN();

  iter := kopf;
  FOR k := 1 TO n do
    BEGIN
      IF iter^.wert MOD 2 <> 0 THEN
        WRITE(iter^.wert, ' ');
      iter := iter^.naechste;
    END;

  WRITELN();

  iter := kopf;
  FOR k := 1 TO n do
    BEGIN
      IF iter^.wert >= 10 THEN
        WRITE(iter^.wert, ' ');
      iter := iter^.naechste;
    END;

  WRITELN();

END.
