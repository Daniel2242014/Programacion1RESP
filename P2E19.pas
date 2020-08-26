program practico2Ejercio19 (input,output);
var 
	a,a2 :real;
begin
	writeln('Ingrese valor');
	read(a);
	a2:=sqr(a);
	writeln('a: ',a:0:0);
	writeln('a^2: ',a2:0:0);
	writeln('sigiente: ',trunc((a2 - trunc(a2/1000)*1000)/10));
	

end.
