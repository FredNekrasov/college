Var
  a,b,c,k:integer;
  begin
    readln(a,b,c);
    if a<0 then inc(k);
    if b<0 then inc(k);
    if c<0 then inc(k);
    write(k);
  end.