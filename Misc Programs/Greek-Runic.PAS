program trans_funkcje;
uses crt;
var ch:Char;

function jakaToGreckaLitera(znakLacinski:char):String;
    const
	greka:array[0..25] of String =
                           ('Alpha','Beta','Chi','Delta','Epsilon','Phi','Gamma','Theta','Eta','Iota','Kappa','Lambda',
                            'Mu','Nu','Omega','Pi','Omicron','Rho','Sigma','Tau','brak','Psi','brak','Xi','Upsilon','Zeta');
    var odpowiedz:String;
        wartoscZnaku:byte;

    begin
         wartoscZnaku:=Ord(znakLacinski);
         wartoscZnaku:=wartoscZnaku-ord('a'); {odejmujemy litere a = ASCII 96};
         odpowiedz:=greka[wartoscZnaku];
         jakaToGreckaLitera:=odpowiedz; {return value}
    end; {function jakaToGreckaLitera(znakLacinski:char):String}

function jakieToRuniczneZnaczenie(znakLacinski:char):String;
    const
         runy:array[0..25] of String =
                          ('one of the aesir (gods)','birch','brak','day','horse','wealth, cattle','gift',
                           'hail (the precipitation)','ice','year, good year, harvest','ulcer? (or *kenaz torch?)',
                           'water, lake (or possibly *laukaz leek)','Man','need','heritage, estate, possession',
                           'meaning unclear,perhaps pear-tree',
                           'brak','ride, journey','Sun','the god Tiwaz','aurochs (or *uram water/slag?)','äbrakö','joy',
                           'brak','brak','unclear, possibly elk');
    var odpowiedz:String;
        wartoscZnaku:byte;

    begin
         wartoscZnaku:=Ord(znakLacinski);
         wartoscZnaku:=wartoscZnaku-ord('a'); {odejmujemy litere a = ASCII 96};
         odpowiedz:=runy[wartoscZnaku];
         jakieToRuniczneZnaczenie:=odpowiedz; {return value}
    end; {function jakieToRuniczneZnaczenie(znakLacinski:char):String}

function sprawdzZnak(znak:Char):boolean;
const
     minDobryZnak:Char='a';
     maxDobryZnak:Char='z';

     begin
         writeln('Nacisnales ',ch,' i ma to wartosc ASCII ',Ord(ch));
         if ( ( Ord(znak)<Ord(minDobryZnak) ) or ( Ord(znak)>Ord(maxDobryZnak) ) )
         then
           begin
              writeln('Znak jest poza zakresem');
              sprawdzZnak:=false;
              exit;

           end;
           sprawdzZnak:=true;
     end;

begin
	repeat
	   ch:=ReadKey;
           if sprawdzZnak(ch)=true then
                      begin
	                   writeln('W greckim to jest:  ',jakaToGreckaLitera(ch));
                       writeln('W runicznym znaczy: ',jakieToRuniczneZnaczenie(ch));
                      end;
	until (ch='0');
end.

