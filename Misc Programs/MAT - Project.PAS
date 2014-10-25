program MAT2;
uses crt;
var s1,k1,p1,z1,s2,k2,p2,z2,dd,f,m,n,x,o,oc:longint;
label L1,L2,L3,L4,L5,L6,L7,L8,L9,L10;

{
 Program ma za zadanie obliczaÊ i analizowaÊ otrzymane
 przez uczniÛw punkty na lekcjach matematyki, a nastÍpnie zwracaÊ
 prognozowane oceny zgodnie ze szkolnym systemem oceniania.
}
BEGIN
textbackground(black);

m:=1;

repeat
clrscr;

gotoxy(m,5);
writeln(' ±±±±±±±±±±±±±±±±±±±      ±±±±±±±±±±±    ±±±±±±±±±±±±±±±  ±±±± ');
gotoxy(m,6);
writeln(' ±±±      ±±      ±±    ±±±±±±±±±±±±±±±   ±±±±±±±±±±±±        ±');
gotoxy(m,7);
writeln(' ±±±      ±±      ±±±  ±±±           ±±±       ±±±         ±±±');
gotoxy(m,8);
writeln(' ±±±      ±±      ±±±  ±±±           ±±±       ±±±        ±');
gotoxy(m,9);
writeln('±±±±      ±±      ±±±  ±±±±±±±±±±±±±±±±±       ±±±         ±±±±');
gotoxy(m,10);
writeln('±±±±      ±±      ±±±  ±±±           ±±±       ±±±');
gotoxy(m,11);
writeln('±±±±     ±±±±     ±±±  ±±            ±±±       ±±±');
gotoxy(m,12);
writeln('±±±±     ±±±±     ±±±  ±±             ±±        ±±');

m:=m+1;
gotoxy(m-1,13);
textcolor(7);
writeln('(c)2011 werty240');

delay(110);

until m=19;

sound(310);
delay(250);
nosound;

L1:;
textbackground(1);
{Sprawdzian 1}
clrscr;
{Tabelka}
gotoxy(64,3);
textcolor(7);
write(#201#205#205#205#205#205#205#205#205#205#205#205#205#205#187);
f:=4;
repeat
gotoxy(64,f);
write(#186);
gotoxy(78,f);
write(#186);
f:=f+1;
until f=23;
gotoxy(64,23);
write(#200#205#205#205#205#205#205#205#205#205#205#205#205#205#188);
gotoxy(66,5);
write('S1=',s1,'p/28p');
gotoxy(66,7);
write('K1=',k1,'p/40p');
gotoxy(66,9);
write('P1=',p1,'p/10p');
gotoxy(66,11);
write('Z1=',z1,'p/05p');
gotoxy(66,13);
write('S2=',s2,'p/28p');
gotoxy(66,15);
write('K2=',k2,'p/40p');
gotoxy(66,17);
write('P2=',p2,'p/10p');
gotoxy(66,19);
write('Z2=',z2,'p/05p');
gotoxy(66,21);
write('DD=',DD,'p/xxp');
{Text}
textcolor(7);
gotoxy(3,24);
write('* Jeòli Jeszcze Si© Nie Odbyào Wpisz Liczb© Ujemn•');
textcolor(15);
gotoxy(13,7);
write('Podaj Liczb© Punkt¢w Z Pierwszego Sprawdzianu:');
gotoxy(15,9);
write('p/28p');
gotoxy(13,9);
read(s1);
{Sprawdzenie}
IF s1<0 THEN
BEGIN
x:=166;
s1:=0;
goto L9;
END;

IF s1>28 THEN
BEGIN
sound(2200);
delay(100);
nosound;
clrscr;
gotoxy(27,12);
write('Bù§D! ',s1,' Jest Wi©ksze Od 28.');
s1:=0;
delay(4000);
goto L1;

END;


{Klas¢wka 1}
L2:;
clrscr;
{Tabelka}
gotoxy(64,3);
textcolor(7);
write(#201#205#205#205#205#205#205#205#205#205#205#205#205#205#187);
f:=4;
repeat
gotoxy(64,f);
write(#186);
gotoxy(78,f);
write(#186);
f:=f+1;
until f=23;
gotoxy(64,23);
write(#200#205#205#205#205#205#205#205#205#205#205#205#205#205#188);
gotoxy(66,5);
write('S1=',s1,'p/28p');
gotoxy(66,7);
write('K1=',k1,'p/40p');
gotoxy(66,9);
write('P1=',p1,'p/10p');
gotoxy(66,11);
write('Z1=',z1,'p/05p');
gotoxy(66,13);
write('S2=',s2,'p/28p');
gotoxy(66,15);
write('K2=',k2,'p/40p');
gotoxy(66,17);
write('P2=',p2,'p/10p');
gotoxy(66,19);
write('Z2=',z2,'p/05p');
gotoxy(66,21);
write('DD=',DD,'p/xxp');
{Text}
textcolor(7);
gotoxy(3,24);
write('* Jeòli Jeszcze Si© Nie Odbyào Wpisz Liczb© Ujemn•');
textcolor(15);
gotoxy(13,7);
write('Podaj Liczb© Punkt¢w Z Pierwszej Klas¢wki:');
gotoxy(15,9);
write('p/40p');
gotoxy(13,9);
read(k1);
{Sprawdzenie}
IF k1<0 THEN
BEGIN
x:=138;
k1:=0;
goto L9;
END;

IF k1>40 THEN
BEGIN
sound(2200);
delay(100);
nosound;
clrscr;
gotoxy(27,12);
write('Bù§D! ',k1,' Jest Wi©ksze Od 40.');
k1:=0;
delay(4000);
goto L2;

END;

{Powt¢rka 1}
L3:;
clrscr;
{Tabelka}
gotoxy(64,3);
textcolor(7);
write(#201#205#205#205#205#205#205#205#205#205#205#205#205#205#187);
f:=4;
repeat
gotoxy(64,f);
write(#186);
gotoxy(78,f);
write(#186);
f:=f+1;
until f=23;
gotoxy(64,23);
write(#200#205#205#205#205#205#205#205#205#205#205#205#205#205#188);
gotoxy(66,5);
write('S1=',s1,'p/28p');
gotoxy(66,7);
write('K1=',k1,'p/40p');
gotoxy(66,9);
write('P1=',p1,'p/10p');
gotoxy(66,11);
write('Z1=',z1,'p/05p');
gotoxy(66,13);
write('S2=',s2,'p/28p');
gotoxy(66,15);
write('K2=',k2,'p/40p');
gotoxy(66,17);
write('P2=',p2,'p/10p');
gotoxy(66,19);
write('Z2=',z2,'p/05p');
gotoxy(66,21);
write('DD=',DD,'p/xxp');
{Text}
textcolor(7);
gotoxy(3,24);
write('* Jeòli Jeszcze Si© Nie Odbyào Wpisz Liczb© Ujemn•');
textcolor(15);
gotoxy(13,7);
write('Podaj Liczb© Punkt¢w Z Pierwszej Powt¢rki:');
gotoxy(15,9);
write('p/10p');
gotoxy(13,9);
read(p1);
{Sprawdzenie}
IF p1<0 THEN
BEGIN
x:=98;
p1:=0;
goto L9;
END;

IF p1>10 THEN
BEGIN
sound(2200);
delay(100);
nosound;
clrscr;
gotoxy(27,12);
write('Bù§D! ',p1,' Jest Wi©ksze Od 10.');
p1:=0;
delay(4000);
goto L3;

END;

{Zeszyt 1}
L4:;
clrscr;
{Tabelka}
gotoxy(64,3);
textcolor(7);
write(#201#205#205#205#205#205#205#205#205#205#205#205#205#205#187);
f:=4;
repeat
gotoxy(64,f);
write(#186);
gotoxy(78,f);
write(#186);
f:=f+1;
until f=23;
gotoxy(64,23);
write(#200#205#205#205#205#205#205#205#205#205#205#205#205#205#188);
gotoxy(66,5);
write('S1=',s1,'p/28p');
gotoxy(66,7);
write('K1=',k1,'p/40p');
gotoxy(66,9);
write('P1=',p1,'p/10p');
gotoxy(66,11);
write('Z1=',z1,'p/05p');
gotoxy(66,13);
write('S2=',s2,'p/28p');
gotoxy(66,15);
write('K2=',k2,'p/40p');
gotoxy(66,17);
write('P2=',p2,'p/10p');
gotoxy(66,19);
write('Z2=',z2,'p/05p');
gotoxy(66,21);
write('DD=',DD,'p/xxp');
{Text}
textcolor(7);
gotoxy(3,24);
write('* Jeòli Jeszcze Si© Nie Odbyào Wpisz Liczb© Ujemn•');
textcolor(15);
gotoxy(13,7);
write('Podaj Liczb© Punkt¢w Z Pierwszego Zeszytu');
gotoxy(15,9);
write('p/05p');
gotoxy(13,9);
read(z1);
{Sprawdzenie}
IF z1<0 THEN
BEGIN
x:=88;
z1:=0;
goto L9;
END;

IF z1>5 THEN
BEGIN
sound(2200);
delay(100);
nosound;
clrscr;
gotoxy(27,12);
write('Bù§D! ',z1,' Jest Wi©ksze Od 5.');
z1:=0;
delay(4000);
goto L4;

END;

{Sprawdzian 2}
L5:;
clrscr;
{Tabelka}
gotoxy(64,3);
textcolor(7);
write(#201#205#205#205#205#205#205#205#205#205#205#205#205#205#187);
f:=4;
repeat
gotoxy(64,f);
write(#186);
gotoxy(78,f);
write(#186);
f:=f+1;
until f=23;
gotoxy(64,23);
write(#200#205#205#205#205#205#205#205#205#205#205#205#205#205#188);
gotoxy(66,5);
write('S1=',s1,'p/28p');
gotoxy(66,7);
write('K1=',k1,'p/40p');
gotoxy(66,9);
write('P1=',p1,'p/10p');
gotoxy(66,11);
write('Z1=',z1,'p/05p');
gotoxy(66,13);
write('S2=',s2,'p/28p');
gotoxy(66,15);
write('K2=',k2,'p/40p');
gotoxy(66,17);
write('P2=',p2,'p/10p');
gotoxy(66,19);
write('Z2=',z2,'p/05p');
gotoxy(66,21);
write('DD=',DD,'p/xxp');
{Text}
textcolor(7);
gotoxy(3,24);
write('* Jeòli Jeszcze Si© Nie Odbyào Wpisz Liczb© Ujemn•');
textcolor(15);
gotoxy(13,7);
write('Podaj Liczb© Punkt¢w Z Drugiego Sprawdzianu');
gotoxy(15,9);
write('p/28p');
gotoxy(13,9);
read(s2);
{Sprawdzenie}
IF s2<0 THEN
BEGIN
x:=83;
s2:=0;
goto L9;
END;

IF s2>28 THEN
BEGIN
sound(2200);
delay(100);
nosound;
clrscr;
gotoxy(27,12);
write('Bù§D! ',s2,' Jest Wi©ksze Od 28.');
s2:=0;
delay(4000);
goto L5;

END;

{Klas¢wka 2}
L6:;
clrscr;
{Tabelka}
gotoxy(64,3);
textcolor(7);
write(#201#205#205#205#205#205#205#205#205#205#205#205#205#205#187);
f:=4;
repeat
gotoxy(64,f);
write(#186);
gotoxy(78,f);
write(#186);
f:=f+1;
until f=23;
gotoxy(64,23);
write(#200#205#205#205#205#205#205#205#205#205#205#205#205#205#188);
gotoxy(66,5);
write('S1=',s1,'p/28p');
gotoxy(66,7);
write('K1=',k1,'p/40p');
gotoxy(66,9);
write('P1=',p1,'p/10p');
gotoxy(66,11);
write('Z1=',z1,'p/05p');
gotoxy(66,13);
write('S2=',s2,'p/28p');
gotoxy(66,15);
write('K2=',k2,'p/40p');
gotoxy(66,17);
write('P2=',p2,'p/10p');
gotoxy(66,19);
write('Z2=',z2,'p/05p');
gotoxy(66,21);
write('DD=',DD,'p/xxp');
{Text}
textcolor(7);
gotoxy(3,24);
write('* Jeòli Jeszcze Si© Nie Odbyào Wpisz Liczb© Ujemn•');
textcolor(15);
gotoxy(13,7);
write('Podaj Liczb© Punkt¢w Z Drugiej Klas¢wki');
gotoxy(15,9);
write('p/40p');
gotoxy(13,9);
read(k2);
{Sprawdzenie}
IF k2<0 THEN
BEGIN
x:=55;
k2:=0;
goto L9;
END;

IF k2>40 THEN
BEGIN
sound(2200);
delay(100);
nosound;
clrscr;
gotoxy(27,12);
write('Bù§D! ',k2,' Jest Wi©ksze Od 40.');
k2:=0;
delay(4000);
goto L6;

END;

{Powt¢rka 2}
L7:;
clrscr;
{Tabelka}
gotoxy(64,3);
textcolor(7);
write(#201#205#205#205#205#205#205#205#205#205#205#205#205#205#187);
f:=4;
repeat
gotoxy(64,f);
write(#186);
gotoxy(78,f);
write(#186);
f:=f+1;
until f=23;
gotoxy(64,23);
write(#200#205#205#205#205#205#205#205#205#205#205#205#205#205#188);
gotoxy(66,5);
write('S1=',s1,'p/28p');
gotoxy(66,7);
write('K1=',k1,'p/40p');
gotoxy(66,9);
write('P1=',p1,'p/10p');
gotoxy(66,11);
write('Z1=',z1,'p/05p');
gotoxy(66,13);
write('S2=',s2,'p/28p');
gotoxy(66,15);
write('K2=',k2,'p/40p');
gotoxy(66,17);
write('P2=',p2,'p/10p');
gotoxy(66,19);
write('Z2=',z2,'p/05p');
gotoxy(66,21);
write('DD=',DD,'p/xxp');
{Text}
textcolor(7);
gotoxy(3,24);
write('* Jeòli Jeszcze Si© Nie Odbyào Wpisz Liczb© Ujemn•');
textcolor(15);
gotoxy(13,7);
write('Podaj Liczb© Punkt¢w Z Drugiej Powt¢rki');
gotoxy(15,9);
write('p/10p');
gotoxy(13,9);
read(p2);
{Sprawdzenie}
IF p2<0 THEN
BEGIN
x:=15;
p2:=0;
goto L9;
END;

IF p2>10 THEN
BEGIN
sound(2200);
delay(100);
nosound;
clrscr;
gotoxy(27,12);
write('Bù§D! ',p2,' Jest Wi©ksze Od 10.');
p2:=0;
delay(4000);
goto L7;

END;

{Zeszyt 2}
L8:;
clrscr;
{Tabelka}
gotoxy(64,3);
textcolor(7);
write(#201#205#205#205#205#205#205#205#205#205#205#205#205#205#187);
f:=4;
repeat
gotoxy(64,f);
write(#186);
gotoxy(78,f);
write(#186);
f:=f+1;
until f=23;
gotoxy(64,23);
write(#200#205#205#205#205#205#205#205#205#205#205#205#205#205#188);
gotoxy(66,5);
write('S1=',s1,'p/28p');
gotoxy(66,7);
write('K1=',k1,'p/40p');
gotoxy(66,9);
write('P1=',p1,'p/10p');
gotoxy(66,11);
write('Z1=',z1,'p/05p');
gotoxy(66,13);
write('S2=',s2,'p/28p');
gotoxy(66,15);
write('K2=',k2,'p/40p');
gotoxy(66,17);
write('P2=',p2,'p/10p');
gotoxy(66,19);
write('Z2=',z2,'p/05p');
gotoxy(66,21);
write('DD=',DD,'p/xxp');
{Text}
textcolor(7);
gotoxy(3,24);
write('* Jeòli Jeszcze Si© Nie Odbyào Wpisz Liczb© Ujemn•');
textcolor(15);
gotoxy(13,7);
write('Podaj Liczb© Punkt¢w Z Drugiego Zeszytu');
gotoxy(15,9);
write('p/05p');
gotoxy(13,9);
read(z2);
{Sprawdzenie}
IF z2<0 THEN
BEGIN
x:=5;
z2:=0;
goto L9;
END;

IF z2>5 THEN
BEGIN
sound(2200);
delay(100);
nosound;
clrscr;
gotoxy(27,12);
write('Bù§D! ',z2,' Jest Wi©ksze Od 5.');
z2:=0;
delay(4000);
goto L8;

END;

{Punkty Dodatkowe}
L9:;

clrscr;
{Tabelka}
gotoxy(64,3);
textcolor(7);
write(#201#205#205#205#205#205#205#205#205#205#205#205#205#205#187);
f:=4;
repeat
gotoxy(64,f);
write(#186);
gotoxy(78,f);
write(#186);
f:=f+1;
until f=23;
gotoxy(64,23);
write(#200#205#205#205#205#205#205#205#205#205#205#205#205#205#188);
gotoxy(66,5);
write('S1=',s1,'p/28p');
gotoxy(66,7);
write('K1=',k1,'p/40p');
gotoxy(66,9);
write('P1=',p1,'p/10p');
gotoxy(66,11);
write('Z1=',z1,'p/05p');
gotoxy(66,13);
write('S2=',s2,'p/28p');
gotoxy(66,15);
write('K2=',k2,'p/40p');
gotoxy(66,17);
write('P2=',p2,'p/10p');
gotoxy(66,19);
write('Z2=',z2,'p/05p');
gotoxy(66,21);
write('DD=',DD,'p/xxp');
{Text}
textcolor(15);
gotoxy(13,7);
write('Podaj Liczb© Punkt¢w Dodatkowych');
gotoxy(15,9);
write('p/xxp');
gotoxy(13,9);
read(dd);


{Wyniki}
clrscr;
write('Wszystkie Wyniki');
n:=5;

gotoxy(5,3);
write('Obecny Wynik:');
gotoxy(5,5);
write('∫    NDST      ∫   DOP  ∫   DST   ∫    DB   ∫ BDB∫');

repeat
gotoxy(n,6);
write(#219);
n:=n+1;
{sound(n*190);}
delay(100);
nosound;
until n=round(((s1+k1+p1+z1+s2+k2+p2+z2+dd+10)/(176+dd)*50)+5);


IF n<=13 THEN
BEGIN
gotoxy(5,7);
write((s1+k1+p1+z1+s2+k2+p2+z2+dd+10)/(176+dd)*100:2:2,'%');
END;

IF n>13 THEN
BEGIN
n:=round(n/(2)-1);
gotoxy(n,6);
write((s1+k1+p1+z1+s2+k2+p2+z2+dd+10)/(176+dd)*100:2:2,'%');
END;

gotoxy(46,7);
write(s1+k1+p1+z1+s2+k2+p2+z2+dd+10,'p/',176+dd,'p');

IF x>0 THEN
BEGIN
gotoxy(5,9);
write('Maksymalny Prognozowany Wynik:');
n:=5;
gotoxy(5,11);
write('∫    NDST      ∫   DOP  ∫   DST   ∫    DB   ∫ BDB∫');

repeat
gotoxy(n,12);
write(#219);
n:=n+1;
{sound(n*190);}
delay(100);
nosound;
until n=round(((s1+k1+p1+z1+s2+k2+p2+z2+dd+10+x)/(176+dd)*50)+5);


IF n<=12 THEN
BEGIN
gotoxy(5,13);
write(((s1+k1+p1+z1+s2+k2+p2+z2+dd+10+x)/(176+dd)*100):2:2,'%');
END;

IF n>13 THEN
BEGIN
n:=round(n/(2)-1);
gotoxy(n,12);
write(((s1+k1+p1+z1+s2+k2+p2+z2+dd+10+x)/(176+dd)*100):2:2,'%');
END;

gotoxy(46,13);
write(s1+k1+p1+z1+s2+k2+p2+z2+dd+10+x,'p/',176+dd,'p');

gotoxy(5,15);
write('óredni Prognozowany Wynik:');
n:=5;
x:=round(x*0.5);
gotoxy(5,17);
write('∫    NDST      ∫   DOP  ∫   DST   ∫    DB   ∫ BDB∫');

repeat
gotoxy(n,18);
write(#219);
n:=n+1;
{sound(n*190);}
delay(100);
nosound;
until n=round(((s1+k1+p1+z1+s2+k2+p2+z2+dd+10+x)/(176+dd)*50)+5);


IF n<=12 THEN
BEGIN
gotoxy(5,19);
write(((s1+k1+p1+z1+s2+k2+p2+z2+dd+10+x)/(176+dd)*100):2:2,'%');
END;

IF n>13 THEN
BEGIN
n:=round(n/(2)-1);
gotoxy(n,18);
write(((s1+k1+p1+z1+s2+k2+p2+z2+dd+10+x)/(176+dd)*100):2:2,'%');
END;

gotoxy(46,19);
write(s1+k1+p1+z1+s2+k2+p2+z2+dd+10+x,'p/',176+dd,'p');
END;


textcolor(15);

{Tabelka}
gotoxy(64,3);
textcolor(15);
write(#201#205#205#205#205#205#205#205#205#205#205#205#205#205#187);
f:=4;
repeat
gotoxy(64,f);
write(#186);
gotoxy(78,f);
write(#186);
f:=f+1;
until f=23;
gotoxy(64,23);
write(#200#205#205#205#205#205#205#205#205#205#205#205#205#205#188);
gotoxy(66,5);
write('S1=',s1,'p/28p');
gotoxy(66,7);
write('K1=',k1,'p/40p');
gotoxy(66,9);
write('P1=',p1,'p/10p');
gotoxy(66,11);
write('Z1=',z1,'p/05p');
gotoxy(66,13);
write('S2=',s2,'p/28p');
gotoxy(66,15);
write('K2=',k2,'p/40p');
gotoxy(66,17);
write('P2=',p2,'p/10p');
gotoxy(66,19);
write('Z2=',z2,'p/05p');
gotoxy(66,21);
write('DD=',DD,'p/xxp');

gotoxy(62,24);
write('(c) 2011 werty240');

gotoxy(5,22);
write('Wciònij Dowlony Klawisz, Aby KontynuowaÜ');

readkey;

{Wyniki cz. 2}

clrscr;

gotoxy(1,1);
write('Wszystkie Wyniki (cd.)');

gotoxy(5,4);
write('W S1,K1,P1,Z1 Uzyskano W Sumie:');

textcolor(lightgreen);
gotoxy(36,4);
write(s1+k1+p1+z1,'p');

gotoxy(5,6);
textcolor(white);
write('W S2,K2,P2,Z2 Uzyskano W Sumie:');

textcolor(lightmagenta);
gotoxy(36,6);
write(s2+k2+p2+z2,'p');

n:=5;
o:=55;

repeat
gotoxy(o,8);
textcolor(lightmagenta);
write(#219);
o:=o-1;
delay(5);
until o=5;

repeat
gotoxy(n,8);
textcolor(lightgreen);
write(#219);
n:=n+1;
delay(15);
until n=round(((s1+k1+p1+z1)/(s1+k1+p1+z1+s2+k2+p2+z2)*50)+6);

gotoxy(5,9);
write((s1+k1+p1+z1)/(s1+k1+p1+z1+s2+k2+p2+z2)*100:2:2,'%');

gotoxy(50,9);
textcolor(lightmagenta);
write((s2+k2+p2+z2)/(s1+k1+p1+z1+s2+k2+p2+z2)*100:2:2,'%');

n:=5;
textcolor(white);
IF x<=15 THEN
BEGIN
gotoxy(5,11);
write('Ze Wszystkich Sprawdzian¢w Uzyskano ',((s1+s2)/56)*100:2:2,'% Moæliwych Punkt¢w.');
gotoxy(5,12);
write(#186);
gotoxy(55,12);
write(#186);
repeat
gotoxy(n,13);
write(#219);
n:=n+1;
until n=round(((s1+s2)/56)*50+6);
gotoxy(5,14);
write(s1+s2,'p/56p');
END;

n:=5;
textcolor(white);
IF x<=55 THEN
BEGIN
gotoxy(5,16);
write('Ze Wszystkich Klas¢wek Uzyskano ',((k1+k2)/80)*100:2:2,'% Moæliwych Punkt¢w.');
gotoxy(5,17);
write(#186);
gotoxy(55,17);
write(#186);
repeat
gotoxy(n,18);
write(#219);
n:=n+1;
until n=round(((k1+k2)/80)*50+6);
gotoxy(5,19);
write(k1+k2,'p/80p');
END;

n:=5;
textcolor(white);
IF x<=55 THEN
BEGIN
gotoxy(5,21);
write('Ze Wszystkich Zeszyt¢w Uzyskano ',((z1+z2)/10)*100:2:2,'% Moæliwych Punkt¢w.');
gotoxy(5,22);
write(#186);
gotoxy(55,22);
write(#186);
repeat
gotoxy(n,23);
write(#219);
n:=n+1;
until n=round(((z1+z2)/10)*50+6);
gotoxy(5,24);
write(z1+z2,'p/10p');
END;

gotoxy(35,25);
write('Wciònij Dowlony Klawisz, Aby KontynuowaÜ');
readkey;

IF x=0 THEN halt;

{Wyniki cz.3}
L10:;
clrscr;

END.