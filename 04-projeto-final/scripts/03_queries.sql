SELECT 
  c.nome AS cliente,
  p.data_pedido,
  pr.nome AS produto,
  pr.preco
FROM pedidos p
JOIN clientes c ON p.id_cliente = c.id
JOIN pedido_produto pp ON p.id = pp.id_pedido
JOIN produtos pr ON pp.id_produto = pr.id;