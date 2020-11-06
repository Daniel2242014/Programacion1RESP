program P12E6;

type
   Positivo = 1..MaxInt;
   
   ListaInt = ^TCelda;

   TCelda   = record
                info : integer;
                sig  : ListaInt
              end;    
    
    PosibleElem = record case ok : boolean of
                  true  : (elem : integer);
                  false : ()
                end; 


    procedure imprimirLista(l: ListaInt);
    begin
      while l<> nil do begin
        WriteLn(l^.info);
        l:= l^.sig
      end;  
    end;


    procedure borrar_lista(var l : ListaInt);
    var p: ListaInt;
    begin
        while l <> nil do
            begin
            p:= l;
            l:= l^.sig;
            dispose(p);
            end;
    end;

    procedure crearPuntero(valor: integer; sigiente : ListaInt; var punteroVirgen: ListaInt);
    var aux: ListaInt;
    begin
      new (punteroVirgen);
      punteroVirgen^.info:=valor;
      punteroVirgen^.sig:=sigiente
    end;


    procedure insertarTercero(ele: integer; var l : ListaInt);
    var i : integer;
        q,aux,nueva : ListaInt;
    begin
      i:=1;
      q:= l;
      
      while (q <> nil) and (i<2) do begin
        q:=q^.sig;
        i:=i+1;
      end;

      if(q <> nil) then begin
        aux:=q^.sig;
        new(nueva);
        nueva^.info := ele;
        nueva^.sig := aux;
        q^.sig := nueva;
        {Se podria implementar el procedimiento crearPuntero, pero mejor lo hago en el resto}
      end
    end;

    procedure insertarPenultimo(ele: integer; var l:ListaInt); 
    var q, nuevo :ListaInt;
    begin 
        q:= l;
        while q^.sig<>nil do
            q := q^.sig;
        crearPuntero(ele,q^.sig, nuevo);
        q^.sig:=nuevo;    
    end;

    procedure insetarLuegoPos(nuevo:integer;pos: Positivo; var l: ListaInt);
    var i: integer;
        q, nuv: ListaInt;
    begin
      i:=1;
      q:= l;
      
      while (q <> nil) and (i<pos) do begin
        q:=q^.sig;
        i:=i+1;
      end;
      if(q <> nil) then begin
         crearPuntero(nuevo, q^.sig, nuv);
         q^.sig := nuv;  
      end  
    end;

    procedure InsertarLuego(nuevo:integer;valor: integer; var l: ListaInt);
    var q, nuv: ListaInt;
    begin
      q:= l;
      
      while (q <> nil) and (q^.info<>valor) do
        q:=q^.sig;
      if(q <> nil) then begin
         crearPuntero(nuevo, q^.sig, nuv);
         q^.sig := nuv;  
      end  
    end;

    procedure InsertarAntes(nuevo:integer;valor: integer; var l: ListaInt);
    var q,sig, nuv: ListaInt;
    begin
      {Dos casos, 1) Donde estoy parado tiene el valor, osea la posicion 1. Sino busco la posicion}  
      
      if(l^.info = valor) then begin 
        crearPuntero(nuevo, l, nuv);
            l := nuv;  
      end else begin 
        q:= l;
        while (q^.sig <> nil) and (q^.sig^.info<>valor) do
            q:=q^.sig;
        if(q^.sig <> nil) then begin
            crearPuntero(nuevo, q^.sig, nuv);
            q^.sig := nuv;  
        end  
      end
    end;


    

    procedure InsertarOrdenado(nuevo : integer; var l : ListaInt);
        
        function soyCreciente(l: ListaInt): Boolean;
        var cre : Boolean;
            primerElemento: integer;
        begin 
        {Por defecto, si todos son iguales, lo voy a considerar creciente}
        {Voy a asumir que esta ordenada, osea, si encuentro dos elementos que son diferentes, saco el orden al compararlos}
            primerElemento := l^.info;
            while (l <> nil) and (primerElemento=l^.info) do 
                l:= l^.sig;
            soyCreciente := (l=nil) or (primerElemento<l^.info) 

        end;

    var creciente: Boolean;
        nuv,q:ListaInt;
    begin
      {Aca la posibilidad es que sea creciente o dereciente}
      {Asumo que la cadena tiene al menos dos elementos}
      if(soyCreciente(l)) then begin 
            if(nuevo <= l^.info) then begin
                crearPuntero(nuevo,l,nuv);
                l:=nuv;
            end else begin
                q:=l; 
                while (q^.sig <> nil) and (q^.sig^.info < nuevo) do 
                    q:=q^.sig;
                crearPuntero(nuevo,q^.sig,nuv);
                q^.sig := nuv
            end
      end else begin 
            if( nuevo >= l^.info) then begin
                crearPuntero(nuevo,l,nuv);
                l:=nuv;
            end else begin
                q:=l; 
                while (q^.sig <> nil) and (q^.sig^.info > nuevo) do 
                    q:=q^.sig;
                crearPuntero(nuevo,q^.sig,nuv);
                q^.sig := nuv
            end
      end {NO ESTA VALIDADA LA PARTE DE SER DECRECIENTE, si la de ser creciente}
    end;


    procedure BorrarSegundo(var l : ListaInt);
    var j:ListaInt;
    begin 
        if (l^.sig <> nil) then begin 
            j:= l^.sig;
            l^.sig := j^.sig;
            Dispose(j); {hay que destruir el espacio de memoria usado por el 2º elemento}
        end 
    end;

    procedure BorrarUltimoElemento(var l : ListaInt);
    var q:ListaInt;
    begin 
        if(l^.sig = nil) then begin {de esta forma me aseguro de no estar ante el ultimo elemento antes de comenzar a recorrer}
            Dispose(l);
            l:=nil;
        end else begin  
            q:=l;
            while (q^.sig^.sig <> nil) do 
                q:=q^.sig;
            Dispose(q^.sig);
            q^.sig := nil;
        end;    
    end;

    procedure EliminarPrimerImpar(var l: ListaInt);
    var q,anterior:ListaInt;
    begin
       anterior:= nil;
       q:=l;
       while (q<>nil) and ((q^.info mod 2) = 0) do begin
         anterior:=q;
         q:=q^.sig
       end; 
       if (q<>nil) then begin
            if(anterior=nil) then 
                l:= l^.sig {Si llego a este caso que es el primer elemento es el impar hay que correjir }
            else  
                anterior^.sig := q^.sig;
            Dispose(q);
       end 
    end;

    procedure EliminarTodosLosImpares(var l: ListaInt);
    var q,anterior:ListaInt;
    begin
       anterior:= nil;
       q:=l;
       while (q<>nil) do begin
         if((q^.info mod 2) = 1) then begin 
            if(anterior = nil) then begin {Si estamos en el caso que q es el primer elemento}
                l:=l^.sig; {Tengo que eliminar al primer elemento de la lista original. NO DE 'Q'}
                Dispose(q);
                q:=l;
            end else begin 
               anterior^.sig := q^.sig;
               Dispose(q);
               q:=anterior^.sig;
            end
         end else begin    
            anterior:=q;
            q:=q^.sig
         end
       end; 
       if (q<>nil) then begin 
            anterior^.sig := q^.sig;
            Dispose(q);
       end 
    end;

    procedure BorrarPrimeraAparicion(valor : integer; var l : ListaInt);
    var j,p:ListaInt;
    begin
        if(l^.info = valor) then begin
         j:=l;
         l := l^.sig;
         Dispose(j)
        end else begin
            j:=l;
            while (j^.sig <> nil) and (j^.sig^.info <> valor) do 
                j := j^.sig;
            if (j^.sig <> nil) then begin 
                p:=j^.sig;
                j^.sig := p^.sig;
                Dispose(p);
            end 
        end;
    end;

    


    var c1,c2,c3:ListaInt;
    res : PosibleElem;
begin
    new(c1);
    new(c2);
    new(c3);
    c1^.info:=3;
    c1^.sig:=c2;
    c2^.info:=2;
    c2^.sig:=c3;
    c3^.info:=1;
    c3^.sig:=nil;
    Write('Previo: ');
    imprimirLista(c1);
    {insertarTercero(3,c1);
    insertarTercero(2,c1);
    insertarTercero(1,c1);
    insertarPenultimo(10,c1);
    insertarPenultimo(5,c1);
    insertarPenultimo(30,c1);
    insetarLuegoPos(99,11,c1);
    InsertarAntes(-23, 10, c1);
    InsertarOrdenado(1,c1);}
    {BorrarPrimeraAparicion(1,c1);}
    Writeln('Luego: ');
    imprimirLista(c1);
    borrar_lista(c1)

    {Todos los metodos fueron probados por arriba - ejercio 6}

end.


end.