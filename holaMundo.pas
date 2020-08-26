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
	minTotal := hora1*100-e1 + hora2*100-e2;
	horaTotal :=  hora1 + hora2 + minTotal div maxhoras;
	minTotal := minTotal mod maxmin;
	write(horaTotal , ' ', horaTotal,minTotal) ; 
end.
