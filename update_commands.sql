-- OPERATIONS WITH UPDATE COMMAND

-- update will be made for all rows
UPDATE employee SET age = 20;
	-- Without using SET SQL_SAFE_UPDATES=0; above command will not work
    
-- update the employee salary after giving 20% increment
UPDATE employee SET salary = salary + (salary * 20/100);

-- Display all the columns
select * from employee;

-- How to filter the data using WHERE clauses
select * from employee where hiring_date = '2022-04-12';
	-- from where to '2022-04-12' known as filter

-- Delete records of those employees who joined company on 2022-12-07
delete from employee where hiring_date = '2022-12-07';

