-- Comentário de linha única

/*Comentário
Multilinha*/

-- Cria o banco de dados db_testes
CREATE DATABASE db_testes;

-- Utilizar o banco de dados db_testes
USE db_testes;

-- Cria a tabela tb_produtos
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade INT NOT NULL,
dataValidade DATE,
preco DECIMAL(10,2) NOT NULL,
PRIMARY KEY (id));

-- Inserir registros na tabela tb_produtos
INSERT INTO tb_produtos (nome, quantidade, dataValidade, preco)
VALUES ("tomate", 34, "2023-12-15", 8.00),
("manga", 25, "2024-01-15", 5.99),
("goiaba", 18, "2024-01-15", 3.50),
("morango", 30, "2024-01-15", 10.99),
("abacaxi", 50, "2024-01-15", 11.99);

-- Selecionar todos os registros da tabela tb_produtos
SELECT * FROM tb_produtos;

-- Selecionar todos os atributos dos registros da tabela tb_produtos
SELECT nome FROM tb_produtos;

SELECT nome, preco FROM tb_produtos;

-- Selecionar todos os registros da tabela tb_produtos onde (condição) ocorre
SELECT * FROM tb_produtos WHERE id = 3;

SELECT * FROM tb_produtos WHERE preco > 10;

SELECT * FROM tb_produtos WHERE preco <> 10.99;

SELECT * FROM tb_produtos WHERE preco > 6 AND quantidade < 40;

-- Alterar o tipo de dados do preco na tabela tb_produtos
ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2);

ALTER TABLE tb_produtos ADD descricao VARCHAR(255);

-- Habilita/desabilita a atualização de dados segura no mysql
SET SQL_SAFE_UPDATES = 1;

-- Atualiza os campos descricao dos registros da tabela tb_produtos
UPDATE tb_produtos SET descricao = "Tomate Cereja" WHERE id = 1;
UPDATE tb_produtos SET descricao = "Tomate Italiano" WHERE id = 2;
UPDATE tb_produtos SET descricao = "Manga Palmer" WHERE id = 3;
UPDATE tb_produtos SET descricao = "Goiaba Branca" WHERE id = 4;
UPDATE tb_produtos SET descricao = "Morango Selvagem" WHERE id = 5;
UPDATE tb_produtos SET descricao = "Abacaxi Cayenne" WHERE id = 6;

DELETE FROM tb_produtos WHERE id = 2;

USE db_testes;

ALTER TABLE tb_produtos DROP descricao;

ALTER TABLE tb_produtos CHANGE nome nomeproduto VARCHAR(255);

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
descricao VARCHAR(255) NOT NULL
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (descricao) VALUES
("Frutas"),
("Verduras"),
("Legumes"),
("Temperos"),
("Ovos"),
("Outros");

ALTER TABLE tb_produtos ADD categoriaId BIGINT;

SELECT * FROM tb_produtos;

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias
FOREIGN KEY (categoriaId) REFERENCES tb_categorias(id);

UPDATE tb_produtos SET categoriaId = 1 WHERE id = 1;
UPDATE tb_produtos SET categoriaId = 1 WHERE id = 2;
UPDATE tb_produtos SET categoriaId = 1 WHERE id = 3;
UPDATE tb_produtos SET categoriaId = 1 WHERE id = 4;
UPDATE tb_produtos SET categoriaId = 1 WHERE id = 5;
UPDATE tb_produtos SET categoriaId = 1 WHERE id = 6;

INSERT INTO tb_produtos (nomeproduto, quantidade, datavalidade, preco, categoriaId) VALUES 
("Couve", 30, "2024-01-25", 5.00, 2),
("Ovo Caipira", 60, "2024-01-35", 5.00, 5),
("Orégano", 25, "2024-01-23", 4.99, 4),
("Filtro de café", 15, "2037-01-01", 3.99, 6),
("Couve", 30, "2024-01-25", 5.00, 2),
("Couve", 30, "2024-01-25", 5.00, 2),
("Couve", 30, "2024-01-25", 5.00, 2);

SELECT * FROM tb_produtos ORDER BY nomeproduto DESC;

SELECT * FROM tb_produtos WHERE preco IN (5.00, 3.99, 10.99);

SELECT * FROM tb_produtos WHERE preco BETWEEN 8.00 AND 15.00;

SELECT * FROM tb_produtos WHERE nomeproduto LIKE "%mate";

SELECT * FROM tb_produtos WHERE nomeproduto LIKE "M_r%";