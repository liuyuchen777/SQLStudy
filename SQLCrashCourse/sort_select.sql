-- sort select result -> ORDER BY clause
SELECT prod_name FROM products ORDER BY prod_name;
-- sort by multiple column
SELECT prod_id, prod_price, prod_name FROM products ORDER BY prod_price, prod_name;
-- ORDER BY is default increasing order
SELECT prod_id, prod_price, prod_name FROM products ORDER BY prod_price DESC;
-- in multiple order
SELECT prod_id, prod_price, prod_name FROM products ORDER BY prod_price DESC, prod_name;
-- use ORDER BY and LIMIT to SELECT highest or lowest
SELECT prod_price FROM products ORDER BY prod_price DESC LIMIT 1;