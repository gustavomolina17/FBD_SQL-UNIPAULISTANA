<h1 align="center">
    FBD / SQL - UNIPAULISTANA - 2º Semestre de 2024
</h1>

## Curso
- Tecnólogo em Análise e Desenvolvimento de Sistemas (3º Semestre)

## Carga horária
- 68 horas

## Cronograma 

- [x]  Aula 01 - Apresentação da Disciplina 
    - Apresentação do Professor e da Disciplina
- [x]  Aula 02 - Conceitos Fundamentais de Banco de Dados
- [x]  Aula 03 - Introdução a Modelagem Conceitual 
- [x]  Aula 04 - Introdução a Modelagem Conceitual
- [x]  Aula 05 - Cardinalidades / Formas Normais
- [x]  Aula 06 - SQL - DDL
- [x]  Aula 07 - SQL - DML
- [x]  Aula 08 - SQL - DQL
- [x]  Aula 09 - SQL - DQL
- [x]  Aula 10 - SQL - Avançado
- [x]  Aula 11 - SQL - SubSelect
- [x]  Aula 12 - SQL - JOINS
- [x]  Aula 13 - Prova Específica
- [x]  Aula 14 - Prova Sub

## Atividade 1 

- [x]  Ler o capítulo do livro (6 - Cap_atv) e responder:
    - O que é um banco de dados relacional?
    - Quais são os componentes principais de um banco de dados?
    - Defina Chave - Primária, Chave Estrangeira, Chave Alternativa.
    - Qual a importância de um Sistema Gerenciador de Banco de Dados (SGBD)?
     
## Atividade 2

- [x] Uma floricultura deseja informatizar suas operações. Inicialmente, deseja manter um cadastro de todos os seus clientes, mantendo informações como: RG, nome, telefone e
endereço. Deseja também manter um cadastro contendo informações sobre os produtos que vende, tais como: nome do produto, tipo (flor, vaso, planta,...), preço e quantidade em estoque.
Quando um cliente faz uma compra, a mesma é armazenada, mantendo informação sobre ocliente que fez a compra, a data da compra, o valor total e os produtos comprados.
    - Grife as entidades que você identificar no texto acima.
    - Liste as entidades que você grifou.
    - Liste os relacionamentos entre as entidades.
    - Crie o modelo Entidade Relacionamento (Utilizando o BR Modelo).

- [x] Uma Escola tem várias turmas. Uma turma tem vários professores, sendo que um professor pode ministrar aulas em mais de uma turma. Uma turma tem sempre aulas na
mesma sala, mas uma sala pode estar associada a várias turmas (com horários diferentes).
    - Grife as entidades que você identificar no texto acima.
    - Liste as entidades que você grifou.
    - Liste os relacionamentos entre as entidades.
    - Crie o modelo Entidade Relacionamento (Utilizando o BR Modelo).

## Atividade 3

- [x] Você foi designado para desenvolver um sistema de gerenciamento para uma biblioteca. O objetivo é criar um banco de dados que armazene informações sobre livros e usuários.

- [x] Criação do Banco de Dados: Crie um banco de dados chamado Biblioteca.

- [x] Tabela Livros: Deve conter as seguintes colunas:
    - id: Identificador único do livro (inteiro, 3 dígitos, chave primária).
    - titulo: Título do livro (caractere, máximo de 100).
    - autor: Nome do autor do livro (caractere, máximo de 50).
    - ano_publicacao: Ano em que o livro foi publicado (inteiro, 4 dígitos).
    - genero: Gênero do livro (caractere, máximo de 30).
    - disponivel: Indica se o livro está disponível para empréstimo (booleano).

- [x] Tabela Usuários: Deve conter as seguintes colunas:
    - id: Identificador único do usuário (inteiro, 3 dígitos, chave primária).
    - nome: Nome completo do usuário (caractere, máximo de 50).
    - email: Endereço de e-mail do usuário (caractere, máximo de 100).
    - telefone: Número de telefone do usuário (caractere, máximo de 15).
    - endereco: Endereço do usuário (caractere, máximo de 100).
    - data_registro: Data em que o usuário se registrou na biblioteca (data).

- [x] Alterações: Após a criação das tabelas, realize as seguintes alterações:
    - Adicione o campo data_registro na tabela Usuarios.
    - Exclua a coluna disponivel da tabela Livros.
      
 - [x] Consultas: Realize consultas para exibir todos os registros das tabelas Livros e Usuarios.

## Atividade 4

- [x] Usando a base projetoformula1 criada em aula monte as seguintes consultas:
    - Liste os nomes dos pilotos que estão na equipe 'Aston Martin' e têm mais pontos do que o piloto mais velho da equipe 'Ferrari'.
    - Encontre o número total de pilotos que têm mais pontos do que a média dos pontos de todos os pilotos.
    - Quais pilotos têm menos pontos do que a soma dos pontos dos pilotos da equipe 'Red Bull Racing'?
    - Liste o nome dos pilotos que têm a mesma quantidade de pontos que o piloto com o nome 'Sergio Pérez'.
    - Mostre os nomes dos pilotos que têm mais pontos do que a média dos pontos dos pilotos que participaram do GP 2.
     
## Atividade 5

- [x] Usando a base  formula1_join crie as consultas abaixo:
    - Crie uma consulta que retorne os nomes de todos os pilotos e suas respectivas classificações nas corridas. Utilize INNER JOIN para relacionar as tabelas Pilotos, Resultados e Corridas.
    - Escreva uma consulta que retorne os nomes e as idades de todos os pilotos que são do Brasil.
    - Crie uma consulta que lista todas as corridas que não tiveram resultados registrados. Utilize LEFT JOIN para encontrar corridas que não possuem correspondências na tabela Resultados.
    - Crie uma consulta que conte quantas vezes cada piloto participou de corridas e retorne apenas aqueles que participaram mais de uma vez. Utilize GROUP BY e HAVING para filtrar os resultados.
    - Escreva uma consulta que calcule a classificação média dos pilotos que participaram do "GP do Brasil". Utilize AVG() e JOIN para juntar as tabelas necessárias.
    - Crie uma consulta que retorne os nomes dos pilotos que participaram de menos de duas corridas. Use LEFT JOIN e GROUP BY para contar as participações.
    - Elabore uma consulta que retorne a classificação de todos os pilotos em cada Grande Prêmio. Mostre o nome do piloto, o nome do Grande Prêmio e a classificação.
    - Adicione um novo piloto à tabela Pilotos e registre pelo menos uma corrida nas tabelas Resultados e Corridas. Em seguida, crie uma consulta para verificar se os dados foram inseridos corretamente.
    - Crie uma consulta que retorne todos os pilotos que terminaram em 1ª ou 2ª posição em qualquer corrida. Utilize WHERE para filtrar as classificações.
    - Escreva uma consulta que retorne os nomes dos pilotos e suas respectivas equipes. Utilize JOIN entre as tabelas conforme necessário.
