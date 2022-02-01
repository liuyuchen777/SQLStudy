-- AND
SELECT prod_id, prod_price, prod_name FROM products 
    WHERE vend_id = 1003 AND prod_price <= 10;

-- OR 
SELECT prod_name, prod_price, vend_id FROM products
    WHERE vend_id = 1002 OR vend_id = 1003;

-- combination
SELECT prod_name, prod_price FROM products
    WHERE vend_id = 1002 OR vend_id = 1003 AND prod_price <= 10;
-- Note: AND has higher pirority of calculation than OR, use ()
SELECT prod_name, prod_price FROM products
    WHERE (vend_id = 1002 OR vend_id = 1003) AND prod_price <= 10;

-- IN
SELECT prod_name, prod_price, vend_id FROM products WHERE vend_id 
    IN (1002,1003) ORDER BY prod_name;

-- NOT  
SELECT prod_name, prod_price, vend_id FROM products WHERE vend_id 
    NOT IN (1002,1003) ORDER BY prod_name;

