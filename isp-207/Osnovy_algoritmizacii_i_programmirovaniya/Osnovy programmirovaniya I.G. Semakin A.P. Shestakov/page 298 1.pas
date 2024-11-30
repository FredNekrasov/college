var
  out:text;
  a,b,c,d:real;
  x:string;
  begin
    write('Введите a = ');
    readln(a);
    write('Введите b = ');
    readln(b);
    write('Введите c = ');
    readln(c);
    d:=((b+sqrt(sqr(b)+4*a*c))/2*a)-(a*a*a)*c+exp((-2)*ln(b));
    assign(out,'C:\Users\Бакыт\OneDrive\Документы\ИСП-207\Паскаль\49.txt');
    rewrite(out);
    writeln(out,a);
    writeln(out,b);
    writeln(out,c);
    writeln(out,d);
    close(out);
  end.