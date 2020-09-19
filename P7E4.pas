program P7E4;
var x1,x2,x3:integer;

    procedure invertir(var a,b:integer);
    var aux: integer;
    begin 
        aux:=b;
        b:=a;
        a:=aux;
    end;
   
    procedure girar (var a,b,c:integer);
    var aux: integer; 
    begin 
        invertir(c,a);
        invertir(b,c);
    end;

begin 
    writeln('Dale puto que no tengo todo el dia');
    Read(x1,x2,x3);
    girar(x1,x2,x3);
    Write(x1,' ',x2,' ',x3)
end.