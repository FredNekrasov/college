  function nod(a,b:integer):integer;
  var 
    n,i:integer;
  begin
    if a<b then n:=a
    else n:=b;
    for i:=n downto 1 do
    begin
      if (a mod i = 0) and (b mod i = 0)then 
      begin
      nod:=i;
      break;
      end;
    end;
  end;
  var
  a,b,z:integer;
  nok:real;
  begin
    writeln('Введите a');
    read(a);
    writeln('Введите b');
    read(b);
    Z:=nod(a,b);
    nok:=(a*b)/z;
    writeln('Наибольший общий делитель: ',z,'Наименьшее общее кратное: ',nok);
  end.