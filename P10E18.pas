program P10E18;
CONST
   CANT_SALONES = 3;
   MAX_PIZARRONES = 3;

TYPE
   TSalon = RECORD
                asientos : Integer;
                pizarrones : 1..MAX_PIZARRONES;
                hayProyector : Boolean;
            END;

   TFacultad = ARRAY [1..CANT_SALONES] OF TSalon;

    procedure informeSalones (facu: TFacultad);
    var i : integer;
    begin 
        WriteLn('----------- Informe de los salones -------------');
        for i:=1 to CANT_SALONES do begin 
            Writeln('Salon: ' ,i , ' | Asientos:' ,  facu[i].asientos, ' | Pizarones:' , facu[i].pizarrones, ' | Proyector:' , facu[i].hayProyector)
        end 
    end;


    procedure salonMasAsientos (facu: TFacultad; VAR indSalon: Integer; VAR maxAsientos: Integer);
    var salonConMasAsientos: TSalon;
        i, indiceMaximo:integer;
    begin 
        salonConMasAsientos := facu[1];
        indiceMaximo:= 1;
        for i:=2 to CANT_SALONES do 
            if(salonConMasAsientos.asientos < facu[i].asientos) then begin 
              salonConMasAsientos := facu[i];
              indiceMaximo := i;
              end;
        indSalon:=indiceMaximo;
        maxAsientos:=salonConMasAsientos.asientos
    end;


    function primerSalonSinAsientos (facu: TFacultad) : Integer;
    var i:integer;
    begin 
        i:=0;
        repeat
          i:= i + 1;
        until (i > CANT_SALONES) or (facu[i].asientos = 0) ;
        if (i > CANT_SALONES) then 
            primerSalonSinAsientos := 0
        else 
            primerSalonSinAsientos := i
    end;


var facu : TFacultad;
    indiceMax,salonMax: integer;

begin 
    facu[1].asientos := 0;
    facu[1].pizarrones := 2;
    facu[1].hayProyector := true;

    facu[2].asientos := 1;
    facu[2].pizarrones := 1;
    facu[2].hayProyector := false;

    facu[3].asientos := 2;
    facu[3].pizarrones := 1;
    facu[3].hayProyector := true;

    informeSalones(facu);
    salonMasAsientos(facu, indiceMax, salonMax);
    WriteLn('----------- Algos datos mas -------------');
    WriteLn('El salon con mayor cantidad de salones tiene ', salonMax, ' | con el indice ' ,indiceMax );
    WriteLn('Y el salon que no tiene salon sin asientos tiene indice' , primerSalonSinAsientos(facu))
end.