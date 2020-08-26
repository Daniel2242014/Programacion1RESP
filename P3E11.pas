program P3E11 (input, output);
var a,b,c,d,e,f : integer;

begin 

	writeln('Ingrese A,b,c tal que ax + by = c');
	readln(a,b,c);
	
	writeln('Ingrese d,e,f tal que dx + ey = f');
	readln(d,e,f);
	
	if ( a*e-d*b = 0) then
		write('Sin solucion')
	else begin 
			writeln('x = ', (c*e - f*b) / (a*e - d*b) :5:3);
			writeln('y = ', (a*f - d*c) / (a*e - d*b) :5:3);
		 end
	

end.
