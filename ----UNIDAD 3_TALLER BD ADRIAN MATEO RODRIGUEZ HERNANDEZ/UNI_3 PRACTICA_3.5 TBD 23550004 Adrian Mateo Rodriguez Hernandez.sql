USE taller_bd_uni_3;
DROP PROCEDURE IF EXISTS contar_ciudades;

DELIMITER $$
CREATE PROCEDURE contar_ciudades(OUT total INT)
BEGIN
    SELECT COUNT(*) INTO total FROM ciudad;
END$$
DELIMITER ;