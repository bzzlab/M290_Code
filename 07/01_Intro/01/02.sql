/*
Tasks:
1. Insert at least 5 records into the entry table from different users.
2. Output the number of rows in the table entry.
 */

use guestbookdb;
insert into eintrag (titel, text, rating, datum, FK_login) value /*??*/
    ('Tolles Restaurant', 'Das beste Chicken Curry ...',5, CURRENT_DATE(), 1), /*??*/
    ('Naja Restaurant', 'Hab schon besser gegessen ...',3, CURRENT_DATE(), 2), /*??*/
    ('Nettes Restaurant', 'Die Bedienung war sehr aufmerksam ...',4, CURRENT_DATE(), 10), /*??*/
    ('Preis/Leistung stimmt', 'Preis/Leistung für Bedienung und Essen stimmt ...',3, CURRENT_DATE(), 10), /*??*/
    ('Komme ich nicht mehr', 'Bedienung und Essen haben mir nicht zugesagt ...',1, CURRENT_DATE(), 10); /*??*/

-- check number number of rows AFTER inserts
select count(*) from eintrag; /*??*/
select * from eintrag; /*??*/
