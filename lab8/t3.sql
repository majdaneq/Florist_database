DELIMITER $$
CREATE TRIGGER jebaczycie4 BEFORE INSERT ON kompozycje
FOR EACH ROW BEGIN 
IF (SELECT stan FROM kompozycje WHERE idkompozycji = NEW.idkompozycji AND stan>minimum)
THEN DELETE FROM zapotrzebowanie WHERE idkompozycji = NEW.idkompozycji;
END IF;
END$$