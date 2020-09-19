program P6E2;
var letra, e, ultima {Parte C} : char;
    contador,repeticion: integer;
begin 
    {PARTE A
        write('Ingrese la letra: ');
    readln(letra);
    Writeln;
    write('Ingrese el texto: ');
    repeat
      read(e);
      while (e = ' ') do 
        read(e);
      repeat
       ultima := e; 
       read(e)   
      until ((e = ' ' ) or (e = '.') );
      if (ultima = letra) then 
         contador := contador + 1 
    until (e = '.');
        WriteLn('Salida: ' , contador)}




    {PARTE B}
    {
    contador:=0;
    write('Ingrese la letra: ');
    readln(letra);
    Writeln;
    write('Ingrese el texto: ');
    repeat
      read(e);
      while (e = ' ') do 
        read(e);
        ultima := e; }{Seria la primera en realidad} {
      repeat
       read(e)   
      until ((e = ' ' ) or (e = '.') );
      if (ultima = letra) then 
         contador := contador + 1 
    until (e = '.');
        WriteLn('Salida: ' , contador)}    


    {PARTE C}
     contador:=0;
     repeticion := 0;
    write('Ingrese la letra: ');
    readln(letra);
    Writeln;
    write('Ingrese el texto: ');
    repeat
      read(e);
      while (e = ' ') do 
        read(e);
      repeat
      if (e = letra) then
          repeticion := repeticion + 1;
       read(e)   
      until ((e = ' ' ) or (e = '.') );
      if (repeticion = 1) then 
         contador := contador + 1;
      repeticion := 0
    until (e = '.');
        WriteLn('Salida: ' , contador)   

end.