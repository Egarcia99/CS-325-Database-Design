
-- movies-create.sql

--**********
-- create a set of tables for a video store scenaario
--**********

--**********
-- table movie_category holds this store's 
--     chosen movie categories for shelving movies

drop table movie_category cascade constraints;

create table movie_category
(category_code     char(3),
 category_name     varchar2(10) not null,
 primary key       (category_code)
);

--**********
-- table client keeps track of all clients
--     who have either rented a video or who have
--     indicated a wish to rent a video sometime

drop table client cascade constraints;

create table client
(client_num          char(4),
 client_lname        varchar2(15) not null,
 client_fname        varchar2(15),
 client_phone        char(8),
 client_credit_rtg   decimal(2,1) check(client_credit_rtg between 0.0 and 5.0),
 client_fave_cat     char(3),
 primary key         (client_num),
 foreign key         (client_fave_cat) references movie_category(category_code)
);

--**********
-- table movie holds information about movies
--     themselves (such movies may then have video
--     instances in various formats, etc.)

drop table movie cascade constraints;

create table movie
(movie_num            char(5),
 movie_title          varchar2(40)    not null,
 movie_director_lname varchar2(30),
 movie_yr_released    char(4),
 movie_rating         varchar2(5)     check(movie_rating in 
                                               ('G', 'PG', 'PG-13',
                                                'R', 'A')),
 category_code        char(3),
 primary key          (movie_num),
 foreign key          (category_code) references movie_category
);

--**********
-- table video keeps track of videos that
--     have ever been rented or have been available
--     for rental

drop table video cascade constraints;

create table video
(vid_id             char(6),
 vid_format         varchar2(7) not null,
 vid_purchase_date  date,
 vid_rental_price   decimal(3,2),
 movie_num          char(5),
 primary key        (vid_id),
 foreign key        (movie_num) references movie
);

--**********
-- table rental notes which clients have
--     rented which videos
-- (why rental_num, now? because we are now going to change
--     the scenario to allow a client to rent the same video more
--     than once...)

drop table rental cascade constraints;

create table rental
(rental_num      char(7),
 client_num      char(4),
 vid_id          char(6),
 date_out        date         not null,
 date_due        date         not null,
 date_returned   date,
 primary key     (rental_num),
 foreign key     (client_num) references client,
 foreign key     (vid_id)     references video
);

-- end of movies-create.sql
