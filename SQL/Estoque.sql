CREATE DATABASE db_estoque;

-- DROP DATABASE db_estoque;

USE db_estoque;

CREATE TABLE tb_marcas(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(20) NOT NULL,
ativo BOOLEAN,
PRIMARY KEY(id)
);

SELECT * FROM tb_marcas;

INSERT INTO tb_marcas(nome, ativo) VALUES ("nike", true);
INSERT INTO tb_marcas(nome, ativo) VALUES ("adidas", false);
INSERT INTO tb_marcas(nome, ativo) VALUES ("vans", true);

UPDATE tb_marcas SET ativo = TRUE WHERE id = 2;

SELECT nome, ativo FROM tb_marcas WHERE id <> 2;

DELETE FROM tb_marcas WHERE id = 3;

ALTER TABLE tb_marcas ADD descricao VARCHAR(255);

ALTER TABLE tb_marcas DROP COLUMN descricao;

DROP TABLE tb_marcas;

INSERT INTO tb_marcas(nome, ativo) VALUES
("nike", TRUE),
("adidas", TRUE),
("H&M", TRUE),
("Zara", TRUE),
("Louis Vuitton", TRUE),
("Adidas", TRUE),
("Uniqlo", TRUE),
("Hermès", TRUE),
("Rolex", TRUE),
("Gucci", TRUE),
("Cartier", TRUE),
("Polo", TRUE),
("Armany", TRUE);

SELECT * FROM tb_marcas;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(30) NOT NULL,
preco DECIMAL,
marca_id BIGINT NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(marca_id) REFERENCES tb_marcas(id));

SELECT * FROM tb_produtos

INSERT INTO tb_produtos(nome, preco, marca_id) VALUES
("camisa", 50, 1),
("tênis", 199.90, 2);

ALTER TABLE tb_produtos MODIFY COLUMN preco DECIMAL(6, 2);

INSERT INTO tb_produtos(nome, preco, marca_id) VALUES
("calça", 79.80, 3);

-- INSERT INTO tb_produtos(nome, preco, marca_id) VALUES
-- ("calça", 79.80, 99);

SELECT * FROM tb_produtos WHERE marca_id = 5 AND nome LIKE '%cal%';
