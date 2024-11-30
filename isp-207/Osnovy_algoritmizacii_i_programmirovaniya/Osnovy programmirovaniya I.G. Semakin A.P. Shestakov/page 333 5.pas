var
  s,min,max:real;
  a,b,c:integer;
  begin
    writeln('Введите: a');
    read(a);
    writeln('Введите: b');
    read(b);
    writeln('Введите: c');
    read(c);
    if (a>b) then max:=a
    else max:=b;
    if (c>max) then max:=c;
    if (a>b) then min:=b
    else min:=a;
    s:=max+min;
    writeln(s);
  end.