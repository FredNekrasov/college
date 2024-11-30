const
  N=20;
type
  Mas=array[1..N] of integer;
procedure Vasya(var less:integer;var nulls:integer;Y:Mas);
begin
  for i:integer:=1 to N do
  begin
    if Y[i]<0 then
      inc(less);
    if Y[i]=0 then
      inc(nulls);
  end;
end;

 

var
  less,nulls:integer;
  Y:Mas; 
begin
  for i:integer:= 1 to N do
    Y[i]:=random(-50,50);
  
  writeln(Y);
  Vasya(less,nulls,Y);
  writeln(less,' ',nulls);
end.