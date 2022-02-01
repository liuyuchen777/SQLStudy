-- create join
SELECT vend_name, prod_name, prod_price FROM vendors, products 
    WHERE vendors.vend_id = products.vend_id 
    ORDER BY vend_name, prod_name;
-- wrong example
SELECT vend_name, prod_name, prod_price FROM vendors, products 
    ORDER BY vend_name, prod_name;
-- equijoin / inner join 
SELECT vend_name, prod_name, prod_price FROM vendors 
    INNER JOIN products
    ON vendors.vend_id = products.vend_id;
-- join multiple table
SELECT prod_name, vend_name, prod_price, quantity FROM orderitems, products, vendors
    WHERE products.vend_id = vendors.vend_id
      AND orderitems.prod_id = products.prod_id
      AND order_num = 20005; 
-- check customer name and customer contact who buy TNT2
SELECT cust_name, cust_contact FROM customers, orders, orderitems
    WHERE customers.cust_id = orders.cust_id
      AND orderitems.order_num = orders.order_num
      AND prod_id = 'TNT2';

-- warm up
SELECT cust_name, cust_contact FROM customers AS c, orders AS o, orderitems AS oi
    WHERE c.cust_id = o.cust_id
      AND oi.order_num = o.order_num
      AND prod_id = 'TNT2';

-- a. self join -> when you want to find all products which is produced by who produce DTNTR
SELECT prod_id, prod_name FROM products 
    WHERE vend_id = (SELECT vend_id FROM products WHERE prod_id = 'DTNTR');

SELECT p1.prod_id, p1.prod_name FROM products AS p1, products AS p2
    WHERE p1.vend_id = p2.vend_id
      AND p2.prod_id = 'DTNTR';

-- b. nature join -> will delete repeat columns
SELECT c.*, o.order_num, o.order_date, oi.prod_id, oi.quantity, oi.item_price
    FROM customers AS c, orders AS o, orderitems AS oi
    WHERE c.cust_id = o.cust_id
      AND oi.order_num = o.order_num
      AND prod_id = 'FB';

-- c. outer join -> outer join check all customer even if doesn't have order
SELECT customers.cust_id, orders.order_num FROM customers 
    INNER JOIN orders ON customers.cust_id = orders.cust_id;

SELECT customers.cust_id, orders.order_num FROM customers 
    LEFT OUTER JOIN orders ON customers.cust_id = orders.cust_id;

SELECT customers.cust_id, orders.order_num FROM customers 
    RIGHT OUTER JOIN orders ON customers.cust_id = orders.cust_id;

-- NOTE: inner -> intersection, outer -> intersection + left set / right set

-- GROUP BY and COUNT()
SELECT customers.cust_name, customers.cust_id, COUNT(orders.order_num) AS num_ord
    FROM customers 
    INNER JOIN orders ON customers.cust_id = orders.cust_id
    GROUP BY customers.cust_id;

SELECT customers.cust_name, customers.cust_id, COUNT(orders.order_num) AS num_ord
    FROM customers 
    LEFT OUTER JOIN orders ON customers.cust_id = orders.cust_id
    GROUP BY customers.cust_id;