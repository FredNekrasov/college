const n=3;
      m=3;
var a:array [1..n,1..m] of integer;
    i,j,s,k:integer;
  begin
    writeln('Искомый массив');
    for i:=1 to n do
    begin
      for j:=1 to m do
      begin
        a[i,j]:=random(-10,10);
        write(a[i,j],' ');
      end;
      writeln;
    end;
    k:=0;
    for j:=1 to n do
    begin
      s:=0;
      for i:=1 to n do inc(s,a[i,j]);
      for i:=1 to n do if (a[i,j]>s) then inc(k);
    end;
    writeln('Количество особых элементов = ',k);
  end.