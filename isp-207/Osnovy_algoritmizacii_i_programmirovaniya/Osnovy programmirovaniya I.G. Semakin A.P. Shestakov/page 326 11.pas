var
  a,b,h,f:real;
  i,r:integer;
  begin
    a:=1;
    b:=10;
    h:=0.5;
    r:=round((10-1)/h);
    for i:=1 to r do
    begin
      writeln(i*h,' ',sqrt(i*h)*sqr(cos(i*h)));
    end;
  end.
  