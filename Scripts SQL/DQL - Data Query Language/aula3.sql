--- Acessar a base desejada 
use ProjetoFormula1;

--- Consulta 01: Listar todos os registros das nossas tabelas
Select * from Pilotos;
Select * from Ranking;

--- Consulta 02a: Listar nome, pais e idade de todos os pilotos
Select  nome, pais, idade from Pilotos;

--- Consulta 02b: Listar código, gp e podio de toda tabela ranking
Select codigo, gp, podio from Ranking;

--- Consulta 03: Listar número, nome e equipe dos pilotos
Select numero, nome , equipe from Pilotos;

--- Consulta 04a: Listar nome, pontos e idade dos 10 primeiros pilotos
Select nome, pontos, idade from Pilotos
limit 10;

--- Consulta 04b: Listar gp e podio dos 5 primeiros pilotos
Select gp, podio from Ranking
limit 5;

--- Consulta 05: Listar o pais dos pilotos SEM REPETIÇÃO
Select distinct pais from Pilotos;

--- Consulta 06a: Listar nome, idade, pais, equipe e pontuação de cada piloto.
--- Os dados devem ser ordenados pela idade em ordem crescente
Select nome as Nome, idade as Idade, pais as Nação, equipe as Equipe, pontos as Pontuação
from Pilotos
order by idade ASC;

--- Consulta 06b: Listar nome, idade, pais, equipe e pontuação de cada piloto.
--- Os dados devem ser ordenados pela idade em ordem DECRESCENTE
Select nome as Nome, idade as Idade, pais as Nação, equipe as Equipe, pontos as Pontuação
from Pilotos
order by idade DESC;
