-- Retrieve employees' first and last names along with their corresponding department names
SELECT 
    e.first_name, e.last_name, d.dept_name
FROM
    employees e
        JOIN
    dept_emp de ON e.emp_no = de.emp_no
        JOIN
    departments d ON de.dept_no = d.dept_no;

-- Retrieve employees' first and last names, job titles, and salary information
SELECT 
    e.first_name, e.last_name, t.title, s.salary
FROM
    employees e
        JOIN
    titles t ON e.emp_no = t.emp_no
        JOIN
    salaries s ON e.emp_no = s.emp_no;

-- Retrieve department managers' first and last names along with the names of departments they manage
SELECT 
    e.first_name, e.last_name, d.dept_name
FROM
    dept_manager dm
        JOIN
    employees e ON dm.emp_no = e.emp_no
        JOIN
    departments d ON dm.dept_no = d.dept_no;
    
/*If you currently have the ‘departments_dup’ table set up, 
use DROP COLUMN to remove the ‘dept_manager’ column from the ‘departments_dup’ table.
Then, use CHANGE COLUMN to change the ‘dept_no’ and ‘dept_name’ columns to NULL.*/

ALTER TABLE departments_dup
DROP COLUMN dept_manager;

ALTER TABLE departments_dup
CHANGE COLUMN dept_no dept_no CHAR(4) NULL,
CHANGE COLUMN dept_name dept_name VARCHAR(40) NULL;

/*Then, insert a record whose department name is “Public Relations”.
Delete the record(s) related to department number two.
Insert two new records in the “departments_dup” table. Let their values in the “dept_no” column be “d010” and “d011”.
*/

INSERT INTO departments_dup (dept_name)
VALUES ('Public Relations');

SELECT 
    *
FROM
    departments_dup;
    
DELETE FROM departments_dup
WHERE dept_no  = 'd002';

DELETE FROM departments_dup
WHERE dept_no IN ('d010', 'd011', 'd012');

INSERT INTO departments_dup (dept_no)
VALUES ('d010'), ('d011');

-- Create and fill in the ‘dept_manager_dup’ table, using the following code:

DROP TABLE IF EXISTS dept_manager_dup;

CREATE TABLE dept_manager_dup (
    emp_no INT(11) NOT NULL,
    dept_no CHAR(4) NULL,
    from_date DATE NOT NULL,
    to_date DATE NULL
);

ALTER TABLE dept_manager_dup
CHANGE COLUMN empt_no emp_no INT(11) NOT NULL;

SELECT 
    *
FROM
    dept_manager_dup
ORDER BY dept_no ASC;

INSERT INTO dept_manager_dup
SELECT
*
FROM dept_manager;

INSERT INTO dept_manager_dup(emp_no, from_date)
VALUES (999904, '2017-01-01'), (999905, '2017-01-01'), (999906, '2017-01-01'), (999907, '2017-01-01');

DELETE FROM dept_manager_dup 
WHERE
    dept_no = 'd001';
    
SELECT 
    dm.dept_no, dm.emp_no, d.dept_name
FROM
    dept_manager_dup dm
        INNER JOIN
    departments_dup d ON dm.dept_no = d.dept_no
ORDER BY dm.dept_no DESC;

-- Extract a list containing information about all managers’ 
-- employee number, first and last name, department number, and hire date.

SELECT 
    e.emp_no, e.first_name, e.last_name, d.dept_no, e.hire_date
FROM
    employees e
        INNER JOIN
    dept_manager d ON e.emp_no = d.emp_no;
    
-- A note on using JOINS

SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;

INSERT INTO dept_manager_dup
VALUES ('110228', 'd003', '1992-03-21', '9999-01-01');

INSERT INTO departments_dup
VALUES ('d009', 'Customer Services');

SELECT 
    *
FROM
    dept_manager_dup
ORDER BY dept_no ASC;

SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no ASC;

# inner join
SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        JOIN
    departments_dup d ON d.dept_no = m.dept_no
GROUP BY m.dept_no, m.emp_no, d.dept_name
ORDER BY dept_no; 

SELECT DISTINCT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        JOIN
    departments_dup d ON d.dept_no = m.dept_no
ORDER BY dept_no;

# remove the duplicates from the two tables
DELETE FROM dept_manager_dup
WHERE emp_no = '110228';

DELETE FROM departments_dup
WHERE dept_no = 'd009';

# add back the initial records
INSERT INTO dept_manager_dup
VALUES ('110228', 'd003', '1992-03-21', '9999-01-01');

INSERT INTO departments_dup
VALUES ('d009', 'Customer Service');

# LEFT JOIN
SELECT DISTINCT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
       LEFT JOIN
    departments_dup d ON d.dept_no = m.dept_no
ORDER BY dept_no;

SELECT DISTINCT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
LEFT JOIN
    departments_dup d ON d.dept_no = m.dept_no
ORDER BY dept_no;

SELECT DISTINCT 
    d.dept_no, m.emp_no, d.dept_name
FROM
    departments_dup d
LEFT JOIN
    dept_manager_dup m ON d.dept_no = m.dept_no
ORDER BY dept_no;

SELECT DISTINCT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
LEFT JOIN
    departments_dup d ON d.dept_no = m.dept_no
WHERE 
    dept_name IS NULL
ORDER BY m.dept_no;

# RIGHT JOIN
SELECT 
    d.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        RIGHT JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY dept_no;


/* Use a RIGHT JOIN to retrieve the employee number (emp_no), first name (first_name), 
and last names (last_name) of all individuals whose last name is 'Bamford'. 
Join the data from the employees table with the data from dept_manager to add two more columns: 
the number of the department these people are working in (dept_no) and the start date of their contracts (from_date). 
Sort your ouptut by department number in descending order. */

SELECT DISTINCT
    e.emp_no, e.first_name, e.last_name, d.dept_no, d.from_date
FROM
    dept_manager d
        RIGHT JOIN
    employees e ON e.emp_no = d.emp_no
WHERE
    e.last_name = 'Bamford'
ORDER BY dept_no DESC;

-- JOIN
SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;

-- WHERE
SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m,
    departments_dup d
WHERE
    m.dept_no = d.dept_no
ORDER BY m.dept_no;

# Extract a list containing information about all managers’ employee number, first and last name, department number, and hire date. 
# Use the old type of join syntax to obtain the result.

SELECT 
    e.emp_no, e.first_name, e.last_name, d.dept_no, e.hire_date
FROM
    employees e,
    dept_manager d
WHERE
    e.emp_no = d.emp_no;

-- versi JOIN
SELECT 
    e.emp_no, e.first_name, e.last_name, d.dept_no, e.hire_date
FROM
    employees e
        JOIN
    dept_manager d ON e.emp_no = d.emp_no;
    
/* Retrieve a table containing three columns:

1. The employee number (emp_no) as recorded in the departments manager table (dept_manager).

2. Their contract salary value (salary), obtained from the salaries table.
3. The start date of their contracts (from_date).

Aim to write your query using the old join syntax. */

SELECT 
    d.emp_no, s.salary, s.from_date
FROM
    dept_manager d,
    salaries s
WHERE
    d.emp_no = s.emp_no;

SELECT 
    e.emp_no, e.first_name, e.last_name, s.salary
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    s.salary > 145000;
    
# error code 1055

SELECT emp_no, salary
FROM salaries
GROUP BY emp_no;

# cek setting GROUP BY
SELECT @@global.sql_mode;

# Non aktifkan setting GROUP BY
SET @@global.sql_mode := REPLACE(@@global.sql_mode, 'ONLY_FULL_GROUP_BY', '');

# Aktifkan setting GROUP BY
SET @@global.sql_mode := CONCAT('ONLY_FULL_GROUP_BY,', @@global.sql_mode);

/* Select the first and last name, the hire date, 
and the job title of all employees whose first name is “Margareta” 
and have the last name “Markovitch” */

SELECT 
    e.first_name, e.last_name, e.hire_date, t.title
FROM
    employees e
        JOIN
    titles t ON e.emp_no = t.emp_no
WHERE
    e.first_name = 'Margareta'
        AND e.last_name = 'Markovitch'
ORDER BY e.emp_no;

/* Retrieve the employee number (emp_no), first name (first_name), last name (last_name), 
and hire date (hire_date) of all employees whose last name is 'Bamford'.
Add a fifth column displaying their job title (title), as recorded in the titles table. 
Sort your output by employee number in ascending order. */

SELECT 
    e.emp_no, e.first_name, e.last_name, e.hire_date, t.title
FROM
    employees e
        JOIN
    titles t ON e.emp_no = t.emp_no
WHERE
    e.last_name = 'Bamford'
ORDER BY e.emp_no ASC;

# CROSS JOIN

SELECT 
    dm.*, d.*
FROM
    dept_manager dm
        CROSS JOIN
    departments d
ORDER BY dm.emp_no , d.dept_no;

SELECT 
    dm.*, d.*
FROM
    dept_manager dm,
    departments d
ORDER BY dm.emp_no , d.dept_no;

SELECT 
    dm.*, d.*
FROM
    dept_manager dm
        JOIN
    departments d
ORDER BY dm.emp_no, d.dept_no;

SELECT 
    dm.*, d.*
FROM
    dept_manager dm
        CROSS JOIN
    departments d
WHERE d.dept_no <> dm.dept_no
ORDER BY dm.emp_no , d.dept_no;

SELECT 
    e.*, d.*
FROM
    departments d
        CROSS JOIN
    dept_manager dm
        JOIN
    employees e ON dm.emp_no = e.emp_no
WHERE
    d.dept_no <> dm.dept_no
ORDER BY dm.emp_no , d.dept_no;

/* Use a CROSS JOIN to return a list with all possible 
combinations between managers from the dept_manager table and department number 9 */
SELECT 
    dm.*, d.*
FROM
   departments d
        CROSS JOIN
    dept_manager dm
WHERE d.dept_no = 'd009'
ORDER BY d.dept_no;

/* Return a list with the first 10 employees with all the departments they can be assigned to.
Hint: Don’t use LIMIT; use a WHERE clause. */
SELECT 
    e.*, d.*
FROM
    employees e
        CROSS JOIN
    departments d
WHERE
    e.emp_no < 10011
ORDER BY e.emp_no , d.dept_name;

/* Use a CROSS JOIN to return a list with all possible combinations between managers from the dept_manager table 
and department number 6 (dept_no) from the departments table. */

SELECT 
    dm.*, d.*
FROM
    dept_manager dm
        CROSS JOIN
    departments d
WHERE
    d.dept_no = 'd006';

/*Return a list with the first two employees (i.e. employees 10001 and 10002) with all the departments they can be assigned to. 
To obtain the desired output, refer to all column from the departments and department employees tables (departments, dept_emp). 
Order your output by employee number (emp_no) and department name (dept_name).
The order of your field list is as follows:
Department number (dept_no)
Department name (dept_name)
Employee number (emp_no)
Start date (from_date)
End date (to_date)
Note: In the employees_10 database, employee numbers are stored as integers, not strings.
Hint: Don't use LIMIT; use a WHERE clause. */    

SELECT 
    d.*, de.*
FROM
    departments d
        CROSS JOIN
    dept_emp de
WHERE
    de.emp_no < 10003
ORDER BY de.emp_no , d.dept_name;

# Using Aggregate Functions with Joins
SELECT 
    dm.dept_no, d.dept_name, AVG(s.salary) AS avg_salary
FROM
    dept_manager dm
        JOIN
    employees e ON dm.emp_no = e.emp_no
        JOIN
    salaries s ON e.emp_no = s.emp_no
        JOIN
    departments d ON dm.dept_no = d.dept_no
WHERE
    s.to_date = '9999-01-01'
GROUP BY dm.dept_no , d.dept_name
ORDER BY avg_salary DESC;

# Find the average salaries of men and women in the cmpany

SELECT 
    e.gender, AVG(s.salary) AS average_salary
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
GROUP BY gender;

SELECT 
    e.emp_no, e.gender, AVG(s.salary) AS average_salary
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
GROUP BY gender;

# JOIN more than two tables in SQL

-- This query retrieves detailed information about all currently active employees,
-- including their full name, hire date, department assignment start date,
-- current department name, current job title, and latest salary.
-- It joins five related tables: employees, dept_emp, departments, titles, and salaries.
-- Only current titles and salaries are included (filtered by to_date = '9999-01-01').

SELECT 
    e.first_name,
    e.last_name,
    e.hire_date,
    de.from_date AS dept_start,
    d.dept_name,
    t.title,
    s.salary
FROM
    employees e
        JOIN
    dept_emp de ON e.emp_no = de.emp_no
        JOIN
    departments d ON de.dept_no = d.dept_no
        JOIN
    titles t ON e.emp_no = t.emp_no
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    t.to_date = '1999-01-01'
        AND s.to_date = '9999-01-01'
ORDER BY e.emp_no;

SELECT 
    e.first_name,
    e.last_name,
    e.hire_date,
    m.from_date,
    d.dept_name
FROM
    employees e
        JOIN
    dept_manager m ON e.emp_no = m.emp_no
        JOIN
    departments d ON m.dept_no = d.dept_no;
    
# Select all managers’ first and last name, hire date, job title, start date, and department name.

SELECT 
    e.first_name,
    e.last_name,
    e.hire_date,
    dm.from_date,
    d.dept_name,
    t.title
FROM
    employees e
        JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
        JOIN
    departments d ON d.dept_no = dm.dept_no
		JOIN 
    titles t ON e.emp_no = t.emp_no
WHERE title = 'Manager' 
ORDER BY e.emp_no ASC;

SELECT 
    e.first_name,
    e.last_name,
    e.hire_date,
    dm.from_date,
    d.dept_name,
    t.title
FROM
    employees e
        JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
        JOIN
    departments d ON d.dept_no = dm.dept_no
		JOIN 
    titles t ON e.emp_no = t.emp_no AND dm.from_date = t.from_date
ORDER BY e.emp_no ASC;

/* Retrieve all Senior Engineers' first and last name (first_name, last_name), hire dates (hire_date), job titles (title), start dates (from_date), 
and names of the departments they are working in (dept_name).
To obtain the desired result, you should refer to data from the following tables:
employees, titles, departments, dept_emp. */

SELECT 
    e.first_name,
    e.last_name,
    e.hire_date,
    t.title,
    de.from_date,
    d.dept_name
FROM
    employees e
        JOIN
    dept_emp de ON e.emp_no = de.emp_no
        JOIN
    departments d ON d.dept_no = de.dept_no
        JOIN
    titles t ON e.emp_no = t.emp_no
WHERE
    title = 'Senior Engineer'
        AND t.to_date = '9999-01-01'
ORDER BY e.emp_no ASC;

-- This query calculates the average current salary for each department.
-- It joins the departments, dept_emp, and salaries tables to match each employee
-- with their corresponding department and latest salary.
-- The WHERE clause ensures only active salary records are considered (with to_date = '9999-01-01').
-- The result is grouped by department name, with average salaries rounded to 2 decimal places,
-- and sorted in descending order to show departments with the highest average salaries first.

SELECT 
    d.dept_name, ROUND(AVG(s.salary), 2) AS average_salary
FROM
    departments d
        JOIN
    dept_emp de ON d.dept_no = de.dept_no
        JOIN
    salaries s ON de.emp_no = s.emp_no
WHERE
    s.to_date = '9999-01-01'
GROUP BY d.dept_name
ORDER BY average_salary DESC;


-- The first query joins the departments, dept_manager, and salaries tables 
-- to retrieve the average salary of all department managers without grouping the results.
-- This results in a single average value calculated across all managers, regardless of department.
SELECT 
    d.dept_name, AVG(salary) AS avg_salary
FROM
    departments d
        JOIN
    dept_manager m ON d.dept_no = m.dept_no
        JOIN
    salaries s ON m.emp_no = s.emp_no;


-- The second query builds on the first by grouping the results by department name.
-- It calculates the average salary of managers for each department, 
-- filters the results using the HAVING clause to include only those with an average salary greater than 60,000,
-- and sorts the output in descending order of average salary.
SELECT 
    d.dept_name, AVG(salary) AS avg_salary
FROM
    departments d
        JOIN
    dept_manager m ON d.dept_no = m.dept_no
        JOIN
    salaries s ON m.emp_no = s.emp_no
GROUP BY d.dept_name
HAVING avg_salary > 60000
ORDER BY avg_salary DESC;

# How many male and how many female managers do we have in the ‘employees’ database?

SELECT 
    e.gender, COUNT(*) AS total
FROM
    employees e
        JOIN
    dept_manager dm ON dm.emp_no = e.emp_no
GROUP BY gender;

/* Calculate the average salary (salary), as recorded in the salaries table, for each job title (title) as listed in the titles table, considering all contracts ever signed. 
Name the second column avg_salary and make sure to round the average salary to the nearest cent. 
Only include records where the average salary is less than $75,000. 
Sort the results from highest to lowest average salary. */

-- This query calculates the average salary per job title and filters out
-- only those with an average salary below $75,000.
-- It sorts the results from the highest to lowest average salary.
-- Note: Using the aggregate function directly in the HAVING clause ensures compatibility across SQL systems.

SELECT 
    t.title, AVG(s.salary) AS average_salary
FROM
    salaries s
        JOIN
    titles t ON t.emp_no = s.emp_no
GROUP BY 
    t.title
HAVING 
    AVG(s.salary) < 75000
ORDER BY 
    average_salary DESC;
    
# UNION VS UNION ALL
-- create employees_dup
DROP TABLE IF EXISTS employees_dup;
CREATE TABLE employees_dup (
    emp_no INT(11),
    birth_date DATE,
    first_name VARCHAR(14),
    last_name VARCHAR(16),
    gender ENUM('M', 'F'),
    hire_date DATE
);

-- duplicate the structure of the 'employees' table
INSERT INTO employees_dup 
SELECT e.*
FROM employees e
LIMIT 20;

-- insert a duplicate of the first row
INSERT INTO employees_dup VALUES ('10001', '1953-09-02', 'Georgi', 'Facello', 'M', '1986-06-26');

-- Check 
SELECT 
    *
FROM
    employees_dup
ORDER BY emp_no;

# UNION vs UNION ALL
SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    NULL AS dept_no,
    NULL AS from_date
FROM
    employees_dup e
WHERE
    e.emp_no = 10001 
UNION ALL SELECT 
    NULL AS emp_no,
    NULL AS first_name,
    NULL AS last_name,
    m.dept_no,
    m.from_date
FROM
    dept_manager m;

SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    NULL AS dept_no,
    NULL AS from_date
FROM
    employees_dup e
WHERE
    e.emp_no = 10001 
UNION SELECT 
    NULL AS emp_no,
    NULL AS first_name,
    NULL AS last_name,
    m.dept_no,
    m.from_date
FROM
    dept_manager m;
    
SELECT
    *
FROM
    (SELECT
			e.emp_no,
            e.first_name,
            e.last_name,
            NULL AS dept_no,
            NULL AS from_date
    FROM
        employees e
    WHERE
        last_name = 'Denis' UNION SELECT
        NULL AS emp_no,
            NULL AS first_name,
            NULL AS last_name,
            dm.dept_no,
            dm.from_date
    FROM
        dept_manager dm) as a
ORDER BY -a.emp_no DESC;

/* Use UNION to combine data from two subsets in the employees_10 database. 
The first subset should contain the employee number (emp_no), first name (first_name), 
and last name (last_name) of all employees whose family name is 'Bamford'. 
The second subset should contain the department number (dept_no) 
and start date (from_date) of all managers, as recorded in the departments manager table (dept_manager). 
Ensure to provide null values in all empty columns for each subset. */

SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    NULL AS dept_no,
    NULL AS from_date
FROM
    employees e
WHERE
    last_name = 'Bamford' 
UNION SELECT 
    NULL AS emp_no,
    NULL AS first_name,
    NULL AS last_name,
    dm.dept_no,
    dm.from_date
FROM
    dept_manager dm;








































