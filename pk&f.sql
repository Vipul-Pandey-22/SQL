use class_db2;

-- CREATE TABLE WITH PRIMARY KEY

create table persons
(
id int,
name varchar(50),
age int,
-- primary key (id)
constraint pk primary key(id)
);

insert into persons values(1, 'Rahul', 29);

-- PRIMARY KEY COLUMN WILL NOT HOLD NULL VALUE
insert into persons values(NULL, 'Shivam', 23);

alter table persons add constraint age_unq unique(AGE);

-- UNIQUE COLUMN WILL NOT HOLD NON UNIQUE VALUE
insert into persons values(2, 'Rituj', '29');

-- UNIQUE CONSTRINTS CAN HOLD NULL VALUE
insert into persons values(3, 'Saumil', NULL);

-- UNIQUE CONSTRAINT CAN HOLD MULTIPLE NULL
insert into persons values(4, 'Satyam', NULL);

insert into persons values(5, 'Satyam', NULL);

-- CREATE TABLE CUSTOMER WITH PRIMARY KEY

create table customer
(
cust_id int,
cust_name varchar(50),
age int,
constraint pk primary key (cust_id)
);

-- CREATE TABLE CUSTOMER WITH FOREIGN KEY
create table `order`
(
order_id int,
order_num int,
customer_id int,
constraint pk primary key (order_id),
constraint fk foreign key (customer_id) references customer(cust_id)
);

-- DIFFERENCE BETWEEN DROP AND TRUNCATE
drop table employee;
-- It will delete your data along with table schema. You Will lose your table from your database
use ineuron_fsda;
select * from neurodata;
truncate neurodata;
-- It will delete only your data not schema. Your table is still inside your database
