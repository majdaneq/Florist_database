/*SZYMON BORTEL 283021*/
/*Zadanie 4*/

/*4.1*/
SELECT nazwa,cena FROM kompozycje 
ORDER BY cena ASC
LIMIT 3;
/*4.2*/
SELECT k.nazwa,k.cena 
FROM kompozycje k
NATURAL JOIN zamowienia z
JOIN klienci kl  USING (idklienta)
WHERE kl.miasto="Skawina";
/*4.3*/
SELECT k.nazwa,k.cena 
FROM kompozycje k
NATURAL JOIN zamowienia z
JOIN klienci kl  USING (idklienta)
WHERE kl.regon IS NOT NULL;
/*4.4*/
SELECT k.idkompozycji,k.cena from kompozycje k 
LEFT JOIN zamowienia z ON k.idkompozycji=z.idkompozycji 
WHERE z.idkompozycji IS NULL;

