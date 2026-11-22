DELIMITER $$

CREATE FUNCTION comparar_valores(val1 INT, val2 INT)
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
    DECLARE mensaje VARCHAR(50) DEFAULT 'los valores son iguales';

    IF val1 > val2 THEN
        SET mensaje = CONCAT(val1, ' es mas grande');
    ELSEIF val2 > val1 THEN
        SET mensaje = CONCAT(val2, ' es mas grande');
    ELSE
        SET mensaje = 'los valores son iguales';
    END IF;

    RETURN mensaje;
END$$
DELIMITER ;

SELECT comparar_valores(50, 50) AS iguales,
       comparar_valores(75, 20) AS primero_mayor,
       comparar_valores(10, 40) AS segundo_mayor;