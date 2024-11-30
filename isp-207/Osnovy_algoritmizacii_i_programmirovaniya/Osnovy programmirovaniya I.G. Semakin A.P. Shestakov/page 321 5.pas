var
  g,k:integer;
  begin
    for g:=1 to 64 do
    for k:=1 to 64 do
      if k*4+g*2=64 then
        writeln('кролики',-k,'гуси',-g);
  end.