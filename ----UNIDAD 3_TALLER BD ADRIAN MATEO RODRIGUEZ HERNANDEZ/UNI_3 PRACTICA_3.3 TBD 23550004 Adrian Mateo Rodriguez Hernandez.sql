USE taller_bd_uni_3;
DROP FUNCTION IF EXISTS sumatoria_repeat;

DELIMITER $$
CREATE FUNCTION sumatoria_repeat(numero INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE sumatoria INT DEFAULT 0;
    DECLARE cont INT DEFAULT 1;

    REPEAT
        SET sumatoria = sumatoria + cont;
        SET cont = cont + 1;
    UNTIL cont > numero
    END REPEAT;

    RETURN sumatoria;
END$$
DELIMITER ;