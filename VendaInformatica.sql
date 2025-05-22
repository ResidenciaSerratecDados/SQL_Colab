CREATE TABLE venda (
  id INT PRIMARY KEY,
  produto VARCHAR(50),
  quantidade INT,
  preco DECIMAL(10, 2),
  total DECIMAL(10, 2) GENERATED ALWAYS AS (ROUND(quantidade * preco, 2)) STORED
);
INSERT INTO venda (id, produto, quantidade, preco) VALUES
(1, 'Mouse', 2, 6.99),
(2, 'Mouse', 5, 24.99),
(3, 'Mouse', 12, 1.99),
(4, 'Mouse', 4, 16.99),
(5, 'Memória RAM', 3, 83.99),
(6, 'Teclado', 15, 36.99),
(7, 'Estabilizador', 1, 306.99),
(8, 'Fonte', 2, 208.99);

SELECT * FROM venda;

'a) todos os produtos com quantidade inferior a 10'
SELECT * FROM venda WHERE quantidade < 10;

'b) tosos os produtos com preço maior que 50'
SELECT * FROM venda WHERE preco > 50;

'c) com todos os produtos com preço menor que 50 e quantidade maior que 5'
SELECT * FROM venda WHERE preco < 50 AND quantidade > 5;

'd) todos os mouses mostrando apenas a quantidade e o preço'
SELECT quantidade, preco FROM venda WHERE produto = 'Mouse';

'e) todos os mouses com preço maior que 10'
SELECT * FROM venda WHERE produto = 'Mouse' AND preco > 10;

'f) atualizar a quantidade para 10 de todos os mouses'
UPDATE venda SET quantidade = 10 WHERE produto = 'Mouse';

'g) atualizar o preço em 10% para todos os produtos com preço inferior a 20'
UPDATE venda SET preco = ROUND(preco * 1.1, 2) WHERE preco < 10;

'h) Atualizar os preços dos mouses aumentando em 20%'
UPDATE venda SET preco = ROUND(preco * 1.2, 2) WHERE produto = 'Mouse';

SELECT * FROM venda;
 
-- INDEX
 
-- TRIGGER
 
-- VIEW
 
