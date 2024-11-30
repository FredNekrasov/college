var
  d:array[1..6]of integer;
  i,s1,s2,s3:integer;
begin  
  for i:=1 to 6 do 
  d[i]:=random(51);
  for i:=1 to 6 do
  writeln(' ',d[i]);
    s1:=0;
    s2:=0;
    s3:=0;
    for i:=1 to 3 do
      s1:=s1+d[i];
    for i:=3 to 5 do
      s2:=s2+d[i];
    for i:=4 to 6 do
      s3:=s3+d[i];
  write('Полученные суммы: ',s1,' ',s2,' ',s3);
end.