-- CREATE TABLE
CREATE TABLE customers
(
  cust_id      int       NOT NULL AUTO_INCREMENT,
  cust_name    char(50)  NOT NULL ,
  cust_address char(50)  NULL ,
  cust_city    char(50)  NULL ,
  cust_state   char(5)   NULL ,
  cust_zip     char(10)  NULL ,
  cust_country char(50)  NULL ,
  cust_contact char(50)  NULL ,
  cust_email   char(255) NULL ,
  PRIMARY KEY (cust_id)
) ENGINE=InnoDB;
-- CREATE TABLE xxx IF NOT EXISS
-- PRIMARY KEY must be unique, if use multiple PRIMARY KEY, use comma to seperate
-- DEFAULT value

-- Engine Type: 
-- a. InnoDB -> support transcation, not suport full-text search
-- b. MyISAM -> support full-text search, not support transcation
-- c. MEMORY -> in memeory table, same as MyISAM

-- Forign KEY can't in different engine

-- update table
ALTER TABLE vendors ADD vend_phone CHAR(20);

ALTER TABLE vendors DROP COLUMN vend_phone;

-- define forign key
-- Example:
ALTER TABLE orderitems ADD CONSTRAINT fk_orderitems_orders FOREIGN KEY (order_num) REFERENCES orders (order_num);

-- delete table
-- copy a table: a. create new table, b. insert all data to new table from old table
CREATE TABLE customers2
(
  cust_id      int       NOT NULL AUTO_INCREMENT,
  cust_name    char(50)  NOT NULL ,
  cust_address char(50)  NULL ,
  cust_city    char(50)  NULL ,
  cust_state   char(5)   NULL ,
  cust_zip     char(10)  NULL ,
  cust_country char(50)  NULL ,
  cust_contact char(50)  NULL ,
  cust_email   char(255) NULL ,
  PRIMARY KEY (cust_id)
) ENGINE=InnoDB;

INSERT INTO customers2(cust_id, cust_name, cust_address, cust_city, cust_state, cust_zip, cust_country, cust_contact, cust_email) 
SELECT * FROM customers;

DROP TABLE customers2;

-- rename table
RENAME TABLE customers TO customers_new;

