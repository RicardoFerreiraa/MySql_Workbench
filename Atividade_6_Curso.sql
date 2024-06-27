CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categoria (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao_categoria TEXT
);

INSERT INTO tb_categoria (nome_categoria, descricao_categoria)
VALUES ("Tecnologia", "Cursos relacionados a tecnologias da informação e comunicação"),
("Negócios", "Cursos sobre administração, finanças e empreendedorismo"),
("Design", "Cursos sobre design gráfico, UX/UI e artes visuais"),
("Saúde", "Cursos na área de saúde e bem-estar"),
("Idiomas", "Cursos de línguas estrangeiras");

CREATE TABLE tb_produtos(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome_curso VARCHAR(50) NOT NULL,
    descricao_curso TEXT,
    duracao INT NOT NULL,
    preco DECIMAL(7,2) NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
    );
    
INSERT INTO tb_produtos ( nome_curso, descricao_curso, duracao, preco, categoria_id)
VALUES ("Desenvolvimento Web", "Curso completo de desenvolvimento web", 120, 800.00, 1),
("Administração Financeira", "Curso sobre administração financeira e investimentos", 90, 600.00, 2),
("Design Gráfico", "Curso de design gráfico com ferramentas Adobe", 100, 750.00, 3),
("Nutrição e Bem-Estar", "Curso sobre nutrição e práticas de bem-estar", 80, 500.00, 4),
("Inglês para Iniciantes", "Curso de inglês para iniciantes", 50, 300.00, 5),
("Programação em Java", "Curso de programação Java para iniciantes", 110, 900.00, 1),
("Marketing Digital", "Curso sobre estratégias de marketing digital", 70, 450.00, 2),
("Fotografia Digital", "Curso de fotografia digital e edição de imagens", 60, 550.00, 3);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_produtos WHERE nome_curso LIKE  "%J%";

SELECT nome_curso, descricao_curso,duracao, preco, tb_categoria.nome_categoria
FROM tb_produtos INNER JOIN tb_categoria
ON tb_produtos.categoria_id = tb_categoria.id;

SELECT nome_curso, descricao_curso,duracao, preco, tb_categoria.nome_categoria
FROM tb_produtos INNER JOIN tb_categoria
ON tb_produtos.categoria_id = tb_categoria.id WHERE nome_categoria = "Tecnologia";

