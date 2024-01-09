CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
descricao VARCHAR(255) NOT NULL,
refrigerante BOOLEAN NOT NULL
);

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL,
preco DECIMAL(6, 2) NOT NULL,
categoria BIGINT NOT NULL,
FOREIGN KEY (categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (descricao, refrigerante) VALUES 
("Queijos", FALSE),
("Catupiry", TRUE),
("Doces", TRUE),
("Frango", FALSE),
("Calabresa", TRUE);

INSERT INTO tb_pizzas (nome, descricao, preco, categoria) VALUES 
("Pizza Quatro Queijos", "Provolone, Muzzarela, Parmesão e Gorgonzola", 63.00, 1),
("Pizza de Chocolate", "Chocolate Derretido com Morango", 67.00, 3),
("Pizza Portuguesa", "Calabresa, Cebola, Ovo Cozido e Queijo Muzzarela", 55.00, 5),
("Pizza Três Queijos", "Provolone, Muzzarela e Gorgonzola", 62.00, 1),
("Pizza de Catupiry", "Catupiry, Molho de Tomate e Manjericão", 60.00, 2),
("Pizza de Doce de Leite", "Doce de Leite, Amendoim e Baunilha", 65.00, 3),
("Pizza à Moda da Casa", "Frango Desfiado, Molho de Tomate, Manjericão e Queijo Parmesão", 62.00, 4),
("Pizza de Calabresa", "Calabresa e Queijo Muzzarela", 55.00, 5

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria = tb_categorias.id
WHERE tb_categorias.descricao = "Queijos";

DROP DATABASE db_pizzaria_legal;