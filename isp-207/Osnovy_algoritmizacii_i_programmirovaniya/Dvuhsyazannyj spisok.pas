type
pfagor=^fagor;
fagor=record
a:integer;
p,next:pfagor;
end;
var
  l,t:pfagor;
  i:integer;
  begin
    l:=nil;
    for i:=1 to 10 do
    begin
      new(t);
      t^.a:=i;
      t^.p:=nil;
      t^.next:=l;
      if l<>nil then l^.p:=t;
      l:=t;
      while l<>nil do
        begin 
        write(l^.a,' ');
        l:=t^.next;
        end;
    end;
    begin
      l:=nil;
    for i:=10 downto 1 do
    begin
      new(t);
      t^.a:=i;
      t^.p:=nil;
      t^.next:=l;
      if l<>nil then l^.p:=t;
      l:=t;
      while l<>nil do
        begin 
        write(l^.a,' ');
        l:=t^.next;
        end;
    end;
    end;
  end.