--- Criação da base de dados 
Create database ProjetoFormula1;

--- Acessar a base desejada 
use ProjetoFormula1;

--- Excluir uma base de dados
drop database ProjetoFormula1;

--- Criação da 1ª Tabela - Ranking

create table if not exists Ranking(
codigo int(3) not null primary key,
gp int(2) not null,
classificacao1 int(2) not null,
classificacao2 int(2),
classificacao3 int(2),
podio int(2) not null,
numPolePosition int (2),
voltaMaisRapida int (2));

--- Criação da Tabela Pilotos
--- Chave estrangeira (fk) : codigo_ranking

create table if not exists Pilotos(
numero int(2) not null primary key,
codigo_ranking int (3), 
nome char(50) not null,
pais char(30),
idade int(3),
equipe int(10) not null,
motor char (20));


--- Criação da chave estrangeira na tabela Pilotos
alter table Pilotos
add foreign key(codigo_ranking)
references Ranking(codigo);

--- Adição campo pontos
--- Adição campo endereço

alter table Pilotos
add pontos int(10);

alter table Pilotos
add endereco char(70);

--- Mudança de campo

alter table Pilotos
change equipe equipe char(25) not null;

alter table Pilotos
change equipe grupo char(25);

---Exclusão de uma tabela inteira
drop table pilotos;

--- Exclusão de um campo
alter table pilotos
drop endereco;

Select * from Pilotos;
Select * from Ranking;
