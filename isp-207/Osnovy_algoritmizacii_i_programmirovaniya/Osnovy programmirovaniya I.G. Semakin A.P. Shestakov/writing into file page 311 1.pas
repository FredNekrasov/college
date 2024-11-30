var
  out:text;
  a,b,c,a1,b1,c1:integer;
  x:string;
  begin
    write('Введите a = ' );
    readln(a);
    a1:=a;
    if a>=0 then a:=sqr(a) 
    else a:=sqr(a*a);
  
    write('Введите b = ' );
    readln(b);
    b1:=b;
    if b>=0 then b:=sqr(b) 
    else b:=sqr(b*b);
    
    write('Введите c = ' );
    readln(c);
    c1:=c;
    if c>=0 then c:=sqr(c) 
    else c:=sqr(c*c);
    
    assign(out,'C:\Users\Бакыт\OneDrive\Документы\ИСП-207\Основы алгоритмизации и программирования\49.txt');
    rewrite(out);
    x:=('a = '+a+' b = '+b+' c = '+c);
    writeln(out,a1);
    writeln(out,b1);
    writeln(out,c1);
    writeln(out,x);
    close(out);
  end.