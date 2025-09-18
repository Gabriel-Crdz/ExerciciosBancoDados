/* Usando o mesmo banco da atv1 

CREATE DATABASE lojaif;
\c lojaif

*/

CREATE TABLE produto(id_prod SERIAL PRIMARY KEY, descricao VARCHAR(255) NOT NULL, preco DECIMAL(12, 2), estoque INT); 

INSERT 
INTO produto(descricao, preco, estoque) 
VALUES ('Notebook', 2500.00, 10);

INSERT 
INTO produto(descricao, preco, estoque)
VALUES ('Mouse', 50.00, 100);

INSERT 
INTO produto(descricao, preco, estoque)
VALUES ('Teclado', 150.00, 50);

INSERT
INTO produto(descricao, preco, estoque)
VALUES ('2034', 10.50, 5);

/* Visualizando os itens */

SELECT * FROM produto; /* Toda a tabela */

SELECT descricao FROM produto; /* Coluna especifica */


