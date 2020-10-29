program P11E4;

type 

    TTIpo = (Simple, doble, complejo);

    NumeroComplejo = record
                        rel: real;
                        im:real;
                     end;

    TipoRaices = record 
                     case tipo : TTIpo of
                        Simple : (raiz1, raiz2: real);
                        doble : (raiz: real);
                        complejo : (raizcompleja : NumeroComplejo)
                  end;

    procedure Raices (a,b,c : Real; VAR r : TipoRaices);
    var discriminante: Real;
    begin 
        discriminante := sqr(b) -4*a*c;
        if (discriminante < 0) then begin 
            r.tipo := complejo;
            r.raizcompleja.rel := -b/(2*a);
            r.raizcompleja.im := sqrt(abs(discriminante))/(2*a);    
        end else if (discriminante = 0) then begin 
            r.tipo := doble;
            r.raiz := (-b/(2*a))
        end else begin 
            r.tipo := Simple;
            r.raiz1 := (-b+sqrt(discriminante))/(2*a);
            r.raiz2 := (-b-sqrt(discriminante))/(2*a);
        end;        
    end;

var a,b,c:Real;
    resultado : TipoRaices;
begin 
    WriteLn('Ingrese el polinomio de ax^2+bx+c');
    read(a,b,c);
    Raices(a,b,c,resultado);
    case resultado.tipo of
     Simple : WriteLn('Caso simple: r1:', resultado.raiz1 :2:2, ' r2: ' , resultado.raiz2 :2:2);
     doble : WriteLn('Caso doble: r (doble):', resultado.raiz :2:2  );
     complejo : WriteLn('Caso compeljo: r1:', resultado.raizcompleja.rel :2:2, '+ ',resultado.raizcompleja.im :2:2 ,'i' );
    end



end.