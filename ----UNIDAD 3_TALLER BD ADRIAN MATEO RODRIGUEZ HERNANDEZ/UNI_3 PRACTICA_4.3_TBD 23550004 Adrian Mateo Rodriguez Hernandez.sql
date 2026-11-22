delimiter $$
create procedure insertar_persona(
	in nombre varchar(50),
    in ap_pat varchar(50),
    in ap_mat varchar(50),
    in fecha_nac date)
begin
	declare rfc varchar(20);
    
    set rfc = generar_rfc(nombre, ap_pat, ap_mat, fecha_nac);
    
    insert into Persona(rfc, nombre, ap_pat, ap_mat, fecha_nac)
    values(rfc, nombre, ap_pat, ap_mat, fecha_nac);
end $$
delimiter ;