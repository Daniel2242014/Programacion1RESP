program P13E15;
var c1,c2,c3 :char;
	v1,v2,v3: integer;
	cagada: boolean;

begin 
	cagada := false;
	writeln('Ingrese el HEX');
	read(c1,c2,c3);
	v1 := ord(c1) - ord('0');
	v2 := ord(c2) - ord('0');
	v3 := ord(c3) - ord('0');
	if( (v1 > 9) or (v1 < 0)) then begin
		case c1 of 
		'A': v1:=10;
		'B': v1:=11;
		'C': v1:=12;
		'D': v1:=13;
		'E': v1:=14;
		'F': v1:=15;
		else 
			cagada := true;
		end
	end;
	 
	
	if( (v2 > 9) or (v2 < 0)) then begin
		case c2 of 
		'A': v2:=10;
		'B': v2:=11;
		'C': v2:=12;
		'D': v2:=13;
		'E': v2:=14;
		'F': v2:=15;
		else 
			cagada := true;
		end
	end;
	 
	
	if( (v3 > 9) or (v3 < 0)) then begin
		case c3 of 
		'A': v3:=10;
		'B': v3:=11;
		'C': v3:=12;
		'D': v3:=13;
		'E': v3:=14;
		'F': v3:=15;
		else 
			cagada := true;
		end
	end;
	
	if (cagada ) then
		writeln('No sea HDP, aprende a escribir')
	else 
		writeln('El equivalente en base 10 es: ' , v1*sqr(16) + v2*16 + v3)
	 
end.
