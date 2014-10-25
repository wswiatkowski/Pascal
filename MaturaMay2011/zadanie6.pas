program odp6;
uses crt;
var bin: array[1..1000] of string;
int: array[1..1000] of longint;
i,j,binLength,V:integer;
Code:word;
binString:string;
p1,p2:TEXT;

begin
assign(p1,'');
reset(p1);
readln(p1,bin[1]);
Val(bin[1],V,Code);
for i:=1 to 1000 do
        begin
                readln(p1,bin[i]);
                binLength:=Length(bin[i]);
                for j:=1 to binLength do
                binString:=bin[i];
                        begin

                                val(bin[i],V,Code);
                                write(bin[i]);
                                int[i]:=(longint(V*sqr(j)));
                        end;

        end;

//write(int[3]);

write(V);
readkey;
end.