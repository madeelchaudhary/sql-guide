-- Inner Join or Just Join (Only select mathcing data)
-- SELECT columns_list/*
-- FROM tab_1 AS alias_1
--     INNER JOIN /
--     JOIN tab_2 AS alias_2 ON alias_1.col_id = alias_2.col_id; -- if columns used in ON clause are unique then just use columns names as it is.
-- Multiple Joins can be added by using Multiple Join clauses thereafter
--
--Example
SELECT u.first_name,
    u.last_name,
    c.name,
    a.street
FROM relations.users AS u
    INNER JOIN addresses AS a ON u.address_id = a.id
    INNER JOIN cities AS c ON a.city_id = c.id;
--
--Example with filter and others
SELECT u.first_name,
    u.last_name,
    c.name,
    a.street
FROM relations.users AS u
    INNER JOIN addresses AS a ON u.address_id = a.id
    INNER JOIN cities AS c ON a.city_id = c.id;
WHERE c.id = 1
ORDER BY u.first_name,
    u.last_name;
--
--
-- Left Join (select all records of left table(followed by From or previously constructed result set) and only matching data afterwards)
-- SELECT columns_list/*
-- FROM tab_1 AS alias_1
--     LEFT JOIN /
--     JOIN tab_2 AS alias_2 ON alias_1.col_id = alias_2.col_id; -- if columns used in ON clause are unique then just use columns names as it is.
-- Multiple Joins can be added by using Multiple Join clauses thereafter
--
-- Example
SELECT *
FROM relations.addresses AS a
    LEFT JOIN users AS u ON u.address_id = a.id
    LEFT JOIN cities AS c ON c.id = a.city_id;
--
--
-- Right Join (usually Right Join can be built by using Left join by just interchaning the table position)
--
--
-- Cross (cartesian product, multiplies table with each other)
--
--
-- Full Join or Full Outer Join (select mathching and remaining values from both tables or result set)