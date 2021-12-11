create table if not exists genre (id serial primary key,genre_name varchar (40) not null);
create table if not exists artists (id serial primary key,artist_name varchar (50) not null);
create table if not exists genre_lists (artist_id integer references artists(id), 
genre_id integer references genre(id), 
constraint pk primary key (artist_id, genre_id));
create table if not exists albums(id serial primary key, album_name varchar (40) not null, album_year integer not null);
create table if not exists albums_lists(albums_id integer references albums(id),
artist_id integer references artists(id),
constraint pk1 primary key (albums_id, artist_id));
create table if not exists tracks(id serial primary key,genre_name varchar (70) not null, timing integer not null, albums_id integer references albums(id));
create table if not exists tracks_coll(id serial primary key, collection_name varchar(50));
create table if not exists coll_list(coll_id integer references tracks_coll(id),
track_id integer references tracks(id),
constraint pk2 primary key (coll_id, track_id));