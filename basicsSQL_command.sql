--- Create Database Command

Create DATABASE BigDataBootCamp;
CREATE DATABASE Test;

--- Get the list of existing Databases
SHOW DATABASES;

--- Command to drop a DATABASE
DROP DATABASE iNeuron;

--- Go inside the particular DATABASE
use BigDataBootCamp;

--- Command to CREATE a TABLE
CREATE TABLE if not exists employee
(
    id INT, 
    name VARCHAR(50)
);

--- Command to list down all the TABLES
SHOW TABLES;

--- Command to list down all the TABLES
SHOW CREATE TABLE employee;

--- Command to DELETE the TABLE
DROP TABLE Test.employee;

--- Command to CREATE a TABLE
CREATE TABLE if not exists employee
(
    id INT,
    name CHAR(15),
    salary DOUBLE,
    hiring_date DATE
);

--- Syntax 1 to INSERT the data into the TABLE
INSERT INTO employee VALUES(
    1, 'Vipul', 1000, '2022-11-05'
);

--- This will not work in SQL
INSERT INTO employee VALUES(
    1, 'Vipul', '2022-11-05'
);

--- Syntax 2 to INSERT the data into the TABLE
INSERT INTO employee(salary, name, id) VALUES
(
    2000, 'Rahul', 3
);

--- INSERT multiple rows using single insert statement
INSERT INTO employee VALUES(3, 'Amit', 3000, '2021-09-15'),
(4, 'Nitin', 3500, '2021-09-16');

--- Use SELECT command to query the data
SELECT * FROM employee;

--- Integrity Constraints Example
CREATE TABLE if not exists emp_with_constraints
(
    id INT NOT NULL,
    name CHAR(50) NOT NULL, 
    salary DOUBLE,
    hiring_date DATE DEFAULT '2021-01-01',
    unique (id),
    CHECK (salary > 1000)

);

--- Example 1 for Integrity failure
--- Exception Will be thrown -> column id can't be null
INSERT INTO emp_with_constraints
VALUES (NULL, 'Amit', 3000, '2021-09-15');

--- Example 2 for Integrity failure
--- Exception Will be thrown -> column id can't be null
INSERT INTO emp_with_constraints
VALUES (1, NULL, 3000, '2021-09-15');

--- Example 3 for Integrity failure
--- Exception Will be thrown -> column salary should be greater than 1000
INSERT INTO emp_with_constraints
VALUES (1, 'Amit', 500, '2021-09-15');

--- Insert Correct Data
INSERT INTO emp_with_constraints
VALUES (1, 'Amit', 3000, '2021-09-15');

--- Example 4 for Integrity failure
--- Exception Will be thrown -> column id can't be duplicate
INSERT INTO emp_with_constraints
VALUES (1, 'Shashank', 5000, '2021-09-15');

--- Example 5 for Integrity Constraints
INSERT INTO emp_with_constraints
VALUES (2, 'Shashank', 3000, NULL);

INSERT INTO emp_with_constraints(id, name, salary)
VALUES (3, 'RRohit', 4000);

SELECT * FROM `Test`.emp_with_constraints;
--- Add alias name for constraints
CREATE TABLE if not exists emp_with_constraints_alias
(
    id INT NOT NULL,
    name CHAR(50) NOT NULL, 
    salary DOUBLE,
    hiring_date DATE DEFAULT '2021-01-01',
    CONSTRAINT unique_id UNIQUE (id),
    CONSTRAINT salary_check CHECK (salary > 1000)
);

--- Example 1 for Integrity failure with alias name
--- Exception Will be thrown -> column id can't be null
INSERT INTO emp_with_constraints_alias
VALUES (1, 'Amit', 500, '2021-09-15');


