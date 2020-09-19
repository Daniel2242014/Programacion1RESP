program P5E9;
var n, i: integer;
    noSoyPrimo:boolean;
begin 
    i := 2;
    write('Ingrese el supuesto numero primo: ');
    read(n);
    while (i<= (n div 2) ) and not noSoyPrimo do begin 
        noSoyPrimo := (n mod i) = 0;
        i := i + 1
        end;
    if(noSoyPrimo) then 
       writeln('No soy primo, soy multiplo de ', i - 1 )
    else 
       writeln('Soy primo')  
end.