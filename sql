
Identify the primary keys and foreign keys in maven movies db. Discuss the differences
SELECT TABLE_NAME, COLUMN_NAME, CONSTRAINT_NAME
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'your_database_name';

List all details of actors
SELECT * FROM actor;

List all customer information from DB.
SELECT * FROM customer;

List different countries.
SELECT DISTINCT country FROM country;

Display all active customers.
SELECT * FROM customer WHERE active = 1;

List of all rental IDs for customer with ID 1.
SELECT rental_id FROM rental WHERE customer_id = 1;

Display all the films whose rental duration is greater than 5 .
SELECT * FROM film WHERE rental_duration > 5;

List the total number of films whose replacement cost is greater than $15 and less than $20.
SELECT COUNT(*) AS total_films 
FROM film 
WHERE replacement_cost > 15 AND replacement_cost < 20;

Display the count of unique first names of actors.
SELECT COUNT(DISTINCT first_name) AS unique_first_names FROM actor;

Display the first 10 records from the customer table .
SELECT * FROM customer LIMIT 10;

Display the first 3 records from the customer table whose first name starts with ‘b’.
SELECT * FROM customer WHERE first_name LIKE 'b%' LIMIT 3;

Display the names of the first 5 movies which are rated as ‘G’.
SELECT title FROM film WHERE rating = 'G' LIMIT 5;

Find all customers whose first name starts with "a".
SELECT * FROM customer WHERE first_name LIKE 'a%';

Find all customers whose first name ends with "a".
SELECT * FROM customer WHERE first_name LIKE '%a';

Display the list of first 4 cities which start and end with ‘a’ .
SELECT city FROM city WHERE city LIKE 'a%a' LIMIT 4;

Find all customers whose first name have "NI" in any position.
SELECT * FROM customer WHERE first_name LIKE '%NI%';

Find all customers whose first name have "r" in the second position .
SELECT * FROM customer WHERE first_name LIKE '_r%';

Find all customers whose first name starts with "a" and are at least 5 characters in length.
SELECT * FROM customer WHERE first_name LIKE 'a%' AND LENGTH(first_name) >= 5;

Find all customers whose first name starts with "a" and ends with "o".
SELECT * FROM customer WHERE first_name LIKE 'a%o';

Get the films with pg and pg-13 rating using IN operator.
SELECT * FROM film WHERE rating IN ('PG', 'PG-13');

Get the films with length between 50 to 100 using between operator.
SELECT * FROM film WHERE length BETWEEN 50 AND 100;

Get the top 50 actors using limit operator.
SELECT * FROM actor LIMIT 50;

Get the distinct film ids from inventory table.
SELECT DISTINCT film_id FROM inventory;
