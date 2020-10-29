program P11E2;

CONST
    MAXPERSONAS = 1000;
    MAXCAD      = 20;

TYPE
   Cadena = RECORD
                letras : ARRAY [1..MAXCAD] OF Char;
                largo : 0..MAXCAD;
            END;
   Fecha = RECORD
               dia : 1..31;
               mes : 1..12;
               anio : 0..MAXINT; 
           END;
   UnaPersona = RECORD
                    nombre : Cadena;
                    FechNac : Fecha;
                    IndMadre, IndPadre : 0..MAXPERSONAS;
                END;
   Familia = RECORD
                 pers : ARRAY[1..MAXPERSONAS] OF UnaPersona;
                 tope : 0..MAXPERSONAS;
             END;


    function cadenasIguales(cad1,cad2: Cadena) : Boolean;
    var i:integer;
    begin 
        if (cad1.largo <> cad2.largo) then 
            cadenasIguales:= false
        else begin 
            i:=1;
            while ( i<= cad1.largo ) and (cad1.letras[i] = cad2.letras[i]) do 
                i := i + 1;
            cadenasIguales := i > cad1.largo     
        end
    end;

    procedure desplegarCadena(cad : Cadena); 
    var i:integer;
    begin
      for i:=1 to cad.largo do 
        Write(cad.letras[i]);
      WriteLn  
    end;

    procedure antepasados (usted : Cadena; historia : Familia);

        function indiceDeLaPersonaBuscada (nombre:Cadena; fam:Familia): integer;
        var i:integer;
        begin
            i:=1;
            while (i<=fam.tope) and (not cadenasIguales(nombre, fam.pers[i].nombre)) do begin
                    i := i + 1;
                end;
            if(i>fam.tope) then 
                indiceDeLaPersonaBuscada := -1
            else 
                indiceDeLaPersonaBuscada := i
        end;

    var indice:integer;
    begin
      indice := indiceDeLaPersonaBuscada(usted,historia);
      if (indice <> -1) then begin 
        Write('Fecha de nacimiento de ');
        desplegarCadena(usted);
        desplegarCadena(historia.pers[indice].nombre);
        with historia.pers[historia.pers[indice].IndMadre].FechNac do begin
            Write(dia,'/',mes,'/',anio)
        end
        {Falta lo del padre, pero es lo mismo}
      end
    end;

    var c1:Cadena;
        c2:Cadena;
        fecha1, fecha2 : Fecha;
        p1,p2: UnaPersona;
        fami: Familia;

begin 
    c1.largo := 3;
    c2.largo := 3;
    c1.letras[1] := 'h';
    c1.letras[2] := 'p';
    c1.letras[3] := 'p';
    c2.letras[1] := 'h';    
    c2.letras[2] := 'i';
    c2.letras[3] := 'p';
    fecha1.anio:= 2002;
    fecha1.mes:= 7;
    fecha1.dia:= 22;
    fecha2.anio:= 2001;
    fecha2.mes:= 6;
    fecha2.dia:= 18;
    p1.nombre := c1;
    p2.nombre := c2;
    p1.FechNac := fecha1;
    p2.FechNac := fecha2;
    p2.IndMadre := 1;
    fami.tope := 2;
    fami.pers[1]:=p1;
    fami.pers[2]:=p2;
    antepasados(c2,fami)
end.