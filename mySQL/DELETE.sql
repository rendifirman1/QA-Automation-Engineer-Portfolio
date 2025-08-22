-- Switch to the 'employees' database for performing operations
USE employees;

-- Commit the transaction to make changes permanent
COMMIT;

-- Retrieve employee record with emp_no = 999903 from the 'employees' table
SELECT 
    *
FROM
    employees
WHERE
    emp_no = 999903;

-- Retrieve title record for employee with emp_no = 999903 from the 'titles' table    
SELECT 
    *
FROM
    titles
WHERE
    emp_no = 999903;

-- Delete employee with emp_no = 999903 from the 'employees' table    
DELETE FROM employees 
WHERE
    emp_no = 999903;

-- Delete all records from 'departments_dup' table    
DELETE FROM departments_dup;

-- Retrieve all records from 'departments_dup' table to check the current state
SELECT 
    *
FROM
    departments_dup;

-- Rollback the transaction to undo changes made so far
ROLLBACK;

-- Delete department with dept_no = 'd011' from 'departments_dup' table
DELETE FROM departments_dup 
WHERE
    dept_no = 'd011';
    
-- Remove the department number 10 record from the “departments” table.
SELECT 
    *
FROM
    departments
WHERE
    dept_no = 'd010';
    
DELETE FROM departments 
WHERE
    dept_no = 'd010';
    
