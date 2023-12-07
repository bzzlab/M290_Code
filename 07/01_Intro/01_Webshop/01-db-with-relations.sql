/*
Tasks: Create relations between tables
 */

-- drop database
drop database if exists webshopdb;

-- create database webshopdb
create database if not exists webshopdb;
-- use statement
use webshopdb;

/*
 1. Create table customer, id (PK), firstname,lastname
 */
create table customer(
    id integer primary key not null auto_increment,
    firstname varchar(50) not null,
    lastname varchar(50) not null
);

/*
 2. Create table products, id (PK), articleNo (article number),
    articleName, description
 */

 create table products(
    id integer primary key not null auto_increment,
    articleNo varchar(255) not null,
    articleName varchar(500) not null,
    description varchar(1000) null
);

/*
 3. Create table orders, id (PK), product_id (FK product),
    customer_id (FK customer), date (date of order), description
 */
create table orders(
    id integer primary key not null auto_increment,
    product_id INTEGER NOT NULL,
        FOREIGN KEY (product_id) REFERENCES products(id),
    customer_id INTEGER NOT NULL,
        FOREIGN KEY (customer_id) REFERENCES customer(id),
    date DATE not null,
    description varchar(1000) null
);



/*
 4. Show relation of tables with a diagram
 */
