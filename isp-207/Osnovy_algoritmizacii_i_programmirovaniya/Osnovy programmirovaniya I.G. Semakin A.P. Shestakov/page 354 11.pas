var
  s:string;
  i,k:integer;
  begin
    write('s = ');
    readln(s);
    k:=0 ;
    for i:=1 to length(s) do
    if pos(':'+s[i]+':',s) = 0 then
    begin
      s:=s+':'+s[i]+':';
      inc(k)
    end;
    writeln('различных символов = ',k);
    readln;
  end.