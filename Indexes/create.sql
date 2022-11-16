EXPLAIN SELECT customer_id FROM customers WHERE state = 'CA';

CREATE INDEX idx_state ON customers (state);

EXPLAIN SELECT customer_id FROM customers WHERE points > 1000;

CREATE INDEX idx_points ON customers (points);