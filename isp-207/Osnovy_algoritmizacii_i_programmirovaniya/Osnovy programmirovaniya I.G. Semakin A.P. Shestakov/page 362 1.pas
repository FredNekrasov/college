var
  a, i: integer;
  s: array[1..255] of string[40];
  c: string;
  begin
  repeat
    write('Фамилия и дата рождения ученика: '); 
    readln(c);
    if c='' then break;
    if c[1]='В' then 
      begin
        inc(a); 
        s[a]:=c;
      end;
  until false;
  for i:=1 to a do writeln(s[i]);
end.