const
  n=10;
type
  tf=array[1..n] of real;
function sq(x:tf):real;
var
  s:real;
begin
  s:=0;
  for i:integer:=1 to n do
  begin
    s:=s+sqr(x[i]);
  end;
  result:=s/n;
end;
var
  v:tf;
begin
  for i:integer:=1 to n do
  begin
    v[i]:=random(-5,5)/random(1,100);
    writeln(v[i]);
    end;
    writeln;
    writeln(sq(v));
end.
  