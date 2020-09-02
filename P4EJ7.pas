program P4EJ7 (input,output);
var n,i,j,entrada:integer;

begin 
    write('Ingrese un valor para n: ');
    readln(n);
    write('Ingrese ', n, ' valores positivos: ');
    for i:=1 to n do begin  
        read (entrada);
        for j:=1 to entrada do 
            write('*');
        writeln 
    end
end.