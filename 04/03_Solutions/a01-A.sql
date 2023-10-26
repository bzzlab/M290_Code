/*
Tasks:
Query various information from the users' table.
 */
-- use statement
use guestbookdb;/*??*/

-- 1. The user with *Diaz Illiana* now has the email address *illiana.diaz@google.com*.
update users/*??*/
set email='illiana.diaz@google.com'/*??*/
where lastname='Diaz' and firstname='Illiana';/*??*/
-- 2. The users *Hedwig Chambers* from *Catanzaro* would like to be deleted from the database.
delete from users/*??*/
where lastname='Hedwig' and firstname='Chambers';/*??*/
-- 3. The users with last name *Gamble* now has the mobile number 079 415 17 18.
update users/*??*/
set mobile='+41 79 415 17 18'/*??*/
where lastname='Gamble';/*??*/
-- 4. The users with last name *Gamble* moved from Ireland to *8810 Horgen at Seestrasse 16*. His phone is 044 720 15 16. His mobile number remains.
update users/*??*/
set zip='8810', city='Horgen', address1='Seestrasse 16', country='Switzerland'/*??*/
where lastname='Gamble';/*??*/