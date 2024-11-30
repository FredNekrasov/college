const
  n=10;
var
  A:array[1..n,1..n]of integer;
begin
  For i:integer:=1 to n do
    For j:integer:=1 to n do
      if i>=j then
        A[i,j]:=n-i+1
      else
        A[i,j]:=n*0;
  For i:integer:=1 to n do
    writeln(A[i]);
end.