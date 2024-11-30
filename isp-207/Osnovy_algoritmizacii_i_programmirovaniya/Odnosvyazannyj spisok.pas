type
pfagor=^fagor;
fagor=record
  a:integer;
  next: pfagor;
end;
var
  x:integer;
  b,y:pfagor;
  begin
    y:=nil;
    for x:=1 to 10 do
    begin
      new(b);
      b^.a:=x;
      b^.next:=y;
      y:=b;
    end;
    b:=y;
    while(b<>nil) do
    begin
      writeln(b^.a,'');
      b:=b^.next;
    end;
  end.