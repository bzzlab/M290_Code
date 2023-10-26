-- Kommentar 1
/*
 Kommentar 1
 Kommentar 2
 Kommentar 3
 */
-- create empty database called 'mydb'
drop database mydb;
show databases ;

create database if not exists mydb;
use mydb;
create table blog_eintrag(
    id INTEGER primary key not null auto_increment,
    name varchar(40),
    email varchar(40),
    datum DATE,
    text varchar(1000)
);


-- insert data blog_entry
insert into blog_eintrag(name, email, datum, text)
VALUES
    ('Tobi','tobi@beispiel.ch','2023-09-21',
     'Herzliche Willkommen! Endlich ein Gästebuch zum Angebot.');

insert into blog_eintrag(name, email, datum, text)
VALUES
    ('Anna','anna@beispiel.ch','2023-09-21',
     'Hallihallo. Das letzte Mittagessen war super, aber teuer!'),
    ('Sinan','sinan@beispiel.ch','2023-09-21',
     'Mittagessen war ok! Musst vielleicht nicht so viel Geld für anderes ausgeben. Preise für mich ok.')
    ;

select * from blog_eintrag;