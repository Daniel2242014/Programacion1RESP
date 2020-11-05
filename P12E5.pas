program P12E5;

type
    Positivo=1..MaxInt;
    ListaInt=^TCelda;
    TCelda = record 
                info:integer;
                sig:ListaInt;

            end;

    PosibleElem = record case ok : boolean of
                  true  : (elem : integer);
                  false : ()
                end;        

    function suma(l:ListaInt): integer;
    var sumaTotal:integer;
    begin
      sumaTotal := 0;
      while l <> nil do begin 
        sumaTotal := sumaTotal + l^.info;
        l:=l^.sig
      end;
      suma := sumaTotal;
    end;  

    

    function minimo(l:ListaInt): integer;
    var min:integer;
    begin
      min := l^.info;
      l:= l^.sig;  
      while l <> nil do begin
        if(min > l^.info) then
          min := l^.info;
        l := l^.sig
      end; 
      minimo:= min;
    end;

    function producto(l:ListaInt): integer;
    var productoTotal:integer;
    begin
      productoTotal := 1;
      while l <> nil do begin 
        productoTotal := productoTotal * l^.info;
        l:=l^.sig
      end;
      producto := productoTotal;
    end;   

    function cuantosPares(l : ListaInt) : integer;
    var cantidad: integer;
    begin
      cantidad := 0;
      while l <> nil do begin 
        if(l^.info mod 2 = 0) then
            cantidad:= cantidad + 1;
        l := l^.sig;
      end;
      cuantosPares:= cantidad;
    end;

    function posicion(valor : integer; l : ListaInt) : integer;
    {Pre condicion: No ser idiota y enviar una lista vacia}
    var pos:integer;
    begin
        pos:=1;
        while (l<> nil) and (l^.info <> valor) do begin 
            l:=l^.sig;
            pos:= pos +1;
        end;    

        if(l <> nil) then {Si esto pasa es que encontre algo} 
            posicion := pos
        else 
            posicion := -1
    end;

    procedure elemEnPos(pos : Positivo; l : ListaInt; var resultado : PosibleElem);
    var i:integer;
    begin 
        i:=1;
        while(l <> nil) and (i<pos) do begin
          l:=l^.sig;
          i:=i+1
        end;
        if(l = nil) then
            resultado.ok := false
        else begin
            resultado.ok := true;
            resultado.elem := l^.info;
        end;
    end;

    function ultimo(l : ListaInt) : integer;
    begin 
        while l^.sig <> nil do 
            l:=l^.sig;
        {Cuando salgo estoy ante el ultimo}
        ultimo := l^.info;
    end;

    function ordenada(l : ListaInt) : boolean;
    var valorAnteiror: integer;
    begin
      valorAnteiror := l^.info;
      l:= l^.sig; {Voy a asumir que hay un siguiente elemento};
      while (l<> nil) and (valorAnteiror <= l^.info) do begin
        valorAnteiror:= l^.info;
        l:= l^.sig
      end;
      ordenada := (l=nil); {Si el bucle se rompio porque el valor anteiror es > valor actual entonces encontro un elemento mayor}
    end;


var c1,c2,c3:ListaInt;
    res : PosibleElem;
begin
    new(c1);
    new(c2);
    new(c3);
    c1^.info:=1;
    c1^.sig:=c2;
    c2^.info:=2;
    c2^.sig:=c3;
    c3^.info:=1;
    c3^.sig:=nil;
    {elemEnPos(4, c1,res);
    if(res.ok) then 
        WriteLn(res.elem)
    else
        WriteLn('Sin resultados');}
    Writeln(ordenada(c1));    
    Dispose(c1);
    Dispose(c2);
    Dispose(c3);

    {Todos los metodos fueron probados por arriba}

end.