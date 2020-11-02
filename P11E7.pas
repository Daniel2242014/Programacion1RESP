program P11E7;


{FALTA PROBAR}

CONST
    MAXPIRATAS = 1000;   (* Limite de piratas que pueden vivir en la isla. *)
    MAXASALTOS = 50;     (* Limite de asaltos a los que estadisticamente puede sobrevivir un pirata. *)
    MAXDIGITOSCI = 8;     (* Cantidad de digitos para almacenar un numero de cdula. *)
    MAXCADENA = 30;     (* Cantidad de letras del nombre *)

TYPE
   TipoCadena = RECORD
                    letras: ARRAY [1..MAXCADENA] OF Char;
                    tope: 0 .. MAXCADENA
                END;

   TipoCI = ARRAY [1..MAXDIGITOSCI] OF '0'..'9';

   TipoFecha = RECORD
                   dia: 1..31;     
                   mes: 1..12;     
                   anio: 0..MAXINT;
               END;

   TipoAsalto = RECORD
                    nombre_barco: TipoCadena;             (* Nombre del barco asaltado *)
                    fecha: TipoFecha;                     (* Fecha del atraco *)
                    botin: Integer;                        (* Suma de dinero obtenida para la banda *)
                END;

   ConjuntoAsaltos = RECORD (* Contiene información sobre los asaltos  *)
                         asaltos: ARRAY [1..MAXASALTOS] OF TipoAsalto;
                         tope: 0..MAXASALTOS
                     END;

   TipoCausaMuerte = (asesinato, enfermedad, accidente);

   TipoPirata = RECORD
                    nombre: TipoCadena;          (* Nombre del pirata *)
                    CI: TipoCI;                  (* Cédula de identidad *)
                    CASE estaVivo: BOOLEAN OF                (* Indica el estado vital actual del pirata *) 
                          TRUE: (asaltos: ConjuntoAsaltos);  (* Contiene información sobre los asaltos  *)
                                                             (* realizados por el pirata               *)  
                          FALSE: (causaMuerte: TipoCausaMuerte; (* Contiene datos relativos a la muerte *)
                                  fechaMuerte: TipoFecha)       (* del pirata *)
                END;

   Banda = RECORD
               pirata: ARRAY [1..MAXPIRATAS] OF TipoPirata;     (* Contiene información de los piratas  *)
               tope: 0..MAXPIRATAS                              (* Indica cantidad de piratas *)
         END;

    
   ConjuntoCIs = RECORD
                     cedulas: ARRAY [1..MAXPIRATAS] OF TipoCI; (* Arreglo de cedulas *)
                     tope: 0..MAXPIRATAS                       (* Cantidad de cedulas en el array *)
                 END;



   {-----------------------------------------------------------------------------------------------------------------}

   
FUNCTION dinero_obtenido_por_pirata (pirata: TipoCI; anio: Integer; b:Banda) : Integer;

        function cadenasIguales(cad1,cad2: TipoCI) : Boolean;
        var i:integer;
        begin 
            i:=1;
            while ( i<= MAXDIGITOSCI ) and (cad1[i] = cad2[i]) do 
                 i := i + 1;
            cadenasIguales := i > MAXDIGITOSCI     
        end; 

   var sumaDeDinero, i,j: integer; 
   begin
        sumaDeDinero:=0; 
        i:=1;
        while (i<=b.tope) and (not cadenasIguales(pirata,b.pirata[i].ci)) do 
            i := i +1;

        if ( (i<= b.tope) and (b.pirata[i].estaVivo))  then begin 
                for j:=1 to b.pirata[i].asaltos.tope do 
                    if ( b.pirata[i].asaltos.asaltos[j].fecha.anio = anio) then
                        sumaDeDinero := sumaDeDinero +  b.pirata[i].asaltos.asaltos[j].botin;
            end;
        dinero_obtenido_por_pirata := sumaDeDinero;
   end;


   PROCEDURE hallar_ganadores (piratas:Banda; anio:INTEGER; VAR piratas_merecedores: ConjuntoCIs);
   var i,cantMax, aux: integer; 
   begin 
    cantMax:=0;
    {Hay que tener cuidado que al menos haya algun pirata vivo}
    for i:=1 to piratas.tope do begin 
        if (piratas.pirata[i].estaVivo) then begin 
            aux := dinero_obtenido_por_pirata(piratas.pirata[i].CI, anio, piratas);
            if (aux > cantMax) then begin 
                with piratas_merecedores do begin
                    tope := 1;
                    cedulas[tope] := piratas.pirata[i].CI
                end
            end else if (aux = cantMax) then begin
               with piratas_merecedores do begin
                tope := tope + 1;
                cedulas[tope] := piratas.pirata[i].CI
               end
            end
        end
    end
   end; 
   





begin 



end.