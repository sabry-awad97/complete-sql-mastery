SELECT 
	c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
LEFT JOIN orders o
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

SELECT 
	c.customer_id,
    c.first_name,
    o.order_id
FROM orders o
RIGHT JOIN customers c
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

SELECT 
	p.product_id,
    p.name,
    oi.quantity
FROM products p
LEFT JOIN order_items oi
	ON p.product_id = oi.product_id;

SELECT 
	c.customer_id,
    c.first_name,
    o.order_id,
    sh.name AS shipper
FROM customers c
LEFT JOIN orders o
	ON c.customer_id = o.customer_id
LEFT JOIN shippers sh
	ON sh.shipper_id = o.shipper_id;
    
SELECT 
	o.order_date,
    o.order_id,
    c.first_name AS customer,
    sh.name AS shipper,
    os.name AS status
FROM orders o
LEFT JOIN customers c
	ON c.customer_id = o.customer_id
LEFT JOIN shippers sh
	ON sh.shipper_id = o.shipper_id
LEFT JOIN order_statuses os
	ON os.order_status_id = o.status
ORDER BY status;