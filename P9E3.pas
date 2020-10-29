program P9e3 (input,output);
    const Ancho = 10; 
        Altura = 10; 
    type 
        ArregloB = array[1..Altura,1..Ancho] of integer;
    var areglo: ArregloB;
        entrada,n,m: integer;

    procedure intercambiarFilas(var arry: ArregloB; n,m:integer );
    var aux, i: integer;
    begin 
        for i := 1 to Ancho do begin 
            aux:= arry[n,i];
            arry[n,i]:= arry[m,i];
            arry[m,i] := aux
        end 
    end;

    procedure cargar(var arry: ArregloB); 
    var entrada,i,j: integer;
    begin 
        {Vamos a cargar una entrada por fila}
        for i := 1 to Altura do begin 
            read(entrada);
            for j := 1 to Ancho do 
                arry[i,j] := entrada
        end
    end;

    procedure imprimirArray(arry: ArregloB); 
    var i,j:integer;
    begin
        for i := 1 to Altura do begin 
            for j := 1 to Ancho do 
                Write(arry[i,j] :2); 
            WriteLn
        end
    end;

begin
    WriteLn('Ingrese los valores de la matriz, por fila');
    cargar(areglo);
    imprimirArray(areglo);
    WriteLn('Ingrese la posicon de la fila a intercabiar: ');
    Read(n,m);
    if ( (n = m) or (n>Altura) or (m>Altura)) then 
        Write('Error al ingresar los datos')
    else begin
        intercambiarFilas(areglo, n,m);
        imprimirArray(areglo)
    end 
end.