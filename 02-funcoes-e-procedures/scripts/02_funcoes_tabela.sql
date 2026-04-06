-- Aplicação de funções na tabela clientes

USE biblioteca;

SELECT 
  nome,
  UPPER(nome) AS nome_maiusculo,
  CONCAT(nome, ' - ', email) AS identificador
FROM clientes;