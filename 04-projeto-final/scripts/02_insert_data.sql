USE loja;

INSERT INTO clientes (nome) VALUES 
('João'),
('Maria');

INSERT INTO produtos (nome, preco, estoque) VALUES
('Notebook', 3000.00, 10),
('Mouse', 50.00, 100);

INSERT INTO pedidos (id_cliente, data_pedido)
VALUES (1, NOW());

INSERT INTO pedido_produto (id_pedido, id_produto, quantidade)
VALUES (1, 1, 1);