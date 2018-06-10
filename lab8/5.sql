/*SZYMON BORTEL 283021*/
/*Zadanie 5*/

/*5.1*/
SELECT count(idklienta),miasto FROM klienci GROUP BY miasto;
/*5.2*/
SELECT * FROM 
(SELECT count(idklienta) AS liczba_klientow ,miasto FROM klienci GROUP BY miasto)
AS table1  WHERE liczba_klientow>10  ;
/*5.3*/
SELECT count(idklienta) FROM klienci WHERE nip IS NOT NULL;
/*5.4*/
/*zastanawiam się, czy nie można było tego zrobić jakoś prościej. O ile zrobienie zapytania ile klientów kupiło najtańszą/najdroższą kompozycję nie sprawiło mi problemu, tak
połączenie ich razem już nie było takie proste.*/
SELECT x.cenamax AS cenaMAX, y.cenamin AS cenaMIN  FROM 
(SELECT count(cena)AS cenamax from zamowienia WHERE cena=ANY(SELECT max(cena) AS cenamin from zamowienia)) as x,
(SELECT count(cena)AS cenamin from zamowienia WHERE cena=ANY(SELECT min(cena) from zamowienia)) as y; 