const
  n=3;
var
  A:array[1..n,1..n]of integer;
begin
  randomize;
  For i:integer:=1 to n do
    For j:integer:=1 to n do
      A[i,j]:=random(10);
  For i:integer:=1 to n do
    writeln(A[i]);
end.