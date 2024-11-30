var 
  a,b,c:integer;
  begin
  write('Введите a = ' );
  readln(a);
  if a>=0 then a:=sqr(a) 
  else a:=sqr(a*a);
  
  write('Введите b = ' );
  readln(b);
  if b>=0 then b:=sqr(b) 
  else b:=sqr(b*b);
  
  write('Введите c = ' );
  readln(c);
  if c>=0 then c:=sqr(c) 
  else c:=sqr(c*c);
  
  writeln('a = ',a,' b = ',b,' c = ',c);
end.