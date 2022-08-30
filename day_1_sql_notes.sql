-- Very first SQL query, SELECT all records from the actor table
SELECT *
FROM actor;

-- query for first_name and last_name from the actor table.
SELECT first_name, last_name
FROM actor;

-- query for a first_name that equals 'nick' using the WHERE clause
SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick';

-- Query for a first_name that equals 'Nick' using the LIKE and WHERE clauses
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'Nick';

-- Query for all first_name data that starts with a J using the LIKE and WHERE clause
-- and using the wildcard %
SELECT first_name, actor_id
FROM actor
WHERE first_name LIKE 'J%';

--Query for all first_name data that starts with K and has 2 letters immediately following using LIKE and WHERE and __
SELECT first_name, actor_id
FROM actor
WHERE first_name LIKE 'K__';

-- Query for all first_name data that starts with a K and ends with th
-- Using the LIKE and WHERE clauses --using both the wildcard % and underscores __
SELECT first_name, last_name, actor_id
FROM actor
WHERE first_name LIKE 'K__%th';

-- Comparing operators
-- Greater Than (>) -- Less Than (<)
-- Greater Than or Equal (>=) -- Less or Equal (<=)
-- Not Equal (<>)

-- Explore Data with SELECT ALL query (specific to changing into a new table)
SELECT *
FROM payment;

-- Query for customers who paid an amount GREATER THAN 2.00
SELECT customer_id, amount
FROM payment
WHERE amount > 2.00;

-- Query for customers who paid an amount LESS THAN 7.99
SELECT customer_id, amount
FROM payment
WHERE amount < 7.99;

-- Query for data that shows customers who paid an amount LESS than or EQUAL to 7.99
SELECT customer_id, amount
FROM payment
WHERE amount <= 7.99;

-- SQL Aggregations => SUM(), AVG(), COUNT(), MIN(), MAX()

--Query to display sum of amounts paid greater than 5.99
SELECT SUM(amount)
FROM payment
WHERE amount > 5.99;

--Query to display average of amounts paid that are greater than 5.99
SELECT AVG(amount)
FROM payment
WHERE amount > 5.99;

--Query to display count of amount paid that are greater than 5.99
SELECT COUNT(amount)
FROM payment
WHERE amount > 5.99;

-- Query to display the COUNT of DISTINCT amount paid that are greater than 5.99
SELECT COUNT(DISTINCT amount)
FROM payment
WHERE amount > 5.99;

-- Query to display min amount greater than 7.99
SELECT MIN(amount) AS Min_num_payments
FROM payment
WHERE amount > 7.99;

--Query to display max amount greater than 7.99
SELECT MAX(amount) as Max_Num_payments
FROM payment
WHERE amount > 7.99;

-- Query to display all amounts (set up for GROUP By)
SELECT amount
FROM payment
WHERE amount = 7.99;

-- Query to display different amounts grouped together
SELECT amount, COUNT(amount)
FROM payment
GROUP BY amount
ORDER BY amount;

-- Query to display customer_ids with the summed amounts for each customer_id
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY customer_id DESC;

-- Query to display customer_ids with the summed amounts for each customer_id
-- Separate example -- a different way to use GROUP BY
SELECT customer_id, amount
FROM payment
GROUP BY amount, customer_id
ORDER BY customer_id DESC;

-- Query to explore the data inside of the customer table
SELECT *
FROM customer;

--Query to display customer_ids that show up more than 5 times
-- GROUP BY the custoemr's email
-- Set specific email criteria
SELECT COUNT(customer_id), email
FROM customer
GROUP BY email
HAVING COUNT(customer_id) > 0;

