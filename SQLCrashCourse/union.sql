-- combine seeveral select results to a single result
SELECT vend_id, prod_id, prod_price FROM products WHERE prod_price <= 5 
UNION
SELECT vend_id, prod_id, prod_price FROM products WHERE vend_id IN (1001, 1002);
-- Note:
-- a. UNION must have two or more select
-- b. Every UNION must have same columns, expression and group
-- c. type of column should be compatiable
SELECT vend_id, prod_id, prod_price FROM products WHERE prod_price <= 5 
UNION ALL
SELECT vend_id, prod_id, prod_price FROM products WHERE vend_id IN (1001, 1002);
-- UNION ALL delete all repeat rows
SELECT vend_id, prod_id, prod_price FROM products WHERE prod_price <= 5 
UNION ALL
SELECT vend_id, prod_id, prod_price FROM products WHERE vend_id IN (1001, 1002)
ORDER BY vend_id, prod_price;
-- Note: one UNION only allow one order