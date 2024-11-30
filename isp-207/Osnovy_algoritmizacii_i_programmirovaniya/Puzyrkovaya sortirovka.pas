const
N= 10;
var
min,tmp: integer;
a: array [1..N] of integer;

procedure printerArray ();
begin
writeln;
for i:integer:= 1 to N do
begin
write(a[i],' ');
end;
end;

begin
for i:integer:= 1 to N do
begin
a[i]:=random(-5,50);
end;

printerArray ();
for i:integer:= 1 to N do
begin
for j:integer:= 1 to N-i do
if a[j]>a[j+1] then
begin
tmp:=a[j];
a[j]:=a[j+1];
a[j+1]:=tmp;
printerArray();
end;
end;
printerArray();
end.