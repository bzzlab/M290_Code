use guestbookdb;

-- Alle negative Bewertungen unter 4. Ausgabe Vor-/Nachnamen, Titel, Bewertung, Email (Simona)
select b.vorname,b.nachname, e.rating, e.titel, e.text, l.email, b.mobile from eintrag e
join login l on l.id = e.FK_login
join benutzer b on l.id = b.FK_login
where e.rating < 4;

-- Benutzer mit mindestens einer Bewertung (Simona)
SELECT benutzer.vorname, benutzer.nachname, COUNT(eintrag.id) AS anzahl_bewertungen
FROM benutzer
LEFT JOIN login ON benutzer.FK_login = login.id
LEFT JOIN eintrag ON login.id = eintrag.FK_login
GROUP BY benutzer.vorname, benutzer.nachname
HAVING COUNT(eintrag.id) > 0;

-- Anzeigen von Kontaktdaten (Telefon und email) die ein älteres Datum als 2020-01-01 haben (inkl. datum in ausgabe)
SELECT b.datum, b.telefon, l.email from login l
inner join guestbookdb.benutzer b on l.id = b.FK_login
WHERE Datum > '2020-01-01' AND telefon LIKE '%6';


SELECT b.vorname, b.nachname, l.email from login l
inner join guestbookdb.benutzer b on l.id = b.FK_login
WHERE Email LIKE '%.uk' OR Email LIKE '%.com';
-- .uk & .com emails schnell überprüfen mit vornamen und nachnamen für einfache übersicht und korrektur