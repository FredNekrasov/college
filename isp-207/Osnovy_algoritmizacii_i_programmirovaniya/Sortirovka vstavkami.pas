const
    N= 10;
var
  tmp,j: integer;
  a: array [1..N] of integer;
 
procedure  PrinterArray ();
begin
  writeln;
      for i:integer:= 1 to N do
  begin
    write(a[i],' ');
  end;
end;
begin
  for i:integer:= 1 to N do
  begin
   a[i]:=random(-50,50);
  end;
  PrinterArray ();
 
  for i:integer:=2 to N do
  begin
    if a[i]<a[i-1] then
    begin
      tmp:=a[i];
      j:=i-1;
      while ((j>0) and (tmp<a[j])) do
      begin
        a[j+1]:=a[j];
        j:=j-1;
        PrinterArray();
      end;
      a[j+1]:=tmp;
    end;
  end;
  PrinterArray();
end.