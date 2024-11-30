var
  i:integer;
  h,x:real;
  begin
    readln(h);
    x:=h/10;
    for i:=1 to 10 do
      writeln(i*x,' ',(sin(i*x)+tan(i*x)));
  end.