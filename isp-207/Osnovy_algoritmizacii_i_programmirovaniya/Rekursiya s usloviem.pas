function recurse (a:integer):longint;
var
 b:integer;
begin
  b:=1;
  if (a<1) then
    result:=1
  else
    while a>b do
    begin
      b:=b*2;
      recurse(a-2);
      end;
    writeln('*');
end;
begin
  writeln(recurse(4));
end.