
create procedure sp_planos_atribuicao()
select usuarios.id_usuario, usuarios.nome, usuarios_planos.data_atribuicao
from usuarios_planos
join planos
on planos.id_plano = usuarios_planos.id_plano
join usuarios
on usuarios.id_usuario = usuarios_planos.id_usuario
where year(data_atribuicao) < 2017;

call sp_planos_atribuicao;

