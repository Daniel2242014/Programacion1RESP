program P7E7;
var e1,e2,e3, cant:integer;
    x1,x2:real;

    procedure Raices (a,b,c:integer; var x1,x2: real; var cant: integer);
    {Asumo que a > 0}
    var discriminante: real;
    begin 
    discriminante := sqr(b)-4*a*c;
    if (discriminante < 0) then 
        cant := 0
    else if (discriminante = 0) then 
        begin 
            cant:=1;
            x1:= -b/(2*a)
        end 
    else 
        begin 
            cant:=2;
            x1:= (-b+sqrt(discriminante))/(2*a);
            x2:= (-b-sqrt(discriminante))/(2*a)
        end
    end;
begin 
    Writeln('Ingrese los 3 coeficientes');
    Read(e1,e2,e3);
    Raices(e1,e2,e3,x1,x2,cant);
    case cant of 
        0: Write('Sin raices');
        1: Write('Unica raiz x = ', x1:2:2);
        2: Write('Raiz doble, x = ', x1:2:2 , ' y x = ', x2:2:2)
    end
end.
