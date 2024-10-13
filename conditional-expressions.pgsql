-- ## Mathematical function 
select
  3 + 3,
  3 - 3,
  3 * 3,
  3 / 3;

select
  film_id,
  round(rental_rate / replacement_cost * 100, 2) as percentage
from
  film;

-- ## Case Query 
select
  title,
  release_year,
  CASE
    WHEN release_year < 2000 THEN '1990s movie'
    ELSE 'new movie'
  END
from
  film;

-- ## COALESCE & CAST Query
select
  COALESCE(null, true);

select
  CAST('100' AS INTEGER);

-- ## REPLACE Query 
select
  replace(email, 'org', 'gmail')
from
  customer;