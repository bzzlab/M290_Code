/*
 Fallbeispiel Gästebuch - Tabelle mit Testdaten
 */
drop database if exists guestbookdb;/*??*/

-- Aufgabe 1: Datenbank erstellen
create database if not exists guestbookdb;/*??*/

-- Aufgabe 2: Datenbank-Tabelle erstellen
use guestbookdb;/*??*/
create table eintrag(/*??*/
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,/*??*/
    titel VARCHAR(50),/*??*/
    text VARCHAR(1000),/*??*/
    autor VARCHAR(25),/*??*/
    email VARCHAR(25),/*??*/
    datum DATE/*??*/
);/*??*/

-- Aufgabe 3: Daten in die Datenbank-Tabelle speichern
insert into eintrag(titel, text, autor, email, datum) /*??*/
VALUES/*??*/
    ('Günstige Menukarte', 'Das Chicken-Curry ...',/*??*/
     'Fritz Muster', 'fritz.muster@beispiel.ch', '2023-09-28'),/*??*/
    ('Feine Gerichte', 'Das Masala-Curry ...',/*??*/
     'Anna Muster', 'anna.muster@beispiel.ch', '2023-09-26'),/*??*/
    ('Köstliche orientalisches Essen', 'Die malasischen Gerichte ...',/*??*/
     'Felix Muster', 'felix.muster@beispiel.ch', '2023-08-28');/*??*/

-- Inhalt Tabelle ausgeben
SELECT * FROM eintrag;/*??*/