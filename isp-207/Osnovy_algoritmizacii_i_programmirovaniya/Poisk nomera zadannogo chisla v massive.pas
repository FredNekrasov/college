{Поиск номера заданного числа в массиве}
program qq;
var 
    A:array[1..20] of integer;
    i,x,y,tmp,num:integer;
begin
  for i:=1 to 20 do
    begin
    A[i]:=i*3;
    end;
  num:=48;
  x:=1;
  y:=20;
  tmp:=(y-x) div 2;
  while (A[tmp]<>num) and (x<>y) do
  begin
    if A[tmp]<num then x:=tmp;
        if A[tmp]>num then y:=tmp;
    tmp:=x+(y-x) div 2;
  end;
  writeln(tmp);
end.