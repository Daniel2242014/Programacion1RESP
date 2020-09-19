program P7E12;
const CENTINELA = -1; 
var r1,r2: integer;

    function SoyMultiplo(n,m:integer): boolean;
    begin 
        SoyMultiplo:= (m mod n = 0) or (n mod m = 0) 
    end;

begin
    WriteLn('Ingresar r1 y r2');
    read(r1);
    while (r1 <> CENTINELA) do begin 
        read(r2);
        writeln(SoyMultiplo(r1,r2));
        Read(r1)
    end

end.