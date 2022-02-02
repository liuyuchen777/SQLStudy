-- UPDATE
UPDATE customers SET cust_email = 'elmer@fudd.com' WHERE cust_id = 10005;

UPDATE customers SET cust_email = 'elmer@fudd.com', cust_name = 'The Fudds'
WHERE cust_id = 10005;

-- DELETE
SELECT * FROM customers WHERE cust_id = 10008;
DELETE FROM customers WHERE cust_id = 10008;