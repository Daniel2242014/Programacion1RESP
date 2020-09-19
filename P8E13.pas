program P8E13;
var num: integer;
    function FactorPrimo(n: integer): Integer;
    var i: integer;
    begin
        i := 2;
        while (i < n) and (n mod i <> 0) do 
            i := i + 1;
        FactorPrimo:=n
    end;
begin
    Write('Ingrese el numero a factorizar: ');
    read(num);
    while(num=1) do begin 
        num := num div FactorPrimo(num);
        Write(num, ' ');
    end
end.