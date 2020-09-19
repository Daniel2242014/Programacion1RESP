program P6E1 (input,output);
var n,m,min,contador : integer;
begin 
    write ('Ingrese n y m:');
    read(n,m);
    if (m = 0) then 
        writeln('El MCM: e' , n)
    else if (n=0) then
        writeln('El MCM: e' , m)
    else begin 
        {Busco el min para ahorrar vueltas del bucle}
        if (m <= n) then 
            min := m
        else 
            min := n;
        contador := min;
        while ( (m mod contador <> 0) or (n mod contador <> 0) ) do {No tiene sentido verificar que sea menor que 1 ya que cuando contador llege a ser 0 la condicion del while va a ser false} 
            contador := contador - 1;
        writeln('El MCM ' , contador)
    end
end.