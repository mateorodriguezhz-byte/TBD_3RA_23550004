delimiter $$
create function generar_rfc(
	nombre varchar(50),
    ap_pat varchar(50),
    ap_mat varchar(50),
    fecha_nac date)
returns varchar (20) deterministic
begin
	declare v_pat varchar(50) default upper(trim(ap_pat));
    declare v_mat varchar(50) default upper(trim(ifnull(ap_mat, '')));
    declare v_nombre varchar(50) default upper(trim(nombre));
    declare vocal char(1);
    declare inicial_mat char(1);
    declare homoclave char(10);
    declare base varchar(10);
    
    set vocal = ifnull(regexp_substr(substring(v_pat, 2), '[AEIOU]'), 'X');
    
    set inicial_mat = if(v_mat = '', 'X', left(v_mat, 1));
    
    set base = concat(left(v_pat, 1), vocal, inicial_mat, left(v_nombre, 1), date_format(fecha_nac, '%y%m%d'));
    
    set homoclave = upper(left(md5(concat(v_nombre, v_pat, v_mat, fecha_nac)), 3));
    
    return concat(base, homoclave);
end $$
delimiter ;