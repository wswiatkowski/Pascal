program odbyt;
uses crt;
var plaintext,klucz,szyfr:string;
    pLen,kLen,i,j:integer;
    p1,p2,p3:TEXT;

begin
        assign(p1,'');
        assign(p2,'');
        assign(p3,'');
        reset(p1);
        reset(p2);
        rewrite(p3);
        repeat
        readln(p1,plaintext);
        readln(p2,klucz);
        pLen:=length(plaintext);
        kLen:=length(klucz);
        szyfr:=(plaintext);
        if pLen>kLen then
                begin
                        for j:=1 to (pLen-kLen) do
                                begin
                                        klucz[j+kLen]:=klucz[j];
                                end;
                end;
        for i:=1 to pLen do
              begin
                if
                        ord(plaintext[i])+(ord(klucz[i])-64)>90 then
                        szyfr[i]:=chr(ord(plaintext[i])+(ord(klucz[i])-64)-26)
                        else szyfr[i]:=chr(ord(plaintext[i])+(ord(klucz[i])-64));

              End;

        writeln(p3,szyfr);
        until EOF(p1);
        close(p1);
        close(p2);
        readkey;



end.
