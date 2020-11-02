program P11E8;
CONST
	MaxDig = 5;
TYPE
   Digito = 0..9;
   Natural = RECORD
               digitos : ARRAY[1..MaxDig] OF Digito;
               tope : 0..MaxDig;
             END;

    procedure sumar(a,b : Natural ; var c:Natural);
    var i, aculador, max, suma: integer;
    begin 
         aculador := 0;
         if (a.tope>= b.tope) then
           max := a.tope
          else 
           max := b.tope;  
         for i:= 1 to max do begin 
            suma := a.digitos[i] + b.digitos[i];
            c.digitos[i] := (suma + aculador) mod 10;
            aculador := (suma + aculador) div 10;
         end;
         if(aculador>0) then begin
            c.digitos[max+1]:=aculador;           
            c.tope := max + 1;
         end else 
            c.tope := max;
    end;


    procedure imprimirNatural(n : Natural);
    var i:integer;
    begin
     for i:=n.tope downto 1 do 
        Write(n.digitos[i]);
     WriteLn;   
    end;


var n1,n2, suma: Natural;

begin 

    n1.tope:=3;
    n2.tope:=4;
    
    n1.digitos[1] := 2;
    n1.digitos[2] := 2;
    n1.digitos[3] := 6;

    n2.digitos[1] := 3;
    n2.digitos[2] := 2;
    n2.digitos[3] := 2;
    n2.digitos[4] := 9;

    imprimirNatural(n1);
    imprimirNatural(n2);

    sumar(n1,n2,suma);
    imprimirNatural(suma)


end.