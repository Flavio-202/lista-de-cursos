CREATE DATABASE dt_registro;

USE dt_registro;

CREATE TABLE tb_alunos (
id BIGINT AUTO_INCREMENT,
nome VARCHAR (60) NOT NULL,
idade INT NOT NULL,
data_nascimento DATE,
nota_de_portugues DECIMAL (3,1) NOT NULL,
nota_de_matematica DECIMAL (3,1) NOT NULL,
serie VARCHAR (10) NOT NULL,
professor VARCHAR (40) NOT NULL,
sala VARCHAR (20) NOT NULL,
PRIMARY KEY (id)
);


INSERT INTO tb_alunos (nome, idade, data_nascimento, nota_de_portugues, nota_de_matematica, serie, professor, sala) VALUES 
("Ana Beatriz Neves", 15, "2010-09-15", 8.5, 7.8, "9º Ano", "Marcos Ribeiro", "Sala B"),
("Lucas Andrade", 14, "2011-06-20", 7.2, 8.0, "8º Ano", "Fernanda Costa", "Sala A"),
("Mariana Silva", 13, "2012-11-05", 9.0, 9.5, "7º Ano", "Fernanda Costa", "Sala A"),
("João Pedro Souza", 15, "2010-03-12", 6.8, 7.1, "9º Ano", "Marcos Ribeiro", "Sala B"),
("Clara Mendes", 12, "2013-04-25", 8.4, 8.2, "6º Ano", "Carlos Henrique", "Sala C"),
("Rafael Gomes", 13, "2012-07-19", 5.9, 6.5, "7º Ano", "Fernanda Costa", "Sala A"),
("Beatriz Lima", 14, "2011-10-08", 9.1, 8.7, "8º Ano", "Fernanda Costa", "Sala A"),
("Henrique Rocha", 12, "2013-01-30", 7.5, 7.0, "6º Ano", "Carlos Henrique", "Sala C");

SELECT * FROM tb_alunos;

SELECT * FROM tb_alunos WHERE nota_de_portugues >= 7.0 AND nota_de_matematica >= 7.0;

SELECT * FROM tb_alunos WHERE nota_de_portugues <= 7.0 OR nota_de_matematica <= 7.0;

UPDATE tb_alunos SET serie = "6º Ano" WHERE id = 6;