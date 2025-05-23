CREATE TABLE produtos (
  id INT PRIMARY KEY,
  produto VARCHAR(50),
  quantidade INT,
  preco DECIMAL(10, 2),
  total DECIMAL(10, 2) GENERATED ALWAYS AS (ROUND(quantidade * preco, 2)) STORED,
  desconto DECIMAL(10, 2) GENERATED ALWAYS AS (ROUND(quantidade * preco * 0.1, 2)) STORED,
  imposto DECIMAL(10, 2) GENERATED ALWAYS AS (ROUND(quantidade * preco * 0.1, 2)) STORED
);
INSERT INTO produtos (id, produto, quantidade, preco) VALUES
(1, 'Mouse', 2, 6.99),
(2, 'Mouse', 5, 24.99),
(3, 'Carregador', 12, 31.99),
(4, 'Fone', 4, 16.99),
(5, 'Memória RAM', 3, 83.99),
(6, 'Teclado', 15, 36.99),
(7, 'Estabilizador', 1, 306.99),
(8, 'Fonte', 2, 208.99);

SELECT * FROM produtos;

'Mostre produtos em ordem alfbética com desconto de 10%'
SELECT produto, (ROUND(preco * 0.9,2)) AS preco10 FROM produtos ORDER BY produto;

'a) mostrar produto, quantidade, preco, total que será quantidade * preco em ordem alfabética os produtos'
SELECT produto, quantidade, preco, total FROM produtos ORDER BY produto;

'b) mostrar produto, quantidade, preco, total que será quantidade * preco e 10% sobre o total em ordem alfabética os produtos'
SELECT produto, quantidade, preco, total, desconto FROM produtos ORDER BY produto;

'c) mostrar produto, quantidade, preco, total que será quantidade * preco e adicionando 10% sobre o total em ordem alfabética os produtos'
SELECT produto, quantidade, preco, total, (ROUND(total * 1.1,2)) AS total10 FROM produtos ORDER BY produto; 'acrescimo de 10% no total'

'd) Calcular a média do preço unitário dos produtos'
SELECT avg(preco) as MediaPreco FROM produtos;

'e) Contar o número total de pedidos'
SELECT COUNT(id) as TotalPedidos FROM produtos;

'f) Encontrar o preço unitário mais alto e o mais baixo'
SELECT max(preco) as PrecoMaisAlto FROM produtos;
SELECT min(preco) as PrecoMaisBaixo FROM produtos;

'g) Somar o total de quantidade e preço'
SELECT sum(quantidade) as TotalQuantidade FROM produtos;
SELECT sum(preco) as TotalPreco FROM produtos;

'h) Mostrar a maior quantidade e a menor'
SELECT max(quantidade) as QuantidadeMaisAlta FROM produtos;
SELECT min(quantidade) as QuantidadeMaisBaixa FROM produtos;

'i) mostrar o total de vendas (quantidade * preco) agrupar por produto'
SELECT total FROM produtos ORDER BY produto;

SELECT * FROM produtos;
-- INDEX
 
-- TRIGGER
 
-- VIEW
 
