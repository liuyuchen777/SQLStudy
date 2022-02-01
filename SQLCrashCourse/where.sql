-- All results
SELECT prod_name, prod_price FROM products ORDER BY prod_price;
-- WHERE -> filter specific condition
SELECT prod_name, prod_price FROM products WHERE prod_price = 2.50;
-- Note: you should use ORDER BY after WHERE  
SELECT prod_name, prod_price FROM products WHERE prod_name = 'fuses';
-- NOTE: WHERE doesn't check upper or lower letter
SELECT prod_name, prod_price FROM products WHERE prod_price < 10;
-- Not equal check
SELECT vend_id, prod_name FROM products WHERE vend_id <> 1003;

SELECT vend_id, prod_name FROM products WHERE vend_id != 1003;
-- Check range
SELECT prod_name, prod_price FROM products WHERE prod_price BETWEEN 5 AND 10;
-- Check null value
SELECT prod_name, prod_price FROM products WHERE prod_price IS NULL;

SELECT cust_id, cust_email FROM customers WHERE cust_email IS NULL;
-- 