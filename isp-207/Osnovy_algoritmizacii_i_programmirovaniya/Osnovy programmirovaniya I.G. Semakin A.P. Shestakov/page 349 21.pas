var
  x:array[1..20] of real;
  a:array[1..200,1..20] of real;
  n,i,j:integer;
begin
  randomize;
  repeat
    writeln('Размер массива, не более 20 n=');
    readln(n);
  until n in [1..20];
  writeln('Массив x:');
  for i:=1 to n do
  begin
    x[i]:=2*random+1;
    writeln(x[i]:7:2);
  end;
  for i:=1 to n do
    a[1,i]:=1;
  for j:=1 to n do
    for i:=2 to n do
      a[i,j]:=a[i-1,j]*x[j];
    writeln('Массив a:');
    for i:=1 to n do
    begin
      for j:=1 to n do
        write(a[i,j]:7:2);
      writeln;
    end;
end.