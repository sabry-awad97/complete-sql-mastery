CREATE OR REPLACE VIEW SALES_BY_CLIENT AS 
    SELECT
        c.client_id,
        c.name,
        SUM(invoice_total) AS total_sales
    FROM clients c
        JOIN invoices i USING (client_id)
    GROUP BY
        client_id,
        name;

SELECT * FROM sales_by_client ORDER BY total_sales DESC;

SELECT * FROM sales_by_client WHERE total_sales > 500;

SELECT * FROM sales_by_client JOIN clients USING (client_id);

CREATE VIEW CLIENTS_BALANCE AS 
    SELECT
        c.client_id,
        c.name,
        SUM(invoice_total - payment_total) AS balance
    FROM clients c
        JOIN invoices i USING (client_id)
    GROUP BY
        client_id,
        name;

SELECT * FROM clients_balance;