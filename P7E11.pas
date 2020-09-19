program P7E11;
var n,m, i , pepe: integer;

function EsPrimo(num: integer): Boolean;
var cantidadDeDivisores, j:integer;
begin 
    
    cantidadDeDivisores := 0;
    j := num;
    while (cantidadDeDivisores <= 2) and (j >= 1) do begin 
       if (num mod j = 0) then
          cantidadDeDivisores := cantidadDeDivisores + 1; {Si es primo solo se deberia aumentar con el 1 y con el mismo}
       j := j - 1;
    end; 
    EsPrimo := (cantidadDeDivisores = 2) or (cantidadDeDivisores = 1) {Para el numero 1}; 
end;

begin
    write('Ingrese n y m: ');
    read(n,m);
    for i := n to m do begin 
        if (EsPrimo(i) and EsPrimo(i-2))  then begin
            WriteLn(i-2, ' ', i)
        end
    end

end.

