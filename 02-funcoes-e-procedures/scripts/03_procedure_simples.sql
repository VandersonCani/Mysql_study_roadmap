-- Remove a procedure se já existir
DROP PROCEDURE IF EXISTS listar_clientes;

DELIMITER $$

CREATE PROCEDURE listar_clientes()
BEGIN
  SELECT * FROM clientes;
END $$

DELIMITER ;

-- Execução
CALL listar_clientes();