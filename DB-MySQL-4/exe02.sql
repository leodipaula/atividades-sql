CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao TEXT
);

CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao TEXT,
    preco DECIMAL(6,2) NOT NULL,
    tamanho VARCHAR(20),
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Tradicional', 'Pizzas salgadas clássicas da casa'),
('Doce', 'Pizzas com recheios doces'),
('Vegana', 'Pizzas sem ingredientes de origem animal'),
('Especial', 'Receitas exclusivas da pizzaria'),
('Infantil', 'Pizzas voltadas para o público infantil');

INSERT INTO tb_pizzas (nome, descricao, preco, tamanho, categoria_id) VALUES
('Margarita', 'Molho de tomate, mussarela e manjericão', 42.50, 'Média', 1),
('Calabresa', 'Calabresa fatiada com cebola e azeitonas', 49.90, 'Grande', 1),
('Brigadeiro', 'Chocolate e granulado', 58.00, 'Média', 2),
('Romeu e Julieta', 'Goiabada e queijo', 52.00, 'Pequena', 2),
('Vegana Verde', 'Brócolis, palmito e queijo vegano', 60.00, 'Grande', 3),
('Frango Catupiry', 'Frango desfiado com catupiry', 59.90, 'Média', 4),
('Mini Mussarela', 'Versão infantil da pizza de mussarela', 32.00, 'Pequena', 5),
('M&Ms', 'Chocolate derretido com M&Ms', 55.00, 'Média', 2);

SELECT * FROM tb_pizzas
WHERE preco > 45.00;

SELECT * FROM tb_pizzas
WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas
WHERE nome LIKE '%M%';

SELECT p.*, c.nome AS categoria_nome
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

SELECT p.*, c.nome AS categoria_nome
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome = 'Doce';
