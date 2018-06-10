/*SZYMON BORTEL 283021*/
/*Zadanie 6*/

/*6.1*/
SELECT sum(cena) FROM zamowienia;

/*6.2*/
SELECT round(avg(cena),2) FROM kompozycje  WHERE stan>0;

/*6.3*/
SELECT round(avg(zam),2)
FROM (SELECT count(idzamowienia) AS zam,count(termin)AS terminy
FROM zamowienia GROUP BY termin )AS cc;

/*6.4*/
select count(idzamowienia),sum(cena),miasto
from zamowienia NATURAL JOIN odbiorcy  GROUP BY miasto;


/*6.5*/
select idkompozycji,nazwa from kompozycje where stan<(minimum+1);

/*6.6*/
SELECT count(idzamowienia), sum(cena), termin FROM zamowienia GROUP BY termin;

/*6.7*/
SELECT ROUND (avg(cena),2), termin FROM zamowienia GROUP BY termin