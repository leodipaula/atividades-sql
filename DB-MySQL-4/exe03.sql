CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao TEXT
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(6,2) NOT NULL,
    estoque INT NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Medicamentos', 'Remédios para diversos tratamentos'),
('Cosméticos', 'Produtos para cuidados pessoais e beleza'),
('Higiene', 'Produtos de uso diário e limpeza pessoal'),
('Vitaminas e Suplementos', 'Suplementos alimentares e multivitamínicos'),
('Infantil', 'Produtos voltados para o público infantil');

INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria_id) VALUES
('Dipirona Sódica', 'Analgésico e antipirético', 8.50, 100, 1),
('Protetor Solar FPS 60', 'Proteção contra raios solares', 59.90, 50, 2),
('Sabonete Líquido', 'Sabonete com aroma de lavanda', 12.00, 75, 3),
('Vitamina C 500mg', 'Reforço imunológico', 29.90, 200, 4),
('Fralda Infantil P', 'Fralda descartável tamanho P', 35.00, 80, 5),
('Shampoo Anticaspa', 'Combate à caspa e oleosidade', 48.00, 60, 2),
('Colgate Total 12', 'Creme dental com proteção total', 7.99, 120, 3),
('Ômega 3', 'Suplemento à base de óleo de peixe', 85.00, 40, 4);

SELECT * FROM tb_produtos
WHERE preco > 50.00;

SELECT * FROM tb_produtos
WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos
WHERE nome LIKE '%C%';

SELECT p.*, c.nome AS categoria_nome
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

SELECT p.*, c.nome AS categoria_nome
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome = 'Cosméticos';