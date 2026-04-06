-- =====================================================
-- TRIGGER: log após inserção de cliente
-- =====================================================

USE biblioteca;

-- Tabela de log
CREATE TABLE IF NOT EXISTS log_clientes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  mensagem VARCHAR(255),
  data_log DATETIME
);

-- Remove trigger se existir
DROP TRIGGER IF EXISTS after_insert_cliente;

DELIMITER $$

CREATE TRIGGER after_insert_cliente
AFTER INSERT ON clientes
FOR EACH ROW
BEGIN
  INSERT INTO log_clientes (mensagem, data_log)
  VALUES (CONCAT('Cliente inserido: ', NEW.nome), NOW());
END $$

DELIMITER ;