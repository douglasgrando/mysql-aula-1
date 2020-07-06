create database aula_sql;

create table aluno (
id int not null auto_increment,
nome varchar(150),
dt_nascimento date,
cpf int,
sexo varchar(1),
primary key(id)
);

create table professor (
id int not null auto_increment,
nome varchar(150),
dt_nascimento date,
cpf int,
sexo varchar(1), 
primary key (id)
);

create table disciplina (
id int not null auto_increment,
nome varchar(100),
cargahoraria int,
primary key (id)
);


select * from turma;

insert into turma (nome,serie) values ('3º ANO',302);

insert into turma (nome,serie) values ('2º ANO',202);

insert into turma (nome,serie) values ('1º ANO',102);

select nome from turma;

select * from aluno;

insert into aluno (nome,dt_nascimento,cpf,sexo) values ('Maria','1997-05-03',00000000004,'F');

insert into professor (nome,dt_nascimento,cpf,sexo) values ('Arceus','1995-04-03',30000003,'M');

select * from aluno where sexo='F';

select * from professor where sexo='M';

delete from aluno where id=6;

update aluno set nome='Marilene' where id=7;

insert into disciplina (nome,cargahoraria) values ('Informática',80);

select * from disciplina where cargahoraria=80;




