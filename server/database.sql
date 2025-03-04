-- description of how to setup SQL on local machine

-- step 1: download PostgreSQL 17.4
-- step 2: run "psql" (search for it on your computer)
-- step 3: select default server, database, port, username
--         enter your passowrd (MAKE SURE TO REMEMBER IT)
-- step 4: add the following to your .env file
-- PGUSER=postgres
-- PGHOST=localhost
-- PGPASSWORD=*whatever password you used*
-- PGDATABASE=socket
-- PGPORT=5432
-- step 5: run the following commands in psql

CREATE DATABASE socket

CREATE TABLE users (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	username VARCHAR(50) NOT NULL UNIQUE,
	password VARCHAR(50) NOT NULL,
	email VARCHAR(255) UNIQUE
);

INSERT INTO users (username, password, email) values ('firstuser', 'firstpassword', 'firstuser@ufl.edu');
