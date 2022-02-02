-- from MySQL 5

-- create sp
CREATE PROCEDURE productpricing()
BEGIN
    SELECT Avg(prod_price) AS price_average FROM products;
END;

-- execute sp
CALL productpricing();

-- delete sp
DROP Procedure productpricing;

-- sp with parameters
-- NOTE: OUT for output parameters
CREATE Procedure productpricing(
    OUT pl DECIMAL(8,2),
    OUT ph DECIMAL(8,2),
    OUT pa DECIMAL(8,2)
)
BEGIN
    SELECT Min(prod_price) INTO pl FROM products;
    SELECT Max(prod_price) INTO ph FROM products;
    SELECT Avg(prod_price) INTO pa FROM products;
END;

CALL productpricing(@pricelow, @pricehigh, @priceaverage);

SELECT @priceaverage, @pricelow, @pricehigh;

CREATE Procedure ordertotal(
    IN onumber INT,
    OUT ototal DECIMAL(8,2)
)
BEGIN
    SELECT Sum(item_price*quantity)
    FROM orderitems
    WHERE order_num = onumber
    INTO ototal;
END;

CALL ordertotal(20005, @total);

SELECT @total;

DROP Procedure ordertotal;

-- check all sp
SHOW CREATE PROCEDURE ordertotal;

-- more complicate exmaple
-- Name: ordertotal
-- Parameters: onumber = order number
--             taxable = 0 if not taxable, 1 if taxable
--             ototal = order total variable
CREATE Procedure ordertotal(
    IN onumber INT,
    IN taxable BOOLEAN,
    OUT ototal DECIMAL(8,2)
) COMMENT 'obtain order total, optionally adding tax'
BEGIN

    DECLARE total DECIMAL(8,2);

    DECLARE taxrate INT DEFAULT 6;

    SELECT Sum(item_price*quantity)
    FROM orderitems
    WHERE order_num = onumber
    INTO total;

    IF taxable THEN 
        SELECT total+(total/100*taxrate) INTO total;
    END IF;
    SELECT total into ototal;

END;

CALL ordertotal(20005, 0, @total);

SELECT @total;