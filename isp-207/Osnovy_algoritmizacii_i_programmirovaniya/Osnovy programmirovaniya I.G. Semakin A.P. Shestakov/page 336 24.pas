procedure delenie(n:integer;k:integer);
var
  delimoe:integer;
begin
  delimoe:=10;
  for i:integer:=1 to k do
  begin
    write(delimoe div n);
    delimoe:=(delimoe mod n)*10;   
  end;
end;
Var n,k : Integer;
Begin
  writeln('введите n и k');
  readln(n);
  readln(k);
  delenie(n,k);
end.