program logomat;
uses CRT;

{------------- stale -----------}
const MAX_POZ=5;
type pozycjeArray=array[0..MAX_POZ,0..1] of byte;
const pozycje:pozycjeArray=(
(5,5),
(44,10),
(34,16),
(15,12),
(20,6),
(15,5)
);

const LOGO_SIZE_Y:byte=7; {ilosc elementow 0..7}
type logoArray=array[0..7] of String; {LOGO_SIZE_Y doesn't work in this place, so I've hardcoded 7 instead of LOGO_SIZE_Y.}
const LOGO:logoArray=(
{123456789012345678901234567890123456}
'                                    ',{0}
' _______    _______    _______    _ ',{1}
'(_______)  (_______)  (_______)  | |',{2}
' _     _    _  _  _    _   ___   | |',{3}
'| |   | |  | ||_|| |  | | (_  |  |_|',{4}
'| |___| |  | |   | |  | |___) |   _ ',{5}
' \_____/   |_|   |_|   \_____/   |_|',{6}
'                                    ' {7}
);


{------------- stale -----------}

var
	i:byte;
    logoSizeX:byte;

procedure zapytajUzyszkodnika(logoSizeY:byte);
var i:byte;
     BEGIN
          FOR i:=0 to logoSizeY DO
	      BEGIN
                   write('Podaj linie numer ',i,' z ',logoSizeY,' :');
                   readln(LOGO[i]);
              END;
     END;
procedure zapytajOPozycjexy(maxPozycjeXy:byte);
          BEGIN
               FOR i:=0 to maxPozycjeXy DO
                   BEGIN
                   write('Podaj pozycjeXY numer ',i,' z ',maxPozycjeXy,' wedˆug wzoru (PozX PozY)');
                   readln(pozycje[i,0],pozycje[i,1]);
                   END;
          END;

function maxDlugosc(zbiorStringow:array of String;wielkoscZbioru:byte):byte;
var i,max:byte;
    BEGIN
	max:=0;
	FOR i:=0 TO wielkoscZbioru DO
		IF  length(zbiorStringow[i])>max  THEN
			max:=length(zbiorStringow[i]);
        maxDlugosc:=max;
    END;

function czySieZmiesci(xs,ys,logoSizeX,logoSizeY:byte):Boolean;
    BEGIN
        IF ( (xs>80-logoSizeX) or (ys>25-logoSizeY) ) THEN {nie sprawdzam <0, bo byte=[0..255]}
			czySieZmiesci:=false
        ELSE
			czySieZmiesci:=true;
    END;
        { C/C++/Java/.net/.... void rysujLogo(xs,ys:byte) }

procedure rysujLogo(xs,ys,logoSizeX,logoSizeY:byte;logoParam:array of String;czyscic:boolean);
var m:byte;
BEGIN
	IF czySieZmiesci(xs,ys,logoSizeX,logoSizeY) THEN
		BEGIN
			IF czyscic THEN clrscr;
			FOR m:=0 TO logoSizeY DO
				BEGIN
					gotoxy(xs,ys+m);
					write(logoParam[m]);
				END;
			delay(100);
		END;

END;

function roundDown (y:real):integer;
BEGIN
     IF round(y)>y THEN
             roundDown:=round(y)-1
	 ELSE {round(y)<=y}
             roundDown:=round(y);
END;

procedure animateLinear (xStart,xEnd,yStart,yEnd:byte;logoParam:array of String);
var skokX,skokY:real;
    klatka,i,klatkaMax,x,y,logoSizeX:byte;
BEGIN
	IF xEnd-xStart>yEnd-yStart THEN
		BEGIN
		klatkaMax:=abs(xEnd-xStart);
		skokX:=1;
		skokY:=abs(yEnd-yStart)/abs(xEnd-xStart);
		END
	ELSE
		BEGIN
		klatkaMax:=abs(yEnd-yStart);
		skokY:=1;
		skokX:=abs(xEnd-xStart)/abs(yEnd-yStart);
		END;
	IF xStart>xEnd THEN
		skokX:=-skokX;

	IF yStart>yEnd THEN
		skokY:=-skokY;
	logoSizeX:=maxDlugosc(LOGO,LOGO_SIZE_Y);
	FOR klatka:=0 TO (klatkaMax-1) DO
		BEGIN
			x:=roundDown(xStart+skokX*klatka);
			y:=roundDown(yStart+skokY*klatka);
			rysujLogo(x,y,logoSizeX,LOGO_SIZE_Y,logoParam,true);
		End;
END;

{PETLA GLOWNA}
BEGIN
    clrscr;
	        FOR i:=0 TO MAX_POZ-1 DO
				animateLinear(pozycje[i,0],pozycje[i+1,0],pozycje[i,1],pozycje[i+1,1],LOGO);
    readkey;
END.
