DROP FUNCTION IF EXISTS mostar_mensaje;

DELIMITER $$

CREATE FUNCTION mostar_mensaje(mensaje VARCHAR(50))
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
    DECLARE mi_mensaje VARCHAR(100);
    SET mi_mensaje = CONCAT('hola ', mensaje);
    RETURN mi_mensaje;
END $$

DELIMITER ;

SELECT mostar_mensaje('Adrian Mateo Rodriguez Hernandez');