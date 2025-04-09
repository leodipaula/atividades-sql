CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(144) NOT NULL,
    idade INT NOT NULL,
    ano VARCHAR(20) NOT NULL,
    nome_mae INT NOT NULL,
    nome_pai INT NOT NULL,
    nota DECIMAL(3,1) NOT NULL
);

INSERT INTO tb_alunos(nome, idade, ano, nome_mae, nome_pai)
VALUE ("Leonardo sobrenome nomesobre", 12, "7º ano", "Lucyangela sobrenome", "Antonio nomesobre", 6.0),
("Joao sobrenome nomesobre", 12, "7º ano", "Maria sobrenome", "José nomesobre", 5.0),
("Paulo sobrenome nomesobre", 12, "7º ano", "Lucinda sobrenome", "Pablo nomesobre", 6.5),
("Bruno sobrenome nomesobre", 12, "7º ano", "Leydyane sobrenome", "Junior nomesobre", 9.0),
("Beatriz sobrenome nomesobre", 12, "7º ano", "Ludmilla sobrenome", "Cleiton nomesobre", 9.8),
("Lucas sobrenome nomesobre", 12, "7º ano", "Rosana sobrenome", "Luiz nomesobre", 4.5),
("Murilo sobrenome nomesobre", 12, "7º ano", "Marcia sobrenome", "Francisco nomesobre", 7.8),
("Amanda sobrenome nomesobre", 12, "7º ano", "Elizabeth sobrenome", "Cauê nomesobre", 6.5);

SELECT * FROM tb_alunos WHERE nota > 7;
SELECT * FROM tb_alunos WHERE nota < 7;

UPDATE tb_alunos SET nota = 7.0 WHERE id = 1;
