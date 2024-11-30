var
  out:text;
  a,b,c,a1,b1,c1,d,f:real;
  x:string;
  begin
    write('Введите a = ');
    readln(a);
    write('Введите b = ');
    readln(b);
    write('Введите c = ');
    readln(c);
    write('Введите d = ');
    readln(d);
    f:=(a/c)*(b/d)-((a*b-c)/c*d);
    assign(out,'C:\Users\Бакыт\OneDrive\Документы\ИСП-207\Паскаль\49.txt');
    rewrite(out);
    writeln(out,a);
    writeln(out,b);
    writeln(out,c);
    writeln(out,d);
    writeln(out,f);
    close(out);
  end.