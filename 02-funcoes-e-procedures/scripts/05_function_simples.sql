-- =====================================================
-- FUNCTION: calcular_desconto
-- Objetivo: Aplicar desconto fixo de 10% em um valor
-- =====================================================

-- Remove a função se já existir
DROP FUNCTION IF EXISTS calcular_desconto;

DELIMITER $$

CREATE FUNCTION calcular_desconto(valor DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
  RETURN valor * 0.9;
END $$

DELIMITER ;

-- =====================================================
-- Testes
-- =====================================================

-- Teste direto
SELECT calcular_desconto(100) AS valor_com_desconto;

-- Teste aplicado na tabela
SELECT 
  nome,
  calcular_desconto(100) AS valor_com_desconto
FROM clientes;