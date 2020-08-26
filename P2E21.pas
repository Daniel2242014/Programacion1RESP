program practico2Ejercio21 (input,output);
var 
	n1,n2,n3: integer;
	s1,s2,s3: char;
begin
	writeln('Ingrese valor');
	read(s1,s2,s3);
	n1:=ord(s1)-ord('0');
	n2:=ord(s2)-ord('0');
	n3:=ord(s3)-ord('0');
	writeln('EL numero es: ',n1*64+n2*8+n3)
	

end.
