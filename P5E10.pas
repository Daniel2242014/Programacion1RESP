program P5E10 (input);
const FIN = '=';
      ESPACIOS = ' ';
var total, valor: integer;
    operador,aux:char;


begin
    total := 0;
    operador := '+';
    Write('Ingrese la cadena de operaciones (no spaceSensitive :) ): ');
    repeat
            read(aux);
            valor := ord(aux) - ord('0');
            if ((valor >= 0) and (valor <= 9) ) then begin
                if (operador = 'n') then begin 
                    writeln ('Errro sintaxis'); 
                    aux:=FIN;
                end else begin 
                    case aux of
                      '+': total := total + valor;
                      '-': total := total - valor;
                      '*': total := total * valor;
                      '/': total := total div valor;
                    end;
                    operador := 'n'
                end
                    
                
            end else begin 
                case aux of
                    SUMA: operador := SUMA;
                    RESTA: operador := RESTA;
                    MULTIPLICADO: operador := MULTIPLICADO;
                    DIVIDIDO: operador := DIVIDIDO;
                end
            end 
    until (aux = FIN);
    writeln('Total es:', total)
end.