-- Retrieve the top 10 highest salaries from the salaries table
SELECT 
    *
FROM
    salaries
ORDER BY salary DESC
LIMIT 10;

-- Count the total number of salary entries in the salaries table
SELECT 
    COUNT(salary)
FROM
    salaries;
    
-- Count the distinct number of unique salary values in the salaries table
SELECT 
    COUNT(DISTINCT salary)
FROM
    salaries;

-- Count the total number of rows in the 'salaries' table, regardless of salary values
SELECT 
    COUNT(*)
FROM
    salaries;
    
-- How many departments are there in the “employees” database? 
-- Use the ‘dept_emp’ table to answer the question.
SELECT 
    COUNT(DISTINCT dept_no)
FROM
    dept_emp;

-- This query calculates the total salary for each department by joining the dept_emp table with the salaries table on the employee number.
-- It groups the data by department number (dept_no) and sums up the salary for each department.
-- The result will show each department's ID and the total salary of all employees within that department.

SELECT 
    d.dept_no, SUM(s.salary) AS total_salary
FROM
    dept_emp d
        JOIN
    salaries s ON d.emp_no = s.emp_no
GROUP BY d.dept_no;

SELECT 
    SUM(salary)
FROM
    salaries;
    
-- What is the total amount of money spent on salaries for all contracts starting after the 1st of January 1997?    
SELECT 
    SUM(salary)
FROM
    salaries
WHERE
    from_date > '1997-01-01';
    
-- Which is the lowest employee number in the database?
SELECT 
    MIN(emp_no)
FROM
    employees;

-- Which is the highest employee number in the database?
SELECT 
    MAX(emp_no)
FROM
    employees;    

-- Find the minimum salary from the salaries table    
SELECT 
    MIN(salary)
FROM
    salaries;

-- Find the maximum salary from the salaries table
SELECT 
    MAX(salary)
FROM
    salaries;

-- Calculate the average salary from the salaries table    
SELECT 
    AVG(salary)
FROM
    salaries;  

-- Calculate the average salary for each employee (grouped by employee number)    
SELECT 
    emp_no, AVG(salary) AS avg_salary
FROM
    salaries
GROUP BY emp_no;   


-- First, selecting all records from 'departments_dup' and ordering them by 'dept_no' in ascending order
-- This helps us see the current state of the data in 'departments_dup' table.
SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no ASC;

-- Altering the 'dept_name' column to allow NULL values, in case we want to insert nulls in the future.
ALTER TABLE departments_dup
CHANGE COLUMN dept_name dept_name VARCHAR(40) NULL;

-- Inserting new department numbers ('d011' and 'd012') into the 'departments_dup' table.
-- This is adding more data to the table, which previously had only 'd001' to 'd010'.
INSERT INTO departments_dup(dept_no) VALUES ('d011'), ('d012');

-- Checking if the new departments have been successfully added to the table.
-- We order by 'dept_no' to make sure the new rows are at the end of the list.
SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no ASC;

-- Adding a new column 'dept_manager' to store department manager names.
-- This column will allow NULL values, so it can be left empty for departments without a manager.
ALTER TABLE employees.departments_dup
ADD COLUMN dept_manager VARCHAR(255) NULL AFTER dept_name; 

-- Finally, committing the changes to save the alterations and inserted data permanently in the database.
COMMIT;

-- Using IFNULL to replace NULL values in the dept_name column with a default message
SELECT 
    dept_no,
    IFNULL(dept_name,
            'Departement name not provided') AS dept_name
FROM
    departments_dup;

-- Using COALESCE to replace NULL values in the dept_name column with a default message
SELECT 
    dept_no,
    COALESCE(dept_name,
            'Departement name not provided') AS dept_name
FROM
    departments_dup;
    
-- Using COALESCE with dept_manager and dept_name to ensure dept_manager is never NULL
SELECT 
    dept_no,
    dept_name,
    COALESCE(dept_manager, dept_name, 'N/A') AS dept_manager
FROM
    departments_dup
ORDER BY dept_no ASC;

-- Using COALESCE with a single argument, which simply returns the provided value
SELECT 
    dept_no,
    dept_name,
    COALESCE('departement manager name') AS fake_col1
FROM
    departments_dup;

-- Select the department number and name from the ‘departments_dup’ table 
-- and add a third column where you name the department number (‘dept_no’) as ‘dept_info’. 
-- If ‘dept_no’ does not have a value, use ‘dept_name’.

SELECT 
    dept_no,
    dept_name,
    COALESCE(dept_no, dept_name) AS dept_info
FROM
    departments_dup
ORDER BY dept_no ASC;

/*Modify the code obtained from the previous exercise in the following way. 
Apply the IFNULL() function to the values from the first and second column, so that ‘N/A’ is displayed whenever a department number has no value, 
and ‘Department name not provided’ is shown if there is no value for ‘dept_name’*/ 

SELECT 
    IFNULL(dept_no, 'N/A') AS dept_no,
    IFNULL(dept_name, 'Department name not provided') AS dept_name,
    COALESCE(dept_no, dept_name) AS dept_info
FROM
    departments_dup
ORDER BY dept_no ASC;


    
    
    
    
    
    
    
    
    
    
    
    
    
    