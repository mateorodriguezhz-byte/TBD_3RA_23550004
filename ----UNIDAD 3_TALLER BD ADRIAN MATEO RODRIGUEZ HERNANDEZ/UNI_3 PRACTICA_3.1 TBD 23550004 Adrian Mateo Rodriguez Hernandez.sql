USE taller_bd_uni_3;
DROP FUNCTION IF EXISTS sumatoria_loop;

DELIMITER $$
CREATE FUNCTION sumatoria_loop(numero INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE sumatoria INT DEFAULT 0;
    DECLARE cont INT DEFAULT 1;

    miciclo: LOOP
        IF cont > numero THEN
            LEAVE miciclo;
        END IF;
        SET sumatoria = sumatoria + cont;
        SET cont = cont + 1;
    END LOOP miciclo;

    RETURN sumatoria;
END$$
DELIMITER ;