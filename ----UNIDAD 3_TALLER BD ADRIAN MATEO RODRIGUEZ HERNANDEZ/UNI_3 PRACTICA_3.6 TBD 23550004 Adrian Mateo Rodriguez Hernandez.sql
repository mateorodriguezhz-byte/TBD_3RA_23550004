USE taller_bd_uni_3;
DROP FUNCTION IF EXISTS generar_id_ciudad;

DELIMITER $$
CREATE FUNCTION generar_id_ciudad()
RETURNS INT
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE siguiente_id INT DEFAULT 1;
    SELECT COALESCE(MAX(city_id), 0) + 1 INTO siguiente_id FROM ciudad;
    RETURN siguiente_id;
END$$
DELIMITER ;