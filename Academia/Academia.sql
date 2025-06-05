CREATE TABLE Alunos (
  matricula PRIMARY KEY UNIQUE,
  Nome VARCHAR(100),
  DataNascimento VARCHAR(10),
  Telefone VARCHAR(20)
);
INSERT INTO Alunos VALUES
(1001,'Felipe Neto', '06/08/1987','(21)98875-4141'),
(1002,'Lucas Neto', '06/04/1992','(21)98875-3535'),
(1003,'Luciano Amaral', '06/08/1980','(11)99975-4141'),
(1004,'Pedro Novaes', '05/03/1997','(21)98975-4433'),
(1005,'João Guilherme', '13/07/2001','(62)98185-5351');

SELECT * FROM Alunos;

CREATE TABLE Turmas (
  Turma PRIMARY KEY UNIQUE,
  Classe VARCHAR(100),
  Horario VARCHAR(100),
  Vagas VARCHAR(3)
);
INSERT INTO Turmas VALUES
(201,'Musculação','Seg. à Sáb. - 06:00 às 20:00', 300),
(202,'Natação','Seg/Qua/Sex - 06:00 às 20:00', 120),
(203,'Yoga','Ter/Qui - 06:00 às 20:00', 75),
(204,'Dança','Sábados - 06:00 às 20:00', 150),
(205,'Pilates','Seg. à Sáb. - 06:00 às 20:00', 300);

SELECT * FROM Turmas;

CREATE TABLE Professores (
  Registro PRIMARY KEY UNIQUE,
  Name VARCHAR(100)
);
INSERT INTO Professores VALUES
(11,'Sidney'),
(12,'Marco Aurelio'),
(13,'Magda'),
(14,'Eliane'),
(15,'Adriana');

SELECT * FROM Professores;

CREATE TABLE Matriculas(
  id PRIMARY KEY UNIQUE,
  aluno INT,
  aula INT,
  professor INT,
  FOREIGN KEY (aluno) REFERENCES Alunos(matricula),
  FOREIGN KEY (aula) REFERENCES Turmas(Turma),
  FOREIGN KEY (professor) REFERENCES Professores(Registro)
);
INSERT INTO Matriculas VALUES
(1, 1001, 201, 11),
(2, 1003, 201, 11),
(3, 1004, 201, 11),
(4, 1005, 201, 11),
(5, 1002,NULL,NULL),
(6, 1005, 204, 14),
(7, 1005, 205, 15),
(8, 1003, 203, 13),
(9, 1004, 202, 12),
(10, 1004, 205, 15),
(11, 1001, 202, 15);

SELECT * FROM Matriculas;

SELECT
    a.Nome AS Aluno,
    t.Classe AS Atividade,
    t.Horario AS Horario,
    p.Name AS Professor
FROM Matriculas m
INNER JOIN Alunos a ON m.aluno = a.matricula
INNER JOIN Turmas t ON m.aula = t.Turma
INNER JOIN Professores p ON m.professor = p.Registro;
-- INDEX
 
-- TRIGGER
 
-- VIEW
 
