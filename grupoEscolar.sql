Create database grupoEscolar;
use grupoEscolar ;
Create table escola (
Id int not null auto_increment primary key,
salas int,
funcionarios int
);
Create table Funcionarios (
Id int  auto_increment primary key,
nome varchar(20), 
Funcao int
);
Create table cargos(
Id_cargo int  auto_increment primary key,
Nome varchar (40) 
);
Create table salas(
Id  int auto_increment primary key,
Tipo varchar (40) 
);
Create table dependente(
Id  int  primary key auto_increment,
Nome varchar (40), 
funcionario int
);
Create table cargos_funcionario(
Fk_cargo int,
Fk_funcionario int ,
primary key(Fk_cargo,Fk_funcionario)
);
alter table cargos_funcionario
add foreign key (Fk_cargo) references cargos (id_cargo) ,
add foreign key (Fk_funcionario) references funcionarios (id) ;
alter table dependente
add foreign key (funcionario) references funcionarios (id) ;
alter table escola
add foreign key (salas) references salas (id) ,
add foreign key (funcionarios) references funcionarios (id) ;
alter table Funcionarios
add foreign key (Funcao) references cargos (Id_cargo);
insert into cargos (nome)
values ('diretor');
insert into cargos (nome)
values ('secretario(a)');
insert into cargos (nome)
values ('professor');
insert into Funcionarios (nome,funcao)
values ('Dandara',1);
insert into Funcionarios (nome,funcao)
values ('aryana',2);
insert into Funcionarios (nome,funcao)
values ('lua',3);
insert into dependente (nome,funcionario)
values ('lua',2);
insert into dependente (nome,funcionario)
values ('estrela',2);
insert into salas (Tipo)
values ('informatica 1');
insert into salas (Tipo)
values ('secretaria');
insert into escola (salas,funcionarios)
values (1,2);
insert into escola (salas,funcionarios)
values (2,2);
