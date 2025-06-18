-- Select all records from 'departments_dup' and order them by department number (dept_no)
SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no;

-- Switch to the 'employees' database to perform further operations
USE employees;

-- Select the record of the employee with emp_no = 999901
SELECT 
    *
FROM
    employees
WHERE
    emp_no = 999901;

-- Update the employee data with emp_no = 999901, changing first name, last name, birth date, and gender
UPDATE employees 
SET 
    first_name = 'Stella',
    last_name = 'Parkinson',
    birth_date = '1990-12-31',
    gender = 'F'
WHERE
    emp_no = 999901;

-- Update the employee data with emp_no = 999904, changing first name, last name, birth date, and gender    
UPDATE employees 
SET 
    first_name = 'Stella',
    last_name = 'Parkinson',
    birth_date = '1990-12-31',
    gender = 'F'
WHERE
    emp_no = 999904;

-- Check how many rows were affected by the previous UPDATE statement    
SELECT ROW_COUNT();

-- Select all records from 'departments_dup' and order them by department number (dept_no) after updates
SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no;

-- Commit the transaction to permanently save all changes made so far in the database
COMMIT;

-- Update the department data in 'departments_dup' to set dept_no = 'd011' and dept_name = 'Quality Control'
UPDATE departments_dup 
SET 
    dept_no = 'd012',
    dept_name = 'Quality Control';
    
ROLLBACK;

-- Change the “Business Analysis” department name to “Data Analysis”.
-- Hint: To solve this exercise, use the “departments” table.
UPDATE departments_dup
SET
dept_name = 'Data Analysis'
WHERE 
dept_no = 'd010';





















