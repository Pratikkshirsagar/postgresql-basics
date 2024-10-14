-- ## JOIN Query
select
  *
from
  comments
  join users on user_id = comments.user_id;

select
  contents,
  url
from
  comments
  join photos on photos.id = comments.photo_id;

select
  url,
  username
from
  photos
  left join users on users.id = photos.id;

select
  url,
  username
from
  photos
  right join users on users.id = photos.user_id;

select
  url,
  username
from
  photos
  full join users on users.id = photos.user_id;

-- ## JOIN with WHERE
select
  *
from
  comments
  join photos on photos.user_id = comments.user_id
where
  comments.user_id = photos.user_id;

-- ## THREE way JOIN
select
  *
from
  comments
  join photos on photos.user_id = comments.user_id
  join users on users.id = comments.user_id
  and users.id = photos.user_id;
