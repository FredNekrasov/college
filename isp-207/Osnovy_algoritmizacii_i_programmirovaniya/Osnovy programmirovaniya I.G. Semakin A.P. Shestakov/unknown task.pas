var
 n,a,b,s: integer;
  begin
   Write('Введите значение натурального числа n: ');
   read(n);
   a:=1;
   b:=1;
   s:=0;
   writeln(a);
   writeln(b);
   While s < n do
   begin
     s:=a+b;
     writeln(s);
     a:=b;
     b:=s;
   end;
  end.