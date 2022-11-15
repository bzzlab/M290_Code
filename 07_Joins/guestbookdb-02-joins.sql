-- Grundsätzlich können mit drei SELECT's die Inhalt der neuen Tabellen ausgeben werden:
use guestbookdb;

-- import data
insert into eintrag (titel, text, datum, FK_login) value
    ('Tolles Restaurant', 'Das beste Chicken Curry ...', CURRENT_DATE(), 1),
    ('Naja Restaurant', 'Hab schon besser gegessen ...', CURRENT_DATE(), 2),
    ('Nettes Restaurant', 'Die Bedienung war sehr aufmerksam ...', CURRENT_DATE(), 10);

-- select data
SELECT * FROM login;
SELECT * FROM benutzer;
SELECT * FROM eintrag;

-- select with joins
-- show all einträge with titel, text, email, vorname, nachname
/*
select e.titel, e.text, e.datum, l.email, b.vorname, b.nachname from eintrag e
inner join login l on e.FK_login = l.id
inner join benutzer b on l.id = b.FK_login;
*/