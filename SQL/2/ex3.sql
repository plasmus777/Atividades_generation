CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
codigo BIGINT NOT NULL,
preco DECIMAL(6, 2) NOT NULL,
categoria BIGINT NOT NULL,
FOREIGN KEY (categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES 
("Comprimidos", "Cartelas com comprimidos de diversos tipos"),
("Pomadas", "Pomadas para aplicação externa"),
("Xaropes", "Líquidos que devem ser ingeridos"),
("Nasal", "Produtos que aplicam medicamentos pela via respiratória"),
("Outros", "Produtos de tipos diversos");

INSERT INTO tb_produtos (nome, codigo, preco, categoria) VALUES 
("Comprimido para resfriado", 614934078547, 35.50, 1),
("Pastilhas para tosse", 355790646260, 3.50, 5),
("Xarope para dor de cabeça", 046669354381, 11.50, 3),
("Inalador ultrassônico", 2363859070575, 125.30, 4),
("Pomada para queimaduras", 0076746699456, 13.45, 2),
("Comprimido para náuseas", 11259947030375, 25.39, 1),
("Soro fisiológico", 74624537590606, 15.49, 5),
("Pomada para dores musculares", 98457332423, 29.39, 2);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria = tb_categorias.id
WHERE tb_categorias.nome = "Pomadas";

DROP DATABASE db_farmacia_bem_estar;