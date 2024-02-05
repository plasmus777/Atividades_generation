USE db_blogpessoal;

INSERT INTO tb_postagens (data, texto, titulo) VALUES 
("2024-01-05", "Comprei um painel solar para esquentar a água do chuveiro, mas deixei cair no chão e quebrou uma parte. É possível repará-lo?", "Como posso reparar um painel solar?"),
("2024-01-03", "Alguém aí tem uma receita boa pra fazer pudim? Sempre que faço, a calda fica queimada!", "Receita de pudim fácil?"),
("2024-01-09", "Nunca vi um produto tão ruim em toda a vinha vida, bateria terrível, com botões quebrados após uma semana! Não comprem!!!!", "O mouse movetech m25 é uma porcaria!");

SELECT * FROM tb_postagens;

SELECT * FROM tb_temas;

DROP DATABASE db_blogpessoal;