SELECT COUNT(order_id) as order_count,
SUM(tax_amount) AS tax_total,
avg(tax_amount) as tax_average 
FROM orders