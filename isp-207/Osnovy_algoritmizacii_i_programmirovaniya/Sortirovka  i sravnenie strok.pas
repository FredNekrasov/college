const
    N=5;
var 
  A: array[1..N] of string;
  tmp:string;
  min:integer;
  
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
		readln(a[i]);
  end;
  PrinterArray();
  
  min:=1;
  
  for i:integer:=1 to N do
  begin
    min:=i;
    for j:integer:=i to N do
      if (String.Compare(a[min],a[j])=1) then
        min:=j; 
    tmp:=a[i];
    a[i]:=a[min];
    a[min]:=tmp;
    PrinterArray();
  end;
  writeln;
  PrinterArray();
end.