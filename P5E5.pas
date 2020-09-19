program P5E5;
var i:integer;
    x:real;
begin
   x:=1.5;
   i:=0;
   while (i<5) do begin 
        x:=sqr(x); 
        i := i+1
        end;
    write(x)
end.