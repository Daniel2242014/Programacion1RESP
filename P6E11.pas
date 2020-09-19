program P6E11;
var n,m, i ,j, cantidadDeDivisores, anteriorPrimo : integer;
begin
    anteriorPrimo := 1; {Con 1 tambien va a funcionar bien}
    write('Ingrese n y m: ');
    read(n,m);
    for i := n to m do begin 
        cantidadDeDivisores := 0;
        {Me tengo que fijar si es un primo, si tenemos una array luego va a ser mas facil} 
        j := i;
        while (cantidadDeDivisores <= 2) and (j >= 1) do begin 
            if (i mod j = 0) then
              cantidadDeDivisores := cantidadDeDivisores + 1; {Si es primo solo se deberia aumentar con el 1 y con el mismo}
            j := j - 1;
        end; 
        if (cantidadDeDivisores <= 2) then begin 
        write (i);
            if(i - anteriorPrimo = 2) then
                Writeln(anteriorPrimo , ' y ', i);
            anteriorPrimo := i;
        end
    end

    {PROBLEMA: CON LOS PRIMOS 1 Y 3, YA QUE EL 2 ESTA EN EL MEDIO 
    Soluciones:
    1) agrego un set o array con los primos y busco si uno menor a 2 existe
    2) pregunto para todo primo el - 2 tambien es primo, lo mejor para eso es un procedimiento que me diga si fue o no primo, insisto, la mejor es el set}

end.

