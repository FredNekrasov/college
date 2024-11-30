var
  i,n:integer;
  x,s:real;
  begin
    writeln('введите n');
    readln(n);
    x:=sin(1);
    s:=0;
    for i:=1 to n do
    begin
      s:=(1/x)+s;
      x:=x+sin(i+1);
    end;
    write('n:=');
    writeln(s);
    end.