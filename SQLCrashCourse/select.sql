USE crashcourse;

-- SELECT single column from table 
SELECT prod_name FROM products;
-- SELECT multiple columns
SELECT prod_id, prod_name, prod_price FROM products;
-- SELECT all columns
SELECT * FROM products;
-- show distinct value 
SElECT vend_id FROM products;

SELECT DISTINCT vend_id FROM products;
-- limit result number
SELECT prod_name FROM products LIMIT 5;
-- from line 5, 5 lines
SELECT prod_name FROM products LIMIT 5,5;

SELECT prod_name FROM products LIMIT 5 OFFSET 5;
-- use full name
SELECT products.prod_name FROM products;

SELECT products.prod_name FROM crashcourse.products;

