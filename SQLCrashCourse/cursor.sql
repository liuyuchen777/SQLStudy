DROP Procedure processorders;

-- create cursor
CREATE Procedure processorders()
BEGIN
    DECLARE done BOOLEAN DEFAULT 0;
    DECLARE o INT;
    DECLARE t DECIMAL(8,2);

    DECLARE ordernumbers CURSOR
    FOR 
    SELECT order_num FROM orders;

    DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done=1;

    -- create table to store result
    CREATE TABLE IF NOT EXISTS ordertotals
        (order_num INT, total DECIMAL(8,2));

    -- open
    OPEN ordernumbers;

    REPEAT
        -- get order number
        FETCH ordernumbers INTO o;

        CALL ordertotal(o, 1, t);

        INSERT INTO ordertotals(order_num, total) VALUES(o, t);
    UNTIL done END REPEAT;

    -- close
    CLOSE ordernumbers;
END;

CALL processorders();

SELECT * FROM ordertotals;