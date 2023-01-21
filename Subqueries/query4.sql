SELECT email_address, order_id as oldest_order_id, oldest_order_date
FROM 
(SELECT min(order_date) as oldest_order_date, c.customer_id
from customers c
JOIN orders o
ON o.customer_id=c.customer_id
GROUP BY customer_id) t
JOIN orders o
ON o.customer_id=t.customer_id AND o.order_date=t.oldest_order_date
JOIN customers c
ON o.customer_id=c.customer_id


-- Use a correlated subquery to return one row per customer, 
-- representing the customer’s oldest order (the one with the earliest date). 
-- Each row should include these three columns: email_address, oldest_order_id, and oldest_order_date. 
-- Only include customers who have placed an order.
-- Sort the result set by the oldest_order_date and oldest_order_id columns.