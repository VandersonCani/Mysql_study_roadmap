-- Criar usuário local
CREATE USER 'usuario_local'@'localhost' IDENTIFIED BY 'SenhaForte123!';

-- Criar usuário remoto
CREATE USER 'usuario_remoto'@'%' IDENTIFIED BY 'SenhaForte123!';

-- Alterar senha
ALTER USER 'usuario_local'@'localhost' IDENTIFIED BY 'NovaSenha123!';

-- Excluir usuário
DROP USER 'usuario_remoto'@'%';

-- Permissão SELECT
GRANT SELECT ON meu_banco.clientes TO 'usuario_local'@'localhost';

-- Revogar permissão
REVOKE SELECT ON meu_banco.clientes FROM 'usuario_local'@'localhost';