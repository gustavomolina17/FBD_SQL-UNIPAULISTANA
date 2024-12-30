Use projetoformula1;

/* Consulta 17: Selecionar os pilotos maiores de 25 anos e os com 30 anos ou menos. É necessário mostrar também: nome,
 equipe, idade, país e pontuação.
-- Cola: idade >25 and idade<=30 */

Select * from pilotos;
--- Forma 1:
Select nome as Piloto, idade as Idade,equipe as Equipe, pais as Nação, pontos as Pontuação
from pilotos
where idade > 25
and idade <=30
order by idade;

--- Forma 2:
Select nome as Piloto, idade as Idade,equipe as Equipe, pais as Nação, pontos as Pontuação
from pilotos
where idade between 25 and 30
order by idade;

/* Consulta 18: Selecionar os pilotos que pertençam a equipes cujo nome comece com M ou utilizem motores
cujos nomes iniciem com H. É necessário para essas informações constar nome, equipe, país e motor.*/

Select nome as Piloto, equipe as Equipe, pais as Nação, motor as Motores
from pilotos
where equipe like 'M%'
or motor like 'H%';


/* Consulta 19: Listar os pilotos que alcançaram pontos de 144 até 256. Nessa listagem, é importante colocar nome,
idade, país e pontos dos pilotos
Cola: entre (between)
*/

--- Forma 1:
Select nome as Piloto, idade as Idade, pais as Pais, pontos as Pontuação
from pilotos
where pontos between 144 and 256
order by pontos;

--- Forma 2:
Select nome as Piloto, idade as Idade, pais as Pais, pontos as Pontuação
from pilotos
where pontos >=144
and pontos <=256
order by pontos;

/* Consulta 20: Mostrar os pilotos  que tenham uma pontuação maior que 214 e também não estejam devendo nenhum ponto. Inclua
nessa lista nome, idade, país, equipe e pontos.
COLA:Quero as informações dos pilotos cuja pontuação NAO esteja entre 0 e 214*/

--- Forma 1:
Select nome as Piloto, idade as Idade, pais as Nação, equipe as Equipe, pontos as Pontuação
from pilotos
where pontos not between 0 and 214;

--- Forma 2:
Select nome as Piloto, idade as Idade, pais as Nação, equipe as Equipe, pontos as Pontuação
from pilotos
where pontos > 214;


/* Consulta 21: Selecionar nome e idade dos pilotos que tenham idade igual a 23 ou 24 ou ainda 26. Ordenar
essa informação por idade*/

/*Forma 01*/
Select nome as Piloto, idade as Idade
from pilotos
where idade in (23,24,26)
order by idade ASC;

/*Forma 02*/
Select nome as Piloto, idade as Idade
from pilotos
where idade = 23 or idade = 24 or idade = 26
order by idade ASC;

/*Forma 03*/
Select nome as Piloto, idade as Idade
from pilotos
where idade like 23 or idade like 24 or idade like 26
order by idade ASC;

/* Consulta 22: Listar nome e país dos pilotos que NÃO sejam da Reino Unido ou da França ou da Espanha*/

/*Forma 01*/
Select nome as Piloto, pais as Nação
from pilotos
where pais not in ('Reino Unido', 'França','Espanha');

/*Forma 02*/
Select nome as Piloto, pais as Nação
from pilotos
where pais not like 'Reino Unido' and pais not like 'França' and pais  not like 'Espanha';

/*Forma 03*/
Select nome as Piloto, pais as Nação
from pilotos
where pais <> 'Reino Unido' and pais <> 'França' and pais <>'Espanha';

/* Consulta 23: Mostrar os dados dos pilotos que possuem pontuação  menor que 50*/
Select * from pilotos
where pontos < 50
order by pontos ASC;

/* Consulta 24: Informar o número de pilotos existente nesse cadastro*/
Select * from pilotos;

Select count(*) as Quantidade_de_pilotos,pais as Nação
from pilotos
group by pais;

/* Consulta 25: Indicar o nº de pilotos que tenham 26 anos ou mais*/
select count(*) as Maiores_de_26, pais
from pilotos
where idade >=26
group by pais;

/* Consulta 26: Informar a média de idade dos pilotos do Reino Unido ou da França ou da Espanha*/
-- Média -> Average (avg)
-- Média Reino Unido: 29,33
-- Média França: 27,5
-- Média Espanha: 35,5

Select avg(idade) as MediaIdadePiloto, pais 
from pilotos
where pais in('Reino Unido', 'França', 'Espanha')
group by pais
order by idade ASC;

/* Consulta 27: Informar a média dos pontos dos pilotos*/
Select * from pilotos;

Select avg(pontos) as Média_Pontuação, pais
from pilotos
group by pais;

/* Consulta 28: Informar o piloto mais novo*/
select nome as Nome, min(idade)as Idade_Piloto_Mais_Novo, pais as Nação
from pilotos
where numero =10; /*Estou trapaceando*/

Select min(idade) as Idade_Piloto_Mais_Novo
from pilotos;

/* Consulta 29: Indicar a pontuação máxima alcançada pelos pilotos*/

Select max(pontos) as Pontuação_Máxima
from pilotos;

/* Consulta 30: Mostrar o total dos pontos dos pilotos do Reino Unido
Cola: Soma --> SUM */

Select sum(pontos)as Pontuação_Total_Reino_Unido
from pilotos
where pais like 'Reino Unido';


/* Consulta 31: Mostrar a pontuação total por país dos pilotos de Fórmula 1 em ordem  decrescente*/

Select sum(pontos) as SomaPontos, pais as Pais
from pilotos
group by pais
order by SomaPontos DESC;

/* Consulta 32: Listar a média da idade dos pilotos de cada país dessa tabela. Devem ser elencados somente
os países que apresentaram a média de idade dos pilotos maior que 26 anos. As médias devem ser ordenadas em 
ordem crescente*/

Select avg(idade) as Média_idade, pais as Pais, idade
from pilotos 
group by pais
having avg(idade)>26
order by Média_idade ASC;



/* Consulta 33: Mostrar a quantidade de pilotos de cada país que consta neste cadastro. Listar os países por número de pilotos em 
ordem decrescente*/

Select count(*) as QuantidadePilotos, pais as Pais
from pilotos
group by pais
order by QuantidadePilotos desc;




