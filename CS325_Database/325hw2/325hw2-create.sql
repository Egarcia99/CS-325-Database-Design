-- Emilyo Garcia 
-- CS 325 Homework 2 - create tables
-- Friday 16th 2022

Prompt hw2 question 10: creating tables including values for Client, Video, and Rental

Prompt creating table Client

drop table Client cascade constraints;
create table Client
(Cli_id varchar2(4),
Cli_lname varchar2(50),
Cli_fname varchar2(50),
Cli_phone varchar2(8),
primary key (Cli_id)
);

insert into Client
values
('000A', 'Alpha', 'Ann', '000-0001');

insert into Client
values
('111B', 'Beta', 'Bob', '111-1112');

insert into Client
values
('222B', 'Beta', 'Ann', '222-2223');

insert into Client
values
('333C', 'Carlos', 'David', '333-3334');

insert into Client
values
('444D', 'Delta', 'Edie', '111-1112');

select *
from Client;

Prompt creating table video

drop table Video cascade constraints;
create table Video
(Vid_id           varchar2(6),
Vid_format        varchar2(35),
Vid_purchase_date date,
Vid_rental_price  decimal(6,2),
Vid_length        integer,
primary key       (Vid_id)
);

insert into Video
values
('00000D', 'DVD', '10-JAN-2020', 1.99, 73);

insert into Video
values
('11111H', 'HD-DVD', '20-FEB-2021', 4.99, 91);

insert into Video
values
('22222B', 'Bluray', '30-MAR-2019', 1.99, 105);

insert into Video
values
('33333H', 'HD-DVD', '20-FEB-2021', 3.99, 69);

insert into Video
values
('44444B', 'Bluray', '04-APR-2017', 0.99, 91);

select *
from Video;


Prompt creating table Rental

drop table Rental cascade constraints;
create table Rental
(Cli_id varchar2(4),
Vid_id  varchar2(6),
primary key (Cli_id, Vid_id)
);

insert into Rental
values
('111B', '11111H');

insert into Rental
values
('222B', '00000D');

insert into Rental
values
('222B', '22222B');

insert into Rental
values
('333C', '22222B');

insert into Rental
values
('333C', '00000D');

insert into Rental
values
('333C', '11111H');

insert into Rental
values
('000A', '44444B');

select *
from Rental;

