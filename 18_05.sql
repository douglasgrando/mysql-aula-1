create database aula;

create table aluno (
id int not null auto_increment,
nome varchar(150),
dt_nascimento date,
cpf int,
sexo varchar(1),
primary key(id)
);

create table turma (
id int not null auto_increment,
nome varchar(100),
serie int,
primary key (id)
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

alter table professor
drop column cpf;

alter table professor
add cpf int;

create table aluno_disciplina (
id int not null auto_increment,
cd_aluno int not null,
cd_disciplina int not null,
primary key (id),
constraint aluno_disciplina_aluno foreign key (cd_aluno) references aluno(id),
constraint aluno_disciplina_disciplina foreign key (cd_disciplina) references disciplina(id)
);

create table professor_turma (
id int not null auto_increment,
cd_professor int not null,
cd_turma int not null,
primary key (id),
constraint professor_turma_professor foreign key (cd_professor) references professor(id),
constraint professor_turma_turma foreign key (cd_turma) references turma(id)
);

create table disciplina_turma (
id int not null auto_increment,
cd_disciplina int not null,
cd_turma int not null,
primary key (id),
constraint disciplina_turma_disciplina foreign key (cd_disciplina) references disciplina(id),
constraint disciplina_turma_turma foreign key (cd_turma) references turma(id)
);

alter table disciplina
add constraint disciplina_professor
foreign key (id) references professor(id);

alter table aluno
add constraint aluno_turma
foreign key (id) references turma(id);

alter table aluno
rename to alunoX;

alter table alunoX
rename to aluno;

alter table professor
change column nome nome1 varchar (100);

alter table professor
change column nome1 nome varchar (100);

alter table professor
modify column cpf varchar (100);

alter table professor
modify column cpf int;

