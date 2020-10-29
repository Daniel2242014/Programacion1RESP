function generadora (n:integer): integer;
var x1,x2,x3: integer;

    procedure separarNumeros(n:integer; var centenas,decenas,unidades: integer);
    {Procedimiento que encapsula la funcionalidad de dividir un numero de 3 difras en sus cifras}
    begin 
        centenas := n div 100;
        decenas := (n - centenas * 100) div 10;
        unidades := (n - centenas * 100 - decenas*10)
    end;


    function generarIntegerPorDijitos(d1,d2,d3: integer): integer;
    begin 
        generarIntegerPorDijitos := d1*100 + d2*10 + d3
    end;


    procedure ordenarValoresCrecientemente(var a,b,c: Integer); 
    {Procedimiento ordena crecienemente los 3 valores, creo el procedimiento para encapsular la funcionalidad}

    {Otra solución podría ser utilizando arreglos
    Pero como estamos trabajando con un numero chico de elementos no es necesario implementar un algoritmo de ordenación de arreglos} 

        procedure invertir(var a,b:integer);
        {Este procedimiento lo uso para no repetir codigo en prodecimiento ordenarValoresCrecientemente}
        var aux: Integer;
        begin 
            aux:=a;
            a:=b;
            b:=aux;
        end;
    begin 
        if(b<a) then  
            invertir(a,b);
        if(c<a) then
            invertir(a,c);
        if(c<b) then 
            invertir(b,c);
    end;
begin
    separarNumeros(n,x1,x2,x3);
    ordenarValoresCrecientemente(x1,x2,x3);
    generadora := generarIntegerPorDijitos(x3,x2,x1) - generarIntegerPorDijitos(x1,x2,x3);
end;




function longitud(semilla: integer; limite: integer): integer;
var ciclos, salida, anterior: integer;
begin 
    ciclos := 0; {Numero de iteraciones del bucle}
    salida := semilla;
    repeat
        anterior := salida;
        salida := generadora(anterior); {genero la nueva salida}
        ciclos := ciclos + 1;
    until ( (anterior = salida) or (ciclos > limite));
    if(ciclos <= limite) then
      longitud := ciclos
    else 
      longitud := -1
end;


