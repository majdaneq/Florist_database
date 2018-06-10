/*SZYMON BORTEL 283021*/
/*Zapytanie 2.1 nie wykona się, poniewaz cena w tabeli kompozycja jest typu numeric - nie możemy do niej przypisać stringa
Error Code: 1366. Incorrect decimal value: 'wysoka' for column 'cena' at row 1
*/
/*Zad 2.1*/
INSERT INTO Kompozycje(idkompozycji,nazwa,opis,cena,minimum,stan)
VALUES
( "sup1", "Wspanialosci", "Wspaniale kwiaty", "wysoka", 4, 8);

/*Zad 2.2*/
INSERT INTO Klienci(idklienta,haslo,nazwa,miasto,kod,adres,email,telefon,fax,nip,regon)
VALUES
("msowins", "ms123", "Mariusz Sowinski", "Krakow", 30-054, "ul. Na Wykopie", "msowins@ufo.org"," (012) 563 42 89"," 606-129-14-63", "BRAK DANYCH",NULL);

/*Zad 2.3 Dodany wiersz o konkretnym id, aby pokazać, że delete działa*/
INSERT INTO Klienci(idklienta,haslo,nazwa,miasto,kod,adres,email,telefon,fax,nip,regon)
VALUES("mbabik", "ms123", "Mariusz Sowinski", "Krakow", 30-054, "ul. Na Wykopie", "msowins@ufo.org"," (012) 563 42 89"," 606-129-14-63", "BRAK DANYCH",NULL);
DELETE FROM klienci WHERE idklienta="mbabik";