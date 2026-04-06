-- Ativar scheduler
SET GLOBAL event_scheduler = ON;

DROP EVENT IF EXISTS limpar_logs;

DELIMITER $$

CREATE EVENT limpar_logs
ON SCHEDULE EVERY 1 DAY
DO
BEGIN
  DELETE FROM log_clientes;
END $$

DELIMITER ;