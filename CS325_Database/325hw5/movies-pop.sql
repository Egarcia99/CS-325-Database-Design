
-- movies-pop.sql

--**********
-- in case this is re-run (to get a "fresh" set of initial contents),
-- delete any current contents
--**********

delete from rental;
delete from video;
delete from movie;
delete from client;
delete from movie_category;

--**********
-- initially-populate the tables created in movies-create.sql
--**********

--**********
-- insert initial set of movie categories

insert into movie_category
values
('100', 'Comedy');

insert into movie_category
values
('200', 'Action');

insert into movie_category
values
('300', 'Drama');

insert into movie_category
values
('400', 'Classic');

insert into movie_category
values
('500', 'Family');

--**********
-- insert initial set of clients

insert into client
values
('1111', 'Alpha', 'Ann', '111-1111', 4.9, '100');

insert into client
values
('2222', 'Beta', 'Bob', '222-2222', 1.2, '200');

insert into client
values
('3333', 'Carlos','Ann', '333-3333', 3.8, '300');

insert into client
values
('4444', 'Delta','David','222-2222', 3.4, '400');

insert into client(client_num, client_lname, client_fname, client_phone, client_credit_rtg)
values
('5555', 'Beta', 'Edie', '555-5555', 5.0);

insert into client
values
('6666', 'Epsilon', 'Emma', '666-6666', 2.1, '400');

insert into client
values
('7777', 'Feta', 'Frank', '777-7777', 0.0, '500');

insert into client
values
('8888', 'Greta', 'Gail', '888-8888', 4.4, '200');

insert into client
values
('9999', 'Harpo', 'Harry', '999-9999', 3.3, '100');

--**********
-- insert initial set of movies

insert into movie
values
('10001', 'Gone with the Wind', 'Fleming', '1939', 'G', '400');

-- for those of you who read closely: note how I get a single quote
-- within a string: you type two single-quote characters in a row,
-- as you see in the movie title below:

insert into movie
values
('10002', 'It''s a Wonderful Life', 'Capra', '1947', 'G', '400');

insert into movie
values
('10003', 'The Muppet Movie', 'Frawley', '1979', 'G', '500');

insert into movie
values
('20001', 'Indiana Jones and the Temple of Doom', 'Spielberg', '1984', 'PG',
 '200');

insert into movie
values
('20002', 'Indiana Jones and the Last Crusade', 'Spielberg', '1989', 'PG-13',
 '200');

insert into movie
values
('30001', 'Babe', 'Noonan', '1995', 'G', '500');

insert into movie
values
('30002', 'Toy Story', 'Lasseter', '1995', 'G', '500');

insert into movie
values
('30003', 'Toy Story 2', 'Lasseter', '1999', 'G', '500');

insert into movie
values
('20003', 'Star Wars', 'Lucas', '1977', 'PG', '200');

insert into movie
values
('20004', 'The Empire Strikes Back', 'Kershner', '1980', 'PG', '200');

insert into movie
values
('20005', 'Return of the Jedi', 'Marquand', '1983', 'PG', '200');

insert into movie
values
('20006', 'The Phantom Menace', 'Lucas', '1999', 'PG', '200');

insert into movie
values
('40001', 'One Flew Over the Cuckoo''s Nest', 'Forman', '1975', 'R', '300');

insert into movie
values
('40002', 'Midnight Cowboy', 'Schlesinger', '1969', 'A', '300');

insert into movie
values
('40003', 'Clockwork Orange', 'Kubrick', '1971', 'A', '300');

insert into movie
values
('10004', 'All About Eve', 'Mankiewicz', '1950', 'G', '400');

insert into movie
values
('10005', 'The Philadelphia Story', 'Cukor', '1940', 'G', '400');

insert into movie
values
('40004', 'Fatal Attraction', 'Lyne', '1987', 'R', '300');

insert into movie
values
('20007', 'The Matrix', 'Wachowski', '1999', 'R', '200');

insert into movie
values
('10006', 'The Blues Brothers', 'Landis', '1980', 'R', '100');

--**********
-- insert initial set of videos

insert into video
values
('120011','Blu-Ray','11-JAN-2010', 2.99, '10001');

insert into video
values
('130012','DVD','22-FEB-2011', 4.99, '10001');

insert into video
values
('120021','Blu-Ray','03-MAR-2009', 1.99, '10002');

insert into video
values
('130022', 'DVD', '04-MAR-2012', 5.99, '10002');

insert into video
values
('130031','DVD','22-FEB-2011', 4.99, '10003');

insert into video
values
('130061', 'DVD', '15-JAN-2010', 1.99, '10006');

insert into video
values
('210011','HD-DVD','05-MAY-2009', 0.99, '20001');

insert into video
values
('230012', 'DVD', '01-Jan-2010', 3.99, '20001');

insert into video
values
('220013', 'Blu-Ray', '05-Apr-2008', 2.19, '20001');

insert into video
values
('220021', 'Blu-Ray', '05-Apr-2008', 2.19, '20002');

insert into video
values
('320011', 'Blu-Ray', '05-Apr-2008', 1.99, '30001');

insert into video
values
('330012', 'DVD', '08-May-2010', 3.99, '30001');

insert into video
values
('320021', 'Blu-Ray', '06-May-2008', 1.99, '30002');

insert into video
values
('320022', 'Blu-Ray', '06-May-2008', 1.99, '30002');

insert into video
values
('330023', 'DVD', '07-Jun-2009', 4.99, '30002');

insert into video
values
('320031', 'Blu-Ray', '01-Dec-2011', 2.99, '30003');

insert into video
values
('320032', 'Blu-Ray', '01-Dec-2011', 2.99, '30003');

insert into video
values
('330033', 'DVD', '05-May-2012', 5.99, '30003');

insert into video
values
('330034', 'DVD', '05-May-2012', 5.99, '30003');

insert into video
values
('210031', 'HD-DVD', '05-May-2008', 0.99, '20003');

insert into video
values
('220032', 'Blu-Ray', '15-Jul-2008', 1.99, '20003');

insert into video
values
('230033', 'DVD', '17-Aug-2010', 3.99, '20003');

insert into video
values
('210041', 'HD-DVD', '05-May-2008', 1.29, '20004');

insert into video
values
('220042', 'Blu-Ray', '15-Jul-2008', 1.99, '20004');

insert into video
values
('230043', 'DVD', '17-Aug-2010', 3.99, '20004');

insert into video
values
('220051', 'Blu-Ray', '15-Jul-2008', 1.99, '20005');

insert into video
values
('230052', 'DVD', '17-Aug-2010', 3.99, '20005');

insert into video
values
('220061', 'Blu-Ray', '01-Dec-2011', 2.99, '20006');

insert into video
values
('220062', 'Blu-Ray', '01-Dec-2011', 2.99, '20006');

insert into video
values
('220063', 'Blu-Ray', '01-Dec-2011', 2.99, '20006');

insert into video
values
('230064', 'DVD', '01-Dec-2011', 5.99, '20006');

insert into video
values
('420011', 'Blu-Ray', '04-Oct-2010', 2.19, '40001');

insert into video
values
('420021', 'Blu-Ray', '04-Oct-2010', 2.19, '40002');

insert into video
values
('420031', 'Blu-Ray', '04-Oct-2010', 2.19, '40003');

insert into video
values
('120041', 'Blu-Ray', '04-Oct-2010', 1.99, '10004');

insert into video
values
('120051', 'Blu-Ray', '04-Oct-2010', 1.99, '10005');

insert into video
values
('410041', 'HD-DVD', '05-May-2008', 1.29, '40004');

insert into video
values
('420042', 'Blu-Ray', '05-May-2008', 2.19, '40004');

insert into video
values
('220071', 'Blu-Ray', '15-Mar-2012', 2.99, '20007');

insert into video
values
('220072', 'Blu-Ray', '15-Mar-2012', 2.99, '20007');

insert into video
values
('230073', 'DVD', '15-Mar-2012', 5.99, '20007');

insert into video
values
('230074', 'DVD', '15-Mar-2012', 5.99, '20007');

--**********
-- insert initial set of rentals 

insert into rental
values
('0000001', '5555','120011', '21-SEP-2019', '23-SEP-2019', '22-SEP-2019');

insert into rental(rental_num, client_num, vid_id, date_out, date_due)
values
('0000002', '2222','130031', '19-SEP-2019', '22-SEP-2019');

insert into rental
values
('0000003', '2222','130012', '03-SEP-2019', '08-SEP-2019', '04-SEP-2019');

insert into rental(rental_num, client_num, vid_id, date_out, date_due)
values
('0000004', '3333','130012', '21-SEP-2019', '22-SEP-2019');

insert into rental(rental_num, client_num, vid_id, date_out, date_due)
values
('0000005', '3333','210011', '08-AUG-2019', '11-AUG-2019');

insert into rental
values
('0000007', '3333','120011', '15-SEP-2019', '18-SEP-2019', '21-SEP-2019');

insert into rental
values
('0000008', '1111','130022', '04-SEP-2019', '07-SEP-2019', '14-SEP-2019');

insert into rental
values
('0000009', '6666', '130012', '13-SEP-2019', '16-SEP-2019', '16-SEP-2019');

insert into rental
values
('0000010', '7777', '120011', '14-SEP-2019', '17-SEP-2019', '17-SEP-2019');

insert into rental(rental_num, client_num, vid_id, date_out, date_due)
values
('0000011', '8888', '230012', '05-SEP-2019', '10-SEP-2019');

insert into rental
values
('0000012', '9999', '210031', '10-SEP-2019', '13-SEP-2019', '13-SEP-2019');

insert into rental
values
('0000013', '9999', '210041', '10-SEP-2019', '13-SEP-2019', '13-SEP-2019');

insert into rental
values
('0000014', '9999', '230033', '10-SEP-2019', '13-SEP-2019', '13-SEP-2019');

insert into rental
values
('0000015', '3333', '420011', '01-SEP-2019', '04-SEP-2019', '03-SEP-2019');

insert into rental
values
('0000016', '2222', '330023', '11-SEP-2019', '16-SEP-2019', '15-SEP-2019');

insert into rental(rental_num, client_num, vid_id, date_out, date_due)
values
('0000017', '5555', '220013', '22-SEP-2019', '25-SEP-2019');

insert into rental(rental_num, client_num, vid_id, date_out, date_due)
values
('0000018', '1111', '220062', '21-SEP-2019', '26-SEP-2019');

insert into rental
values
('0000019', '3333', '320032', '06-SEP-2019', '09-SEP-2019', '07-SEP-2019');

insert into rental
values
('0000020', '7777', '130031', '29-AUG-2019', '01-SEP-2019', '02-SEP-2019');

insert into rental(rental_num, client_num, vid_id, date_out, date_due)
values
('0000021', '6666', '210011', '15-SEP-2019', '17-SEP-2019');

insert into rental
values
('0000022', '5555', '210031', '16-SEP-2019', '18-SEP-2019', '17-SEP-2019');

insert into rental
values
('0000023', '4444', '120011', '16-SEP-2019', '18-SEP-2019', '21-SEP-2019');

insert into rental
values
('0000024', '7777', '130031', '08-SEP-2019', '10-SEP-2019', '09-SEP-2019');

-- end of movies-pop.sql
