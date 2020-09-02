program P4EJ8(input,output);
var i,j, n:integer;
    c:char;
begin
    write('Ingrese el caracter: ');
    readln(c);
    write('Ingrese el valor para n: ');
    readln(n);
    for i:=n downto 1 do begin
        for j:=1 to i do 
            write(c);
        writeln
    end
end.