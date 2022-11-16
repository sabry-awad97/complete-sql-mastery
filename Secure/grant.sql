-- Granting privileges

-- 1: web/desktop application

CREATE USER bika_app IDENTIFIED BY '1234';

GRANT
SELECT,
INSERT,
UPDATE,
DELETE,
EXECUTE
    ON sql_store.* -- or specify a table name instead of all by *;
    TO bika_app;

-- 2: admin

GRANT
    ALL ON *.* -- (all tables in all databases)
    TO biljana;

-- View privileges

SHOW GRANTS FOR biljana;

SHOW GRANTS;

-- for current user

