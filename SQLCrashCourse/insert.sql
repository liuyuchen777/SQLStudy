INSERT INTO customers VALUES(
    NULL, 
    'Pep E. LaPew',
    '100 Main Street',
    'Los Angeles',
    'CA',
    '90046',
    'USA',
    NULL,
    NULL);

DELETE FROM customers WHERE cust_id = 10006;

INSERT INTO customers(cust_name, cust_address, cust_city, cust_state, cust_zip, cust_country)
VALUES(
        'Pep E. LaPew',
        '100 Main Street',
        'Los Angeles',
        'CA',
        '90046',
        'USA'
    ),
    (
        'M. Martin',
        '42 Galaxy Way',
        'New York',
        'NY',
        '11213',
        'USA'
    );

INSERT INTO customers(cust_name, cust_address, cust_city, cust_state, cust_zip, cust_country)
SELECT cust_name, cust_address, cust_city, cust_state, cust_zip, cust_country FROM custnew;