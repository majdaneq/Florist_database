/*SZYMON BORTEL 283021*/
/*Zadanie 3
Jeżeli istnieje już trigger na tabelę zamówienia powinniśmy go usunąć. 
Error Code: 1235. This version of MySQL doesn't yet support 'multiple triggers with the same action time and event for one table'
/*drop trigger Zadanie1;*/

DELIMITER $$

CREATE TRIGGER Zadanie3 BEFORE INSERT ON zamowienia 
	
FOR EACH ROW 
BEGIN 
	
    set new.cena =new.cena*0.9;
    	
    UPDATE kompozycje set kompozycje.stan=kompozycje.stan -1 where idkompozycji = new.idkompozycji;
IF (SELECT stan - minimum FROM kompozycje WHERE idkompozycji = NEW.idkompozycji) < 0
     THEN UPDATE zapotrzebowanie SET ilosc=ilosc+1 WHERE idkompozycji=NEW.idkompozycji;		    
	
END IF;

END$$


DELIMITER $$



