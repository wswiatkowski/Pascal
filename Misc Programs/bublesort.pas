program jarek;
uses crt;
var tmp,i,x:integer; tab:array[0..6] of integer;

Function sprawdzaj(a:array of integer):boolean;
begin
sprawdzaj:=False;
x:=0;
        for i:=1 to 6 do
        begin
                if a[i-1] <= a[i] then
                        x:=x+1;
        end;
if x = 6 then
sprawdzaj:= True;
end;

Procedure losuj;
begin
        randomize;
        for i := 0 to 6 do
        tab[i] := random(9);
end;

Procedure drukuj;
begin
        writeln();
        for i:=0 to 6 do
        begin
                write(tab[i]);
        end;
end;

begin
        losuj;
        drukuj;
        repeat
        for i:=1 to 6 do
        begin
                if tab[i-1] > tab[i] then
                begin
                        tmp:=tab[i-1];
                        tab[i-1]:=tab[i];
                        tab[i]:=tmp;
                end;

        end;

        until sprawdzaj(tab);
        drukuj;
        repeat until keypressed;
end.
