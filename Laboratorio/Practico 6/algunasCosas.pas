program algunasCosas;


  TYPE tipodia = (Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo);
    VAR dia : tipodia; 
        i : -1 .. 6;

begin 
    read(i);
    dia:= tipodia(i);
    
end.