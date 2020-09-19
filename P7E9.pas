program P7E9;
var x1, x2, y1, y2:integer;
    function Distancia(x1,y1,x2,y2:real):real;
    begin
        Distancia := sqrt( sqr(Abs(x2-x1)) + sqr(y2-y1))
    end;
begin 
    Write('Ingrese el primer punto (x,y)');
    Read(x1,y1);
    Write('Ingrese el segundo punto (x,y)');
    read(x2,y2);
    WriteLn('La distancia es: ', Distancia(x1,y1,x2,y2):2:2)

end.