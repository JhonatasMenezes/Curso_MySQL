-- Exercícios aula 13
-- Exercício 01
select profissao, count(profissao) 
from gafanhotos
group by profissao;

-- Exercício 02 
select sexo, count(nascimento) from gafanhotos
where nascimento > '2005-1-1'
group by sexo; 

select * from gafanhotos
where nascimento > '2005-1-1';

-- Exercício 03
select nacionalidade, count(*) from gafanhotos
where nacionalidade != 'Brasil'
group by nacionalidade
having count(nacionalidade) >= 3;

-- Exercício 04
select avg(altura) from gafanhotos;
select peso, altura, count(*) from gafanhotos
where peso > 100
group by altura
having altura > (select avg(altura) from gafanhotos);