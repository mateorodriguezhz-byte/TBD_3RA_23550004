USE taller_bd_uni_3;

DELIMITER $$

CREATE FUNCTION es_par(valor INT)
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
    DECLARE residuo INT DEFAULT 0;
    DECLARE mensaje VARCHAR(50);

    SET residuo = MOD(valor, 2);

    IF residuo = 0 THEN
        SET mensaje = 'el valor es par';
    ELSE
        SET mensaje = 'el valor es impar';
    END IF;

    RETURN mensaje;
END$$

DELIMITER ;

SELECT es_par(8) AS prueba_par,
       es_par(13) AS prueba_impar;