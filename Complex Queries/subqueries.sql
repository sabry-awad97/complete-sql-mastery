SELECT *
FROM products
WHERE unit_price > (
        SELECT unit_price
        FROM products
        WHERE product_id = 3
    );

SELECT *
FROM employees
WHERE salary > (
        SELECT AVG(salary)
        FROM employees
    );