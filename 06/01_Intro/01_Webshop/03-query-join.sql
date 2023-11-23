use webshopdb;

-- show all orders
select p.articleName,c.firstname,c.lastname,o.date from orders o
join customer c on o.customer_id = c.id
join products p on p.id = o.product_id;
