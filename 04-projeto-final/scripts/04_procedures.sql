DROP PROCEDURE IF EXISTS inserir_pedido;

DELIMITER $$

CREATE PROCEDURE inserir_pedido(
  IN cliente_id INT,
  IN produto_id INT,
  IN qtd INT
)
BEGIN
  DECLARE pedido_id INT;

  INSERT INTO pedidos (id_cliente, data_pedido)
  VALUES (cliente_id, NOW());

  SET pedido_id = LAST_INSERT_ID();

  INSERT INTO pedido_produto (id_pedido, id_produto, quantidade)
  VALUES (pedido_id, produto_id, qtd);

  UPDATE produtos
  SET estoque = estoque - qtd
  WHERE id = produto_id;
END $$

DELIMITER ;