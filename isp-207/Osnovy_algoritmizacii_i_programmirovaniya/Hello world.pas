var
  f:text;
  str:string;
  begin
    assign(f,'test.txt');
    rewrite(f);
    str:='Hello world';
    writeln(str);
    close(f);
  end.