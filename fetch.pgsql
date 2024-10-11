-- ## SELECT Query
-- Fetch all the columns from the table address
SELECT
  *
FROM
  address;

-- Fetch all customers with first name, last name, and email address;
SELECT
  first_name, last_name, email
from
  customer;


-- ## ORDER BY Query 
SELECT
  * 
FROM
  payment
  ORDER BY customer_id, amount DESC;

-- Fetch customer by last name desc and first name as desc 
SELECT
  first_name, last_name, email
FROM
  customer
  ORDER BY last_name DESC, first_name DESC;

-- ## DISTINCT Query
-- Fetch different price that has been pain in higher to lower order
SELECT
  DISTINCT amount
FROM
  payment ORDER BY amount DESC;

-- ## LIMIT Query 
SELECT
  * 
FROM
  rental ORDER BY rental_date DESC LIMIT 10;

-- ## Count Query 
SELECT
  COUNT(DISTINCT first_name)
FROM
  customer;


-- ## Challenges 
-- 1. Create a list of all the distinct districts customers are from.
SELECT
  DISTINCT district
 FROM
  address;

-- 2. What is the latest rental data?
SELECT
  rental_date 
FROM
  rental
  ORDER BY rental_date DESC LIMIT 1;

-- 3. How many flims does the company have? 
SELECT
  COUNT(*)
FROM
  film;

-- 4. How many distinct last names of the customers are there? 
SELECT
  COUNT (DISTINCT last_name)
FROM
  customer;