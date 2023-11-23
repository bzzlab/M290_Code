/*
Tasks: Create query with joins. Instruction see below
*/

use guestbookdb;
-- 1. Geben Sie Namen, Vornamen und deren Login-Daten (Email, Passwort) aller Benutzer aus.
select * from login;
select * from benutzer;

-- 2. Geben Sie die ID der Login-Tabelle, dann Email, Name und Vorname aller Benutzer aus.

-- 3. Geben Sie Email, Name und Vorname aller Benutzer,
-- dessen Email die Zeichenkette <code>purus</code> enthält.

-- 4. Geben Sie nur die Email, Name und Vorname der Benutzer,
-- deren Land <code>Isle of Man</code> und <code>Malaysia</code> entspricht.

-- 5. Geben Sie alle Gästebuch-Einträge aus, wobei Sie Titel, Text, Datum, Email, Vor- und Nachnamen ausgeben
