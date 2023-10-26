-- 1. Use corresponding database
use mydb;/*??*/

drop table user;/*??*/

/*
 2. Add a new table 'user' into database 'mydb' with following attributes:
 id, firstname, lastname,
 street and number,
 zip-code, place and country
 */
create table user(/*??*/
    id INTEGER primary key not null auto_increment,/*??*/
    firstname varchar(40),/*??*/
    lastname varchar(40),/*??*/
    street varchar(40),/*??*/
    street_number varchar(4),/*??*/
    zipcode int,/*??*/
    place varchar(40),/*??*/
    country varchar(40)/*??*/
);/*??*/

/*
 3. Insert 3 records
 */
insert into user (firstname, lastname, street, street_number, zipcode, place, country)/*??*/
    values/*??*/
        ('Anna', 'Muster', 'Blumenstrasse', '12', 9400, 'Rorschach', 'Schweiz'),/*??*/
        ('Fritz', 'Muster', 'Straussstrasse', '42a', 8000, 'Zürich', 'Schweiz'),/*??*/
        ('Felix', 'Muster', 'Glückstrasse', '7b', 9401, 'Rorschacherberg', 'Schweiz');/*??*/

/*
 4. Select table
 */
select * from user;/*??*/
