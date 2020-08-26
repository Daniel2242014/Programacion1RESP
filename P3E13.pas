program P3E13 (input,output);
var entrada, inner, p1,p2,p3,p4 : integer;

begin 
	writeln('Ingrese el entero de 4 dijitos');
	read(entrada);
	
	writeln('Ingrese el entero de 1 dijitos');
	read(inner);
	
	p1 := trunc(entrada /1000);
	p2 := trunc( (entrada - p1*1000)/100);
	p3 := trunc( (entrada -p1*1000 -p2*100) /10);
	p4 := trunc( (entrada -p1*1000 -p2*100 -p3*10));
	
	
	if ( (p1 <> inner) and (p2 <> inner) and (p3 <> inner) and (p4 <> inner)) then
		writeln('Sin occurencias para n = ' ,inner , ' en ', entrada )
	else begin 
			writeln(entrada);
			if(p1 = inner) then
				write('+')
			else 
				write(' ');
				
			if(p2 = inner) then
				write('+')
			else 
				write(' ');
				
			if(p3 = inner) then
				write('+')
			else 
				write(' ');
				
			if(p4 = inner) then
				write('+')
			else 
				write(' ');	
				
			writeln		
		 end;
end.
