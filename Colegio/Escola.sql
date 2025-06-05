-- TABLE
CREATE TABLE aluno(
  matricula VARCHAR(10) PRIMARY KEY,
  nome VARCHAR(50),
  idade INT,
  rua VARCHAR(10),
  CEP VARCHAR(9)
);

INSERT INTO aluno (matricula, nome, idade, rua, CEP) VALUES
('001', 'João da Silva', 18, 'Rua Sem Saída', 21222-333);

INSERT INTO aluno VALUES
('002', 'Ana da Silva', 19, 'Rua Sem Saída', 21222-333),
('003', 'Bruno', 28, 'Rua B', 21222-333),
('004', 'Carol', 48, 'Rua B', 21222-333),
('005', 'Gustavo', 25, 'Rua C', 21222-333);

SELECT * FROM aluno;

SELECT idade FROM aluno;
SELECT idade, rua FROM aluno;

SELECT * FROM aluno WHERE rua = 'Rua B';
SELECT * FROM aluno WHERE rua = 'Rua Sem Saída';
SELECT * FROM aluno WHERE idade >= 30;
SELECT * FROM aluno WHERE idade < 30;
SELECT * FROM aluno WHERE idade != 30; 'diferente'
SELECT * FROM aluno WHERE idade >= 18 AND idade <= 25; 'e'
SELECT * FROM aluno WHERE idade >= 22 OR rua = 'Rua B'; 'ou'

'1 - crie uma tabela professor'
CREATE TABLE professor(
  CPF VARCHAR(14) PRIMARY KEY,
  nome VARCHAR(60),
  disciplina VARCHAR(20),
  email VARCHAR(60),
  telefone VARCHAR(15),
  salario INT,
  idade INT
);
'2 - inserir 5 registros'
INSERT INTO professor VALUES
('123.568.879-96', 'Anderson', 'Matemática', 'and@hotmail.com', '(24) 2296-4769', 10300, 54),
('123.333.879-55', 'Teofilo', 'Matemática', 'teo@click21.com', '(24) 2279-0009', 3300, 62),
('123.444.879-58', 'Bianca', 'Geografia', 'bia@gmail.com', '(24) 98745-1469', 8900, 49),
('123.999.879-21', 'Virgínia', 'Artes', 'virginia@yahoo.com.br', '(32) 3333-7894', 4100,29),
('123.000.879-35', 'Antonio', 'Economia', 'amull@gmail.com', '(47) 4569-2211', 15300,36);

'3 - selecionar todos os dados da tabela professor'
SELECT * FROM professor;

'4 - selecionar todos com disciplina matematica'
SELECT * FROM professor WHERE disciplina = 'Matemática';

'5 - selecionar todos com idade maior de 50 anos'
SELECT * FROM professor WHERE idade > 50;

'6 - selecionar todos com salario maior de 10k'
SELECT * FROM professor WHERE salario > 10000;

'7 - selecionar todos com salario menor que 3000 e idade maior que 50'
SELECT * FROM professor WHERE salario < 3000 and idade >50;

'8 - selecionar nome, salario, idade dos professores com idade entre 30 e 40 anos'
SELECT nome, salario, idade FROM professor WHERE idade >= 30 AND idade <= 40;

'DESAFIO 1 - Atualizar salario para 5000 de todos que recebem menos de 5000'
UPDATE professor SET salario = 5000 WHERE salario < 5000;
SELECT * FROM professor;

'DESAFIO 2 - EXCLUIR UM PROFESSOR COM DETERMINADO CPF (A SUA ESCOLHA)'
DELETE FROM professor WHERE CPF = '123.000.879-35';
SELECT * FROM professor;

 
-- INDEX
 
-- TRIGGER
 
-- VIEW

'https://sqliteonline.com/'
 
