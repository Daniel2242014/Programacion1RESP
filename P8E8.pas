PROGRAM P8E8 (input,output);
VAR z: integer;

FUNCTION g (VAR x: integer) : integer;
BEGIN
    x := x + 1;
    z := z + 1;
    writeLn ('Salida en g1: ', x + z);
    g := x + z
END;

FUNCTION f (x: integer; VAR y: integer) : integer;

    FUNCTION g (x: integer) : integer;
    BEGIN
        WriteLn(z);
        x := x + 1;
        writeLn ('Salida en g2: ', x + z);
        g := x + z
    END;

BEGIN
    x := x + 1;
    z := z + x - y + 2;
    WriteLn('z:', z);
    IF x mod 2 = 0 
    THEN y := y + 1
    ELSE y := y - 1;
    WriteLn('z:', z);
    WriteLn(z);
    x := g(x) + y;
    writeLn ('Salida en f: ', x); 
    f := x
END;

PROCEDURE p (VAR x,y: integer);
BEGIN
    y := f(x,y) + z;
    y := y + g(x) + x;
    x := x + 1;
    writeLn ('Salida en p: ', y)
END;

BEGIN
    readLn (z);
    p (z,z);
    writeLn ('Salida final: ', z + 1)
END.