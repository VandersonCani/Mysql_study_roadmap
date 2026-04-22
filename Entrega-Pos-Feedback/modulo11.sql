CREATE DATABASE moduloonze;

USE moduloonze;

CREATE TABLE clientes (
  id_cliente INT PRIMARY KEY,
  nome VARCHAR(100),
  email VARCHAR(100)
);

CREATE TABLE produtos (
  id_produto INT PRIMARY KEY,
  nome VARCHAR(100),
  preco DECIMAL(10,2),
  estoque INT
);

CREATE TABLE pedidos (
  id_pedido INT PRIMARY KEY,
  id_cliente INT,
  FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);


SELECT c.nome, p.id_pedido
FROM clientes c
JOIN pedidos p ON c.id_cliente = p.id_cliente;

CREATE PROCEDURE listar_pedidos()
BEGIN
  SELECT * FROM pedidos;
END;

CREATE INDEX idx_cliente ON pedidos(id_cliente);CREATE TABLE clientes (
  id_cliente INT PRIMARY KEY,
  nome VARCHAR(100),
  email VARCHAR(100)
);

CREATE TABLE produtos (
  id_produto INT PRIMARY KEY,
  nome VARCHAR(100),
  preco DECIMAL(10,2),
  estoque INT
);

CREATE TABLE pedidos (
  id_pedido INT PRIMARY KEY,
  id_cliente INT,
  FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);


SELECT c.nome, p.id_pedido
FROM clientes c
JOIN pedidos p ON c.id_cliente = p.id_cliente;

CREATE PROCEDURE listar_pedidos()
BEGIN
  SELECT * FROM pedidos;
END;

CREATE INDEX idx_cliente ON pedidos(id_cliente);