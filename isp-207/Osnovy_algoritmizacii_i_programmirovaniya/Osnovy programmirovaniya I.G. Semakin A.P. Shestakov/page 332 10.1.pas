var s:string;
i,l:integer;
flag:boolean;
begin
flag:=false;
readln(s);
l:=s.length;
for i:=1 to l div 2 do
begin
flag:=true;
if s[i] <> s[l - i + 1] then
begin
flag:=false;
break;
end;
end;
if flag=false then
writeln('Не является палиндромом')
else
writeln('Является палиндромом');
end.
  