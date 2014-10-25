program kartofle;
uses crt;
var
        p1,p2,p3:TEXT;
        plaintext,klucz,szyfr:string;
        i,j,kLen,sLen:integer;

Begin
        assign(p1,'');
        assign(p2,'');
        assign(p3,'');
        reset(p1);
        reset(p2);
        rewrite(p3);
        plaintext:=('                       ');
        repeat
                readln(p1,szyfr);
                readln(p2,klucz);
                kLen:=0;
                sLen:=0;
                kLen:=length(klucz);
                sLen:=length(szyfr);
                if sLen>kLen then
                        begin
                                for i:=1 to (sLen-kLen) do
                                        begin
                                                klucz[i+kLen]:=klucz[i];
                                        end;
                        end;
                for j:=1 to sLen do
                        begin
                                if ord(szyfr[j])-(ord(klucz[j])-64) < 65 then
                                        begin
                                                plaintext[j]:=chr(ord(szyfr[j])-(ord(klucz[j])-64)+26)
                                        end
                                        else
                                        begin
                                                plaintext[j]:=chr(ord(szyfr[j])-(ord(klucz[j])-64));
                                        end;
                        end;
        writeln(p3,plaintext);
        plaintext:='                     ';
        until EOF(p1);
        close(p1);
        close(p2);
        close(p3);

END.

