CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(16) NOT NULL,
    forca INT NOT NULL,
    velocidade INT NOT NULL,
    inteligencia INT NOT NULL,
    classe_id BIGINT,
    FOREIGN KEY(classe_id) REFERENCES tb_classes(id)
);

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(16) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

INSERT INTO tb_classes (nome, descricao) VALUES 
('Guerreiro', 'Especialista em combate corpo-a-corpo com alta força física'),
('Mago', 'Usuário de magia com alta inteligência'),
('Arqueiro', 'Especialista em ataques à distância com alta velocidade'),
('Paladino', 'Guerreiro sagrado com boa defesa e magia'),
('Assassino', 'Ágil e mortal, focado em ataques furtivos');

INSERT INTO tb_personagens (nome, forca, velocidade, inteligencia, classe_id) VALUES
('Cassandra', 180, 80, 50, 5),
('Thoron', 200, 60, 40, 1),
('Elyra', 90, 120, 200, 2),
('Korin', 150, 110, 90, 3),
('Sir Galen', 100, 70, 180, 4),
('Valkar', 220, 40, 30, 1),
('Celina', 130, 90, 160, 2),
('Draco', 160, 100, 100, 3);

SELECT * FROM tb_personagens
WHERE (forca * 10 + velocidade * 5) > 2000;

SELECT * FROM tb_personagens
WHERE (inteligencia * 10 + velocidade * 5) BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens
WHERE nome LIKE '%C%';

SELECT p.*, c.nome AS classe_nome, c.descricao
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id;

SELECT p.*, c.nome AS classe_nome
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id
WHERE c.nome = 'Arqueiro';