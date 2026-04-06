-- Remove a procedure se já existir
DROP PROCEDURE IF EXISTS buscar_cliente;

-- Procedure com parâmetro
DELIMITER $$

CREATE PROCEDURE buscar_cliente(IN nome_busca VARCHAR(100))
BEGIN
  SELECT * FROM clientes WHERE LOWER(TRIM(nome)) LIKE LOWER(CONCAT('%', TRIM(nome_busca), '%'));
END $$

DELIMITER ;

-- Execução
CALL buscar_cliente('João');