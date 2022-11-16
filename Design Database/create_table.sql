DROP TABLE IF EXISTS orders;

DROP TABLE IF EXISTS customers;

-- CREATE TABLE IF NOT EXISTS customers

CREATE TABLE
    customers (
        customer_id INT PRIMARY KEY AUTO_INCREMENT,
        first_name VARCHAR(50) CHARACTER SET latin1 NOT NULL,
        points INT NOT NULL DEFAULT 0,
        email VARCHAR(255) NOT NULL UNIQUE
    );