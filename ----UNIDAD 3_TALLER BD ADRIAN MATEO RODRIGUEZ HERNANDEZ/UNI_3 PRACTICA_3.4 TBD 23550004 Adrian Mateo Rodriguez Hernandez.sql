USE taller_bd_uni_3;
DROP FUNCTION IF EXISTS insertar_ciudad;

DELIMITER $$
CREATE FUNCTION insertar_ciudad(id_ciudad INT, nombre_ciudad VARCHAR(50))
RETURNS INT
DETERMINISTIC
MODIFIES SQL DATA
BEGIN
    INSERT INTO ciudad (city_id, city) VALUES (id_ciudad, nombre_ciudad);
    RETURN 1;
END$$
DELIMITER ;