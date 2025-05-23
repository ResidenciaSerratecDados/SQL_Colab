-- TABLE
CREATE TABLE cliente (
  nome VARCHAR(50),
  cpf VARCHAR(11) PRIMARY KEY,
  email VARCHAR(20),
  idade INT
);
INSERT INTO cliente VALUES
('João','003038879', 'seu@meu.com.br', 18),
('Ana','0030370009', 'nosso@meu.com.br', 38),
('Bruno','003037559', 'tuyo@meu.com.br', 28);

SELECT * FROM cliente ORDER BY nome;
SELECT nome,idade, idade + 10 AS idade_nova FROM cliente;
SELECT nome,idade, idade * 0.5 AS idadecom50 FROM cliente;
SELECT nome,idade, idade * 1.5 AS idadecom50 FROM cliente;
SELECT sum(idade) as soma FROM cliente; 'soma'
SELECT avg(idade) as media FROM cliente; 'media aritmetica'
SELECT COUNT(idade) as contagem FROM cliente; 'contagem'
SELECT max(idade) as maximo FROM cliente; 'valor maximo'
SELECT min(idade) as minimo FROM cliente; 'valor minimo'
SELECT nome, idade, sum(idade) as soma FROM cliente GROUP BY nome; 

SELECT * FROM cliente;
 
-- INDEX
 
-- TRIGGER
 
-- VIEW
 
