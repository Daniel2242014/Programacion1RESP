program practico2Ejercio17 (input, output);
const 
	maxhoras=24;
	maxmin=60;
var
	e1, e2,minTotal, horaTotal, hora1, hora2:integer;
begin
	read(e1,e2);
	hora1:=trunc(e1/100);
	hora2:=trunc(e2/100);
	minTotal := e1-hora1*100 + e2-hora2*100;
	horaTotal :=  hora1 + hora2 + minTotal div maxmin;
	minTotal := minTotal mod maxmin;
	write(horaTotal div maxHoras , ' ', horaTotal mod maxhoras,minTotal) ; 
end.
