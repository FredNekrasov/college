const
    N=10;
var
  A: array[1..N] of integer;
  min,tmp:integer;
 
procedure PrinterArray();
begin
  writeln;
  for i:integer:=1 to N do
  begin
    write(a[i],' ');
  end;
end;
 
begin
  for i:integer:=1 to N do
  begin
    a[i]:=random(-5,50);
  end;
  PrinterArray();
 
  min:=a[1];
  for i:integer:=1 to N do
  begin
    min:=i;
    for j:integer:=i to N do
      if a[min]>a[j] then
        min:=j;
    tmp:=a[i];
    a[i]:=a[min];
    a[min]:=tmp;
    PrinterArray();
  end;
  writeln;
  PrinterArray();
end.