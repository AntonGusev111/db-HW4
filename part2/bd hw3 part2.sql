CREATE TABLE IF NOT EXISTS employee (id serial primary key,full_name varchar(50) not NULL, POSITION varchar (30)NOT NULL );
create table if not exists employees (id serial primary key, id_name integer REFERENCES employee(id),department varchar (30) not null,boss_id integer);