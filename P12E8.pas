program P12E8;

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


{-----------------------------------------------}

     procedure imprimirLista(l: ListaInt);
    begin
      while l<> nil do begin
        WriteLn(l^.info);
        l:= l^.sig
      end;  
    end;


    function multiplos(k: Positivo; num: Positivo) : ListaInt;
    var i:integer;
        l,q,aux:ListaInt;
    begin 
        new(l);
        l^.info := num;
        q:=l;
        for i:=2 to k do begin 
            new(aux);
            aux^.info := num*i;
            q^.sig:=aux;
            q:= aux; 
        end;
        q^.sig:= nil;
        multiplos:=l;
    end;

    function copia(l: ListaInt) : ListaInt;
    var l1,q,q2,aux: ListaInt;
    begin
        q := l;
        new(l1);
        l1^.info := l^.info;
        q2 := l1;
        while q^.sig <> nil do begin
          new(aux);
          q:=q^.sig;
          aux^.info := q^.info;
          q2^.sig := aux;
          q2:=q2^.sig;
        end; 
        copia:=l1;
      
    end;

var c1,c2,c3,aux: ListaInt;
begin 

    {Pruaba metodo multiplos}

    {aux := multiplos(5,2);
    imprimirLista(aux);}


    new(c1);
    new(c2);
    new(c3);
    c1^.info:=3;
    c1^.sig:=c2;
    c2^.info:=2;
    c2^.sig:=c3;
    c3^.info:=1;
    c3^.sig:=nil;

    {Pruaba copiaLimpia}
    aux:= copia(c1);
    c2^.info:=8;
    imprimirLista(c1);
    imprimirLista(aux);





end.