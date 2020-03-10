SELECT c.nome, COUNT(*) FROM pedidos p
JOIN clientes c ON (p.codigo_cliente = c.codigo_cliente)
GROUP BY nome;