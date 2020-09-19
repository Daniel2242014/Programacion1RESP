program P3EjercioComplementario;
const CENTINELA=-1;
var sumaDeLosPares, numeroSelecionado:integer;
begin 
    
    sumaDeLosPares := 0;
    
    {Voy a asumir por los ejemplos que estamos hablando de numeros enteros}
    Write('Ingrese los valores: ');
    read(numeroSelecionado);
    while (numeroSelecionado <> CENTINELA) do begin 
        if(numeroSelecionado mod 2 = 0) then 
            sumaDeLosPares := sumaDeLosPares + numeroSelecionado;
        read(numeroSelecionado)
    end;
    WriteLn(sumaDeLosPares)
end.