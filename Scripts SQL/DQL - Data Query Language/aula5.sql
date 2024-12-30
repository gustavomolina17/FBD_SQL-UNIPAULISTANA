Use projetoformula1;

/*SUBCONSULTAS = CONSULTAS ANINHADAS */

/*1- Liste os nomes dos pilotos que têm mais pontos do que a média de pontos de todos os pilotos.*/

Select nome as Nome, pontos as Pontuação
from pilotos
where pontos>(SELECT AVG(pontos) AS media_pontos
FROM pilotos);

/*2 - Encontre o nome do piloto que possui a maior pontuação na tabela de pilotos.*/
-- Max Vestappen
Select nome, pontos 
from pilotos
where pontos = (Select Max(pontos) as pontuação from pilotos);

/*3 - Mostre os nomes dos pilotos que têm menos pontos do que o piloto com o nome 'Lewis Hamilton'.*/

Select nome as Nome, pontos as pontuação
from Pilotos
where pontos < (Select pontos as Pontuação 
from Pilotos
where nome like 'Lewis Hamilton');

/*4 - Liste os pilotos que estão na equipe 'Red Bull Racing' e têm mais pontos do que o piloto com o nome 'Carlos Sainz'.*/

Select nome as Nome, pontos as Pontuação
from pilotos
where equipe = 'Red Bull Racing'
and pontos>(Select pontos 
from pilotos 
where nome like 'Carlos Sainz');


/*5 - Quais pilotos têm uma idade maior do que a média de idade dos pilotos da equipe 'Ferrari'*/

Select nome as Nome, idade as Idade
from pilotos
where idade > (Select avg(idade) as Média_Idade_Ferrari
from pilotos
where equipe = 'Ferrari')
order by idade asc;

/*6 - Liste os pilotos que têm mais pole positions do que o piloto com o nome 'Max Vestappen'.*/
-- select * from pilotos;
-- Select* from ranking;

Select nome
from pilotos
where numero > (
     Select numPolePosition
	 from ranking
     where codigo = (select codigo_ranking from pilotos where nome = 'Max Vestappen')
);

/*7 - Liste os nomes dos pilotos que não estão entre os três primeiros em pontos no ranking.*/

SELECT nome as Nome, pontos as Pontuação
FROM pilotos
WHERE pontos NOT IN (
    SELECT pontos
    FROM (
        SELECT pontos
        FROM pilotos
        ORDER BY pontos DESC
        LIMIT 3
    ) AS top_pilotos
);



/* 8 - Encontre o nome do piloto mais jovem da equipe 'Mercedes'.*/

SELECT nome, idade
FROM pilotos
WHERE equipe = 'Mercedes'
ORDER BY idade ASC
LIMIT 1;

SELECT nome, idade
FROM pilotos
WHERE equipe = 'Mercedes'
and idade = (Select min(idade) from pilotos where equipe = 'Mercedes');

/*9 - Quais pilotos têm menos pontos do que a soma dos pontos dos pilotos da equipe 'Alpine'?*/

SELECT nome, pontos
FROM pilotos
WHERE pontos < (
SELECT SUM(pontos)
FROM pilotos
WHERE equipe = 'Alpine'
);



/*10 - Liste os nomes dos pilotos que têm mais pontos do que a média dos pontos dos pilotos que competiram no GP 1.*/

SELECT nome, pontos
FROM pilotos
WHERE pontos > (
SELECT AVG(pontos)
FROM pilotos
WHERE codigo_ranking IN (
SELECT codigo
FROM ranking
WHERE gp = 1
    )
);