-- % -> any character appear any times
SELECT prod_id, prod_name FROM products WHERE prod_name LIKE 'jet%';

SELECT prod_id, prod_name FROM products WHERE prod_name LIKE '%anvil%';

-- _ -> any single character
SELECT prod_id, prod_name FROM products WHERE prod_name LIKE '_ ton anvil';

