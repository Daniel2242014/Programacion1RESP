program P6E3; 
var x, result, entrada : integer;
begin 
    write('Ingrese x: ');
    readln(x);
    write('Ingrese los coeficientes');
    read(entrada);
    repeat
        result := (x*result) + entrada;
        read(entrada)
    until (entrada = -1);
    writeln('Salida: ' , result )
end.