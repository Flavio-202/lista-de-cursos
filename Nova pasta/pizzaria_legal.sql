CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

DROP DATABASE db_pizzaria_legal;
DROP TABLE tb_pizzas;

CREATE TABLE tb_pizzas (
id BIGINT AUTO_INCREMENT,
nome VARCHAR (60) NOT NULL,
tamanho VARCHAR (60) NOT NULL,
tipo VARCHAR (60) NOT NULL,
preco DECIMAL (6,2) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_pizzas (nome, tamanho, tipo, preco) VALUES 
("Calabresa", "Grande", "salgada", 49.90),
("Portuguesa", "Média", "salgada", 46.00),
("4 Queijos", "Grande", "salgada", 60.60),
("Margherita", "Média", "salgada", 40.00),
("Frango com Catupiry", "Grande", "salgada", 65.00),
("Chocolate com Morango", "Média", "doce", 55.00),
("Pizza de Escarola", "Média", "salgada", 35.90),
("Brigadeiro", "Pequena", "doce", 30.50);

SELECT * FROM tb_pizzas;

/* Como criar uma tabela com a chave estrangeira:
CREATE TABLE tb_nometabela (
id BIGINT AUTO_INCREMENT,

TODOS TRIBUTOS,
nome do tributo TIPO (),
ATRIBUTO DA CHAVE: nome da chave estrangeira TIPO

PRIMARY KEY (id),
FOREIGN KEY (nome da chave estrangeira. Eu posso escolher qualquer nome, nome padrão: nomeid) REFERENCES tb_nome_da_tabela_com_chave_primaria (id)
);
*/

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT,
vegetariana BOOLEAN,
borda_recheada VARCHAR (60) NOT NULL,
pizzas_id BIGINT, 
PRIMARY KEY (id),
FOREIGN KEY (pizzas_id) REFERENCES tb_pizzas (id)
);

INSERT INTO tb_categorias (vegetariana, borda_recheada, pizzas_id) VALUES 
(0, "Não", 1),
(1, "Sim", 2),
(0, "Sim", 3),
(0, "Não", 4),
(0, "Não", 5),
(0, "Sim", 6),
(1, "Não", 7),
(0, "Não", 8);

SELECT * FROM tb_categorias;

/* Como juntar as tabelas:
SELECT * FROM tb_nome_da_tabela_com_a_chave_estrangeira INNER JOIN tb_nome_tabela_primaria
ON tb_nome_da_tabela_estrangeira.nome_da_chave_estrangeira = tb_nome_tabela_primaria.id;
*/

SELECT * FROM tb_categorias  INNER JOIN tb_pizzas
ON tb_categorias.pizzas_id = tb_pizzas.id;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%m%';

/*Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).
*/
SELECT * FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.id = tb_categorias.pizzas_id
WHERE tb_pizzas.tipo = 'doce';

/*Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.*/
SELECT * FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.id = tb_categorias.pizzas_id;








