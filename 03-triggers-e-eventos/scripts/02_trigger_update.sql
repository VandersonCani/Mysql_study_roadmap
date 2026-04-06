DROP TRIGGER IF EXISTS after_update_cliente;

DELIMITER $$

CREATE TRIGGER after_update_cliente
AFTER UPDATE ON clientes
FOR EACH ROW
BEGIN
  INSERT INTO log_clientes (mensagem, data_log)
  VALUES (
    CONCAT('Cliente atualizado: ', OLD.nome, ' -> ', NEW.nome),
    NOW()
  );
END $$

DELIMITER ;