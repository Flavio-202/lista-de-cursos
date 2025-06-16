
/* 1. Como criar um banco de dados: 
CREATE DATABASE ou SCHEMAS db_nomedobanco
*/
CREATE DATABASE db_cadastro;

/*2. O comando "USE db_nomedobanco", serve para usar o banco de dados.*/
USE db_cadastro;

/*3. Como criar uma tabela:

CREATE TABLE tb_nomedatabela ( 
id BIGINT AUTO_INCREMENT,
Nome das colunas TIPODEDADO 
PRIMARY KEY (id)
);
*/

CREATE TABLE tb_colaboradores (
id BIGINT AUTO_INCREMENT,
nome VARCHAR (40) NOT NULL,
idade INT NOT NULL,
cargo VARCHAR (40) NOT NULL,
salario DECIMAL (7,2) NOT NULL,
admissao DATE NOT NULL,
PRIMARY KEY (id)
);

/* Como colocar dados na tabela:
INSERT INTO tb_nomedatabela (nome das colunas) VALUES (informações dentro das "", "",);
 */
 
 INSERT INTO tb_colaboradores (nome, idade, cargo, salario, admissao) VALUES (
 "Ana Beatriz Silva", "42", "Analista de Marketing", "4.500" ,"2012-06-20");
 
  INSERT INTO tb_colaboradores (nome, idade, cargo, salario, admissao) VALUES (
 "João Pedro Ferreira", "36", "Desenvolvedor Backend", "3000" ,"2015-07-25");
 
 INSERT INTO tb_colaboradores (nome, idade, cargo, salario, admissao) VALUES (
 "Camila Rocha", "34", "Gerente de Projetos", "9200" ,"2018-03-16");
 
 INSERT INTO tb_colaboradores (nome, idade, cargo, salario, admissao) VALUES (
 "Marcos Almeida", "24", "Assistente Administrativo", "2400" ,"2019-04-14");
 
 /* Como inserir vários dados de uma vez*/
 
INSERT INTO tb_colaboradores (nome, idade, cargo, salario, admissao) VALUES 
( "Luiza Martins", "23", "Estagiaria Administrativo", "1500" ,"2024-09-04"),
( "Pedro Teixeira", "25", "Desenvolvedor junior frontend ", "1900" ,"2020-01-16"),
( "Alice Vieira da Silva", "24", "Recepcionista geral", "1700" ,"2018-02-24"),
( "Luis Henrique", "43", "Segurança", "2300 " ,"2017-04-22"),
( "Soraya Araujo", "37", "Diretora financeira", "12000" ,"2016-06-18");

 
 
SELECT * FROM tb_colaboradores;

/*Como deletar uma tabela/banco de dados inteiro ou uma linha expecífica:
DROP TABLE tb_nomedatabela - Deleta a tabela inteira
DROP DATABASE/SCHEMAS tb_nomedobanco - Deleta tudo
DELETE FROM tb_nomedatabela WHERE ... - deixa claro o que deve ser deletado, se for uma linha colocar o id =2
*/
DROP TABLE tb_colaboradores;

DELETE FROM tb_colaboradores WHERE id = 4;

/* Como alterar uma informação na tabela:
UPDATE tb_nomedatabela SET nomedacoluna = informação WHERE id = posição da linha
*/

UPDATE tb_colaboradores SET salario = 4500 WHERE id = 1;

SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;

















