-- EXERCÍCIOS ########################################################################

-- (Exemplo 1) Identifique qual é o status profissional mais frequente nos clientes 
-- que compraram automóveis no site
SELECT cus.professional_status, 
	COUNT(fun.paid_date) AS pagamentos
FROM sales.funnel AS fun
LEFT JOIN sales.customers AS cus
	ON fun.customer_id = cus.customer_id
GROUP BY cus.professional_status
ORDER BY pagamentos DESC	

-- (Exemplo 2) Identifique qual é o gênero mais frequente nos clientes que compraram
-- automóveis no site. Obs: Utilizar a tabela temp_tables.ibge_genders
select * from temp_tables.ibge_genders limit 10


-- (Exemplo 3) Identifique de quais regiões são os clientes que mais visitam o site
-- Obs: Utilizar a tabela temp_tables.regions
select * from sales.customers limit 10
select * from temp_tables.regions limit 10

