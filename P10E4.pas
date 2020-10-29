{EJ 1
d, f

}


program P10E4;
type meses = (enero,febero,marzo,abril,mayo,junio,agosto,septiembre,octubre,novimebre,diciembre);


procedure mesToString(mes:meses);
begin 
    case mes of 
        enero: WriteLn('Enero');
        febero: WriteLn('febero');
        marzo: WriteLn('marzo');
        abril: WriteLn('abril');
        mayo: WriteLn('mayo');
        junio: WriteLn('junio');
        agosto: WriteLn('agosto');
        septiembre: WriteLn('septiembre');
        octubre: WriteLn('octubre');
        {Y mas}
    end
end;



begin 
    mesToString(enero)
end.