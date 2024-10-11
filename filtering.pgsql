-- ## Where Query
SELECT
  *
FROM
  payment
WHERE
  amount = 0;

SELECT
  first_name,
  last_name
FROM
  customer
WHERE
  first_name = 'ADAM';

-- Fetch how many payments made by customer with customer_id = 100;
SELECT
  COUNT(payment_id)
FROM
  payment
WHERE
  customer_id = 100;

-- Fetch what is the last name of our customer with first name 'ERICA'
SELECT
  first_name,
  last_name
FROM
  customer
WHERE
  first_name = 'ERICA';

-- Fetch rentals have not been return yet
SELECT
  COUNT(*)
FROM
  rental
WHERE
  return_date IS NULL;

-- Fetch list of payment_ids with amount less then or equal to $2 includes payment_ids and amount
SELECT
  payment_id,
  amount
FROM
  payment
WHERE
  amount <= 2;

-- Fetch list of all the payment of customer 322, 346 and 354 where the amount is either less than $2 or greater than $10
SELECT
  *
FROM
  payment
WHERE
  (
    customer_id = 322
    OR customer_id = 346
    OR customer_id = 354
  )
  AND (
    amount < 2
    OR amount > 10
  )
ORDER BY
  customer_id ASC,
  amount DESC;

-- ## Between Query
SELECT
  *
FROM
  rental
WHERE
  rental_date BETWEEN '2005-05-24' AND '2005-05-26';

-- Fetch how many payments have been made on January 26th and 27th 2022 with an amount between 1.99 and 3.99
SELECT
  COUNT(*)
FROM
  payment
WHERE
  (
    payment_date BETWEEN '2020-01-26' AND '2020-01-28'
  )
  AND amount BETWEEN 1.99 AND 3.99;

-- ## IN Query
-- Fetch customer_id 12,25,67,93,124,234 payments if these customers with amount 4.99, 7.99 and 9.99 in january 2020
SELECT
  *
FROM
  payment
WHERE
  customer_id IN (2, 25, 67, 93, 124, 234)
  AND amount IN (4.99, 7.99, 9.99)
  AND payment_date BETWEEN '2020-01-01' AND '2020-02-01';

-- ## LIKE Query 
SELECT
  *
FROM
  film
WHERE
  description LIKE '%Drama%'
  AND title LIKE 'T%';

-- Fetch how many movies are there that contain the documentary in the description?
SELECT
  *
FROM
  film
WHERE
  description LIKE '%Documentary%';

-- Fetch ow many customers are there with first name that is 3 latters long and eithre an 'X' or 'Y' as the last letter in the last name?
SELECT
  *
FROM
  customer
WHERE
  first_name LIKE '___'
  AND (
    last_name LIKE '%X'
    OR last_name LIKE '%Y'
  );

-- ## Challenges 
-- How many movies are there that contains 'Saga' in the description and where the title starts either with 'A' or ends with 'R'?
SELECT
  COUNT(*) as no_of_movies
FROM
  film
WHERE
  description LIKE '%Saga%'
  AND (
    title LIKE 'A%'
    OR title LIKE '%R'
  );

-- Create a list of all customers where the first name contains 'ER' and has an 'A' as the second latter or the result by the last name descendingly
SELECT
  *
FROM
  customer
WHERE
  first_name LIKE '%ER%'
  AND first_name LIKE '_A%'
ORDER BY
  last_name DESC;

-- How many payments are there where the amount is either 0 or is between 3.99 and 7.99 and in the same time has happened on 2020-05-01
SELECT
  *
FROM
  payment
WHERE
  (
    amount = 0
    OR amount BETWEEN 3.99 AND 7.99
  )
  AND payment_date BETWEEN '2020-05-01' AND '2020-05-02';