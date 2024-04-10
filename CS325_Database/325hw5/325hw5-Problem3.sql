-- Emilyo Garcia
-- CS 325 - Homework 5 - Problem 3
-- November 14, 2022

start movies-pop.sql

spool 325hw5-Problem3-out.txt

Prompt Homework 5 - Problem 3

Prompt Emilyo Garcia

prompt ===== Problem 3-2 =====

(select movie_title
from movie)
minus
(select movie_title
from movie m, video v, rental r
where m.movie_num = v.movie_num
and v.vid_id = r.vid_id)
order by movie_title desc;

prompt ===== Problem 3-3 =====

(select vid_id, vid_rental_price
from video
where vid_format = 'HD-DVD')
union
(select vid_id, vid_rental_price
from video
where not exists (select vid_id
		  from rental
		  where rental.vid_id = video.vid_id))
order by vid_rental_price desc;

prompt ===== Problem 3-4 ===== 

(select vid_id, count(*) num_rentals
from rental
group by vid_id)
union
(select vid_id, count(*)-1 num_rentals
from video
where vid_id in (select vid_id
		 from video
		 where not exists (select *
				   from rental
				   where rental.vid_id = video.vid_id))
group by vid_id)
order by num_rentals desc;

prompt ===== Problem 3-5 =====

select client_lname, client_credit_rtg
from client
order by client_credit_rtg;

update client
set client_credit_rtg = client_credit_rtg *1.1
where client_credit_rtg < 4.0 and
client_credit_rtg > (select avg(client_credit_rtg)
		     from client);

select client_lname, client_credit_rtg
from client
order by client_credit_rtg;

Prompt ===== Problem 3-6 =====

select count(*)
from video;

delete from video
where vid_id not in (select vid_id
		     from rental);
select *
from video;

rollback;

spool off

