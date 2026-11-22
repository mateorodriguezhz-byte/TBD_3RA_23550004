USE taller_bd_uni_3;
DROP FUNCTION IF EXISTS sumatoria_while;

DELIMITER $$
CREATE FUNCTION sumatoria_while(numero INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE sumatoria INT DEFAULT 0;
    DECLARE cont INT DEFAULT 1;

    WHILE cont <= numero DO
        SET sumatoria = sumatoria + cont;
        SET cont = cont + 1;
    END WHILE;

    RETURN sumatoria;
END$$
DELIMITER ;