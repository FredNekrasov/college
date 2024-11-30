type
pnode=^node;
node=record
  a:integer;
  r,l:pnode;
end;
var
  root,tmp:pnode;
  i:integer;
  procedure insert(root,tmp:pnode);
  var
    flag:boolean;
    t:pnode;
    begin
      flag:=false;
      t:=root;
      While flag=false do
      begin
        while t^.a>tmp^.a do
          if t^.l<>nil then t:=t^.l
        else
        begin
          flag:=true;
          t^.l:=tmp;
          while (flag=false) and (tmp^.a>t^.a) do
            if t^.r<>nil then t:=t^.r
          else
            t^.r:=tmp;
          flag:=true;
        end;
      end;
    end;
    begin
      root:=nil;
      for i:=1 to 10 do
      begin
        new(tmp);
        tmp^.a:=random(50);
        tmp^.r:=nil;
        tmp^.l:=nil;
        if root=nil then root:=tmp;
        insert(tmp);
      end;
    end.