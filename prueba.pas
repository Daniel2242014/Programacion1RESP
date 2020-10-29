program prueba;

    procedure g();
    begin 
        WriteLn('3')
    end;


    procedure f();
        procedure g();
        begin 
            writeln('2')
        end;

    begin 
        g()
    end;


begin 

f()

end.