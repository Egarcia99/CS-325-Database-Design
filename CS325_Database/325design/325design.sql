-- Jake Freed and Emilyo Garcia
-- CS 325 - Fall 2022
-- November 17, 2022

prompt ===== Account Table Creation =====

drop table account cascade constraints;

create table account
(account_email	varchar2(50),
account_phone      char(12),
primary key (account_email)
);

prompt ===== Account_follows Table Creation =====

drop table account_follows cascade constraints;

create table account_follows
(account_following   char(6),
account_email	  varchar2(50),
primary key (account_following, account_email),
foreign key (account_email) references account
);

prompt ===== Account_fav_genre Table Creation =====

drop table account_fav_genre cascade constraints;

create table account_fav_genre
(account_favorite_genres	varchar2(35),
account_email 	        	varchar2(50),
primary key (account_favorite_genres, account_email),
foreign key (account_email) references account
);

prompt ===== Radio Table Creation =====

drop table radio cascade constraints;

create table radio
(radio_id         char(6),
radio_title	  varchar2(35),
radio_length	  varchar2(25),
account_email        varchar2(50),
primary key (radio_id),
foreign key (account_email) references account
);



prompt ===== Song Table Creation =====

drop table song cascade constraints;

create table song
(song_id	 char(6),
song_length      varchar2(25),
song_title	 varchar2(35),
song_date_out	 date,
account_email	 varchar2(50),
radio_id	 char(6),
primary key (song_id),
foreign key (account_email) references account,
foreign key (radio_id) references radio
);

prompt ===== Song_artist Table Creation =====

drop table song_artist cascade constraints;

create table song_artist
(song_id	char(6),
artist_id	char(6),
primary key (song_id, artist_id),
foreign key (song_id) references song,
foreign key (artist_id) references artist	 
);

prompt ===== Artist Table Creation =====

drop table artist cascade constraints;

create table artist
(artist_id	  char(6),
artist_name	  varchar2(50),
artist_bio	  varchar2(100),
artist_followers  integer,
account_email	  varchar2(50),
primary key (artist_id),
foreign key (account_email) references account
);

prompt ===== Artist_followers Table Creation =====

drop table artist_followers cascade constraints;

create table artist_followers
(artist_follower	char(6),
artist_id	        char(6),
primary key (artist_follower, artist_id),
foreign key (artist_id) references artist
);

prompt ===== Playlist Table Creation =====

drop table playlist cascade constraints;

create table playlist
(playlist_id		char(6),
playlist_title	        varchar2(35),
playlist_count	  	integer,
playlist_length		varchar2(25),
playlist_creator	varchar2(50),
account_email		varchar2(50),
primary key (playlist_id),
foreign key (account_email) references account
);

prompt ===== Playlist_songs Table Creation =====

drop table playlist_songs cascade constraints;

create table playlist_songs
(playlist_id		char(6),
song_id			char(6),
primary key (playlist_id, song_id),
foreign key (playlist_id) references playlist,
foreign key (song_id) references song
);

prompt ===== Album Table Creation ======

drop table album cascade constraints;

create table album
(album_id	  char(6),
album_title	  varchar2(50),
album_date_out    date,
album_song_count  integer default 1 not null,
album_length      varchar2(25),
song_id		  char(6),
artist_id	  char(6),
account_email	  varchar2(50),
primary key (album_id),
foreign key (song_id) references song,
foreign key (artist_id) references artist,
foreign key (account_email) references account
);

prompt ===== Album_genre Table Creation =====

drop table album_genre cascade constraints;

create table album_genre
(album_genre	  varchar2(35),
album_id    	  char(6),
primary key       (album_genre, album_id),
foreign key	  (album_id) references album
);

