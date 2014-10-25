program bomble;
uses crt,graph;
var  r,j,p,i,x,y,q:integer;

Begin
randomize;
j:=detect;
initgraph(j,p,'');
repeat
Begin
x:=random(Getmaxx);
y:=random(getmaxy);
for i:=random(20) to random(100)+50 do
        Begin
                cleardevice;
                circle(x,y,i);
                delay(11);
        End;
End;
until keypressed;
closegraph;

END.
