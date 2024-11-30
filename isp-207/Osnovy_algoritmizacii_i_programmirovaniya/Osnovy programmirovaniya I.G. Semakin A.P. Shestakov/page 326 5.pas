var
  a,b,h:real;
  i:integer;
  begin
    a:=1;
    b:=5;
    h:=0.5;
    for i:=1 to 10 do
    begin
      writeln(i*h,' ',(cos(i*h))/sin(i*h)+1);
    end;
  end.