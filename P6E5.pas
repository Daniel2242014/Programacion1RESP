program P6E5;
var n,e, anteriorPow: integer;
begin 
    e:=0;
    write('Ingrese n: ');
    read(n);
    repeat
        anteriorPow := sqr(e);
        e :=  e+1; 
        write(sqr(e), ' ')
    until ( (Sqr(e)-anteriorPow)>n) 
end.
