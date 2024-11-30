var
  x,y,s:real;
  n,i:integer;
  begin
    writeln('Введите x');
    read(x);
    writeln('Введите n');
    read(n);
    s:=0;
    y:=sin(x);
    for i:=1 to n do
    begin
      s:=s+y;
      y:=sin(x)*y;
    end;
    writeln(s);
  end.