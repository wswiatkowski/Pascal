program liczby_pierwsze;

uses crt;

function pierwsze(liczba: longint): boolean;
var i,pom: longint;
begin
pom:=round(sqrt(liczba));
pierwsze:=true;
for i:=2 to pom do
   if liczba mod i = 0 then
   begin
   pierwsze:=false;
   exit;
   end;
end;


var i: longint;
    ile: longint;
    k: longint;
    plik: TEXT;
begin
clrscr;
ile:=0;
writeln('Do kt¢rej liczy† l. pierwsze?');
readln(k);
clrscr;
for i:=2 to k do
   if pierwsze(i) then
   begin
      writeln(i);
   inc(ile);
   end;
gotoxy(25,3); clreol;
writeln('W przedziale 1..',k,' jest ',ile,' liczb pierwszych.');




readln;
end.