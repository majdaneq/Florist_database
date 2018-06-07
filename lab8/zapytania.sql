/*Zadanie 2*/
INSERT INTO Kompozycje(idkompozycji,nazwa,opis,cena,minimum,stan)
VALUES
( "sup1", "Wspanialosci", "Wspaniale kwiaty", "wysoka", 4, 8);

INSERT INTO Klienci(idklienta,haslo,nazwa,miasto,kod,adres,email,telefon,fax,nip,regon)
VALUES
("msowins", "ms123", "Mariusz Sowinski", "Krakow", 30-054, "ul. Na Wykopie", "msowins@ufo.org"," (012) 563 42 89"," 606-129-14-63", "BRAK DANYCH",NULL);

DELETE FROM klienci WHERE idklienta="mbabik";

/*Zadanie 3*/
CREATE VIEW dzial_zamowien AS 
SELECT ko.idkompozycji AS IDKompozycji,
kl.nazwa AS Nazwa_Klienta,
ko.nazwa AS Nazwa_Kompozycji,
kl.adres AS Adres_Klienta
FROM klienci kl NATURAL JOIN zamowienia z
JOIN kompozycje ko USING(idkompozycji);

CREATE VIEW dzial_marketingu AS
SELECT kl.adres, kl.idklienta 
from klienci kl;

/*Zadanie 4*/
SELECT nazwa,cena FROM kompozycje 
ORDER BY cena DESC
LIMIT 3;

SELECT k.nazwa,k.cena 
FROM kompozycje k
NATURAL JOIN zamowienia z
JOIN klienci kl  USING (idklienta)
WHERE kl.miasto="Skawina";

SELECT k.nazwa,k.cena 
FROM kompozycje k
NATURAL JOIN zamowienia z
JOIN klienci kl  USING (idklienta)
WHERE kl.regon IS NOT NULL;

/*Zadanie 5*/

SELECT count(idklienta),miasto FROM klienci GROUP BY miasto;

SELECT * FROM 
(SELECT count(idklienta) AS liczba_klientow ,miasto FROM klienci GROUP BY miasto)
AS table1  WHERE liczba_klientow>10  ;

SELECT count(idklienta) FROM klienci WHERE nip IS NOT NULL;

/*Zadanie 6*/
SELECT sum(cena) FROM zamowienia;

SELECT round(avg(cena),2) FROM kompozycje  WHERE stan>0;

SELECT round(avg(zam),2),count(terminy) 
FROM (SELECT count(idzamowienia) AS zam,count(termin)AS terminy
FROM zamowienia GROUP BY termin )AS cc;

select count(idzamowienia),sum(cena),miasto
from zamowienia NATURAL JOIN odbiorcy  GROUP BY miasto;

select idkompozycji,nazwa from kompozycje where stan<(minimum+1);

SELECT count(idzamowienia), sum(cena), termin FROM zamowienia GROUP BY termin;

SELECT ROUND (avg(cena),2), termin FROM zamowienia GROUP BY termin