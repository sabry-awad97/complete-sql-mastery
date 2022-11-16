USE sql_store;

SHOW INDEXES IN customers;

CREATE INDEX idx_state_points ON customers (state, points);

-- put the most frequently used columns first

-- put the column with higer cardinality first

EXPLAIN
SELECT customer_id
FROM customers
WHERE
    state = 'CA'
    AND points > 1000;

DROP INDEX idx_state ON customers;

DROP INDEX idx_points ON customers;

EXPLAIN
SELECT customer_id
FROM customers
USE INDEX idx_lastname_state
WHERE
    state = 'CA'
    AND last_name LIKE 'A%';

SELECT
    COUNT(DISTINCT state),
    COUNT(DISTINCT last_name)
FROM customers;

CREATE INDEX idx_lastname_state ON customers (last_name, state);