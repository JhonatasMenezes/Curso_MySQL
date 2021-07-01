-- Aula de comando select 2

-- selecionar linhas que começam, contanham ou terminam
-- com alguma letra ou valor específico
select * from cursos
where nome like 'P%' -- not like -- '%P' ou '%P%', ou 'PH%P' para valores com inicio e fim específicos
order by nome;

select * from gafanhotos
where nome like '%_silva%';

-- DISTINCT unifica valores duplicados para
-- distinguir informações esecíficas varios registros
select distinct nacionalidade from gafanhotos;
select distinct carga from cursos;
-- função de agregação 
-- count(), p/ quantidades de registros específicos
select count(*) from cursos where carga > 40;
select count(*) from cursos where nome like 'P%';
 
 -- max() p/ o maior valor entre os definidos no parâmetro
 select max(carga) from cursos;
 select max(totaulas) from cursos where ano = 2016;

-- min() p/ o menor valor entrp os definidos no parâmetro
select nome, min(totaulas) from cursos where ano = 2016;

-- sum() p/ somar valores definidos por parâmetro
select sum(totaulas) from cursos where ano = 2016;

-- avg() p/ média de valores def por param.
select avg(totaulas) from cursos where ano = 2016;