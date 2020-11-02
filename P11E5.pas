program P11E5;

type
    tipoDeNerr = (Tvalor, Terror);
    Err = (diverr,reserr,argerr);

    Nerr = record
            case tipo: tipoDeNerr of 
                Tvalor : (valor : 0..MAXINT);
                Terror : (error : Err);
            end;

    PROCEDURE division (a, b: Nerr; VAR resu: Nerr); 
    begin 
        if (a.tipo = Terror ) or (a.tipo = Terror) then begin 
            resu.tipo := Terror;
            resu.error := argerr
        end else if (b.valor = 0) then begin 
            resu.tipo := Terror;
            resu.error := diverr
        end else begin
            resu.tipo := Tvalor;
            resu.valor := a.valor div b.valor
        end
    end;

    PROCEDURE resta (a, b: Nerr; VAR resu: Nerr); 
    begin 
         if (a.tipo = Terror ) or (a.tipo = Terror) then begin 
            resu.tipo := Terror;
            resu.error := argerr
        end else if (b.valor > a.valor) then begin 
            resu.tipo := Terror;
            resu.error := reserr
        end else begin
            resu.tipo := Tvalor;
            resu.valor := a.valor - b.valor
        end
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
            

    procedure imprimirResultado(n: Nerr); 
    begin 
        case n.tipo of 
            Tvalor : WriteLn(n.valor);
            Terror : begin 
                        case n.error of 
                        argerr : WriteLn('Error por parametro con errores');
                        diverr : WriteLn('Divicion por 0');
                        reserr : WriteLn('Resta con b>a')
                         end;
                     end;
        end;
    end;

var n1,n2,result:Nerr;
begin 
    n1.tipo := Terror;
    n1.error := diverr;
    n2.tipo := Tvalor;
    n1.valor := 7;
    n2.valor := 1;
    division(n1,n2,result);
    imprimirResultado(result)
end.