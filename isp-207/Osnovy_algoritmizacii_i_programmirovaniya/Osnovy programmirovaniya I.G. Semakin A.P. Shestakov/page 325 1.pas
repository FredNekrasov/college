var
  s,e,c:real;
  n:integer;
  begin
   writeln('Введите e');
   read(e);
   writeln('Введите n');
   read(n);
   s:=0;
   c:=1;
   while (e<abs(c)) do
   begin
     s:=s+c;
     c:=c/(-n);
   end;
   writeln(s);
  end.