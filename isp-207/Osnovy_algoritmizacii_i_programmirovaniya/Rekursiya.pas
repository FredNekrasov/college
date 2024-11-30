function recurse (x:integer):longint;
begin
  if (x=1)then
    result:=1
  else 
    result:=x*recurse(x-1);
end;

begin
 writeln(recurse(6));
end.