program siuns;
uses graph, crt;
var k,t,i,z:integer;

begin
initgraph(k,t,'');

{rysowanie ukladu}
setbkcolor(green);
line(0, getmaxy div 2, getmaxx,getmaxy div 2);
line(getmaxx div 2, 0, getmaxx div 2, getmaxy);
outtextxy(getmaxx - 5, getmaxy div 2 - 3 ,'>');
outtextxy(getmaxx div 2 - 3, 0,'^');


setbkcolor(blue);
{sinus - wykres}
for i:=0 to getmaxx do
        begin
        putpixel(i+11,Trunc(getmaxy div 2 - 150 * sin(i/16)),34);
        delay(0);
        end;


readln;

closegraph;
end.
