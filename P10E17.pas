program P10E17;
CONST
   CANT_LETRAS = 4;
   CANT_ARTICULOS = 3;

TYPE
   TIdioma = (ay, eo, es);

   TFecha = RECORD
                dia : 1..31;
                mes : 1..12;
                anio : 2001..9999 (* La wikipedia comienza en 2001 *)
            END;

   TNombre = ARRAY [1..CANT_LETRAS] OF Char;

   TArticulo = RECORD
                   nombre : TNombre;
                   idioma : TIdioma;
                   visitas : Integer;
                   ultima_act : TFecha;
               END;

   Wikipedia = ARRAY [1..CANT_ARTICULOS] OF TArticulo;


    function EsPosterior(f1,f2: TFecha): Boolean;
    begin 
        if (f1.anio <> f2.anio) then
            EsPosterior := f1.anio > f2.anio
        else 
            if(f1.mes <> f2.mes) then
                EsPosterior := f1.mes > f2.mes
            else
                if(f1.dia <> f2.dia) then
                    EsPosterior := f1.dia > f2.dia
                else
                    EsPosterior := true
    end;


    procedure ArticuloMasReciente(wiki: Wikipedia; idioma: TIdioma; var art: TArticulo);
    var masReciente: TArticulo;
        algoEncontrado: Boolean;
        i:integer;
    begin 
        algoEncontrado := false;
        for i:= 0 to CANT_ARTICULOS do 
            if(wiki[i].idioma = idioma) then begin 
                if(not algoEncontrado) then begin 
                    algoEncontrado := true;
                    masReciente := wiki[i]
                end else if (EsPosterior(masReciente.ultima_act,wiki[i].ultima_act)) then 
                    masReciente := wiki[i];
            end; 
        art := masReciente {Asumo que puedo no encontrar nada}
    end;

    procedure imprimirArticulosMasRecientes (wiki: Wikipedia);
        procedure imprimir(wiki: Wikipedia; idioma: TIdioma);
        var masReciente: TArticulo;
        begin 
            ArticuloMasReciente(wiki,idioma,masReciente);
            WriteLn(masReciente.nombre , ' | ' ,masReciente.visitas , ' | ' , masReciente.ultima_act.anio, '/',  masReciente.ultima_act.mes, '/' ,  masReciente.ultima_act.dia)
        end;
    begin 
        imprimir(wiki,ay);
        imprimir(wiki,eo);
        imprimir(wiki,es)
    end;


begin 

end.