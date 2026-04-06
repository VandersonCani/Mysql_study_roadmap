# Backup e Restauração MySQL

## Objetivo
Praticar criação de banco, backup e restauração utilizando mysqldump.

## Etapas realizadas

### 1. Criação do banco
- Banco: biblioteca
- Tabela: clientes

### 2. Inserção de dados
Foram inseridos 3 registros para teste.

### 3. Backup
Comando utilizado:
mysqldump -u root -p --default-character-set=utf8mb4 --single-transaction biblioteca > biblioteca_backup.sql

### 4. Simulação de falha
Banco foi removido com DROP DATABASE.

### 5. Restauração
mysql -u root -p biblioteca < biblioteca_backup.sql

## Resultado
Banco restaurado com sucesso contendo os dados originais.

==========================================================================================================================================

## Problemas encontrados

- Erro ao usar mysqldump no PowerShell
- Erro de encoding no backup
- Execução de comandos no contexto errado (MySQL vs CMD)

## Soluções aplicadas

- Uso do CMD ao invés de PowerShell
- Uso de --default-character-set=utf8mb4
- Separação clara entre comandos SQL e comandos do sistema