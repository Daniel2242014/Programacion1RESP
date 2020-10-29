program P9E12;
const N=5;

type Digito = '0'..'9';
     Digitos = ARRAY [1..N] OF Digito;

var areglo: Digitos;
    sumatoria: integer;

    procedure Lectura(var ary: Digitos);
    var ele: Digito;
        i:integer;
    begin
        for i:=1 to N do begin 
            Read(ele);
            ary[i]:=ele
        end    
    end;

    function Conversion(ary: Digitos): Integer;
    var sumatoria,i,aux: integer;
    begin 
        sumatoria :=0;
        for i:=1 to N do begin
            aux := ord(ary[i]) - ord('0');
            sumatoria := sumatoria*10 + aux;
        end;
        Conversion:= sumatoria
    end;

begin 
    Lectura(areglo);
    sumatoria := Conversion(areglo);
    WriteLn(sumatoria)

end.