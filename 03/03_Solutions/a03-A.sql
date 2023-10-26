/*
Tasks:
Query various information from the users' table.
 */
-- use statement
use guestbookdb;/*??*/
-- 1. Print the number of table rows.
SELECT count(*) from users;/*??*/
-- 2. Print all users' last names, first names, city and phone number.
SELECT lastname, firstname, city, phone from users;/*??*/
-- 3. Print all states (nations/countries) where the users are located.
select city, country from users;/*??*/
-- 4. Print all states (nations/countries) where the users are located.
-- The output is sorted in descending order by country.
select city, country from users ORDER BY country DESC ;/*??*/
-- 5. List all users with last name and phone number who are from the city of Richmond.
SELECT lastname, phone from users where city = 'Richmond';/*??*/
-- 6. List all users with last name and phone number who are from the city of Richmond.
-- The output is sorted alphabetically by name in ascending order.
SELECT lastname, phone from users where city = 'Richmond' order by lastname asc;/*??*/
-- 7. Enter all users with last name, first name, phone number and whose last name starts with the letter 'L'.
SELECT lastname, firstname, city, phone from users where lastname like 'L%';/*??*/
-- 8. Enter all users with last name, first name, phone number and whose phone number contains the number 67.
SELECT lastname, firstname, city, phone from users where phone like '%67%';/*??*/
-- 9. Enter all users with lastname, firstname, telephone number and
-- their telephone number at least the digit sequence '02' at the beginning which contains the area code
SELECT lastname, firstname, city, phone from users where phone like '(02%)%';/*??*/