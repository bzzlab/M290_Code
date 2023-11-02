create database Blog;
use Blog;

CREATE TABLE users
(
    id INTEGER PRIMARY KEY,
    firstname TEXT,
    lastname TEXT,
    birthday DATE
);
drop table if exists blogs;
CREATE TABLE blogs
(
    id INTEGER PRIMARY KEY,
    date DATE,
    title varchar(100),
    entry TEXT,
    users_id INTEGER NOT NULL,
        FOREIGN KEY (users_id) REFERENCES users (id)
);

drop table if exists login;
CREATE TABLE login
(
    id INTEGER PRIMARY KEY,
    email TEXT,
    password TEXT,
    users_id INTEGER NOT NULL,
        FOREIGN KEY (users_id) REFERENCES users (id)
);
