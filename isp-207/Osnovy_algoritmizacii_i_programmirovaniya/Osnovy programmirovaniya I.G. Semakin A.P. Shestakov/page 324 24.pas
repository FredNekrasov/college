var
  i,k,n:integer;
  s:real;
  begin
    writeln('Введите k');
    read(k);
    writeln('Введите n');
    read(n);
    s:=0;
    for i:=n downto 1 do
    begin
      s:=sqrt((i*k)+s);
    end;
    writeln(s);
  end.