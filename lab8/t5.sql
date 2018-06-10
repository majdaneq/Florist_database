drop procedure expire_procedure;

DELIMITER |
  CREATE PROCEDURE expire_procedure()
    BEGIN

	 UPDATE zamowienia set cena=cena*9;
 
    END;
|
DELIMITER ;