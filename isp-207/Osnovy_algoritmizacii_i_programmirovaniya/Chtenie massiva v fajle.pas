var
  f:text;
  A:array[1..50] of real;
  i,n:integer;
  begin
   assign(f, 'test.txt');
   reset(f);
   readln(f, n);
   for i:=1 to n do
   begin
    read(f,A[i]);
    writeln(A[i]);
   end;
   close(f);
  end.