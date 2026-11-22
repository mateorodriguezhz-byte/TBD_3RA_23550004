USE taller_bd_uni_3;

DELIMITER $$

CREATE FUNCTION dia_semana(dia INT)
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
    DECLARE resu VARCHAR(50);

    CASE dia
        WHEN 1 THEN SET resu = 'domingo';
        WHEN 2 THEN SET resu = 'lunes';
        WHEN 3 THEN SET resu = 'martes';
        WHEN 4 THEN SET resu = 'miercoles';
        WHEN 5 THEN SET resu = 'jueves';
        WHEN 6 THEN SET resu = 'viernes';
        WHEN 7 THEN SET resu = 'sabado';
        ELSE SET resu = 'numero de dia no valido';
    END CASE;

    RETURN resu;
END$$

DELIMITER ;

SELECT dia_semana(1) AS dia_1,
       dia_semana(2) AS dia_2,
       dia_semana(5) AS dia_5,
       dia_semana(9) AS dia_invalido;