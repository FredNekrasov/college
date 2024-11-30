Program wolf_island;
Uses CRT;
Const
BG=22;
MN=20;
DL=500; {ms}
NumStep=300;
RandomAnimals=60;
RandomRabbitStep=9;
RandomRabbitCopy=5;
RandomNumber=5;
Environment:Array[1..8] of ShortInt=(-(BG+1),-(BG),-(BG-1),1,1,BG-1,BG,BG+1);

Type
BgArray=Array[1..BG, 1..BG] of ShortInt;
MainArray=Array[1..MN, 1..MN] of ShortInt;
StatArray=Array[1..MN*MN*3, 1..4] of ShortInt;
EditArray=Array[1..BG, 1..BG, 1..2] of Integer;
AccessArray=Array[1..9, 1..4] of Integer;

Var
B, R, W, SW:BgArray; {Background}
RE:MainArray; {Rabbit, Wolf, She-Wolf, REsult}
i:Integer;
Steps:Integer;
{статистика по всем животным}

{создание основы}
Function Background(Var T:BgArray):ShortInt;
Var i, j:Byte;
Begin
For i:=1 to BG do
For j:=1 to BG do
If (i=1) or (j=1) or (i=BG) or (j=BG) then
T[i,j]:=0 else T[i,j]:=1;
End;

{создание популяции}
Function NewArea(Var M:BgArray; T:BgArray; s:ShortInt):ShortInt;
Var i, j:Byte;
Begin
For i:=1 to BG do
For j:=1 to BG do
If s=0 then
If ((1+Random(RandomAnimals))=RandomNumber) and (T[i,j]=1) then M[i,j]:=1 else M[i,j]:=0
{else
If ((1+Random(RandomAnimals))=RandomNumber) and (BGSecure[i,j]=0) then M[i,j]:=1 else M[i,j]:=0;}
End;

{вывод итогового результата на экран}
Function PrintIsland(Var T:MainArray):ShortInt;
Var i, j:Byte;
Begin
For i:=1 to MN do
Begin
For j:=1 to MN do
Begin
Case T[i,j] of
1 : Begin TextColor(1); Write('R '); TextColor(7); End;
2 : Begin TextColor(2); Write('W '); TextColor(7); End;
3 : Begin TextColor(3); Write('S '); TextColor(7); End;
4 : Begin TextColor(5); Write('Z '); TextColor(7); End;
5 : Begin TextColor(6); Write('C '); TextColor(7); End;
6 : Begin TextColor(4); Write('G '); TextColor(7); End;
7 : Begin TextColor(14); Write('B '); TextColor(7); End;
else Begin TextColor(7); Write('O '); End;
End;
End;
WriteLn;
End;
End;

{обнуление значений резервационного массива}
Function NewEditedArray(Var S:EditArray):ShortInt;
Var i, j, k:Byte;
Begin
For i:=1 to BG do
For j:=1 to BG do
For k:=1 to 2 do S[i,j,k]:=0;
End;

{смещение массива доступности}
Function AccessReboot(Var A:AccessArray; s, Rnd:Byte):Integer;
Var i, z:Byte;
Begin
For z:=1 to 4 do A[Rnd,z]:=0;
If s>Rnd then
For i:=Rnd to s-1 do
For z:=1 to 4 do A[i,z]:=A[i+1,z];
For z:=1 to 4 do A[s,z]:=0;
End;

{сортировка массива доступности по заданному значению}
Function SortAccess(Var A:AccessArray; SortType, NumRows:Byte):ShortInt;
Var i, k:Byte;
Begin
k:=0;
For i:=1 to NumRows do
If A[i,SortType]=1 then
Begin
Inc(k);
A[k]:=A[i];
End;
End;

{передвижение}
Function Movement(i, j, Diap:Byte; Var Anim:BgArray; Var Edited:EditArray; Access:AccessArray):Integer;
Var Rnd:Byte;
Begin
Rnd:=1+Random(Diap);
Anim[(Access[Rnd,1]),(Access[Rnd,2])]:=1;
Anim[i,j]:=0;
Edited[(Access[Rnd,1]),(Access[Rnd,2]),2]:=1;
Edited[i,j,2]:=0;
End;

{кролики}
Procedure RabbitsLife(Var Rabbit:BgArray; Background:BgArray);
Var i, j, k:Byte;
s, Rnd:Integer;
NumPos, NumLine:Integer;
Access:AccessArray;
Edited:EditArray;
Begin
NewEditedArray(Edited);
For i:=1 to BG do
For j:=1 to BG do
If Rabbit[i,j]=1 then
Begin
For k:=1 to 8 do
For s:=1 to 4 do Access[k,s]:=0;

s:=0;
For k:=1 to 8 do
Begin
{точки новой позиции}
NumLine:=(i-1)*BG+j+Environment[k];
NumPos:=NumLine mod BG; {порядковый номер}
NumLine:=NumLine div BG; {номер строки}
If NumPos=0 then NumPos:=BG else NumLine:=NumLine+1;
If NumLine=0 then NumLine:=1;

{точки, доступные для перехода}
If (Background[NumLine,NumPos]=1) and (Rabbit[NumLine,NumPos]=0)
and ((Edited[NumLine,NumPos,1]=0) or (Edited[NumLine,NumPos,2]=0)) then
Begin
Inc(s);
Access[s,1]:=NumLine;
Access[s,2]:=NumPos;
End;
End;

{копия}
If (s>=1) and (1+Random(RandomRabbitCopy)=RandomNumber) and (Edited[i,j,1]=0) then
Begin
Rnd:=1+Random(s);
Rabbit[(Access[Rnd,1]),(Access[Rnd,2])]:=1;
Edited[(Access[Rnd,1]),(Access[Rnd,2]),1]:=1;
AccessReboot(Access, s, Rnd);
Dec(s);
End;
{переход}
If (s>0) and (1+Random(RandomRabbitStep)=RandomNumber) and (Edited[i,j,2]=0) then
Movement(i, j, s, Rabbit, Edited, Access);
End;
End;

{волки}
Procedure WolfsLife(Var Wolf, Rabbit, SheWolf:BgArray; Background:BgArray);
Var i, j, k, s, w, r:Byte;
Rnd, RndSex:Integer;
NumPos, NumLine:Integer;
Access:AccessArray;
Edited:EditArray;
Begin
NewEditedArray(Edited);
For i:=1 to BG do
For j:=1 to BG do
If Wolf[i,j]=1 then
Begin
For k:=1 to 8 do
For s:=1 to 4 do Access[k,s]:=0;

s:=0;
r:=0;
w:=0;

For k:=1 to 8 do
Begin
NumLine:=(i-1)*BG+j+Environment[k];
NumPos:=NumLine mod BG; {new j}
NumLine:=NumLine div BG; {new i}
If NumPos=0 then NumPos:=BG else NumLine:=NumLine+1;
If NumLine=0 then NumLine:=1;

If (Background[NumLine,NumPos]=1) and (Wolf[NumLine,NumPos]=0)
and ((Edited[NumLine,NumPos,1]=0) or (Edited[NumLine,NumPos,2]=0)) then
Begin
Inc(s);
Access[s,1]:=NumLine;
Access[s,2]:=NumPos;

If Rabbit[NumLine,NumPos]=1 then
Begin
Inc(r);
Access[s,3]:=1;
End;

If SheWolf[NumLine,NumPos]=1 then
Begin
Inc(w);
Access[s,4]:=1;
End;
End;
End;

{поедание кролика}
If Rabbit[i,j]=1 then
Begin
Rabbit[i,j]:=0;
{+1hp волку}

End;

If s>0 then
Begin
{создание потомства случайного пола}
If (SheWolf[i,j]=1) and (Edited[i,j,1]=0) then
Begin
Rnd:=1+Random(s);
RndSex:=1+Random(2);

If RndSex=1 then
Begin
Wolf[(Access[Rnd,1]),(Access[Rnd,2])]:=1;
Edited[(Access[Rnd,1]),(Access[Rnd,2]),1]:=1;
AccessReboot(Access, s, Rnd);
Dec(s);
End else
If Access[Rnd,4]=0 then
Begin
SheWolf[(Access[Rnd,1]),(Access[Rnd,2])]:=1;
AccessReboot(Access, s, Rnd);
Dec(s);
End;
End;

{гонимся за кроликом}
If (r>0) and (s>0) then
Begin
SortAccess(Access, 3, s);
Movement(i, j, r, Wolf, Edited, Access);
s:=0;
End;

{гонимся за волчицей}
If (w>0) and (s>0) then
Begin
SortAccess(Access, 4, s);
Movement(i, j, w, Wolf, Edited, Access);
s:=0;
End;

{передвигаемся}
If (s>0) and (Edited[i,j,2]=0) then Movement(i, j, s, Wolf, Edited, Access);
End;
End;
End;

{волчицы}
{
Procedure SheWolfsLife();
Var i, j;
Begin

End;
}

Procedure WolfIsland(Var Rabbit, Wolf, SheWolf:BgArray; Background:BgArray; Var Result:MainArray; Step:Integer);
Var i, j, r, d:Byte;
Begin
RabbitsLife(Rabbit, Background);
WolfsLife(Wolf, Rabbit, SheWolf, Background);
{
If SheWolf[i,j]=1 then SheWolfsLife(SheWolf, Rabbit, Background, i, j);
}

For i:=1 to MN do
For j:=1 to MN do
Begin
r:=i+1;
d:=j+1;
If (Rabbit[r,d]=1) and (Wolf[r,d]=0) and (SheWolf[r,d]=0) then Result[i,j]:=1
else If (Rabbit[r,d]=0) and (Wolf[r,d]=1) and (SheWolf[r,d]=0) then Result[i,j]:=2
else If (Rabbit[r,d]=0) and (Wolf[r,d]=0) and (SheWolf[r,d]=1) then Result[i,j]:=3
else If (Rabbit[r,d]=1) and (Wolf[r,d]=1) and (SheWolf[r,d]=0) then Result[i,j]:=4
else If (Rabbit[r,d]=1) and (Wolf[r,d]=0) and (SheWolf[r,d]=1) then Result[i,j]:=5
else If (Rabbit[r,d]=0) and (Wolf[r,d]=1) and (SheWolf[r,d]=1) then Result[i,j]:=6
else If (Rabbit[r,d]=1) and (Wolf[r,d]=1) and (SheWolf[r,d]=1) then Result[i,j]:=7
else Result[i,j]:=0;
End;

End;

Function NumPopulation(T:BgArray):Integer;
Var i, j:Byte;
k:Integer;
Begin
k:=0;
For i:=1 to BG do
For j:=1 to BG do
If T[i,j]=1 then Inc(k);

NumPopulation:=k;
End;

Begin
ClrScr;
Randomize;

Background(B);
NewArea(R, B, 0);
NewArea(W, B, 0);
NewArea(SW, B, 0);

Steps:=NumStep;

For i:=1 to Steps do
Begin
ClrScr;

WolfIsland(R, W, SW, B, RE, Steps);
PrintIsland(RE);
WriteLn('Шаг номер: ', i);
Write('Кролики: ', NumPopulation(R), ', волки: ', NumPopulation(W), ', волчицы: ', NumPopulation(SW));
Delay(DL);
End;
ReadLn;
End.