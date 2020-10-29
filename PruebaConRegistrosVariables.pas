program PruebaConRegistrosVariables;

type 
TTipo = (Profesor, Estudiante);

Persona = record 
                codigo: integer;
                case tipo : TTipo of 
                    Profesor : (grado : integer);
                    Estudiante :(nota:integer);
            end;

var per : Persona;

begin 


    per.codigo := 1;
    per.tipo := Estudiante;
    per.grado:= 3;
  
    WriteLn('hola');
    WriteLn(per.grado)

end.