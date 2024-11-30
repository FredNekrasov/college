const 
    N= 10;
var 
  flag:boolean;
  min,tmp: integer;
  a: array [1..N] of integer;
  
procedure  printerArray ();
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
   readln(a[i]);
  end;
  printerArray ();
  
  flag:=true;
  for i:integer:= 1 to N do
  begin
    flag:=false;
    for j:integer:= 1 to N-i do
      if a[j]>a[j+1] then
      begin
        flag:=true;
        tmp:=a[j];
        a[j]:=a[j+1];
        a[j+1]:=tmp;
        printerArray();
      end;
    if flag=false then
      break;
  end;
  printerArray();
end.