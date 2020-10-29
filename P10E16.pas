program P10E16;
type 
    complejo = RECORD 
                re, im : real;
               end;

var c1, c2, c3, c4: complejo;

    procedure suma (c1,c2: complejo; var c3: complejo);
    begin 
        c3.re := c1.re + c2.re;
        c3.im := c1.im + c2.im;
    end;           

    procedure producto (c1,c2: complejo; var c3: complejo);
    begin 
        c3.re := c1.re * c2.re - c1.im * c2.im;
        c3.im := c1.im * c2.re + c2.im * c1.re;
    end;  

    procedure print(c: complejo); 
    begin 
        Write(c.re :2:2, ' , ' ,c.im:2:2);
        writeln
    end;


begin 
 c1.re := 1;
 c1.im := 2;
 c2.re := 1;
 c2.im := -2;
 suma(c1,c2,c3);
 producto(c1,c2,c4);
 print(c3);
 print(c4);
end.