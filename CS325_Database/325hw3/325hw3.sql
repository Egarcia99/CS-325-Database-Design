-- Emilyo Garcia --

__ CS 325 - Homework 3 - Part 2 --

-- 09/27/2022 --

spool 325hw3-out.txt

Prompt Homework 3 Part 2

Prompt Emilyo Garcia

Prompt ===== Part 2-A =====

select *
from client
where (client_credit_rtg > 3.4);

Prompt ===== Part 2-B =====

select distinct movie_rating, movie_yr_released
from movie;

Prompt ===== Part 2-C =====

select *
from client, movie_category
where client.client_fave_cat = movie_category.category_code;

Prompt ===== Part 2-D =====

select distinct vid_id, date_out, date_due
from rental
where date_returned is NULL;

Prompt ===== Part 2-E =====

select distinct vid_id, vid_format, vid_rental_price
from video
where vid_format != 'Blu-Ray';

Prompt ===== Part 2-F =====

select distinct category_name, client_lname, client_credit_rtg
from client, movie_category
where client.client_fave_cat = movie_category.category_code;

Prompt ===== Part 2-G =====

select*
from video
where vid_purchase_date BETWEEN '15-JUL-2008' and '01-DEC-2011';

Prompt ===== Part 2-H =====

select*
from video
where vid_rental_price >= 3.99 AND vid_purchase_date >= '01-JAN-2011';

Prompt ===== Part 2-I =====

select distinct movie_title, movie_rating
from movie
where movie_title LIKE '%the%';

Prompt ===== Part 2-J =====

select distinct movie_rating, movie_title
from movie
where movie_rating IN ('PG-13', 'R', 'A');


spool off
