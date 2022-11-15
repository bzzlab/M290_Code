# noinspection SqlNoDataSourceInspectionForFile

-- create administrator user
-- Important to setup user with mysql_native_password else you get following error:
-- https://stackoverflow.com/questions/44946270/er-not-supported-auth-mode-mysql-server
create user 'admin1'@'localhost' identified WITH mysql_native_password by 'hello';
create user 'admin1'@'localhost' identified by 'hello';
-- show all users in MySQL register-server
select Host,User from mysql.user;

-- create empty database
create database if not exists CatsWebshopDB;

/*
<type_of_permission>:
ALL PRIVILEGES- as we saw previously, this would allow a MySQL user full access
to a designated database
CREATE- allows them to create new tables or databases
DROP- allows them to them to delete tables or databases
DELETE- allows them to delete rows from tables
INSERT- allows them to insert rows into tables
SELECT- allows them to use the SELECT command to read through databases
UPDATE- allow them to update table rows
GRANT OPTION- allows them to grant or remove other users’ privileges

Syntax:
Add permission with
GRANT <type_of_permission> ON <database_name.table_name> TO <'username'@'localhost'>;

Remove permission with
REVOKE <type_of_permission> ON <database_name.table_name> FROM <'username'@'localhost'>
*/


GRANT all privileges ON CatsWebShopDB.* TO 'admin1'@'localhost';
show grants for 'admin1'@'localhost';
-- import sample database
-- https://www.mysqltutorial.org/mysql-sample-database.aspx
use CatsWebshopDB;

-- show data of the following tables
select * from customers;
select * from employees;

-- delete database
drop database CatsWebshopDB;

-- remove all privileges (Rechte) from database
REVOKE all privileges ON CatsWebshopDB.* FROM 'admin1'@'localhost';

-- remove user
drop user 'admin1'@'localhost';
-- show all users in MySQL register-server
select Host,User from mysql.user;
