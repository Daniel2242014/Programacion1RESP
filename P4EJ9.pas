program P4EJ9(input,output);
var base,exponente,acumulador,i:integer;
    max:real;
    maxAlcansado:boolean;
begin
    writeln('Vamos a calcular x^n');
    write('El valor de x es: ');
    readln(base);
    write('El valor de n es: ');
    readln(exponente);
    if(base = 0) then 
        writeln( 'La potencia es ' ,0 )
    else begin 
        maxAlcansado := false;
        acumulador := 1;
        max := maxint/base;

        for i:=1 to exponente do begin
            if (acumulador > max) then begin
                exponente := 0; (* Esto no se deberia hacer, pero por eso en este caso deberia usar un while*)
                maxAlcansado := true;
                writeln('Supero el Maximo permitido')
            end;
            acumulador := acumulador * base;
        end;
        if (not maxAlcansado) then   
            writeln( 'La potencia es ' ,acumulador );
        end 
end.