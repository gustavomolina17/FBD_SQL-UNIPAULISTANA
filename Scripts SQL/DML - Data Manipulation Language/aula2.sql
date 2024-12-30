--- Acessar a base desejada 
use ProjetoFormula1;

--- Inserção de Dados na tabela Ranking

Select * from Ranking;
INSERT INTO Ranking(codigo, gp, classificacao1, classificacao2, classificacao3, podio, numPolePosition,voltaMaisRapida)   VALUES (1, 5, 1, 2, 3, 1, 1, 1);
INSERT INTO Ranking (codigo, gp, classificacao1, classificacao2, classificacao3, podio, numPolePosition, voltaMaisRapida) VALUES (2, 4, 2, 3, 1, 2, 1, 2);
INSERT INTO Ranking (codigo, gp, classificacao1, classificacao2, classificacao3, podio, numPolePosition, voltaMaisRapida) VALUES (3, 3, 3, 1, 2, 3, 2, 3);
INSERT INTO Ranking (codigo, gp, classificacao1, classificacao2, classificacao3, podio, numPolePosition, voltaMaisRapida) VALUES (4, 2, 1, 2, 3, 1, 1, 1);
INSERT INTO Ranking (codigo, gp, classificacao1, classificacao2, classificacao3, podio, numPolePosition, voltaMaisRapida) VALUES (5, 1, 2, 3, 1, 2, 1, 2); 


--- Alteração doh campo grupo para equipe

alter table Pilotos
change grupo equipe varchar(25) NOT NULL;

--- Inserção da Dados na tabela Pilotos
Select * from Pilotos;
INSERT INTO Pilotos(numero, codigo_ranking, nome, pais, idade, equipe, motor, pontos ) VALUES (1, 1, 'Max Vestappen', 'Paises Baixos', 26, 'Red Bull Racing', 'Honda',256);
INSERT INTO Pilotos (numero, codigo_ranking, nome, pais, idade, equipe, motor, pontos) VALUES (2, 1, 'Sergio Pérez', 'México', 34, 'Red Bull Racing', 'Honda', 252);
INSERT INTO Pilotos (numero, codigo_ranking, nome, pais, idade, equipe, motor, pontos) VALUES (3, 2, 'Lewis Hamilton', 'Reino Unido', 39, 'Mercedes', 'Mercedes', 242);
INSERT INTO Pilotos (numero, codigo_ranking, nome, pais, idade, equipe, motor, pontos) VALUES (4, 2, 'George Russell', 'Reino Unido', 25, 'Mercedes', 'Mercedes', 240);
INSERT INTO Pilotos (numero, codigo_ranking, nome, pais, idade, equipe, motor, pontos) VALUES (5, 3, 'Fernando Alonso', 'Espanha', 42, 'Aston Martin', 'Mercedes', 214);
INSERT INTO Pilotos (numero, codigo_ranking, nome, pais, idade, equipe, motor, pontos) VALUES (6, 3, 'Lance Stroll', 'Canadá', 24, 'Aston Martin', 'Mercedes', 144);
INSERT INTO Pilotos (numero, codigo_ranking, nome, pais, idade, equipe, motor, pontos) VALUES (7, 4, 'Charles Leclerc', 'Mônaco', 26, 'Ferrari', 'Ferrari', 142);
INSERT INTO Pilotos (numero, codigo_ranking, nome, pais, idade, equipe, motor, pontos) VALUES (8, 4, 'Carlos Sainz', 'Espanha', 29, 'Ferrari', 'Ferrari', 136);
INSERT INTO Pilotos (numero, codigo_ranking, nome, pais, idade, equipe, motor, pontos) VALUES (9, 5, 'Lando Norris', 'Reino Unido', 24, 'McLaren', 'Mercedes', 70);
INSERT INTO Pilotos (numero, codigo_ranking, nome, pais, idade, equipe, motor, pontos) VALUES (10, 5, 'Oscar Piastri', 'Austrália', 23, 'McLaren', 'Mercedes', 45);
INSERT INTO Pilotos (numero, codigo_ranking, nome, pais, idade, equipe, motor, pontos) VALUES (11, 1, 'Esteban Ocon', 'França', 27, 'Alpine', 'Renault', 40);
INSERT INTO Pilotos (numero, codigo_ranking, nome, pais, idade, equipe, motor, pontos) VALUES (12, 2, 'Pierre Gasly', 'França', 28, 'Alpine', 'Renault', 30);
INSERT INTO Pilotos (numero, codigo_ranking, nome, pais, idade, equipe, motor, pontos) VALUES (13, 3, 'Valtteri Bottas', 'Finlândia', 34, 'Alfa Romeo', 'Ferrari', 25);
INSERT INTO Pilotos (numero, codigo_ranking, nome, pais, idade, equipe, motor, pontos) VALUES (14, 4, 'Zhou Guanyu', 'China', 24, 'Alfa Romeo', 'Ferrari', 20);
INSERT INTO Pilotos (numero, codigo_ranking, nome, pais, idade, equipe, motor, pontos) VALUES (15, 5, 'Kevin Magnussen', 'Dinamarca', 31, 'Haas', 'Ferrari', 15);

--- Criando um piloto para testes

INSERT INTO Pilotos (numero, codigo_ranking, nome, pais, idade, equipe, motor, pontos) VALUES (16, 3, 'Silas Kando', 'Brasil', 24, 'UniPaulistana', 'Ferrari', 2);

--- Atualizando

UPDATE Pilotos
SET idade = idade+1
WHERE numero = 16;

UPDATE Pilotos
SET pontos = 300
WHERE equipe = 'UniPaulistana';

UPDATE Pilotos
SET nome = 'Silas Kando Silva Dos Santos Nascimento Neto'
WHERE pais = 'Brasil';

--- Deletando
DELETE FROM Pilotos
WHERE numero = 16;




