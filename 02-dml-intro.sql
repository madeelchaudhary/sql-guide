-- SELECT * FROM sales
-- WHERE volume >= 1000;
--
--
-- SELECT * FROM sales
-- WHERE is_recurring IS TRUE;
--
--
-- SELECT *
-- FROM sales
-- WHERE is_disputed IS TRUE AND volume > 5000;
--
--
-- SELECT * FROM sales
-- WHERE NOT is_disputed AND volume > 5000;
--
--
-- SELECT * FROM sales
-- WHERE date_fulfilled - date_created <= 5; -- subtracting date types return result in days; this now work for timestamp
-- For timestamp
-- SELECT * FROM sales
-- WHERE EXTRACT(DAY AS date_fulfilled - date_created) <= 5;
--
--
-- SELECT *
-- FROM sales
-- ORDER BY volume DESC
-- LIMIT 10;
--
--
-- SELECT DISTINCT customer_name -- If columns have Null values than Distinct select first record
-- FROM sales
-- ORDER BY customer_name
-- LIMIT 10 OFFSET 3;
--
--
-- Unions
-- used to combine data into new rows from the result of different queries.
-- Note
--   1 Column counts must be the same in both of the tables or result set.
--   2 Data type of columns must be the same.
--
SELECT id,
    first_name
FROM relations.users
UNION
SELECT id,
    street
FROM addresses;