program P9E10;
CONST
    M = 4;
    N = 3;
    P = 3;
TYPE
    RangoM = 1..M;
    RangoN = 1..N;
    RangoP = 1..P;
    MatrizMxN = ARRAY [RangoM, RangoN] OF Integer;
    MatrizNxP = ARRAY [RangoN, RangoP] OF Integer;
    MatrizMxP = ARRAY [RangoM, RangoP] OF Integer;

var i,j,entrada: integer;
    x1 : MatrizMxN;
    x2 : MatrizNxP;

    function producto(var a1: MatrizMxN; var a2: MatrizNxP): MatrizMxP;
    var fin : MatrizMxP;
        i,j,k,aux: integer;
    begin 
        for i:=1 to M do begin 
            for j:=1 to P do begin 
                aux:=0;
                for k:= 1 to N do 
                    aux:= aux + a1[i,k]*a2[k,j];
                fin[i,j]:= aux    
            end 
        end;
        producto := fin
    end;

    procedure imprimirArray(arry: MatrizMxP); 
    var i,j:integer;
    begin
        for i := 1 to M do begin 
            for j := 1 to P do 
                Write(arry[i,j]:4); 
            WriteLn
        end
    end;

begin 
    Writeln('LLeno m x n');
    for i := 1 to M do begin 
        read(entrada);
        for j := 1 to N do 
            x1[i,j] := entrada
    end;
    Writeln('LLeno n x p');
    for i := 1 to N do begin 
        read(entrada);
        for j := 1 to P do 
            x2[i,j] := entrada
    end;
    imprimirArray(producto(x1,x2))
end.