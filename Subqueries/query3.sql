SELECT product_name, list_price, discount_percent
FROM products 
WHERE discount_percent in (select discount_percent from 
(
SELECT discount_percent, count(*) as c
from products
group by discount_percent
HAVING c=1)t )
ORDER BY product_name

-- Write a SELECT statement that returns the name, list_price and discount percent of each product that has a unique discount percent. 
-- In other words, don’t include products that have the same discount percent as another product.
-- Sort the result set by the product_name column.
-- Store the query in a file named query.sql and upload to GradeScope below