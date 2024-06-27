CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categoria (
 id BIGINT AUTO_INCREMENT PRIMARY KEY,
 nome_categoria VARCHAR (50) NOT NULL,
 descricao_categoria TEXT
);

INSERT INTO tb_categoria (nome_categoria, descricao_categoria)
VALUES ("Medicamentos", "Produtos farmacêuticos para tratamento de doenças"),
("Cosméticos", "Produtos de beleza e cuidados pessoais"),
("Suplementos", "Suplementos alimentares e vitamínicos"),
("Higiene", "Produtos de higiene pessoal"),
("Infantil", "Produtos para cuidados infantis");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(50) NOT NULL,
    descricao_produto TEXT,
    preco DECIMAL (5, 2) NOT NULL,
    estoque INT NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_produtos (nome_produto, descricao_produto, preco, estoque, categoria_id)
VALUES ("Paracetamol", "Analgésico e antitérmico", 15.00, 100, 1),
("Shampoo Anticaspa", "Shampoo para tratamento de caspa", 25.00, 50, 2),
("Vitamina C", "Suplemento de Vitamina C", 35.00, 200, 3),
("Sabonete Líquido", "Sabonete líquido hidratante", 10.00, 150, 4),
("Fralda Descartável", "Fralda descartável tamanho G", 50.00, 80, 5),
("Antialérgico", "Medicamento para alergias", 45.00, 60, 1),
("Creme Hidratante", "Creme hidratante para a pele", 55.00, 40, 2),
("Multivitamínico", "Suplemento multivitamínico", 60.00, 120, 3);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco >50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%C%";

SELECT nome_produto, descricao_produto, preco, estoque, tb_categoria.nome_categoria
FROM tb_produtos INNER JOIN tb_categoria
ON tb_produtos.categoria_id = tb_categoria.id;

SELECT nome_produto, descricao_produto, preco, estoque, tb_categoria.nome_categoria
FROM tb_produtos INNER JOIN tb_categoria
ON tb_produtos.categoria_id = tb_categoria.id;

SELECT nome_produto, descricao_produto, preco, estoque, tb_categoria.nome_categoria
FROM tb_produtos INNER JOIN tb_categoria
ON tb_produtos.categoria_id = tb_categoria.id WHERE nome_categoria = "Cosméticos";