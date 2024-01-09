CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_cursos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
inicio DATE NOT NULL, 
termino DATE NOT NULL,
preco DECIMAL(6, 2) NOT NULL,
categoria BIGINT NOT NULL,
FOREIGN KEY (categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES 
("Tecnologias", "Tecnologias diversas"),
("Idiomas", "Escrita, leitura e conversação"),
("Segurança", "Protocolos de segurança para diversos temas"),
("Habilidades Técnicas", "Aprenda como fazer tarefas diversas"),
("Outros", "Cursos diversos");

INSERT INTO tb_cursos (nome, inicio, termino, preco, categoria) VALUES 
("Curso Programador Web", "2024-01-10", "2024-03-10", 379.99, 1),
("Curso de Inglês", "2024-01-15", "2024-03-15", 199.99, 2),
("Curso de Informática", "2024-02-24", "2024-04-27", 149.99, 1),
("Curso de Segurança Elétrica", "2024-01-01", "2024-03-06", 274.99, 3),
("Curso de Criação de Aplicativos Mobile", "2024-05-05", "2024-11-05", 329.99, 1),
("Curso de Espanhol", "2024-01-10", "2024-03-10", 199.99, 2),
("Curso de Marcenaria", "2024-07-12", "2024-08-12", 259.99, 4),
("Curso de Jardinagem", "2024-04-03", "2024-05-03", 99.99, 5);

SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome LIKE "%J%";

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoria = tb_categorias.id;

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoria = tb_categorias.id
WHERE tb_categorias.nome = "Idiomas";

DROP DATABASE db_curso_da_minha_vida;