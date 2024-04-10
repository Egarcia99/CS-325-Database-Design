-- Emilyo Garcia
-- CS 325 - Homework 4 - Problem 2
-- October 26, 2022

spool 325hw4-out.txt

prompt ===== Homework - Problem 2 =====

prompt Emilyo Garcia

prompt ===== Problem 2-1 =====

select vid_id, vid_format
from video
where vid_rental_price < (select avg(vid_rental_price)
			  from video);
prompt ===== Problem 2-2 =====

select client_lname, client_fname
from client
where client_num in (select client_num
		     from rental
		     where vid_id = 130012);


prompt ===== Problem 2-3 =====

select movie_title || ' (' || movie_yr_released || ') ' "Movies" , movie_director_lname "Directors"
from movie;

prompt ===== Problem 2-4 =====

select client_lname, client_fname, client_phone
from client 
where exists (select 'a'
	      from rental
	      where client.client_num = rental.client_num
	      and  date_returned is null);
	      
prompt ===== Problem 2-5 =====

select movie_title
from movie
where movie.movie_num in (select video.movie_num
		          from video
		          where not exists (select 'a'
			  from video
			  where movie.movie_num = video.movie_num
			  and vid_format = 'Blu-Ray'));

prompt ===== Problem 2-6 =====

select movie_title, movie_yr_released
from movie
where movie_director_lname = &movie_director_lname;

prompt ===== Problem 2-7 =====

select *
from client
order by client_credit_rtg;

select * 
from client
order by client_credit_rtg desc;

prompt ===== Problem 2-8 =====

select category_name, movie_title, movie_rating
from movie_category
join movie
on movie.category_code = movie_category.category_code
order by movie_rating, category_name desc, movie_title;

prompt ===== Problem 2-9 =====

select client_lname, client_phone, client_credit_rtg
from client
where client_credit_rtg <= (select avg(client_credit_rtg)
			    from client)
order by client_credit_rtg desc;

prompt ===== Problem 2-10 =====

select vid_format, count(*) "QTY", avg(vid_rental_price) "AVG RENTAL PRICE"
from video
group by vid_format;

prompt ===== Problem 2-11 =====

select vid_rental_price, count(*) "QUANTITY"
from video
group by vid_rental_price
order by vid_rental_price desc;

prompt ===== Problem 2-12 =====

select vid_rental_price, count(*) "QUANTITY"
from video
group by vid_rental_price
having (count(*) >= 5)
order by vid_rental_price desc;

spool off
