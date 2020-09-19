program P5E8;
const centinela = '$';
var letraPrevia, letra: char;
begin 
    write('Ingrese la cadena (min 2 caracteres)');
    read(letra);
    letraPrevia := letra;
    repeat
        read(letra);
        if (letra = letraPrevia) then 
            write(letra, letra, ' ');
        letraPrevia := letra
    until (letra = centinela);

end.