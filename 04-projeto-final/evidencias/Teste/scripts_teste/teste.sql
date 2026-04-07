

---Login---

mysql -u root -p;
123456

---Seleciona DB---
use loja;

---Verifica clientes e produtos---
SELECT * FROM clientes;
SELECT * FROM produtos;

---Teste Triggers---
CALL inserir_pedido(1, 1, 999); ---------- deve dar erro pois estoque é menor do que o pedido = trigger Funcionando.