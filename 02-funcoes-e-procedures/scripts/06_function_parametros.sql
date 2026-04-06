-- =====================================================
-- FUNCTION: calcular_desconto_percentual
-- Objetivo: aplicar desconto baseado em percentual
-- =====================================================

DROP FUNCTION IF EXISTS calcular_desconto_percentual;

DELIMITER $$

CREATE FUNCTION calcular_desconto_percentual(
  valor DECIMAL(10,2),
  percentual DECIMAL(5,2)
)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
  RETURN valor - (valor * percentual / 100);
END $$

DELIMITER ;

-- Teste direto
SELECT calcular_desconto_percentual(200, 10) AS resultado;

-- Aplicando na tabela
SELECT 
  nome,
  calcular_desconto_percentual(100, 15) AS valor_final
FROM clientes;