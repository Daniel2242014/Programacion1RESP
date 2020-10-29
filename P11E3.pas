program P11E3;

const MAX = 10;
      CENTINELA = '.';
      VOCALES = ['a','e','i','o','u'];
    
type 

    Cadena = record 
                card : array [1..MAX] of char;
                tope: 1..MAX;
             end;


    procedure cargarCadena(var cad : Cadena);
    var entrada: char;
    begin
        read(entrada);
        repeat      
              cad.tope := cad.tope + 1;
              cad.card[cad.tope] := entrada;
              read(entrada);        
        until (cad.tope >= MAX) or (entrada = CENTINELA);
      
    end;

    function contarOcurrencias(letra: char; cad: Cadena): integer;
    var i, ocurrencias:integer;
    begin
      ocurrencias:=0;
      for i:=1 to cad.tope do 
        if (cad.card[i]= letra) then 
            ocurrencias := ocurrencias + 1;
      contarOcurrencias := ocurrencias  
    end;

    function existeVocal(cad :Cadena): Boolean;
    var i:integer;
    begin         
        i:=1;
        while (i<=cad.tope) and  not ( cad.card[i] in VOCALES) do 
            i := i + 1;
        existeVocal:= i <= cad.tope
    end;

    procedure desplegarCadena(cad : Cadena); 
    var i:integer;
    begin
      for i:=1 to cad.tope do 
        Write(cad.card[i]);
      WriteLn  
    end;


var cad:Cadena;
    
begin 
    cargarCadena(cad);
    desplegarCadena(cad);
    writeln(existeVocal(cad));
end.