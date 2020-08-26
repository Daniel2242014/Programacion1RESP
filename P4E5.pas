program P4E5; 
VAR n,i : Integer;
	result : boolean;
begin 
	read(n);
	write('Divisores: ');
	for i:=round(n) downto 1 do begin
		if (n mod i) = 0 then begin
			result := true;
			write(i,' ');
		end
	end;
	if( not result) then 
		write('Sin resultados');
	

end.
