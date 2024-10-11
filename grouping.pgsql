-- ## SUM Query 
select
  SUM(amount)
from
  payment;

-- ## AVG Query
select
  AVG(amount)
from
  payment;

-- ## ROUND Query
select
  SUM(amount),
  ROUND(AVG(amount), 3) AS AVERAGE
from
  payment;

-- *** Challenge ***
-- Your manager wants to get better understanding of the flims that why you are ask to write a query to see the Minimum Maximum Average (rounded) and sum of the replacement cost of the films
select
  MIN(replacement_cost),
  MAX(replacement_cost),
  ROUND(AVG(replacement_cost), 2) AS AVG,
  SUM(replacement_cost)
from
  film;

-- ## GROUNP BY Query 
select
  customer_id,
  SUM(amount)
from
  payment
group by
  customer_id;

-- *** Challenge ***
-- Your manager wants to which of the two employees (staff_id) is responsible for more payments?
select
  staff_id,
  SUM(amount),
  COUNT(*)
from
  payment
group by
  staff_id;

-- How do these amounts change of we don't consider amounts equal to 0?
select
  staff_id,
  SUM(amount),
  COUNT(*)
from
  payment
where
  amount != 0
group by
  staff_id;

-- ## Having Query
SELECT
  count(*)
from
  payment
where
  amount != 0
group by
  staff_id,
  DATE (payment_date)
having
  count(*) > 400
order by
  count(*) desc;