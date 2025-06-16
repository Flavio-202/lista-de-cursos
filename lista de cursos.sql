CREATE DATABASE db_registro;

USE db_registro;

CREATE TABLE tb_cursos (
id BIGINT AUTO_INCREMENT,

nome VARCHAR (50) NOT NULL,
duracaohoras INT NOT NULL,
preco DECIMAL (6,2) NOT NULL,
nivel VARCHAR (50) NOT NULL,
vagas INT NOT NULL,

PRIMARY KEY (id)
);

INSERT INTO tb_cursos (nome, duracaohoras, preco, nivel, vagas) VALUES 
("Inglês", "2400", "2600", "Intermediário", "20"),
("Finanças pessoais", "12", "299.99", "Básico", "10"),
("Excel", "40", "450.80", "Intemediário", "15"),
("Desenhos 3D", "90", "349.99", "Básico", "25"),
("Espanhol", "2000", "2400", "Avançado", "30"),
("Powerpoint", "60", "650", "Básico", "14"),
("Power BI", "84", "410", "Avançado", "12"),
("autoCAD", "100", "550", "Intermediário", "17");

SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos WHERE preco < 500;
SELECT * FROM tb_cursos WHERE preco > 500;

UPDATE tb_cursos SET vagas = 5 WHERE id = 4;





