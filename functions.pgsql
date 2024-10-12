-- ## UPPER, LOWER & LENGTH Query 
select
  lower(email),
  upper(email)
from
  customer
where
  length(email) > 20;

select
  lower(first_name),
  lower(last_name),
  lower(email)
from
  customer
where
  length(first_name) > 10
  or length(last_name) > 10;

-- ## LEFT & RIGHT Query
select
  left(first_name, 1),
  right(first_name, 1),
  first_name
from
  customer;

select
  right(email, 5),
  email
from
  customer;

select
  left(right(email, 4), 1),
  email
from
  customer;

-- ## CONCAT Query 
select
  left(first_name, 1) || left(last_name, 1),
  first_name,
  last_name
from
  customer;

select
  email,
  left(email, 1) || '***' || right(email, 19)
from
  customer;

-- ## POSITION Query 
select
  last_name || ', ' || left(email, position('.' in email) - 1)
from
  customer;

-- ## SUBSTRING Query
select
  email,
  substring(
    email
    from
      position('@' in email)
  )
from
  customer;

select
  email,
  left(email, 1) || '***' || substring(
    email
    from
      position('.' in email) for 2
  ) || '***' || substring(
    email
    from
      position('@' in email)
  )
from
  customer;

-- ## EXTRACT Query
select
  extract(
    day
    from
      rental_date
  )
from
  rental;

-- ## TO_CHAR Query
select
  to_char(payment_date, 'MM-YYYY')
from
  payment;

-- ## Intervals & Timestamps Query
select
  CURRENT_TIMESTAMP,
  extract(
    day
    from
      return_date - rental_date
  )
from
  rental;
