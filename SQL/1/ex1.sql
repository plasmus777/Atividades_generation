CREATE DATABASE db_RH;

USE db_RH;

CREATE TABLE tb_Colaboradores (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
dataNascimento DATE NOT NULL,
salario DECIMAL (6, 2) NOT NULL,
cargo VARCHAR(255) NOT NULL
);

INSERT INTO tb_Colaboradores (nome, dataNascimento, salario, cargo) VALUES 
("Carlos", "2000-04-26", 2454.80, "Recrutador"),
("Ana", "1998-08-14", 3103.20, "Departamento de Pessoal"),
("José", "1999-04-26", 2271.00, "Treinador"),
("Gabriela", "2001-11-18", 2780.10, "Remuneração e Benefícios"),
("Wally", "2002-01-23", 1781.85, "Branding");

SELECT * FROM tb_Colaboradores;

SELECT * FROM tb_Colaboradores WHERE salario > 2000;

SELECT * FROM tb_Colaboradores WHERE salario < 2000;

UPDATE tb_Colaboradores SET salario = 1300 WHERE id = 3;

SELECT * FROM tb_Colaboradores;

DROP DATABASE db_RH;