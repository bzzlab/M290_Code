use guestbookdb;

-- Alle negative Bewertungen unter 4.
-- Ausgabe Vor-/Nachnamen, Titel, Bewertung, Email (Simona)
select b.vorname,b.nachname, e.rating, e.titel, e.text, l.email, b.mobile from eintrag e
join login l on l.id = e.FK_login
join benutzer b on l.id = b.FK_login
where e.rating < 4;

-- Benutzer, welche mindestens eine Bewertung abgegeben haben (Simona)
SELECT benutzer.vorname, benutzer.nachname, COUNT(eintrag.id) AS anzahl_bewertungen
FROM benutzer
inner JOIN login ON benutzer.FK_login = login.id
inner JOIN eintrag ON login.id = eintrag.FK_login
GROUP BY benutzer.vorname, benutzer.nachname
HAVING COUNT(eintrag.id) > 0;

/*
Anzeigen von Kontaktdaten (Telefon und email)
die ein älteres Datum als 2020-01-01 haben
und deren Vorwahl mit (04*) beginnt (inkl. datum in Ausgabe). (Winona)
 */
SELECT b.datum, b.telefon, l.email from login l
inner join benutzer b on l.id = b.FK_login
WHERE b.Datum > '2020-01-01' AND telefon LIKE '(04%)%';

-- Email .uk & .com emails schnell überprüfen mit vornamen und nachnamen für einfache übersicht und korrektur (Winona)
SELECT b.vorname, b.nachname, l.email from login l
inner join guestbookdb.benutzer b on l.id = b.FK_login
WHERE Email LIKE '%.uk' OR Email LIKE '%.com';

-- Alle Benutzer mit Email, welche in Åland Islands oder in Tonga wohnhaft sind (Heidi)
select b.vorname, b.nachname, l.email, b.land from  benutzer b
inner join login l on l.id = b.FK_login
where b.land='Åland Islands' or b.land = 'Tonga';


-- Alle login-Daten, deren Email den String turpis enthält (Heidi)
select l.id 'Login-ID', b.vorname, b.nachname,l.email from  benutzer b
inner join login l on l.id = b.FK_login
where l.email like '%turpis%';

-- Luca
SELECT
    b.vorname,
    b.nachname,
    l.Email,
    b.land
FROM benutzer b
join login l on l.id = b.FK_login
order by b.nachname desc ;

-- Sinan
SELECT login.Email, b.nachname,b.vorname, b.land
FROM login
inner join benutzer b on login.id = b.FK_login
WHERE b.land IN ('Isle of Man', 'Malaysia');

-- Sinan
SELECT login.Email, b.nachname,b.vorname, b.land
FROM login
inner join benutzer b on login.id = b.FK_login
inner join eintrag e on login.id = e.FK_login;
-- WHERE b.land IN ('Isle of Man', 'Malaysia');
