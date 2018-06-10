/*SZYMON BORTEL 283021*/
/*Zadanie 1*/

DELIMITER $$

CREATE TRIGGER Zadanie1 BEFORE INSERT ON zamowienia
FOR EACH ROW 
BEGIN 
    UPDATE kompozycje set kompozycje.stan=kompozycje.stan -1 where idkompozycji = new.idkompozycji;
IF (SELECT stan - minimum FROM kompozycje WHERE idkompozycji = NEW.idkompozycji) < 0
     THEN UPDATE zapotrzebowanie SET ilosc=ilosc+1 WHERE idkompozycji=NEW.idkompozycji;		    
	
END IF;
END$$


/*TESTOWANIE WYZWALACZA
select * from zapotrzebowanie;
select * from zamowienia;

INSERT INTO zamowienia(idzamowienia,idklienta,idodbiorcy,idkompozycji,termin,cena,zaplacone,uwagi) VALUES
(152,"A00001",1,"K0002","2018-01-05",40.00,true,"brak");

select * from zapotrzebowanie;
select * from zamowienia;
*/