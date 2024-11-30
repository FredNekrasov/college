var
  x,y:real;
  begin
    writeln('Введите x');
    read(x);
    writeln('Введите y');
    read(y);
    writeln( (((y<=6) and (x<=6) and (y>=-x+6)) or
            ((y>=-6) and (x>=-6) and (y<=-x-6)) or
            ((x>=0) and (y>=0) and (y<=x+6) and (sqr(x)+sqr(y)>=1)) or
            ((x<=0) and (y<=0) and (y>=x-6) and (sqr(x)+sqr(y)>=1)) or
            ((x>=0) and (y>=0) and (sqr(x)+sqr(y)<=1)) or
            ((x<=0) and (y<=0) and (sqr(x)+sqr(y)<=1))) );
  end.