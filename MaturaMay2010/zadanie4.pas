program szmelc;
uses crt;
var i,j,lenLine,lenWord:integer;
currLine: array[1..5] of string;
plik:string;
p1,p2:TEXT;

begin
assign(p1,'');
assign(p2,'');
reset(p1);
rewrite(p2);

repeat
        readln(p1,plik);
        lenLine:=length(plik);
        j:=1;
        for i:=1 to lenLine do
        begin

                        if plik[i] <> (#32) then
                                begin
                                        //writeln(j);
                                        //currLine[j][i]:=' ';
                                        currLine[j][i]:=plik[i];
                                        //write(p2,currLine[j]);
                                end
                        else
                                begin
                                        j:=j+1;
                                end;



        end;

for i:=1 to 5 do
begin

        //lenWord:=length(currLine[i]);
        write(p2,currLine[i]);
        for j:=1 to lenLine do
        begin
                if currLine[i][j] <> (#32) then
                begin
                write(p2,currLine[i][j]);
                end
                else
                break;

        end;

end;
writeln(p2,(#32));

until EOF(p1);
close(p2);
close(p1);

end.
