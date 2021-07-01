-- DDL (definition data language)
create database test
default character set utf8
default collate utf8_general_ci;

-- DDL (definition data language)
create table `pessoas` (
`ID` int(6) not null auto_increment,
`nome` varchar(30) not null,
`nascimento` date,
`sexo` enum('M','F'),
`peso` decimal(5,2),
`altura` decimal(3,2),
`nacionalidade` varchar(20) default 'Brasil',
primary key (id)
) default charset = utf8;

select * from pessoas;

desc pessoas;

-- DML (Data manipulation language)
insert into pessoas
 values (ID,'Ana','1975-12-22','F','52.3','1.45','EUA'),
 (ID,'Pedro','2000-07-15','M','52.3','1.45',default),
 (ID,'Maria','1999-05-30','F','75.9','1.70','Portugal');
 
 -- DDL comand
 alter table pessoas
 add column profissao varchar(20) after nome;
 
 alter table pessoas
 modify column profissao varchar(20) not null default '';
 
 -- drop table = DDL
 drop database test;
 
 create table if not exists cursos (
 nome varchar(30) not null unique,
 descricao text,
 carga int unsigned,
 totaulas int,
 ano year default '2016'
 ) default charset = utf8;

alter table cursos 
 add column idcurso int first;
 
alter table cursos 
add primary key (idcurso);
 
 desc cursos;
 
 insert into cursos
 values (1,'HTML5','CURSO DE HTML5','40','37','2014'),
 (2,'Algoritmos','Lógica de programação','20','15','2014'),
 (3,'Photoshop','Dicas de Photoshop CC','10','8','2014'),
 (4,'PHP','Curso de PHP para inicianes','40','20','2015'),
 (5,'JAVA','Introdução a Linguagem Java','40','29','2015'),
 (6,'MySQL','Banco de dados MySQL','30','15','2016'),
 (7,'Word','Curso completo de Word','40','30','2016');