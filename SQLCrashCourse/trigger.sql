-- do things automatically after change

-- create trigger
-- CREATE TRIGGER newproduct AFTER INSERT ON products 
--     FOR EACH ROW SELECT 'Product added';

-- every table at most support 6 triggers
-- trigger can set trigger condition as INSERT, DELETE, UPDATE
-- CREATE TRIGGER neworder AFTER INSERT ON orders
--     FOR EACH ROW SELECT NEW.order.num;

-- delete trigger
DROP TRIGGER newproduct;