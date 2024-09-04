create database rede_social;
use rede_social;

create table usuarios(
idusuarios int primary key not null auto_increment,
nome varchar (45) not null unique,
email varchar (100),
data_conta date not null
);

create table postagens(
idpostagens int primary key not null auto_increment,
texto varchar (255) not null,
data_publicacao date not null,
imagem varchar (255),
usuarios_id int not null,
foreign key (usuarios_id) references usuarios(idusuarios)

);

create table comentarios(
idcomentarios int not null auto_increment primary key,
texto varchar (255) not null,
data_publicacao date not null,
usuarios_id int not null ,
postagens_id int not null,
foreign key (usuarios_id) references usuarios (idusuarios),
foreign key (postagens_id) references postagens (idpostagens)
);

create table curtida_postagens(
postagens_idpostagens int not null,
usuarios_idusuarios int not null,
primary key (usuarios_idusuarios, postagens_idpostagens),
foreign key (usuarios_idusuarios) references usuarios(idusuarios),
foreign key (postagens_idpostagens) references postagens (idpostagens)
); 

insert into usuarios (nome,email, data_conta) values ('Bia', 'bibiamacedo@senai.br', '2024/09/04')
insert into usuarios (nome,email, data_conta) values ('João', 'joao@senai.br', '2024/09/04')
insert into usuarios (nome,email, data_conta) values ('Naty', 'naty@senai.br', '2024/09/04')
insert into usuarios (nome,email, data_conta) values ('Eduardo', 'eduardo@senai.br', '2024/09/04')