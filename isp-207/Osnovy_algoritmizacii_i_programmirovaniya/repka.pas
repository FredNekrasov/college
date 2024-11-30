Type
Worker = class
Private
Wname:string;
Power1, power2:integer;
Public
Constructor create (wname:string;power1,power2:integer);
Begin
Self.wname:=wname;
Self.power1:=power1;
Self.power2:=power2;
End;
Property workername:string read wname;
Function getpower():integer;
Begin
getpower:=random(power1,power2);
End;
End;
Var
Dedka:worker:=new worker('дедка',30,50);
Babka:worker:=new worker('бабка',10,30);
Vnuchka:worker:=new worker('внучка',10,20);
Zhuchka:worker:=new worker('жучка',5,10);
Koshka:worker:=new worker ('кошка',3,8);
Myshka:worker:=new worker ('мышка',1,4);
Repka:integer:=70;
Family:array [1..6] of worker;
Power:integer;
Begin
Family[1]:=dedka;
Family[2]:=babka;
Family [3]:=vnuchka;
Family [4]:=zhuchka;
Family [5]:=koshka;
Family [6]:=myshka;
Power:=0;
For i:integer:=1 to 6 do
Begin
Power:=0;
For j:integer:=i to 6 do
Begin
Power:=power+Family[j].getpower;
Writeln(Family [j].workername,' пришел');
End;
If repka<=power then
begin
writeln('вытянули репку');
Break;
End;
End;
End. 