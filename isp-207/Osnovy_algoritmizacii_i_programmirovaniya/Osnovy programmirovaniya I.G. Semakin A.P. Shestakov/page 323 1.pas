var
  i,n:integer;
  b,s:real;
  begin
    writeln('введите n');
    readln(n);
    b:=1;
    s:=0;
    for i:=1 to n do
    begin
      s:=b+s;
      b:=b/(-2);
    end;
    write('n:=');
    writeln(s);
  end.