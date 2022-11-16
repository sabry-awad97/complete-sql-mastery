ALTER TABLE orders
    ADD PRIMARY KEY (order_id),
    DROP PRIMARY KEY,
    DROP FOREIGN KEY fk_orders_customers,
    ADD
        FOREIGN KEY fk_orders_customers (customers_id) 
        REFERENCES customers (customer_id) 
        ON UPDATE CASCADE 
        ON DELETE NO ACTION;