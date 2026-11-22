DROP FUNCTION IF EXISTS hola;

CREATE FUNCTION hola(mensaje VARCHAR(50))
RETURNS VARCHAR(1000)
DETERMINISTIC
RETURN CONCAT('hola ', mensaje);

SELECT hola('Adrian Mateo Rodriguez Hernandez');
