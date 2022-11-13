CREATE DATABASE try_groupby;
use try_groupby;

CREATE TABLE orders_data
(
    cust_id INT,
    order_id INT, 
    country VARCHAR(50),
    `state` VARCHAR(50)
);

insert into orders_data values(1,100,'USA','Seattle');
insert into orders_data values(2,101,'INDIA','UP');
insert into orders_data values(2,103,'INDIA','Bihar');
insert into orders_data values(4,108,'USA','WDC');
insert into orders_data values(5,109,'UK','London');
insert into orders_data values(4,110,'USA','WDC');
insert into orders_data values(3,120,'INDIA','AP');
insert into orders_data values(2,121,'INDIA','Goa');
insert into orders_data values(1,131,'USA','Seattle');
insert into orders_data values(6,142,'USA','Seattle');
insert into orders_data values(7,150,'USA','Seattle');


SELECT * FROM orders_data;

--- Use of HAVING clause
# write a query to find the country where only 1 order was placed
SELECT country FROM orders_data GROUP BY country Having count(*) = 1;
