program P5E8;
var tipoAux : char;
    valorAux,saldo: real;
begin
    saldo:=0;
    repeat
        read(tipoAux);
        
        case tipoAux of
            'A': begin
                   (*Voy a asumir que el primer renglon es con A*)
                    readln(valorAux);
                    saldo := valorAux
                 end;

            'R': begin 
                    readln(valorAux);
                    saldo := saldo - valorAux
                 end;

            'D': begin 
                    readln(valorAux);
                    saldo := saldo + valorAux
                 end;
            'X': writeln('El saldo final es ', saldo:5:2);
            else begin
                    write('Entrada invalida');
                 end
        end

    until (tipoAux = 'X')
end.
