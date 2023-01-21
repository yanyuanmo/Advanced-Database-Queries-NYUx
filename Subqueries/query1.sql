SELECT product_id, product_name, list_price
from products
WHERE list_price>
	(
		SELECT AVG(list_price)
        FROM products
    )
ORDER BY list_price desc

