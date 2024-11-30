var
  n,i:integer;
  x,y:real;
  begin
    writeln('введите n');
    readln(n);
    y:=0;
    x:=cos(1)/sin(1);
    for i:=1 to n do
    begin
      y:=x*(x*n)+y;
      x:=x+cos(i+1)/sin(i+1)
    end;
    write('n:=');
    writeln(y);
  end.