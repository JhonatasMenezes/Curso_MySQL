-- agrupar registros por valor específico
select totaulas , count(*) from cursos
group by totaulas
order by totaulas;

select carga, count(*) from cursos
group by carga;

-- definir parâmetro com having
select ano, count(*) from cursos
group by ano
having count(ano) >= 5;

select ano, count(*) from cursos
where totaulas > 30
group by ano
having ano > 2013
order by count(*) desc;

-- utilizar subquery
select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) 
				from cursos);