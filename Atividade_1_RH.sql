CREATE DATABASE db_RH; 

USE db_rh;

CREATE TABLE colaboradores(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255),
    departamento VARCHAR(255),
    salario DECIMAL (10, 2),
    data_contratacao DATE
    );
    
    INSERT INTO colaboradores (nome, cargo, departamento, salario, data_contratacao)
    VALUES ("Maria Joaquina", "Gerente Comercial", "Vendas",8000.00,"2022-01-02"),
    ("Pedro Cardoso", "Desenvolvedor Full Stack","TI", 5000.00,"2023-05-20"),
    ("Ana Celma","Analista Banco de Dados","TI", 10000.00,"2020-02-15"),
    ("Carlos Rodrigues","Desenvolvedor JR Full Stack","TI", 1900.00,"2024-06-26"),
    ("Sabrina Almeida","Publicidade & Propaganda","marketing",1950.00,"2024-02-20");
    
    SELECT * FROM colaboradores;
    
    SELECT * FROM colaboradores WHERE salario > 2000.00;
    
    SELECT * FROM colaboradores WHERE salario < 2000.00;
    
    UPDATE colaboradores SET salario = 4500.00 WHERE id = 4;
