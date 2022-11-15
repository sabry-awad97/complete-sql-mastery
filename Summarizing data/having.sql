SELECT
    COUNT(customers.first_name) AS 'number of customers',
    SUM(points) AS total_points,
    state
FROM customers
GROUP BY state
HAVING total_points > 3000;

SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(oi.quantity * oi.unit_price) AS total_sales
FROM customers c
    JOIN orders o USING (customer_id)
    JOIN order_items oi USING (order_id)
WHERE state = 'VA'
Group BY
    c.customer_id,
    c.first_name,
    c.last_name
HAVING total_sales > 100