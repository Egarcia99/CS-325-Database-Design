-- Emilyo Garcia
-- CS 325 Homework 2 - populate tables
-- Friday 16th, 2020

Prompt delete command in order to insert rows -  Question 11

/*========
 in case this is re-run (to get a "fresh" set of initial
 contents), delete any current contents
========*/
delete from rental;
delete from video;
delete from client;

Prompt adding additional rows to each table - question 12

insert into Client
values
('555E', 'Charlie', 'Tom', '555-4555');

insert into Video
values
('55555C', 'DVD', '05-APR-2001', 4.99, 45);

insert into Rental
values
('555E', '55555C'); 


