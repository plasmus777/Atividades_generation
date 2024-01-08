CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
sala INT NOT NULL,
nascimento DATE NOT NULL,
notaFinal DECIMAL(2, 2) NOT NULL
);

ALTER TABLE tb_estudantes MODIFY notaFinal DECIMAL(4, 2);

INSERT INTO tb_estudantes (nome, sala, nascimento, notaFinal) VALUES 
("Ricardo Almeida", 1, "2008-09-11", 8.5),
("Maria Silveira", 2, "2007-05-07", 7.33),
("Bruno dos Santos", 1, "2009-02-01", 5.2),
("Luana Martins", 2, "2007-06-11", 9.75),
("Alexandro Ferreira", 1, "2008-10-23", 6.5),
("Geovanna Lima", 1, "2008-04-29", 3.0),
("Renan Alves", 2, "2009-03-20", 6.0),
("Almira Castro", 2, "2007-02-16", 4.75);

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE notaFinal > 7;

SELECT * FROM tb_estudantes WHERE notaFinal < 7;

UPDATE tb_estudantes SET notaFinal = 8.25 WHERE id = 3;

SELECT * FROM tb_estudantes;

DROP DATABASE db_escola;