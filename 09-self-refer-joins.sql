-- Self Referential: A data entity has a relationship to itself (i.e internal relationship)
CREATE TABLE tab_name (
    id INT PRIMARY KEY AUTO_INCREMENT,
    -- cols ...,
    some_col_id INT REFERENCES tab_name (id) -- Event and Action
);
-- Self Joins
SELECT *
FROM tab_name AS a
    JOIN tab_2 AS b ON a.id = b.some_col_id;
--
-- Self Referential (Many to Many Relations): Important use case where same entities in a table has many to many relationships (i.e users can have many friends, users can send many friend requests)
--
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    -- cols ...,
);
CREATE TABLE friends (
    user_1 INT REFERENCES users (id) ON DELETE CASCADE,
    user_2 INT REFERENCES users (id) ON DELETE CASCADE,
    CHECK (condition) PRIMARY KEY (user_1, user_2)
)