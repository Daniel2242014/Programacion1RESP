program practico2Ejercio18 (input,output);
var 
	medicion, valorVerdadero: real;
begin
	writeln('Ingrese la el valor de la medida');
	read(medicion);
	writeln('Ingrese el valor verdadero');
	read(valorVerdadero);
	writeln('Medicion: ',medicion);
	writeln('Valor real: ',valorVerdadero);
	writeln('Error relativo: ',abs(medicion-valorVerdadero)/valorVerdadero );
	

end.
