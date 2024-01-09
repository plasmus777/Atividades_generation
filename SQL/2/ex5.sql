CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

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
("Aparelhos", "Dispositivos eletrônicos"),
("Comprimidos", "Comprimidos em geral"),
("Xaropes", "Remédios líquidos diversos"),
("Equipamento", "Equipamentos de auxílio médico"),
("Outros", "Produtos diversos");

INSERT INTO tb_produtos (nome, quantidade, preco, categoria) VALUES 
("Inalador ultrassônico", 20, 200.00, 1),
("Comprimidos para o coração", 15, 210.00, 2),
("Cadeira de rodas", 5, 1300.00, 4),
("Xarope para tosse", 25, 35.00, 3),
("Baterias AA", 8, 8.00, 5),
("Medidor de glicose", 6, 285.00, 1),
("Xarope para dores de cabeça", 17, 35.00, 3),
("Comprimidos para inflamação", 13, 27.75, 2);

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria = tb_categorias.id
WHERE tb_categorias.nome = "Equipamento";

DROP DATABASE db_construindo_vidas;