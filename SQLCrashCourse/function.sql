-- processing function
-- a. text processing function
SELECT vend_name, Upper(vend_name) AS vend_name_upcase FROM vendors ORDER BY vend_name;
/*
Common Text Processing Functions:
Left()
Length()
Locate()
Lower()
LTrim()
Right()
RTrim()
Soundex() -> return SOUNDEX value
SubString()
Upper()
*/
SELECT cust_name, cust_contact FROM customers WHERE Soundex(cust_contact) = Soundex('Y.Lie');
-- b. date and time processing function
SELECT cust_id, order_num FROM orders WHERE Year(order_date) = 2005 AND Month(order_date) = 9;
/*
AddDate()
AddTime()
*/
-- c. value processing function
SELECT prod_name, Mod(prod_price, 2) AS prod_price_mod_2 FROM products;
/*
Abs()
Cos()
Exp()
Mod()
Pi()
Rand()
Sin()
Sqrt()
Tan()
*/

-- grouping function
SELECT AVG(prod_price) AS avg_price FROM products;

SELECT COUNT(*) AS num_cust FROM customers;
-- Note: COUNT(*) count every rows
SELECT MAX(prod_price) AS max_price FROM products;
/*
AVG()
COUNT()
MAX()
MIN()
SUM()
*/