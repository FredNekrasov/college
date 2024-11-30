var
   f:text;
  str:string;
  begin
    assign(f, 'test.txt');
    reset(f);
    read(f,str);
    close(f);
    writeln(str);
  end.