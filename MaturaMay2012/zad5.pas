program zadanie5;
uses crt;
var     tablicaInt:array[1..31, 1..31] of longint;
        i,j,highRow:integer;
        p,p1:TEXT;

begin
        for i:=1 to 30 do
                begin
                        tablicaInt[i,1]:=1;
                end;

        for i:=1 to 30 do
                begin
                        tablicaInt[i,i]:=1;
                end;
        for i:=1 to 30 do
                begin
                        for j:=1 to 30 do
                                begin
                                        if tablicaInt[i,j] >= 1 then
                                                begin
                                                        tablicaInt[i+1,j+1]:=ord(tablicaInt[i,j])+ord(tablicaInt[i,j+1]);
                                                end;
                                end;
                end;
//Odpowied« na podpunkt d)
assign(p,'');
rewrite(p);
                for i:=1 to 30 do
                        begin
                                writeln(p,' ');
                                for j:=1 to 30 do
                                        begin
                                                if ord(tablicaInt[i,j]) = 0 then
                                                        write(p,' ')
                                                        else
                                                        if ord(tablicaInt[i,j]) mod 3 <> 0 then
                                                                write(p,' ')
                                                        else
                                                                write(p,'*');
                                        end;
                        end;
close(p);
//Odpowiedzi na podpunkty a-c
assign(p1,'');
rewrite(p1);
for i:=1 to 2 do
        begin
                for j:=1 to 30 do
                        begin

                                                if tablicaInt[j,i*10] > highRow then
                                                highRow:=ord(tablicaInt[j,i*10]);
                        end;

                write(p1,highRow,' ');
                highRow:=0;
        end;
close(p1);

end.
