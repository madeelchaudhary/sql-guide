-- CREATE VIEW bigger_sales AS
-- SELECT *
-- FROM sales
-- WHERE volume > 1000;
--
-- SELECT customer_name,
--     product_name
-- FROM bigger_sales;
--
--
-- Subquery
-- SELECT customer_name,
--     product_name
-- FROM (
--         SELECT *11
--         FROM sales
--         WHERE volume > 1000
--     ) AS base_result;
-- -- Subquries must have an alias if used as table
--
--
-- SELECT *
-- FROM sales
-- WHERE volume IN (
--         SELECT volume
--         FROM bigger_sales
--     )