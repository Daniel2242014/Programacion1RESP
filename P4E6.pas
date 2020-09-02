program P5E6 (input, output);
var min,max,n,aux,i:integer;
	primeraVuelta: boolean;
begin 
	primeraVuelta := true;
	writeln('Ingrese n');
	readln(n);
	if (n>0) then begin (* Una comprobacion minima de la entrada *)
		writeln('Ingrese ' , n ,' valores entero');
		for i:=1 to n do begin
			
			read(aux);
			if (primeraVuelta) then begin 
				min:= aux; (* Aseguramos un valor minimo y maximo inicial el cual fue ingresado por el usuario*)
				max:= aux;
				primeraVuelta:= false
			end else begin 
				if(aux > max) then 
					max := aux;
				if (aux< min) then
					min:= aux	
			end
		end;
	writeln('El menor entero ingresado es: ' , min);
	writeln('El maximo entero ingresado es: ' , max)
	end else
		writeln('Entrada invalida')
end.
