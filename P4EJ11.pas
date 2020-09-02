program P4EJ12 (input,output);
var x,y,n,max,aux,i,j:integer;
begin
    writeln('f(x,y) = x^2 -9xy + y^2');
    writeln('Ingrese "n" para el rango (-n,n): ');
    read(n);
    if (n<=0) then 
        writeln('El numero tiene que ser positivo')
    else begin 
            for i:=-n to n do 
                for j:=-n to n do begin 
                                    aux := sqr(x) -9*x*y + sqr(y);
                                    if ( (i = -n) and (j = -n)) then 
                                        max := aux
                                    else if (aux > max) then
                                        max := aux;
                                end
        end
    
end.