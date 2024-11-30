var
  k:integer; 
  x,y:real;
  begin
    k:=10
    y:=x-k*sin(x)+abs((exp(x)*4)-(exp(x)*5));
    writeln(y);
  end.