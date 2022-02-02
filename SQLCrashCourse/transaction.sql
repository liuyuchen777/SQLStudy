-- use START TRANSCATION to start a transcation
START TRANSACTION;
    DELETE FROM orderitems WHERE order_num = 20010;
    DELETE FROm orders WHERE order_num = 20010;
-- use commit to submit all changes
COMMIT;

-- ROLLBACK: cancel a query
-- NOTE: only can be used insider a transcation
SELECT * FROM ordertotals;
START TRANSACTION;
DELETE FROM ordertotals;
SELECT * FROM ordertotals;
ROLLBACK;
SELECT * FROM ordertotals;
COMMIT;

-- change default commit behavior
SET autocommit = 0;