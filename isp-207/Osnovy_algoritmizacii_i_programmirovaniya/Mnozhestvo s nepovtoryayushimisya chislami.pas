function ch():string;
var
m: set of byte;
i, k: byte;
r:string;
begin
randomize;
k:=random(1,9);
r:=''+k;
m:=[];
m:=m+[k];

for i:=1 to 3 do
begin
repeat
k:=random(0,9);
until not(k in m);
r:=r+k;
m:=m+[k];
end;
result:=r;
end;
var
b:string;

begin
b:=ch();
writeln(b);
end.