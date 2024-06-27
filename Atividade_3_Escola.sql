CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT,
    turma VARCHAR(10),
    notas DECIMAL (3, 2),
    data_matricula DATE     
    );
    
    INSERT INTO tb_alunos (nome, idade, turma, notas, data_matricula)
    VALUES ("Clara Alves", 13, "6A", 8.5,"2023-05-20");
    INSERT INTO tb_alunos (nome, idade, turma, notas, data_matricula)
    VALUES ("Arthur Oliveira", 15, "8F", 6.5,"2020-02-15");    
    INSERT INTO tb_alunos (nome, idade, turma, notas, data_matricula)
    VALUES ("Bianca Rodrigues", 10, "5A", 9.9,"2024-02-01");
    INSERT INTO tb_alunos (nome, idade, turma, notas, data_matricula)
    VALUES ("Roberto Ignacio", 18, "8Z", 5.5,"1998-05-02");
    INSERT INTO tb_alunos (nome, idade, turma, notas, data_matricula)
    VALUES ("Arthur Oliveira", 15, "5B", 9.5,"2024-06-22");
    INSERT INTO tb_alunos (nome, idade, turma, notas, data_matricula)
    VALUES ("Magnolia da Silva", 13, "6C", 7.0,"2024-01-22");
    INSERT INTO tb_alunos (nome, idade, turma, notas, data_matricula)
    VALUES ("Jeruscleuza Souza", 17, "8W", 6.9,"2000-01-01");
    INSERT INTO tb_alunos (nome, idade, turma, notas, data_matricula)
    VALUES ("Facebuckson da Silva", 14,"7A", 9.9,"2024-06-20");
    
    SELECT * FROM tb_alunos;
    
    SELECT * FROM tb_alunos WHERE notas > 7.0;
    
	SELECT * FROM tb_alunos WHERE notas < 7.0;
    
    UPDATE tb_alunos SET notas = 10.0 WHERE id = 31;
    
    ALTER TABLE tb_alunos MODIFY notas DECIMAL(3,1); -- Alterando as casas decimais das notas ;