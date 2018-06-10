drop trigger jebaczycie6
DELIMITER $$

CREATE TRIGGER jebaczycie6 BEFORE INSERT ON zamowienia
FOR EACH ROW 
BEGIN 
	update zamowienia set  cena=new.cena where idzamowienia=new.idzamowienia;
    UPDATE kompozycje set kompozycje.stan=kompozycje.stan -1 where idkompozycji = new.idkompozycji;
IF (SELECT stan - minimum FROM kompozycje WHERE idkompozycji = NEW.idkompozycji) < 0
     THEN UPDATE zapotrzebowanie SET ilosc=ilosc+1 WHERE idkompozycji=NEW.idkompozycji;		    
	
END IF;
END$$

