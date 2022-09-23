SELECT
COUNT(UPL.id_registro) as qtd_registros,
USR.id_usuario,
USR.nome

FROM USUARIOS USR
INNER JOIN USUARIOS_PLANOS UPL ON UPL.id_usuario = USR.id_usuario 

GROUP BY 
USR.id_usuario,
USR.nome

