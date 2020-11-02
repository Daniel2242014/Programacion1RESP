program P11E9;

const N=10000;
      M=10000;

TYPE
   Factor = RECORD
             primo : 1..N;
              CASE multiple : BOOLEAN OF
                TRUE: (exponente : 2..N);
                FALSE : ();
            END; 

   Descomp = RECORD
               factores : Array [1..M] Of Factor;
               tope : 0..M;
             END;

       

    Procedure Factorizacion (num : Integer; var listaFac : Descomp);

        procedure agregarFactor(factor: integer; var listaFac: Descomp); 
        var i:integer;
        begin 
            i:=1;
            while (i<=listaFac.tope) and (factor <> listaFac.factores[i].primo) do
                i:=i+1;
            if(i>listaFac.tope) then begin
                {Nuevo elemento de la lista}
                with listaFac do begin 
                    tope := tope + 1;
                    factores[tope].primo := factor;
                    factores[tope].multiple := false;
                end
            end else begin 
                {Factor previamente cargado}
                with listaFac.factores[i] do begin 
                    if(not multiple) then begin
                        exponente := 2;
                        multiple := true;
                      end else 
                        exponente := exponente + 1;
                end
            end
        end;


    var i:integer;
    begin 
        {Datos implisitos en toda descompocion por factores primos}
        listaFac.tope := 1;
        listaFac.factores[1].primo := 1;
        listaFac.factores[1].multiple := false;

        i := 2;
        while (num <> 1) do begin {No se genera un bucle infinito ya que es cierto que todo numero natural se puede decomponer en numeros primos} 
            if(num mod i = 0) then begin
              agregarFactor(i,listaFac);
              num := num div i
            end else 
                i:=i+1;
        end 


    end;        

    procedure imprimirDescomposicon(listaFac : Descomp);
    var i:integer;
    begin
        for i:=1 to listaFac.tope do begin 
            if(listaFac.factores[i].multiple) then
              Writeln(listaFac.factores[i].primo :2 , ' (',listaFac.factores[i].exponente :2, ') ' )
            else 
               Writeln(listaFac.factores[i].primo :2 , ' (1)')   
        end
    end;    



var des : Descomp;
    num: integer;
begin 
    num:=9025;
    Factorizacion(num,des);
    imprimirDescomposicon(des)


end.
