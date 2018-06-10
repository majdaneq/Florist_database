/*SZYMON BORTEL 283021*/
/*Zadanie 7*/

CREATE VIEW dzial_wysylki AS 
SELECT ko.idkompozycji AS IDKompozycji,
kl.nazwa AS Nazwa_Klienta,
ko.nazwa AS Nazwa_Kompozycji,
od.miasto AS AdresMiasto_Odbiorcy,
od.kod AS AdresKod_Odbiorcy,
od.adres AS AdresUlica_Odbiorcy
FROM klienci kl NATURAL JOIN zamowienia z
JOIN kompozycje ko USING(idkompozycji)
JOIN odbiorcy  od USING(idodbiorcy);