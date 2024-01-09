CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL,
preco DECIMAL (6, 2) NOT NULL,
quantidade INT NOT NULL
);

INSERT INTO tb_produtos (nome, descricao, preco, quantidade) VALUES 
("Lâmpada LED", "100W luz branca fria", 68.50, 34),
("Coador de Café", "Sem filtro de papel em aço inox 103", 38.10, 15),
("Chiclete Mintas", "Sem açúcar 45 pastilhas", 15.99, 20),
("Pacote de Baterias Felleps", "Cartela com 16 pilhas palito (AAA)", 29.95, 30),
("Controle Universal Infravermelho", "Controle remoto inteligente com conexão por aplicativo móvel", 49.99, 7),
("Isqueiro Eletrônico", "Acendedor elétrico recarregável por USB versão gold", 22.49, 12),
("Tesoura Larmontisna", "Tesoura de costura 8", 50.99, 8),
("Fone bluetooth", "Modelo I12 Tws sem fio touch recarregável", 25.99, 9);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (nome, descricao, preco, quantidade) VALUES
("Televisão Plasma KF", "Televisão LED HD 43'' KF AI Processor 60Hz", 2089.99, 5);

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 60.99 WHERE id = 1;

SELECT * FROM tb_produtos;

DROP DATABASE db_ecommerce;