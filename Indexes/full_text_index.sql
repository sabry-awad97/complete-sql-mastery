-- FULL-TEXT Indexes

CREATE FULLTEXT INDEX idx_title_body ON posts (title, body);

-- in natural mode

SELECT *
FROM posts
WHERE
    MATCH (title, body) AGAINST('react redux');

-- in boolean mode

SELECT
    *,
    MATCH (title, body) AGAINST('react redux') -- this is relevancy factor (from 0 to 1)
FROM posts
WHERE
    MATCH (title, body) AGAINST(
        'react -redux +form' IN BOOLEAN MODE
    );

SELECT
    *,
    MATCH (title, body) AGAINST('react redux') -- this is relevancy factor (from 0 to 1)
FROM posts
WHERE
    MATCH (title, body) AGAINST(
        '"handling a form"' IN BOOLEAN MODE
    );