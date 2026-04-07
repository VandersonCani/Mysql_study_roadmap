DROP TRIGGER IF EXISTS validar_estoque;

DELIMITER $$

CREATE TRIGGER validar_estoque
BEFORE UPDATE ON produtos
FOR EACH ROW
BEGIN
  IF NEW.estoque < 0 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Estoque não pode ser negativo';
  END IF;
END $$

DELIMITER ;