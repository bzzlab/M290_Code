use webshopdb;
insert into products (articleNo, articleName, description)
values
    ('1234', 'USB-C-cable-1m', 'USB-C-cable-1m'),
    ('1235', 'USB-C-cable-2m', 'USB-C-cable-2m'),
    ('1236', 'USB-C-cable-2.5m', 'USB-C-cable-2.5m'),
    ('1334', 'DSLR-Canon 7d', 'Camera from Canon'),
    ('1335', 'DSLR-Canon 5d', 'Camera from Canon'),
    ('1336', 'DSLR-Canon 3d', 'Camera from Canon');

insert into customer (firstname, lastname)
values
    ('Hans', 'Muster'),
    ('Anna', 'Muster'),
    ('Fritz', 'Muster'),
    ('Frida', 'Muster');

-- insert new orders
insert into orders (product_id, customer_id, date, description)
values
    (1,1,current_date(),'bitte vor der Tür hinlegen'),
    (2,1,current_date(),'bitte vor der Tür hinlegen'),
    (3,2,current_date(),'bitte express liefern'),
    (3,2,current_date(),'bitte express liefern'),
    (4,3,current_date(),'bitte express liefern');

-- insert past orders
insert into orders (product_id, customer_id, date, description)
values
    (1,1,DATE('2023-10-06'),'bitte vor der Tür hinlegen'),
    (1,1,DATE('2023-10-05'),'bitte vor der Tür hinlegen'),
    (2,1,DATE('2023-10-05'),'bitte vor der Tür hinlegen'),
    (3,2,DATE('2023-09-05'),'bitte express liefern'),
    (3,2,DATE('2023-06-05'),'bitte express liefern'),
    (4,3,DATE('2023-06-05'),'bitte express liefern');

