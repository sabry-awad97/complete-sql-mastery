-- Find clients without invoices

SELECT *
FROM clients
WHERE client_id NOT IN (
        SELECT
            DISTINCT client_id
        FROM invoices
    );

SELECT *
FROM clients
    LEFT JOIN invoices USING (client_id)
WHERE invoice_id IS NULL;

SELECT
    customer_id,
    first_name,
    last_name
FROM customers
WHERE customer_id IN (
        SELECT
            DISTINCT customer_id
        FROM orders
        WHERE order_id IN (
                SELECT
                    order_id
                FROM
                    order_items
                WHERE
                    product_id = 3
            )
    );

SELECT
    customer_id,
    first_name,
    last_name
FROM customers
WHERE customer_id IN (
        SELECT o.customer_id
        FROM order_items oi
            JOIN orders o USING (order_id)
        WHERE product_id = 3
    );

SELECT
    DISTINCT customer_id,
    first_name,
    last_name
FROM customers c
    JOIN orders o USING (customer_id)
    JOIN order_items oi USING (order_id)
WHERE oi.product_id = 3;