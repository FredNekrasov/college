uses crt;
var a:array[1..50,1..50] of integer;
    m,n,i,j,imn,imx:byte;
    mn,mx,x:integer;
begin
clrscr;
randomize;
write('Количество строк m=');
readln(m);
write('Количество столбцов n=');
readln(n);
for i:=1 to m do
for j:=1 to n do
a[i,j]:=random(20);{заполняем матрицу элементами}
mn:=a[1,1];mx:=a[1,1];
imn:=1;imx:=1;
for i:=1 to m do
for j:=1 to n do
 begin
  if a[i,j]<mn then
   begin
    mn:=a[i,j];{находим минимальный}
    imn:=i;{строку с ним}
   end;
  if a[i,j]>mx then
   begin
    mx:=a[i,j];{находим максимальный}
    imx:=i;{строку с ним}
   end;
 end;
writeln('Строка с минимальным элементом=',imn,' мин=',mn);
writeln('Строка с максимальным элементом=',imx,' макс=',mx);
if imn=imx then{если мин и макс в одной строке}
 begin
  writeln('Минимальный и максимальный элемент в одной строке!');
  writeln('Матрица:');
  for i:=1 to m do
   begin
    for j:=1 to n do
    if i=imn then
     begin
      textcolor(12);{эту строку выделим красным цветом}
      write(a[i,j]:4);
     end
    else
     begin
      textcolor(15);{остальные по умолчанию, обычно белый}
      write(a[i,j]:4);
     end;
    writeln;
   end;
  readln;
  exit;{выходим из программы, т.к. менять нечего}
 end;
writeln('Исходная матрица:');{если разные-продолжаем программу, выводим исходную матрицу}
for i:=1 to m do
 begin
  for j:=1 to n do
  if i=imn then
   begin
    textcolor(14);{строку с мин выводим желтым цветом}
    write(a[i,j]:4);
   end
  else if i=imx then
   begin
    textcolor(12);{с макс-красным}
    write(a[i,j]:4);
   end
  else
   begin
    textcolor(15);{остальные белым}
    write(a[i,j]:4);
   end;
  writeln;
 end;
for j:=1 to n do{обмениваем элементы строки с мин с элементами строки с макс}
 begin
  x:=a[imn,j];
  a[imn,j]:=a[imx,j];
  a[imx,j]:=x;
 end;
textcolor(15);
writeln('Перестановка строк:');
for i:=1 to m do
 begin
  for j:=1 to n do
  if i=imx then
   begin
    textcolor(14);{сейчас строку с номером макс-желтым}
    write(a[i,j]:4);
   end
  else if i=imn then
   begin
    textcolor(12);{а строку с мин-красным}
    write(a[i,j]:4);
   end
  else
   begin
    textcolor(15);
    write(a[i,j]:4);
   end;
  writeln;
 end;
readln
end.