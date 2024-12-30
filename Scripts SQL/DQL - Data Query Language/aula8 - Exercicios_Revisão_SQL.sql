Use formula1_join;
-- Consulta 01: Crie uma consulta que retorne os nomes de todos os pilotos e suas respectivas
-- classificações nas corridas. Utilize INNER JOIN para relacionar
-- as tabelas Pilotos, Resultados e Corridas.

Select
      Pilotos.nome as Nome_Piloto,
      Resultados.classificação as Classificação,
      Corridas.gp as Grande_Premio
From
    Resultados
INNER JOIN
    Pilotos ON Resultados.numero_piloto = Pilotos.numero
INNER JOIN
    Corridas ON Resultados.codigo_corrida = Corridas.codigo;
    
-- Consulta 02: Escreva uma consulta que retorne os nomes
-- e as idades de todos os pilotos que são do Brasil.

Select 
      nome as Nome_Piloto,
      idade as Idade,
      pais as País
From Pilotos
Where
     pais = 'Brasil';


-- Consulta 03: Crie uma consulta que lista todas as corridas
-- que não tiveram resultados registrados. Utilize LEFT JOIN
-- para encontrar corridas que não possuem correspondências
-- na tabela Resultados.

Select * from corridas;
Select * from resultados;

Select
      Corridas.gp as Grande_Premio
From 
    Corridas
LEFT JOIN
    Resultados ON Corridas.codigo = Resultados.codigo_corrida
Where
    Resultados.id is NULL;
    
-- Consulta 04:Crie uma consulta que conte quantas vezes cada
-- piloto participou de corridas e retorne apenas aqueles que
-- participaram mais de uma vez. Utilize GROUP BY 
-- e HAVING para filtrar os resultados.

Select
      count(Resultados.id)as Numero_de_resultados,
      Pilotos.nome as Nome_Piloto
From
    Pilotos
INNER JOIN
    Resultados on Pilotos.numero = Resultados.numero_piloto
group by
    Pilotos.nome
having
      count(Resultados.id)>1;

-- Consulta 05: Escreva uma consulta que calcule a classificação
-- média dos pilotos que participaram do "GP do Brasil".
-- Utilize AVG() e JOIN para juntar as tabelas necessárias.

Select * from resultados;
Select * from corridas;
-- GP BRASIL --> Código 1

Select 
      AVG(Resultados.classificação) as Classificação_Media
FROM
    Resultados
INNER JOIN 
    Corridas ON Resultados.codigo_corrida = Corridas.codigo
Where
    Corridas.gp like "GP do Brasil";


-- Consulta 06: Crie uma consulta que retorne os nomes dos pilotos
-- que participaram de menos de duas corridas.
-- Use LEFT JOIN e GROUP BY para contar as participações.

Select 
      Pilotos.nome as Nome_Piloto,
      Count(Resultados.id) as Participações
From
     Pilotos
LEFT JOIN 
     Resultados ON Pilotos.numero = Resultados.numero_piloto
group by
     Pilotos.nome
having
	count(Resultados.id)<2;


-- Consulta 07: Elabore uma consulta que retorne a classificação
-- de todos os pilotos em cada Grande Prêmio. Mostre o nome do
-- piloto, o nome do Grande Prêmio e a classificação.

Select
	 Pilotos.nome as Nome_Piloto,
     Corridas.gp as Grande_Premio,
     Resultados.classificação as Classificação
From 
    Resultados
Inner JOIN
    Pilotos ON Resultados.numero_piloto = Pilotos.numero
Inner JOIN 
    Corridas on Resultados.codigo_corrida = Corridas.codigo;


-- Consulta 08: Adicione um novo piloto à tabela Pilotos
-- e registre pelo menos uma corrida nas tabelas Resultados
-- e Corridas. Em seguida, crie uma consulta para verificar 
-- se os dados foram inseridos corretamente.

Select * from Pilotos;
Select * from Corridas;

Insert into Pilotos (numero,nome,pais,idade,equipe)VALUES
(6, 'Gustavo Molina', 'Brasil', 18, 'Team Brazil');
Insert into Corridas (codigo,gp,data)VALUES
(6, 'GP de Nárnia', "2024-11-11");
Insert into Resultados(codigo_corrida, numero_piloto, classificação)Values
(6,6,1);

-- Verificação
Select * from Pilotos where numero like 6;
Select * from Corridas where codigo = 6;
Select * from Resultados Where codigo_corrida = 6;

-- Consulta 09: Crie uma consulta que retorne todos os pilotos
-- que terminaram em 1ª ou 2ª posição em qualquer corrida.
--  Utilize WHERE para filtrar as classificações.

Select 
      Pilotos.nome as Nome_Piloto,
      Resultados.classificação as Classificação
From
    Resultados
Inner join
    Pilotos on Resultados.numero_piloto = Pilotos.numero
Where
    Resultados.classificação IN (1,2)
order by Nome_Piloto;

-- Consulta 10: Escreva uma consulta que retorne os nomes
-- dos pilotos e suas respectivas equipes.
-- Utilize JOIN entre as tabelas se necessário.

Select 
      Pilotos.nome as Nome_Piloto,
      Pilotos.equipe as Equipe
From
    Pilotos;