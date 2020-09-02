program Ej10Pr3;
const punto = '.';
var   num, num1, cifra1, cifra2, cifra3, cifra4, resto1, resto2 : Integer;
begin
     { leer numero entero}
     readln(num1);
     { si es de menos de cuatro cifras }
     if (num1 div 1000 = 0) then         
                writeln(num1:0)
     else begin
                 { si es negativo o positivo }
                  if (num1 < 0) then begin 
                                              write ('-'); 
                                               num := abs(num1) 
                                            end
                  else num := num1;
                  { extraer las cifras }
                  cifra1:= num div 1000;
                  cifra4:= num mod 10;
                  resto1:= num mod 1000;
                  cifra2:= resto1 div 100;
                  resto2:= num mod 100;
                  cifra3 := resto2 div 10;
                  {imprimir}
                 writeln(cifra1:0, punto, cifra2:0, cifra3:0, cifra4:0);
          end;  
end.