CREATE DATABASE db_cidade_dos_vegetais;

USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
quantidade BIGINT NOT NULL,
preco DECIMAL(6, 2) NOT NULL,
categoria BIGINT NOT NULL,
FOREIGN KEY (categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES 
("Frutas", "Frutas de variados tipos"),
("Legumes", "Legumes de variados tipos"),
("Verduras", "Verduras de variados tipos"),
("Cultivo", "Produtos relacionados ao cultivo de alimentos"),
("Outros", "Produtos diversos");

INSERT INTO tb_produtos (nome, quantidade, preco, categoria) VALUES 
("Maçã Verde", 25, 1.50, 1),
("Tomate Italiano", 32, 2.50, 1),
("Couve", 18, 6.50, 3),
("Adubo Orgânico", 10, 15.59, 4),
("Cenoura", 14, 2.50, 2),
("Mel", 8, 15.50, 5),
("Espinafre", 23, 5.00, 3),
("Vagem", 21, 3.50, 2);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria = tb_categorias.id
WHERE tb_categorias.nome = "Verduras";

DROP DATABASE db_cidade_dos_vegetais;