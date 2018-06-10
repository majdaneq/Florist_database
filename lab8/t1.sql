DELIMITER $$

CREATE TRIGGER jebaczycie3 BEFORE INSERT ON zamowienia
FOR EACH ROW BEGIN 
UPDATE kompozycje set kompozycje.stan=kompozycje.stan -1 where idkompozycji = new.idkompozycji;
IF (SELECT stan - minimum FROM kompozycje WHERE idkompozycji = NEW.idkompozycji) < 0
THEN UPDATE zapotrzebowanie SET ilosc=ilosc+1 WHERE idkompozycji=NEW.idkompozycji;
END IF;
END$$

select * from zapotrzebowanie;

INSERT INTO zamowienia(idzamowienia,idklienta,idodbiorcy,idkompozycji,termin,cena,zaplacone,uwagi) VALUES
(45,"A00001",1,"K0002","2018-01-05",40.00,true,"brak");

select * from zapotrzebowanie;


select * from kompozycje;

select * from zapotrzebowanie;
DELIMITER $$
CREATE TRIGGER jebaczycie4 AFTER UPDATE ON  kompozycje
FOR EACH ROW BEGIN 
IF (SELECT stan FROM kompozycje WHERE idkompozycji = NEW.idkompozycji AND stan>minimum)
THEN DELETE FROM zapotrzebowanie WHERE idkompozycji = NEW.idkompozycji;
END IF;
END$$

UPDATE kompozycje SET stan=100 WHERE idkompozycji="K0001";

