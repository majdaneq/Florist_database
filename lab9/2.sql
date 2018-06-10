/*SZYMON BORTEL 283021*/
/*Zadanie 2*/

DELIMITER $$
CREATE TRIGGER jebaczycie4 AFTER UPDATE ON  kompozycje
FOR EACH ROW BEGIN 
IF (SELECT stan FROM kompozycje WHERE idkompozycji = NEW.idkompozycji AND stan>minimum)
THEN DELETE FROM zapotrzebowanie WHERE idkompozycji = NEW.idkompozycji;
END IF;
END$$

/*TESTOWANIE WYZWALACZA
UPDATE kompozycje SET stan=100 WHERE idkompozycji="K0001";
select * from kompozycje;
select * from zapotrzebowanie;
*/