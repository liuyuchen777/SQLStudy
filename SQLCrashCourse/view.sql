-- view is a temp table
-- creat view -> CREATE VIEW
CREATE VIEW productcustomers AS
    SELECT cust_name, cust_contact, prod_id 
    FROM customers, orders, orderitems
    WHERE customers.cust_id = orders.cust_id
      AND orderitems.order_num = orders.order_num;

-- check view -> SHOW CREATE VEIW viewname
SHOW CREATE VIEW productcustomers;

SELECT * from productcustomers;

-- NOTE: use view to save common used data
CREATE VIEW vendorlocations AS
    SELECT Concat(RTrim(vend_name), ' (', RTrim(vend_country), ')') AS vend_title FROM vendors ORDER BY vend_name;

SELECT * from vendorlocations;

-- NOTE: use view to filter data
CREATE VIEW customermaillist AS
    SELECT cust_id, cust_name, cust_email FROM customers
    WHERE cust_email IS NOT NULL;

SELECT * FROM customermaillist;

-- update view: update a view will update corresponding table -> CREATE OR REPLACE VIEW

-- delete view -> DROP VIEW viewname
DROP VIEW customermaillist;