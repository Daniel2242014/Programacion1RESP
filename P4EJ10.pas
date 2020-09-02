program P4EJ10;
var i,n,c: integer;

begin
    c:=1;
    write('Ingrese n: ');
    readln(n);
    
    for i:=1 to n do 
        c:= c*i; (* No se comprueba que supere a maxint*)
    writeln('EL factorial es: ' , c)
end.