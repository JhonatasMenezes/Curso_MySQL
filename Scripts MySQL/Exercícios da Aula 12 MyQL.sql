-- exercício 01
select * 
from gafanhotos 
where sexo = 'F'
order by nome;
-- contagem
select count(*) 
from gafanhotos 
where sexo = 'F';

-- exercício 02
select *
from gafanhotos
where nascimento between '2000-1-1' and '2015-12-31'
order by nascimento;

-- exercício 03
select nome, profissao
from gafanhotos
where profissao = 'Programador' and sexo = 'M'
order by nome;

-- exercício 04
select * from gafanhotos
where nacionalidade = 'Brasil' 
and sexo = 'F'
and nome like 'J%';

-- exercício 05
select nome, nacionalidade from gafanhotos
where nome like '%silva%' 
and sexo = 'M'
and nacionalidade != 'Brasil'
and peso < 100;

-- exercício 06
select max(altura) from gafanhotos
where sexo = 'M' and nacionalidade = 'Brasil';

-- exercício 07
select avg(peso) from gafanhotos;

-- exercício 08
select min(peso) from gafanhotos
where nacionalidade != 'Brasil' 
and nascimento between '1990-1-1' and '2000-12-31';

-- exercício 09
select count(*) from gafanhotos
where sexo = 'F' and altura > 1.90;

