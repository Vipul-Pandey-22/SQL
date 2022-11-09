-- OPERATIONS WITH SELECT COMMAND

-- list of all tables
show tables;

-- CREATE A TABLE
create table if not exists employee
(
	id int,
    `name` varchar(50),
    age int,
    hiring_date date,
    salary int,
    city varchar(50)
);

insert into employee values(1, 'ABC', 22, '2022-12-07', 25000, 'blr');
insert into employee values(2, 'XYZ', 23, '2022-12-15', 28000, 'hyd');
insert into employee values(3, 'CDE', 22, '2022-07-01', 13000, 'wfh');
insert into employee values(4, 'MNO', 24, '2022-04-12', 15000, 'wfh');

-- Display all the columns
select * from employee;

-- How to count total records
select count(*) as total_records from employee;

-- Display specific columns
select `name`, 
		salary 
from employee;

-- How many unique hiring_dates in the employee table when employee joined it
select distinct(hiring_date) as unique_hiring_dates from employee;

-- How many unique age values in the employee table
select count(distinct(age)) from employee;

-- Increment salary of each employee by 20% and display final result with new result
select id, 
	   `name`, 
       salary as old_salary, 
       round(salary + (salary * 20/100), 2) as incremented_salary 
from employee;

-- Select command with CASE
select salary, id,
CASE 
	WHEN id = 1 THEN 'SALARY WOULD BE'
    WHEN id = 2 THEN 'SALARY SHOULD BE'
    ELSE 'IT SHOULD BE'
END AS SALARIED
FROM employee;

-- Select command with ORDER BY and CASE
select name, city, hiring_date
from employee
ORDER BY
(
	CASE
		WHEN city is not null THEN hiring_date
        ELSE city
	END
);
