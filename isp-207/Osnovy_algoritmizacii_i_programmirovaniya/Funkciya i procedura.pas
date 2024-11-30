const
  N=100;
type 
  mas=array[1..N] of integer;

procedure print_mas(V:mas);   
begin
  write(V);  
end;

function sev(s:mas;k:integer):real; 
var
  sum:integer;
begin
  sum:=0;
  for i:integer:=1 to k do
    sum :=sum + s[i];
  sev:= sum / k;
end;

var
  a:mas;
begin
  for i:integer:=1 to N do
    a[i]:=random(-5,50);
  print_mas(a);
  writeln(sev(a,N));
end.  