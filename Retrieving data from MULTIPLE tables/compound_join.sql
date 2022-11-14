USE sql_store

-- Compound join conditions (use with composite primary keys)
SELECT *
FROM order_items oi
JOIN order_item_notes oin
	ON oi.order_id = oin.order_Id
	AND oi.product_id = oin.product_id;
    