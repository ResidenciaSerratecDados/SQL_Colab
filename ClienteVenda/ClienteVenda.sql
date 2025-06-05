CREATE TABLE Clientes (
  ClienteID INT PRIMARY KEY,
  Nome VARCHAR(100) NOT NULL,
  Cidade VARCHAR(50)
);
INSERT INTO Clientes(ClienteID, Nome, Cidade) VALUES
(1, 'Ana Souza', 'Rio de Janeiro'),
(2, 'Pedro Alves', 'São Paulo'),
(3, 'Carla Mendes', 'Rio de Janeiro'),
(4, 'Lucas Oliveira', 'Belo Horizonte');

SELECT * FROM Clientes;

CREATE TABLE VendasT(
  VendaID INT PRIMARY KEY,
  ClientesID INT,
  DataVenda INT,
  ValorTotal INT
);
INSERT INTO VendasT VALUES
(101, 1, 20250514, 150),
(102, 2, 20250516, 220),
(103, 1, 20250517, 85),
(104, 3, 20250518, 310),
(105, 2, 2020519, 120);
 
SELECT * FROM VendasT;
 
SELECT
    c.Nome AS NomeCliente,
    v.VendaID,
    v.DataVenda,
    v.ValorTotal
FROM
    Clientes C
INNER JOIN
    VendasT v ON c.ClienteID = v.ClientesID;
 
-- INDEX
 
-- TRIGGER
 
-- VIEW
 
