CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_categoria VARCHAR(50) NOT NULL,
descricao_categoria TEXT
);

INSERT INTO tb_categoria (nome_categoria, descricao_categoria)
VALUES ("Cimento e Areia", "Materiais básicos de construção"),
("Ferramentas", "Ferramentas manuais e elétricas"),
("Pisos e Revestimentos", "Pisos, azulejos e revestimentos"),
("Tintas e Acessórios", "Tintas, pincéis e rolos de pintura"),
("Hidráulica", "Materiais para instalações hidráulicas");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(50) NOT NULL,
    descricao_produto TEXT,
    preco DECIMAL(7, 2) NOT NULL,
    estoque INT,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_produtos (id)
);

INSERT INTO tb_produtos ( nome_produto, descricao_produto, preco, estoque, categoria_id)
VALUES ("Cimento CP II", "Saco de cimento de 50kg", 25.00, 200, 1),
("Areia Média", "M³ de areia média", 70.00, 150, 1),
("Martelo", "Martelo de unha 500g", 35.00, 100, 2),
("Furadeira Elétrica", "Furadeira de impacto 500W", 150.00, 50, 2),
("Piso Cerâmico", "Piso cerâmico 60x60", 120.00, 300, 3),
("Azulejo", "Azulejo branco 30x30", 90.00, 250, 3),
("Tinta Acrílica", "Lata de tinta acrílica 18L", 180.00, 80, 4),
("Tubo PVC", "Tubo de PVC 100mm", 55.00, 400, 5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE  "%C%";

SELECT nome_produto, descricao_produto,preco, estoque, tb_categoria.nome_categoria
FROM tb_produtos INNER JOIN tb_categoria
ON tb_produtos.categoria_id = tb_categoria.id;

SELECT nome_produto, descricao_produto, preco, estoque, tb_categoria.nome_categoria
FROM tb_produtos INNER JOIN tb_categoria
ON tb_produtos.categoria_id = tb_categoria.id WHERE nome_categoria = "Cimento e Areia" ;