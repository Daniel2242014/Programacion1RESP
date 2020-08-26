program P5E6 (input, output);
var min,max,n,aux,i:integer;
	primeraVuelta: boolean;
begin 
	primeraVuelta := true;
	writeln('Ingrese n');
	readln(n);
	
	for i:=1 to n do begin
		writeln('Ingres el valor');
		read(aux);
		if (primeraVuelta) then begin 
			min:= aux;
			max:= aux;
			primeraVuelta:= false
		end else begin 
			if(aux > max) then 
				max := aux;
			if (aux< min) then
				min:= aux	
		end
	end;
	writeln('El menor es: ' , min, ' y el maximo es ' , max)
end.
