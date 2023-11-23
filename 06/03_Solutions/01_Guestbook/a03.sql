/*
Tasks: Create query with joins. Instruction see below
*/

use guestbookdb;
-- 1. Geben Sie Namen, Vornamen und deren Login-Daten (Email, Passwort) aller Benutzer aus.
select b.vorname, b.nachname, l.email, l.password from  benutzer b /*??*/
inner join login l on l.id = b.FK_login; /*??*/

-- 2. Geben Sie die ID der Login-Tabelle, dann Email, Name und Vorname aller Benutzer aus.
select l.id 'Login-ID', l.email as 'Email',  b.vorname, b.nachname from  benutzer b /*??*/
inner join login l on l.id = b.FK_login; /*??*/

-- 3. Geben Sie Email, Name und Vorname aller Benutzer,
-- dessen Email die Zeichenkette <code>purus</code> enthält.
select l.id 'Login-ID', b.vorname, b.nachname from  benutzer b /*??*/
inner join login l on l.id = b.FK_login /*??*/
where l.email like '%lobo%'; /*??*/

-- 4. Geben Sie nur die Email, Name und Vorname der Benutzer,
-- deren Land <code>Isle of Man</code> und <code>Malaysia</code> entspricht.
select l.email, b.vorname, b.nachname from  benutzer b /*??*/
inner join login l on l.id = b.FK_login /*??*/
where b.land = 'Isle of Man' or b.land = 'Malaysia'; /*??*/

-- 5. Geben Sie alle Gästebuch-Einträge aus, wobei Sie Titel, Text, Datum, Email, Vor- und Nachnamen ausgeben
select e.titel, e.text, e.datum, l.email, b.vorname, b.nachname from eintrag e /*??*/
inner join login l on e.FK_login = l.id /*??*/
inner join benutzer b on l.id = b.FK_login; /*??*/
