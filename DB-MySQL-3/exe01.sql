CREATE DATABASE db_colaboradores;

USE db_colaboradores;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT,
    nome varchar(55) NOT NULL,
    idade int NOT NULL,
    salario decimal(8,2) NOT NULL,
    email varchar(55) NOT NULL UNIQUE,
    data_admissao DATE NOT NULL,
    primary key(id)
);

INSERT INTO tb_colaboradores(nome, idade, salario, email, data_admissao) 
VALUE ("Leonardo", 27, 1800.00, "leonardo@email.com", "2025-04-09"),
("Beatriz", 18, 3500.00, "beatriz@email.com", "2020-03-02"),
("Bruno", 37, 4000.00, "bruno@email.com", "2023-01-23"),
("Antonio", 24, 5500.00, "antonio@email.com", "2019-05-12"),
("Lucyangela", 47, 6800.00, "lucyangela@email.com", "2017-06-20");

SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 3000.00 WHERE id = 1;