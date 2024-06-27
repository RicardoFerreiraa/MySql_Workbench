CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(30) NOT NULL,
    descricao TEXT
);

INSERT INTO tb_categoria (nome_categoria, descricao)
VALUES ("Tradicional", "Pizzas clássicas com ingredientes tradicionais"),
("Especial", "Pizzas com ingredientes selecionados e receitas especiais"),
("Vegetariana", "Pizzas sem carne, com vegetais frescos"),
("Doce", "Pizzas com recheios doces e frutas"),
("Vegana", "Pizzas sem ingredientes de origem animal");

SELECT * FROM tb_categoria;

CREATE TABLE tb_pizzas (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_pizza VARCHAR(100) NOT NULL,
    ingredientes TEXT,
    preco DECIMAL (5, 2) NOT NULL,
    tamanho VARCHAR(20) NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
    );
    
INSERT INTO tb_pizzas ( nome_pizza, ingredientes, preco, tamanho, categoria_id)
VALUES ("Margherita", "Tomate, Mozzarella, Manjericão", 35.00, "Média", 1),
("Pepperoni", "Pepperoni, Queijo, Molho de Tomate", 70.00, "Grande", 1),
("Quatro Queijos", "Mozzarella, Gorgonzola, Parmesão, Catupiry", 60.00, "Média", 2),
("Portuguesa", "Presunto, Ovo, Cebola, Azeitona, Queijo", 50.00, "Grande", 1),
("Vegetariana", "Pimentão, Cebola, Tomate, Azeitona, Milho", 38.00, "Média", 3),
("Chocolate", "Chocolate ao Leite, Granulado", 30.00, "Pequena", 4),
("Romeu e Julieta", "Goiabada, Queijo", 35.00, "Pequena", 4),
("Vegana Especial", "Queijo Vegano, Tomate, Rúcula", 55.00, "Grande", 5);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco >= 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome_pizza LIKE "%M%";

SELECT nome_pizza, ingredientes, preco, tamanho, tb_categoria.nome_categoria
FROM tb_pizzas INNER JOIN tb_categoria
ON tb_pizzas.categoria_id = tb_categoria.id;

SELECT nome_pizza, ingredientes, preco, tamanho, tb_categoria.nome_categoria
FROM tb_pizzas INNER JOIN tb_categoria
ON tb_pizzas.categoria_id = tb_categoria.id WHERE nome_categoria = "Doce";