# Assignment part 1
# Query 1
USE sql_store;
SELECT *
FROM customers
-- WHERE CUSTOMER_ID=1
order by first_name;
#----------------------------------------------------------------------------------------
# Query 2
SELECT last_name, first_name, points, points + 10 
FROM CUSTOMERS;
#----------------------------------------------------------------------------------------
# Task 1a - Using the Query 2 change the points to read times by 10 and plus 100. 
SELECT last_name, first_name, points, (10 * points) + 100
FROM CUSTOMERS;
# Task 1b - Change the Query 2 code to create a discount factor so the table now shows a discount header and changing the (point + 10) * 100
SELECT last_name, first_name, points, (points + 10) * 100 AS discount_factor
FROM CUSTOMERS;
#----------------------------------------------------------------------------------------
# Task 2 - Write a SQL query that selects name, unit price, and new column called new price which is based on this expression, (unit price * 1.1 )
SELECT name, unit_price,(unit_price * 1.1) AS new_price
FROM PRODUCTS;
#----------------------------------------------------------------------------------------
# Task 3 - Create a new query to find all the customers with a birth date of > '1990-01-01'
SELECT first_name, birth_date
FROM CUSTOMERS
WHERE birth_date > '1990-01-01';
#----------------------------------------------------------------------------------------
# Task 4a - Select sql_inventory.
USE sql_inventory;
# Task 4b - Find out the name of the product with most amount in stock
SELECT name, quantity_in_stock
FROM products
ORDER BY quantity_in_stock DESC
LIMIT 1;
#----------------------------------------------------------------------------------------
# Task 5 - Find out the name of the most expensive product
SELECT name, unit_price
FROM products
ORDER BY unit_price DESC
LIMIT 1;
#----------------------------------------------------------------------------------------
# Task 6a - Select sql_store
USE sql_store;
# Task 6b - Write a query to find out the first name, last name, address and the birthdate of the oldest customer.
SELECT first_name, last_name, address, birth_date
FROM CUSTOMERS
ORDER BY birth_date ASC
LIMIT 1;