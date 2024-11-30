var
  a,b,c,a1,b1,c1,p,p1,s,s1:real;
  begin
    writeln('Введите стороны первого треугольника');
    read(a,b,c);
    writeln('Введите стороны другого треугольника');
    read(a1,b1,c1);
    p:=(a+b+c)/2;
    p1:=(a1+b1+c1)/2;
    s:=sqrt(p*(p-a)*(p-b)*(p-c));
    s1:=sqrt(p1*(p-a1)*(p-b1)*(p-c1));
    if s=s1 then write('Треугольники равновеликие')
    else write('Треугольники не равновеликие');
  end.