CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    descricao TEXT,
    preco DECIMAL (10, 2),
    categoria VARCHAR(100),
    estoque INT
);

INSERT INTO tb_produtos (nome, descricao, preco, categoria, estoque)
VALUES ("Iphone X80"," Não mudou nada das outras versões", 50000.00,"Eletrônicos",10),
("TV 80 polegadas"," Leva até as crianças na escola",4500.00,"Eletrônicos",50),
("Notebook Ultra Slim", "Processador i7, SSD 512GB", 1299.00, "Informática", 30),
("Livro 'Animais Fantásticos' ", "Coleção de contos de fantasia", 19.99, "Livros", 200),
("Bicicleta Mountain Bike", "Suspensão dianteira, aro 29", 549.00, "Esportes", 10),
("Relógio de Pulso", "Automatico, pulseira de couro", 299.00, "Acessórios", 50),
("Tênis Esportivo", "Leve e confortável para corridas", 379.90, "Moda", 100),
("Mousepad Gamer", "Tamanho Familia", 60.00,"Informática",400);

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET  descricao = "Confortavel e Macio para todos os tipos de aventuras" WHERE id = 7;

SELECT * FROM tb_produtos;