Após a instalação do Mysql, realizado a configuração da variável de ambiente a fim de garantir o melhor funcionamento da utilização do Mysql nos terminais de comando, durante a execução de todos os comandos demonstrados durante os exercícios de treino de Mysql, seguem o padrão de abertura do banco de dados utilizando o comando "mysql -u root -p", a senha para o banco de dados deste treinamento foi configurado como "123456".

Respostas referente ao pdf1

1. O que é um banco de dados?

O MySQL é um sistema de gerenciamento de banco de dados relacional (SGBD) de código aberto, utilizado para armazenar , organizar e manipular dados.

vantagens: 

Open Source (Gratuito)
Alta performance
Multiplataforma
Integração com varias linguagens

2. Diferença entre relacional e não relacional

Banco Relacional:
Usa tabelas com estrutura definida
Possui chaves (PK e FK)

Banco não relacional:
Estrutura Flexível
Pode usar Json, documentos, grafos.

exemplos: 

Relacional: MySQL
Não Relacional: MongoDB

3. Componentes da arquitetura do MySQL

Conectores - Ligação com aplicações
Query Processor - interpreta comandos SQL
Storage Engines Armazenamento dos dados
Buffer/Cache - melhora performance.

4. Função do motor de armazenamento

Define como os dados são armazenados.

Diferença:
InnoDB suporta transações e integridade
MyISAM - mais rápido, mas sem transações

5. Ferramentas gráficas
MySQL Workbench - Ferramenta oficial
DBeaver - multiplataforma
phpMyAdmin - interface web

6. Conexão via terminal
mysql -u root -p 

7. Listar bancos
SHOW DATABASES;


8. Criar conexão no Workbench
Abrir MySQL Workbench
New Connection
Informar: 
Host: localhost
Porta: 3306
Usuário e Senha
Test Connection


9. Comando USE
USE nome_do_banco;


10. Listar tabelas
SHOW TABLES;

11. Conexão no DBeaver
Host
Porta
Usuário 
Senha

12. mysql -u root -p

mysql - cliente mysql
-u root - usuário
-p - solicitar senha

13. Diferença entre ferramentas
Workbench - completo e oficial
DBeaver - suporta vários bancos
phpMyAdmin - web

14. Segurança
Criar usuários com senha
Usar Permissões (GRANT/REVOKE)
Evitar acesso root direto
Controlar acesso remoto

15. Buffer de memória
é uma área que armazena dados temporariamente para acelerar consultas.

Importância:
Melhora desempenho e Reduz acesso ao disco.



































