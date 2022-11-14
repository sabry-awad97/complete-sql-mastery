SELECT * 
FROM sql_store.customers
ORDER BY first_name;

SELECT * 
FROM sql_store.customers
ORDER BY state DESC, first_name DESC;

SELECT first_name, last_name
FROM sql_store.customers
ORDER BY birth_date;

SELECT first_name, last_name, 10 AS points
FROM sql_store.customers
ORDER BY points, first_name;

SELECT *, quantity * unit_price AS total_price 
FROM sql_store.order_items
WHERE order_id = 2
ORDER BY total_price DESC;