create database Empresa;

create table usuarios(
id_usuario int primary key auto_increment,
nome varchar(250) not null,
cargo varchar(50) not null
);

create table planos(
id_plano int primary key auto_increment,
nome varchar(250) not null
);

create table usuarios_planos(
id_registro int primary key auto_increment,
id_usuario int,
id_plano int,
data_atribuicao date,
data_desatribuicao date,
FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
FOREIGN KEY (id_plano) REFERENCES planos(id_plano)
);



