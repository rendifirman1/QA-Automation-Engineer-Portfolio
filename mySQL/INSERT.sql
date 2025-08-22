-- Select the most recent 10 records from the employees table, ordered by employee number in descending order

SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC
LIMIT 10;

-- Insert a new employee record with employee number '500000', birth date, name, gender, and hire date
INSERT INTO employees 
(emp_no, 
birth_date, 
first_name, 
last_name, 
gender, 
hire_date) 
VALUES (
'500000', 
'1986-04-21',
 'John',
 'Smith',
 'M',
 '2011-01-01');
 
-- Select the employee record with employee number '500000' to verify the insertion 
SELECT 
    *
FROM
    employees
WHERE
    emp_no = '500000';
    
-- Select ten records from the “titles” table to get a better idea about its content
SELECT 
    *
FROM
    titles
LIMIT 10;

-- Then, in the same table, insert information about employee number 999903.
-- State that he/she is a “Senior Engineer”, who has started working in this position on October 1st, 1997.

INSERT INTO employees
VALUES
(
    999903,
    '1977-09-14',
    'Johnathan',
    'Creek',
    'M',
    '1999-01-01'
);

SELECT * FROM employees WHERE emp_no = 999903;

INSERT INTO titles (emp_no, title, from_date)
VALUES (999903, 'Senior Engineer', '1997-10-01');

-- At the end, sort the records from the “titles” table in descending order to check if you have successfully inserted the new record.

SELECT 
    *
FROM
    titles
ORDER BY emp_no DESC;

-- Insert information about the individual with employee number 999903 into the “dept_emp” table. 
-- He/She is working for department number 5, and has started work on  October 1st, 1997; her/his contract is for an indefinite period of time.
-- Hint: Use the date ‘9999-01-01’ to designate the contract is for an indefinite period.

SELECT
*
FROM 
dept_emp
ORDER BY emp_no DESC
LIMIT 10;

INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)
VALUES (999903, 'd005', '1997-10-01', '9999-01-01');


SELECT 
    *
FROM
    departments
LIMIT 10;

-- Create a new table 'departments_dup' with the same structure as 'departments' to store a duplicate of the data
CREATE TABLE departments_dup (
    dept_no CHAR(4) NOT NULL,
    dept_name VARCHAR(40) NOT NULL
);

-- Select all records from 'departments_dup' to check if the table has been created (it should be empty initially)
SELECT 
    *
FROM
    departments_dup;

-- Copy all data from the 'departments' table into the newly created 'departments_dup' table    
INSERT INTO departments_dup
(
	dept_no,
    dept_name
) 
SELECT
*
FROM departments;

-- Create a new department called “Business Analysis”. Register it under number ‘d010’.
-- Hint: To solve this exercise, use the “departments” table.

INSERT INTO departments (dept_no, dept_name)
VALUES ('d010', 'Business Analysis');

INSERT INTO employees
VALUES
(
    999901,
    '1977-09-14',
    'Johnathan',
    'Creek',
    'M',
    '1999-01-01'
);



















    





