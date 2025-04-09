CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    marca VARCHAR(40) NOT NULL,
    preco DECIMAL(8,2) NOT NULL,
    descricao VARCHAR(255),
    frete_gratis BOOL NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO tb_produtos(nome, marca, preco, descricao, frete_gratis)
VALUE ("geladeira", "LG", 5000.00, "Geladeira 12 litros - 2 portas", TRUE),
 ("pen drive", "Sandisk", 100.00, "1 terabyte de armazenamento", FALSE),
 ("kit teclado e mouse", "Motospeed", 500.00, "mouse 10000 dpi e teclado mecânico switch brown", TRUE),
 ("monitor", "Philips", 300.00, "21 polegadas, vem acompanhado de suporte", FALSE),
 ("cadeira", "Logitech", 8000.00, "Cadeira ergonômica", TRUE),
 ("Salgadinho", "Doritos", 20.00, "Doritos chilly", FALSE),
 ("Notebook", "Asus", 3000.00, "processador ryzen 7, 16gb de ram", TRUE),
 ("Fone de ouvido", "KZ", 150.00, "fone profissional de palco com cancelamento de ruído", FAlSE);
 
 SELECT * FROM TB_produtos WHERE preco > 500;
 SELECT * FROM TB_produtos WHERE preco < 500;
 
 UPDATE TB_produtos SET preco = 2400 WHERE ID = 7;
 
 