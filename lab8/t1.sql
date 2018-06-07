DELIMITER $$

CREATE TRIGGER jebaczycie3 BEFORE INSERT ON zamowienia
FOR EACH ROW BEGIN 
UPDATE kompozycje set kompozycje.stan=kompozycje.stan -1 where idkompozycji = new.idkompozycji;
IF (SELECT stan - minimum FROM kompozycje WHERE idkompozycji = NEW.idkompozycji) < 0
THEN UPDATE zapotrzebowanie SET ilosc=ilosc+1 ;
END IF;
END$$

INSERT INTO zamowienia(idzamowienia,idklienta,idodbiorcy,idkompozycji,termin,cena,zaplacone,uwagi) VALUES
(36,"A00001",1,"K0001","2018-01-05",40.00,true,"brak");

DELIMITER $$
CREATE TRIGGER jebaczycie4 BEFORE INSERT ON kompozycje
FOR EACH ROW BEGIN 
IF (SELECT stan FROM kompozycje WHERE idkompozycji = NEW.idkompozycji AND stan>minimum)
THEN DELETE FROM zapotrzebowanie WHERE idkompozycji = NEW.idkompozycji;
END IF;
END$$