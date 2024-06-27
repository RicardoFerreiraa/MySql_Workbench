
DROP DATABASE db_generation_game_online;
CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_classe VARCHAR(255) NOT NULL,
    descricao TEXT
);

INSERT INTO tb_classe (nome_classe, descricao)
VALUES ("Guerreiro", "Lutadores corpo a corpo fortes com alta defesa"),
("Mago", "Mestres da magia elemental e arcano"),
("Ladino", "Assassinos furtivos com alta agilidade"),
("Clérigo", "Curandeiros e protetores que utilizam magia divina"),
("Ranger", "Arqueiros habilidosos com um vínculo com a natureza");

SELECT * FROM tb_classe;

CREATE TABLE tb_personagem (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nickname VARCHAR(255) NOT NULL,
    nivel_personagem INT NOT NULL,
    poder_defesa INT,
    poder_ataque INT NOT NULL,
    classe_id BIGINT,
    FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

INSERT INTO tb_personagem (nickname, nivel_personagem, poder_defesa, poder_ataque, classe_id)
VALUES ("Aragorn", 10, 1500, 1200, 1),
("Gandalf", 20, 3000, 5000, 2),
("Legolas", 15, 2000, 1100, 5),
("Frodo", 5, 500, 600, 3),
("Arwen", 12, 1700, 789400, 4),
("Boromir", 13, 1600, 1250, 1),
("Gimli", 14, 1800, 54800, 1),
("Saruman", 18, 2800, 900, 2);

SELECT * FROM tb_personagem;

SELECT * FROM tb_personagem WHERE poder_ataque >2000;

SELECT * FROM tb_personagem WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagem WHERE nickname LIKE "A%";  

SELECT nickname, nivel_personagem, poder_defesa, poder_ataque, tb_classe.nome_classe 
FROM tb_personagem INNER JOIN tb_classe
ON tb_personagem.classe_id = tb_classe.id;

SELECT nickname, nivel_personagem, poder_defesa, poder_ataque, tb_classe.nome_classe 
FROM tb_personagem INNER JOIN tb_classe
ON tb_personagem.classe_id = tb_classe.id WHERE nome_classe = "Guerreiro";