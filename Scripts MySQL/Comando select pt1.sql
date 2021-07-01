select * from gafanhotos;
select * from cursos;
desc cursos;

-- comando SELECT pode ser classificado como DML 
-- ou como DQL - Date Query Language

-- selecionar todas as tabelas em ordem descendente
select * from cursos
order by nome desc;

-- selecionar apenas colunas desejadas
select ano, nome, carga from cursos
order by ano, nome;

-- selecionar apenas linhas desejadas com WHERE, que pode ser
-- usado com operadores relacionais: < ,  > , <= , >= , != ou <>
select nome, descricao, ano from cursos
where ano <= 2015
order by ano;

 -- com operadores lógicos: and, or
select nome, carga, totaulas from cursos
where carga > 35 and totaulas < 30;

-- selecionar apenas linhas que estejam entre os valores desejados.
select nome, ano from cursos
where ano between 2014 and 2016
order by ano desc, nome asc; 

-- selecionar apenas linhas com os valores exatos desejados.
select nome, descricao, ano from cursos
where ano in (2014, 2016)
order by ano;
