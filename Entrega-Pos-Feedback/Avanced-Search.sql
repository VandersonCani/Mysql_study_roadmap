-- JOIN
SELECT c.nome, p.data_pedido
FROM clientes c
JOIN pedidos p ON c.id_cliente = p.id_cliente;

-- SUBQUERY
SELECT nome
FROM produtos
WHERE id_produto = (
  SELECT id_produto
  FROM pedido_produto
  GROUP BY id_produto
  ORDER BY SUM(quantidade) DESC
  LIMIT 1
);