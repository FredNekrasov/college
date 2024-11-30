var
  a,i:integer;
  begin
    a:=7;
    i:=1;
    while not((a mod 2=1) and (a mod 3=1) and (a mod 4=1) and (a mod 5=1) and (a mod 6=1)) do
    begin
      i:=i+1;
      a:=i*7;
    end;
    writeln(a);
  end.