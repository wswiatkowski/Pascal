program decAndBin;
uses crt;
var bin:string; dec:integer; key:char;

function binToDec(binr:string):integer;
var i:integer; dec:integer;
begin

        dec:=0;
        for i:=0 to length(binr)-1 do
        begin
                dec:=dec+(Ord(bin[length(bin)-i])-48)*(1 shl i);
        end;
        binToDec:=dec
end;

function decToBin(decr:integer):string;
var i:integer; zeroJeden:string;
begin
        repeat
                if (decr mod 2)=0 then zerojeden:='0'
                else zerojeden:='1';
                decToBin:= decToBin + zerojeden;
                decr:= decr div 2;
        until decr=0;
end;

Begin
writeln('(B)in or (D)ec?');
key:=readkey;
if key='b' then
        begin
                write('Bin:');
                read(bin);
                write(binToDec(bin));
                readkey;
        end;

if key='d' then
        begin
                write('Dec:');
                read(dec);
                write(decToBin(dec));
                readkey;
        end;
END.

