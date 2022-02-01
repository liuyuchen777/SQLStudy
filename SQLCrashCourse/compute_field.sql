-- create field in SELECT
SELECT Concat(vend_name, ' (', vend_country, ')') 
    FROM vendors ORDER BY vend_name;
-- RTrim() delete all right spaces
SELECT Concat(RTrim(vend_name), ' (', RTrim(vend_country), ')') 
    FROM vendors ORDER BY vend_name;
-- use alias
SELECT Concat(RTrim(vend_name), ' (', RTrim(vend_country), ')') 
    AS vend_title
    FROM vendors ORDER BY vend_name;
-- execute compute
SELECT prod_id, quantity, item_price FROM orderitems WHERE order_num = 20005;
-- expanded_price = quantity * item_price
SELECT prod_id, quantity, item_price, quantity*item_price AS expanded_price
    FROM orderitems WHERE order_num = 20005;
-- Note: provide: +, -, *, / in sql
