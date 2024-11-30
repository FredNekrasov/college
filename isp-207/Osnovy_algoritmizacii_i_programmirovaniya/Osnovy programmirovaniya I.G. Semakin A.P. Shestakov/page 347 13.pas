const
  n=10;
var
  A:array[1..2*n,1..2*n]of integer;
begin
  for i:integer:=1 to 2*n do
    for j:integer:=1 to 2*n do
    begin
      if (i<=n) and (j<=n) then
        A[i,j]:=1;
      if (i<=n) and (j>=n) then
        A[i,j]:=2;
      if (i>=n) and (j<=n) then
        A[i,j]:=3;
      if (i>=n) and (j>=n) then
        A[i,j]:=4;
    end;
  For i:integer:=1 to 2*n do
    writeln(A[i]);
end.