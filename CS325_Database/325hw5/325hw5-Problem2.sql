-- Emilyo Garcia
-- CS 325 - Homework 5 - Problem 2
-- November 14, 2022

spool 325hw5-Problem2-out.txt

prompt Homework 5 Problem 2

prompt Emilyo Garcia

prompt ===== Problem 2-1 =====

drop view counter_client_info;
create view counter_client_info as
select client_lname, client_fave_cat fave_category
from client, movie_category

prompt ===== problem 2-2 =====

select *
from counter_client_info
order by client_lname;

select *
from counter_client_info
order by fave_category, client_lname;
