program P3E11 (input, output);
var p: real;

begin 

	writeln('Ingrezar peso');
	read(p);
	if( p = trunc(p)) then  
		write('El costo es: ', 0.22 + (p-1)*0.17 :5:2)
	else 
		write('El costo es: ', 0.22 + trunc(p)*0.17 :5:2)	
	
	
	
end.
