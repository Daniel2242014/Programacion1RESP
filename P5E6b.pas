program P5E6b;
var max,min,entrada:integer;
begin 
    write('Ingrese valores: ');
    read(entrada);
    if (entrada = -1) then 
        writeln('Sin valores')
    else begin
        max:=entrada;
        min:=entrada;
        while (entrada <> -1) do 
        begin 
            if (entrada > max) then
                max := entrada
            else if (entrada < min) then 
                min := entrada;
            read(entrada);
        end;
        writeln('El minimo es: ', min , ' y el maximo es ' , max);
    end
end.