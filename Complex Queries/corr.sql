SELECT *
FROM employees e
WHERE salary > (
        SELECT AVG(salary)
        FROM employees
        WHERE
            office_id = e.office_id
    );

USE sql_invoicing;

SELECT *
FROM invoices i
WHERE invoice_total > (
        SELECT
            AVG(invoice_total)
        FROM invoices
        WHERE
            client_id = i.client_id
    );