Create database formula1_join;
Use formula1_join;

create table if not exists Pilotos(
numero int(2) not null primary key,
nome varchar(50) not null,
pais varchar (30),
idade int (2),
equipe varchar (25) not null
);

create table if not exists Corridas(
codigo int(3) not null primary key,
gp varchar(50) not null,
data date not null
);

create table if not exists Resultados(
id int(3) not null primary key auto_increment,
codigo_corrida int(3),
numero_piloto int(2),
classificação int(2) not null,
foreign key (codigo_corrida) references Corridas(codigo),
foreign key (numero_piloto) references Pilotos(numero)
);

insert into Pilotos(numero,nome,pais,idade,equipe) values
(1,'Amanda Araujo','Brasil',20,'UniPaulistana'),
(2,'Neto Junior	','Portugal',22,'UniPorto'),
(3,'Arthur Sartori','Argentina',19,'Boi nos ares'),
(4,'Juliana Novais','Brasil',20,'UniPaulistana'),
(5,'Gabriela Nogueira','Portugal',21,'PortoUniversity');
Select * from pilotos;

insert into corridas(codigo,gp,data) Values
(1,'GP do Brasil','2024-05-30'),
(2,'GP da Argentina','2024-07-20'),
(3,'GP de Portugal','2024-08-25'),
(4,'GP Misterioso','2024-10-28');

Select * from corridas;

insert into resultados(codigo_corrida,numero_piloto,classificação) values
(1,1,3),
(2,3,2),
(3,5,1),
(4,4,1);
Select * from resultados;

-- Consultas com Inner JOIN

-- Consulta01
Select
      Pilotos.nome as Piloto,
	  Corridas.gp as Grande_Premio,
      Resultados.classificação as Classificação
From
      Resultados
Inner Join
      Pilotos on Resultados.numero_piloto = Pilotos.numero
Inner Join
      Corridas on Resultados.codigo_corrida = Corridas.codigo;
 
 -- Consulta 02: Filtrar Resultados por Classificação
 
Select
       Pilotos.nome as Nome_Piloto,
       Corridas.gp as Grande_Premio
From 
    Resultados
Inner join
    Pilotos on Resultados.numero_piloto = Pilotos.numero
Inner join
    Corridas on Resultados.codigo_corrida = Corridas.codigo
where Resultados.classificação = 1;

-- Consulta 03: Obter Pilotos com Múltiplas Participações

insert into resultados(codigo_corrida,numero_piloto,classificação) values
(1,2,3),
(2,2,2),
(4,2,1);
Select * from resultados;

insert into resultados(codigo_corrida,numero_piloto,classificação) values
(2,4,3),
(3,4,2);

Select
      count(Resultados.id) as Numero_de_Resultados,
      Pilotos.nome as Nome_piloto
From 
   Pilotos
Inner Join
   Resultados on Pilotos.numero = Resultados.numero_piloto
group by
	Pilotos.nome
having count(Resultados.id)>1;

-- Consulta 04: Listar os resultados de uma corrida especifica

Select
      Pilotos.nome as Nome_Piloto,
      Resultados.classificação as Classificação
From
   Resultados
Inner join
   Pilotos on Resultados.numero_piloto = Pilotos.numero
Inner join
   Corridas on Resultados.codigo_corrida = Corridas.codigo
Where
Corridas.gp = 'GP de Portugal';

-- Consulta 05: Exemplo de LEFT Join
-- O Left Join retorna todos os registros da tabela à esquerda (Pilotos)e
-- os registros correspondentes da tabela a direita (Resultados). 
-- Se não houver correspondência os resultados da tabela a direita
-- aparecerão como NULL

Select
      Pilotos.nome as Nome_Piloto,
      Resultados.classificação as Classificação
From 
    Pilotos
Left join
    Resultados on Pilotos.numero = Resultados.numero_piloto;

-- Consulta 06: Exemplo de LEFT Join com Corridas

Select
      Corridas.gp as Grande_Premio,
      Resultados.classificação as Classificação,
      Pilotos.nome as Nome_Piloto
From
    Corridas
Left Join
    Resultados ON Corridas.codigo = Resultados.codigo_corrida
Left Join
    Pilotos ON Resultados.numero_piloto = Pilotos.numero;
    
-- Consulta 07: Exemplo de Right Join
    
Select
      Pilotos.nome as Nome_Piloto,
      Resultados.classificação as Classificação
From 
    Resultados
Right join
    Pilotos on Pilotos.numero = Resultados.numero_piloto;
    
 -- Consulta 08: Exemplo de Right Join com Pilotos
 
 insert into corridas(codigo,gp,data) Values(5,'GP da Disney','2024-11-04');
 
 
 Select
      Pilotos.nome as Nome_piloto,
      Corridas.gp as Grande_Premio
From
    Pilotos
Right Join 
    Resultados ON Pilotos.numero = Resultados.numero_piloto
Right Join
    Corridas ON Resultados.codigo_corrida = Corridas.codigo;