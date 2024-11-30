var
  n,a,i,g,k,t,c,v,h,j:integer;
  s:longint;
  begin
    writeln('Введите n');
    read(n);
    s:=0;
    if n>72 then
      writeln('нет') else
        for i:=1 to 9 do
          for g:=0 to 9 do
            for k:=0 to 9 do
              for t:=0 to 9 do
                for c:=0 to 9 do
                  for v:=0 to 9 do
                    for h:=0 to 9 do
                      for j:=0 to 9 do
                      begin
                        if (i+g+k+t+c+v+h+j)>n then
                          s:=s+1;
                      end;
                      writeln(s);
  end.