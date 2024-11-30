function simple(x:integer):integer;
var
  flag:boolean;
  y:integer;
begin
  y:=x;
  flag:=false;
  while (flag=false) do 
  begin
    y:=y+2;
    flag:=true;
    for i:integer:=3 to (y div 2) do
    begin
      if (y mod i=0) then
      begin
        flag:=false;
        break;
      end;
    end;
  end;
  result:=y;
end;
begin
  writeln(simple(19));
end.