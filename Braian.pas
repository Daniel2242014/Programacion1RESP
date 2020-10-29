program Braian;
CONST
   N = 20;
TYPE
   Arreglo = ARRAY [1..20] OF Integer;


Procedure Carga(var A: Arreglo);
var i, j: integer; 
begin 
 for i:= 1 to N do 
    begin
        read(j);
        A[i]:=j
    end;
end;

Function ContMayores(A: Arreglo; num: integer):integer;
   var i, cant: integer;
    begin
      cant:=0;
      for i:= 1 to N do
              if A[i] > num then 
                cant:= cant + 1
               else
                cant:= 0;
  ContMayores:=cant;
  end;
 
procedure MaxPos(A: Arreglo; var indice, valorMax : integer);
   var max,i, indiceMax: integer;
   begin
   max:= A[1];
   indiceMax:= 1;
    for i:= 2 to N do
       if A[i] > max then begin  
            max:= A[i];
            indiceMax := i
       end;
    indice:=indiceMax;
    valorMax:= max;
   end;

   begin
   end.
