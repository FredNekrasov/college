program biki_korovi;
function zadaet():string;
var
  a: string;
  count,tmp: integer;
  m: set of integer; //множество
begin
  m:=[]; //пустое множество
  a:='';
  count:=0;
  tmp:=random(1,9);
  a:=concat(a,chr(tmp+48)); //48 это аски код нуля
  m:=m + [tmp]; //добавили в множество число tmp
  for i:integer:=2 to 4 do
  begin
    repeat //сначала производится действие потом проверяется
      tmp:=random(0,9);
    until not( tmp in m); //пока tmp внутри множества рандомить как перестанет идем дальше
    a:=concat(a,chr(tmp+48));
    m:=m + [tmp];
  end;
  zadaet:=a;  
end;
function biki(comp,num:string):integer;
var
  b:integer;
begin
  b:=0;
  for i:integer:=1 to 4 do
    if comp[i]=num[i] then
      inc(b);
  biki:=b;
end;

var
  num,comp:string;  
begin
  comp:=zadaet; // число робота
  writeln(comp);
  writeln('введите число');
  readln(num);
  writeln(biki(comp,num));
end.