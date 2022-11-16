ALTER TABLE customers
ADD
    last_name VARCHAR(50) NOT NULL AFTER first_name,
ADD
    city VARCHAR(50) NOT NULL,
MODIFY 
    COLUMN first_name VARCHAR(55) DEFAULT '',
DROP 
    points;