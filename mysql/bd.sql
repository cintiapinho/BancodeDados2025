CREATE DATABASE etecmcm2;

USE etecmcm2;



CREATE TABLE produtos (
id_produto int PRIMARY KEY AUTO_INCREMENT,
nome varchar(255),
preco decimal(10,2),
quant int,
marca varchar(255),
id_categoria int
);

CREATE TABLE categorias (
id_categoria int PRIMARY KEY AUTO_INCREMENT,
nome_cat varchar(255)
);

ALTER TABLE produtos ADD FOREIGN KEY(id_categoria) REFERENCES categorias (id_categoria);
