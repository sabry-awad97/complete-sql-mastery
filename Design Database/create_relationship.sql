DROP TABLE IF EXISTS orders;

CREATE TABLE
    orders (
        order_id INT PRIMARY KEY,
        customer_id INT NOT NULL,
        FOREIGN KEY fk_orders_customers (customer_id) -- fk_childTable_customersTable
        REFERENCES customers (customer_id) ON UPDATE CASCADE -- or SET NULL, NO ACTION
        ON DELETE NO ACTION
    );