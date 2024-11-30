var a:array[1..10,1..10] of integer;
    i,j,n,k,s:integer;
begin
    write('Введите n: ');
    readln(n);
    for i:=1 to n do
    begin
      for j:=1 to n do
      begin
        a[i,j]:=random(-10,10);
        write('   ',a[i,j]);
      end;
      writeln;
    end;
    k:=0;
    s:=0;
    for i:=1 to n do
     for j:=1 to n do
      if (i<j)and(a[i,j]>0) then
      begin
        k:=k+1;
        s:=s+a[i,j];
      end;
    writeln('Сумма положительных над главной диагональю: ',s);
    writeln('Кол-во положительных над главной диагональю: ',k);
    readln;
end.