program P6E4;
var entrada, i ,j, cantidadDeDivisores : integer;
begin 
    write('Ingrese n: ');
    read(entrada);
    for i := 1 to entrada do begin 
        cantidadDeDivisores := 0;
        {Me tengo que fijar si es un primo, si tenemos una array luego va a ser mas facil} 
        j := i;
        while (cantidadDeDivisores <= 2) and (j >= 1) do begin 
            if (i mod j = 0) then
              cantidadDeDivisores := cantidadDeDivisores + 1; {Si es primo solo se deberia aumentar con el 1 y con el mismo}
            j := j - 1;
        end; 
        if (cantidadDeDivisores <= 2) then 
            Write(' ', sqrt(i) :2:2)
    end
end.