program Tarea5; 
const N = 11; 
type Arreglo = array [1..N] of integer;
var i,aux, valor, incio: integer;
    arry: Arreglo;

function cantVal(arr: Arreglo; inicio: integer; valor: Integer): Integer;
var numeroDeOcurrencias,i: integer;
      habilitadoAgregarNuevasOcurrencias: Boolean;
begin
    numeroDeOcurrencias := 0;
    for i:= 1 to N do 
         if (habilitadoAgregarNuevasOcurrencias) then begin
               if(arr[i] = valor) then {Como la precondicion era que valor <> inicio, entonces no se considera la posibilidad de sumarle 1 al numeroDeOcurrencias}
                    numeroDeOcurrencias := numeroDeOcurrencias + 1
         end else begin
               if(arr[i] = inicio) then
                     habilitadoAgregarNuevasOcurrencias := true
         end;
     
     cantVal := numeroDeOcurrencias
end;

begin
    WriteLn('agreglo'); 
    for i:=1 to N do begin
      read(aux);
      arry[i] := aux
    end;
    WriteLn('incio');
    readln(incio);
    WriteLn('valor');
    ReadLn(valor);
    WriteLn( cantVal(arry, incio, valor))


end.