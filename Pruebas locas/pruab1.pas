PROGRAM Ejercicio6 (output);
 var r,miles:integer;
 BEGIN
	read(r);
	if (r >= 1000) then begin
		miles := trunc(r/1000);
		writeln(miles, '.' ,r - miles * 1000);
	end else 
		writeln(r);
	
 END. 
