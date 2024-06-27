CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categoria (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao_categoria TEXT
);

INSERT INTO tb_categoria (nome_categoria, descricao_categoria)
VALUES ("Bovinos", "Carnes de bovinos"),
("Aves", "Carnes de aves"),
("Suínos", "Carnes de suínos"),
("Peixes", "Carnes de peixes e frutos do mar"),
("Embutidos", "Produtos embutidos como salsichas e linguiças");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome_produto VARCHAR(50) NOT NULL,
    descricao_produto TEXT,
    preco DECIMAL(5, 2) NOT NULL,
    estoque INT NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
    );
    
INSERT INTO tb_produtos (nome_produto, descricao_produto, preco, estoque, categoria_id)
VALUES ("Picanha", "Corte nobre de carne bovina", 180.00, 30, 1),
("Frango Inteiro", "Frango inteiro sem miúdos", 25.00, 50, 2),
("Costelinha Suína", "Costelinha suína temperada", 35.00, 40, 3),
("Salmão", "Filé de salmão fresco", 100.00, 20, 4),
("Linguiça Calabresa", 'Linguiça calabresa defumada', 15.00, 100, 5),
("Coxinha da Asa", "Coxinha da asa de frango", 20.00, 60, 2),
("Alcatra", "Corte macio de carne bovina", 80.00, 25, 1),
("Bacon", "Bacon defumado fatiado", 45.00, 70, 5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco >50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%C%";

SELECT nome_produto, descricao_produto, preco, estoque, tb_categoria.nome_categoria
FROM tb_produtos INNER JOIN tb_categoria
ON tb_produtos.categoria_id = tb_categoria.id;

SELECT nome_produto, descricao_produto, preco, estoque, tb_categoria.nome_categoria
FROM tb_produtos INNER JOIN tb_categoria
ON tb_produtos.categoria_id = tb_categoria.id WHERE nome_categoria = "Aves";