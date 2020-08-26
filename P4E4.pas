program P4E1 (output);
VAR a,b,n,i : Integer;
var result : boolean;
BEGIN
	writeln('a = min, b = max, n=multiplo');
	read(a,b,n);
	write('Multiplos: ');
	for i:=a to b do begin
		if (i mod n) = 0 then begin
			result := true;
			write(i,' ');
		end
	end;
	if( not result) then 
		write('Sin resultados');
	
end.
