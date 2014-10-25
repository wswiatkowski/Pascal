program PEeSEL;
uses crt;
var mm,rr,dd:integer;

function wybierarka:integer;
var c:char;
begin
clrscr;
gotoxy(20,12);
write('p - podaj pesel z klawiatury');
gotoxy(20,13);
writeln('w - wczytaj list© peseli z pliku .TXT');
gotoxy(20,14);
writeln('x - zakoäcz program');
c:=readkey;
IF c='p' THEN
wybierarka:=0;
IF c='w' THEN
wybierarka:=1;
IF c='x' THEN
halt;
end;

function ms(var mm:integer):string;

Begin
case mm of
     1: ms:='Stycznia ';
     2: ms:='Lutego ';
     3: ms:='Marca ';
     4: ms:='Kwietnia ';
     5: ms:='Maja ';
     6: ms:='Czerwca ';
     7: ms:='Lipca ';
     8: ms:='Sierpnia ';
     9: ms:='Wrze˜nia ';
     10: ms:='Pa«dziernika ';
     11: ms:='Listopada ';
     12: ms:='Grudnia ';

     End;
End;

function zklawiatury:string;
var lin:string; t,k,h,y,s,w,q,l,code:integer;
Begin
clrscr;
gotoxy(31,12);
write(#201#205,'Wprowad« PESEL',#205#187);
gotoxy(31,13);
write(#186);
gotoxy(48,13);
write(#186);
gotoxy(31,14);
write(#200#205#205#205#205#205#205#205#205#205#205#205#205#205#205#205#205#188);
gotoxy(35,13);
read(lin);
val(copy(lin,3,2),mm,code);
val(copy(lin,5,2),dd,code);
val(copy(lin,1,2),rr,code);
gotoxy(1,1);
write(lin);
write(' - ',dd,' ');
write(ms(mm));
rr:=rr+1900;
write(rr);
t:=0;

              For k:=1 to 10 do
              Begin
                   case k of
                        1: h:=1;
                        2: h:=3;
                        3: h:=7;
                        4: h:=9;
                        5: h:=1;
                        6: h:=3;
                        7: h:=7;
                        8: h:=9;
                        9: h:=1;
                        10: h:=3;
                        End;
                       val(copy(lin,k,1),s,code);
                       t:=t+s*h;
                  End;
                  t:=10-(t mod 10);
              val(copy(lin,11,1),y,code);
              IF t=y THEN
              write(' (PESEL POPRAWNY)')
              ELSE
              Begin
              write(' (PESEL NIEPOPRAWNY)');
              gotoxy(54,q);
              write('!');
              End;
             end;


function otwieranje:integer;
var lin,scz:string; var p:TEXT; var t,k,h,y,s,w,q,l,code:integer;
BEGIN
clrscr;
gotoxy(31,13);
write('podaj ˜cie¾k© dost©pu:');
gotoxy(27,14);
read(scz);
assign(p,scz);
reset(p);
clrscr;
for q:=1 to 20 do
BEGIN
readln(p,lin);
val(copy(lin,3,2),mm,code);
val(copy(lin,5,2),dd,code);
val(copy(lin,1,2),rr,code);
gotoxy(1,q);
write(lin);
write(' - ',dd,' ');
write(ms(mm));
rr:=rr+1900;
write(rr);
t:=0;

              For k:=1 to 10 do
              Begin
                   case k of
                        1: h:=1;
                        2: h:=3;
                        3: h:=7;
                        4: h:=9;
                        5: h:=1;
                        6: h:=3;
                        7: h:=7;
                        8: h:=9;
                        9: h:=1;
                        10: h:=3;
                        End;
                       val(copy(lin,k,1),s,code);
                       t:=t+s*h;
                  End;
                  t:=10-(t mod 10);
              val(copy(lin,11,1),y,code);
              IF t=y THEN
              write(' (PESEL POPRAWNY)')
              ELSE
              Begin
              write(' (PESEL NIEPOPRAWNY)');
              gotoxy(54,q);
              write('!');
              End;
end;
close(p);
End;


Begin
clrscr;
IF wybierarka=1 THEN
Begin
otwieranje;
ms(mm);
repeat until keypressed;
End
ELSE
Begin
zklawiatury;
repeat until keypressed;
END;
END.


