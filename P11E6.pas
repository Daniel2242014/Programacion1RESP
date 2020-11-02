program P11E6;

const MaxX = 5;
      MaxY = 5;

type

    {SIN COMPLETAR}

    tipoDeNerr = (Tvalor, Terror);
    Err = (diverr,reserr,argerr);

    Nerr = record
            case tipo: tipoDeNerr of 
                Tvalor : (valor : 0..MAXINT);
                Terror : (error : Err);
            end;

    Columna = record 
                registros : array [1..MaxY] of Nerr;
                tope: 1..MaxY 
              end;

    MNerr = record 
            case tipo: tipoDeNerr of 
                Tvalor : (filas : Array [1..MaxX] of Columna; 
                         tope : 1..MaxX;);
                Terror : (error : Err);
            end;


    PROCEDURE suma (a, b: Nerr; VAR resu: Nerr);
    begin 
          if (a.tipo = Terror ) or (a.tipo = Terror) then begin 
            resu.tipo := Terror;
            resu.error := argerr
        end else begin
            resu.tipo := Tvalor;
            resu.valor := a.valor + b.valor
        end
    end;

    PROCEDURE producto (a, b :Nerr; VAR resu: Nerr);
    begin 
            if (a.tipo = Terror ) or (a.tipo = Terror) then begin 
                resu.tipo := Terror;
                resu.error := argerr
            end else begin
                resu.tipo := Tvalor;
                resu.valor := a.valor * b.valor
            end
    end;

    PROCEDURE mprod (m1, m2: MNerr; VAR resu: MNerr);
      
        function hayError(m:MNerr): Boolean;
        var i,j:integer
        begin
          i:=1;
          j:=1;
          while (i<=m.tope) and (m.filas[i].registros[j].tipo <> Terror ) do begin
            if(j<fila[1].tope) then begin 
               j := j + 1; 
            end else begin 
               j := 1;
               i := i + 1; 
            end
          end;
          hayError := i<=m.tope {EL error se da si algun registro error de alguna columna}
        end;
    var i,j : integer;
    begin 
        if( (m1.tope <> m2.fila[1].tope) or (hayError(m1)) or (hayError(m2))) then
            resu.tipo = Terror
        else begin 
            for i:=1 to m1.tope do 
                for j:=1 to m2.fila[1].tope do {Pre condicion, todas las columas tiene el mismo largo} 

        end 

    end;


begin 

end.