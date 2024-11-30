type
mas=array [1..10] of integer;
function g(a:mas):integer;
var
  m,m1,i:integer;
begin
  m:=a[1];
  m1:=a[1];
  for i:=2 to 10 do
  begin
    if (m<a[i]) then
    begin
    m1:=m;
    m:=a[i];
    end
    else 
      if (m1<a[i])then m1:=a[i];
  end;
  g:=m1;
  end;
  var
    b:mas;
  begin
   writeln(g(b));
end.