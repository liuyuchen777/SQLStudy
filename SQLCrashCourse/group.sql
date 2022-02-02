-- GROUP BY to group rows with different column value
SELECT vend_id, COUNT(*) AS num_prods FROM products GROUP BY vend_id;
-- Note:
-- a. GROUP BY should appear after WHERE and before ORDER BY
-- b. NULL is also a group
SELECT vend_id, COUNT(*) AS num_prods FROM products GROUP BY vend_id WITH ROLLUP;
-- HAVING -> WHERE in group
SELECT cust_id, COUNT(*) AS orders from orders GROUP BY cust_id HAVING COUNT(*) >= 2;