-- EXERCÍCIOS ########################################################################

-- (Exercício 1) Identifique quais as marcas de veículo mais visitada na tabela sales.funnel

SELECT pro.model AS "Modelo", 
	COUNT(fun.visit_page_date) AS "Visitas"
FROM sales.funnel AS fun
LEFT JOIN sales.products AS pro
	ON fun.product_id = pro.product_id
GROUP BY pro.model
ORDER BY "Visitas" DESC

-- (Exercício 2) Identifique quais as lojas de veículo mais visitadas na tabela sales.funnel

SELECT sto.store_name AS "Nome da Loja",
	COUNT(fun.visit_page_date) AS "Visitas"
FROM sales.funnel AS fun
LEFT JOIN sales.stores AS sto
	ON sto.store_id = fun.store_id
GROUP BY sto.store_name
ORDER BY "Visitas" DESC 

-- (Exercício 3) Identifique quantos clientes moram em cada tamanho de cidade (o porte da cidade
-- consta na coluna "size" da tabela temp_tables.regions)

SELECT reg.size AS "Tamanho",
		COUNT(*) AS "Qtd de Clientes"
FROM sales.customers AS cus
LEFT JOIN temp_tables.regions AS reg
	ON LOWER(cus.city) = LOWER(reg.city)
	AND LOWER(cus.state) = LOWER(reg.state)
GROUP BY  reg.size
ORDER BY "Qtd de Clientes" DESC



