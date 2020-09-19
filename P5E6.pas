program P5E6a;
var cantidad,suma,entrada:integer;
begin 
    cantidad:=0;
    suma:=0;
    write('Ingrese valores');
    read(entrada);
    while (entrada <> -1) do 
    begin 
        suma := suma + entrada;
        cantidad := cantidad + 1
    end;
    writeln('La suma es: ', suma);
    writeln('El promedio es: ', suma/cantidad :3:2)
end.