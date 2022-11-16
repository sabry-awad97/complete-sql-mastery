USE sql_store;
SHOW INDEXES IN customers;

CREATE INDEX idx_state_points ON customers (state, points); 
-- put the most frequently used columns first
-- put the column with higer cardinality first

EXPLAIN SELECT customer_id 
FROM customers
WHERE state = 'CA' 
	AND points > 1000;
    
DROP INDEX idx_state ON customers;
DROP INDEX idx_points ON customers;
