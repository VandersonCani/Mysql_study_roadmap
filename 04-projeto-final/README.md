04-projeto-final/
├── README.md
├── scripts/
│   ├── 01_create_tables.sql
│   ├── 02_insert_data.sql
│   ├── 03_queries.sql
│   ├── 04_procedures.sql
│   ├── 05_triggers.sql
│
└── evidencias/


# Projeto Final - Sistema de Vendas (MySQL)

## Descrição

Este projeto tem como objetivo consolidar os conhecimentos adquiridos durante a trilha de estudos em MySQL, incluindo:

- Modelagem de banco de dados relacional
- Criação de tabelas e relacionamentos (FOREIGN KEY)
- Manipulação de dados (INSERT, SELECT, UPDATE)
- Uso de JOINs
- Procedures
- Triggers
- Automação de regras de negócio

---

## Estrutura do Banco

O sistema simula um cenário de vendas contendo as seguintes tabelas:

- `clientes` → cadastro de clientes
- `produtos` → cadastro de produtos e estoque
- `pedidos` → registro de pedidos
- `pedido_produto` → itens do pedido (relacionamento)

---

## Funcionalidades Implementadas

### Cadastro e relacionamento
- Criação de tabelas com chave primária e estrangeira
- Relacionamento entre pedidos, clientes e produtos

---

### Consultas com JOIN
Permite visualizar pedidos completos com cliente e produtos:

```sql
SELECT ...