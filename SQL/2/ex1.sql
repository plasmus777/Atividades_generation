CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nomeClasse VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nomePersonagem VARCHAR(255),
ataque INT NOT NULL,
defesa INT NOT NULL,
vidaMaxima INT NOT NULL,
vidaAtual INT NOT NULL,
classe BIGINT NOT NULL,
FOREIGN KEY (classe) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nomeClasse, descricao) VALUES 
("Mago", "Alto ataque, defesa e vida baixas"),
("Paladino", "Ataque, defesa e vida equilibrados"),
("Cavaleiro", "Alta defesa, ataque e vida moderados"),
("Arqueiro", "Baixo ataque, defesa e vida moderadas"),
("Mago Sombrio", "Vida alta, ataque e defesa moderados");

INSERT INTO tb_personagens (nomePersonagem, ataque, defesa, vidaMaxima, vidaAtual, classe) VALUES 
("BomTom6594", 1750, 1750, 100, 100, 2),
("JoãoLadrão0845", 2500, 750, 75, 75, 1),
("Marlin7165", 1250, 2500, 100, 100, 3),
("RobôTombô1535", 1250, 1250, 200, 200, 5),
("PulaMula7994", 1000, 1250, 100, 100, 4),
("ZipZap5328", 1250, 1250, 200, 200, 5),
("QueijoPrato5783", 1250, 2500, 100, 100, 3),
("Comerciante1295", 1750, 1750, 100, 100, 2);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nomePersonagem LIKE "%C%";

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe = tb_classes.id
WHERE tb_classes.nomeClasse = "Paladino";

DROP DATABASE db_generation_game_online;