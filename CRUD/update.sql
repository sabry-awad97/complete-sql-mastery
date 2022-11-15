UPDATE invoices
SET
    payment_total = 10,
    payment_date = '2019-01-03'
WHERE invoice_id = 1;

UPDATE invoices
SET
    payment_total = DEFAULT,
    payment_date = NULL
WHERE invoice_id = 1;

UPDATE invoices
SET
    payment_total = invoice_total * 0.5,
    payment_date = due_date
WHERE invoice_id = 3;

UPDATE invoices
SET
    payment_total = invoice_total * 0.5,
    payment_date = due_date
WHERE client_id = 3;

UPDATE invoices
SET
    payment_total = invoice_total * 0.5,
    payment_date = due_date
WHERE client_id IN (3, 4);

UPDATE customers
SET points = points + 50
WHERE birth_date < '1990-01-01';

UPDATE invoices
SET
    payment_total = invoice_total * 0.5,
    payment_date = due_date
WHERE client_id = (
        SELECT client_id
        FROM clients
        WHERE name = 'Myworks'
    );

UPDATE invoices
SET
    payment_total = invoice_total * 0.5,
    payment_date = due_date
WHERE client_id IN (
        SELECT client_id
        FROM clients
        WHERE
            state IN ('CA', 'NY')
    );

UPDATE orders
SET comments = 'Gold customer'
WHERE customer_id IN (
        SELECT
            DISTINCT c.customer_id
        FROM orders o
            JOIN customers c USING (customer_id)
        WHERE c.points > 3000
    );

UPDATE orders
SET comments = 'Gold customer'
WHERE customer_id IN (
        SELECT customer_id
        FROM customers
        WHERE points > 3000
    );