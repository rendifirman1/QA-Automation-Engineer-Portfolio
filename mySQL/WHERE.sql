-- Retrieve all records from the 'employees' table where the first name is 'Denis'.
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Denis';
   
   
#Select all people from the “employees” table whose first name is “Elvis”.
-- Retrieve all records from the 'employees' table where the first name is 'Elvis'.
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Elvis';
        
-- Retrieve all employee records where the first name is 'Elvis' and the last name is 'Kobara'
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Georgi'
        AND last_name = 'Facello';
        
-- Retrieve a list with all female employees whose first name is Kellie. 
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Denis' AND gender = 'L';
    
-- Retrieve all employees where the first name is 'Elvis' or the first name is 'Denis'.
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Kellie' OR first_name = 'Denis';
    
-- Retrieve a list with all employees whose first name is either Kellie or Aruna.
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Kellie'
        OR first_name = 'Aruna';
        
        
-- Retrieve employee data where last name is 'Denis' and gender is either 'M' (Male) or 'L' (Other)        
SELECT 
    *
FROM
    employees
WHERE
    last_name = 'Denis'
        AND (gender = 'M' OR gender = 'L'); 

-- Retrieve a list with all female employees whose first name is either Kellie or Aruna

SELECT 
    *
FROM
    employees
WHERE
    gender = 'F'
        AND (first_name = 'Kellie'
        OR first_name = 'Aruna');
        
-- Retrieve all employee data where first_name is 'Cathie', 'MARK', or 'Nathan' using OR conditions        
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Cathie'
        OR first_name = 'MARK'
        OR first_name = 'Nathan';

-- Retrieve all employee data where first_name is 'Cathie', 'MARK', or 'Nathan' using the IN operator for simpler query

SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Cathie' , 'MARK', 'Nathan');


-- Retrieve all employee data where first_name is not 'Cathie', 'MARK', or 'Nathan' using the NOT IN operator
SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('Cathie' , 'MARK', 'Nathan');
    
-- Use the IN operator to select all individuals from the “employees” table, whose first name is either “Denis”, or “Elvis”.

SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Denis', 'Elvis');    
    
-- Extract all records from the ‘employees’ table, aside from those with employees named John, Mark, or Jacob

SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('John' , 'Mark', 'Jacob');
    
-- Retrieve all employee records where the first name starts with 'Mar'
    
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mar%');

-- Retrieve all employee records where the first name contains 'Mar' anywhere in the string

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('%Mar%');

-- Retrieve all employee records where the first name contains 'Mar' followed by exactly one character

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('%Mar_');
    
-- Retrieve all employee records where the first name starts with 'Mar' and is followed by exactly one character    

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mar_');
    
-- Retrieve all employee records where the first name does not start with 'Mar'    

SELECT 
    *
FROM
    employees
WHERE
    first_name NOT LIKE ('Mar%');
    
/*Working with the “employees” table, use the LIKE operator to select the data about all individuals, whose first name starts with “Mark”; specify that the name can be succeeded by any sequence of characters.*/

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mark%');

-- Retrieve a list with all employees who have been hired in the year 2000.
SELECT 
    *
FROM
    employees
WHERE
    hire_date LIKE ('%2000%');
    
-- Retrieve a list with all employees whose employee number is written with 5 characters, and starts with “1000”. 
SELECT 
    *
FROM
    employees
WHERE
    emp_no LIKE ('1000_');    
    
-- Extract all individuals from the ‘employees’ table whose first name contains “Jack”.
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('%Jack%');
    
-- extract another list containing the names of employees that do not contain “Jack”.
SELECT 
    *
FROM
    employees
WHERE
    first_name NOT LIKE ('%Jack%');    
    
-- Retrieve all employees who were hired between '1990-01-01' and '2000-01-01'
SELECT 
    *
FROM
    employees
WHERE
    hire_date BETWEEN '1990-01-01' AND '2000-01-01';     

-- Retrieve all employees who were hired not between '1990-01-01' and '2000-01-01'
SELECT 
    *
FROM
    employees
WHERE
    hire_date NOT BETWEEN '1990-01-01' AND '2000-01-01';   
    
-- Select all the information from the “salaries” table regarding contracts from 66,000 to 70,000 dollars per year.
SELECT 
    *
FROM
    salaries
WHERE
    salary BETWEEN '66000' AND '70000';

-- Retrieve a list with all individuals whose employee number is not between ‘10004’ and ‘10012’.
SELECT 
    *
FROM
    employees
WHERE
    emp_no NOT BETWEEN '10004' AND '10012';   

-- Select the names of all departments with numbers between ‘d003’ and ‘d006’.

SELECT 
    *
FROM
    departments
WHERE
    dept_no BETWEEN 'd003' AND 'd006';  

-- Retrieve all records from the employees table where first_name is not NULL    
SELECT 
    *
FROM
    employees
WHERE
    first_name IS NOT NULL;

-- Retrieve all records from the employees table where first_name is NULL    
SELECT 
    *
FROM
    employees
WHERE
    first_name IS NULL; 
    
-- Select the names of all departments whose department number value is not null.  
SELECT 
    dept_name
FROM
    departments
WHERE
    dept_no IS NULL;  

-- Retrieve the employee numbers and first names of all employees who have a NULL value in the first_name column
SELECT 
    emp_no, first_name
FROM
    employees
WHERE
    first_name IS NULL;
    
-- Retrieve a list with data about all female employees who were hired in the year 2000 or after.
SELECT 
    *
FROM
    employees
WHERE
    hire_date >= '2000-01-01' AND gender = 'F';
    
-- Extract a list with all employees’ salaries higher than $150,000 per annum.

SELECT 
    *
FROM
    salaries
WHERE
    salary > 150000;
    
-- Retrieve all unique first names from the employees table
SELECT DISTINCT
    first_name
FROM
    employees;
    
-- Retrieve all gender values (including duplicates) from the employees table
SELECT 
    gender
FROM
    employees;   
    
-- Retrieve all unique gender values from the employees table
SELECT DISTINCT
    gender
FROM
    employees;      
    
-- Obtain a list with all different “hire dates” from the “employees” table.
SELECT DISTINCT
    hire_date
FROM
    employees;  
    
-- Count the number of non-null salary records in the salaries table
SELECT 
    COUNT(salary)
FROM
    salaries;

-- Count the total number of employees in the employees table
SELECT 
    COUNT(emp_no)
FROM
    employees;

-- Calculate the average salary from the salaries table    
SELECT 
    AVG(salary)
FROM
    salaries;

-- Retrieve the minimum salary from the salaries table    
SELECT 
    MIN(salary)
FROM
    salaries;

-- Retrieve the maximum salary from the salaries table    
SELECT 
    MAX(salary)
FROM
    salaries;    
    
-- How many annual contracts with a value higher than or equal to $100,000 have been registered in the salaries table?
SELECT 
    COUNT(*)
FROM
    salaries
WHERE 
	salary >= '100000';

-- How many managers do we have in the “employees” database? Use the star symbol (*) in your code to solve this exercise
SELECT 
    COUNT(*)
FROM
    dept_manager;

-- Retrieve all records from the employees table, ordered by first_name in ascending order (default)    
SELECT 
    *
FROM
    employees
ORDER BY first_name;

-- Retrieve all records from the employees table, ordered by first_name in ascending order
SELECT 
    *
FROM
    employees
ORDER BY first_name ASC;

-- Retrieve all records from the employees table, ordered by first_name in descending order
SELECT 
    *
FROM
    employees
ORDER BY first_name DESC;          

-- Retrieve all records from the employees table, ordered by emp_no in ascending order
SELECT 
    *
FROM
    employees
ORDER BY emp_no ASC;

-- Retrieve all records from the employees table, ordered by emp_no in descending order
SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC;

-- Retrieve all columns from the employees table, ordered by first_name, and then by last_name in ascending order (A-Z)
SELECT 
    *
FROM
    employees
ORDER BY first_name, last_name ASC;

-- Select all data from the “employees” table, ordering it by “hire date” in descending order.
SELECT 
    *
FROM
    employees
ORDER BY hire_date DESC;

-- Retrieve the number of employees grouped by gender.
-- This will give the count of male (M) and female (F) employees in the table.
SELECT 
    gender, COUNT(*)
FROM
    employees
GROUP BY gender;

-- Retrieve the number of employees grouped by first_name.
-- This will show how many employees share the same first name.-- Retrieve the number of employees grouped by first_name.
-- This will show how many employees share the same first name.
SELECT 
    COUNT(first_name)
FROM
    employees
GROUP BY first_name;


-- Retrieve the number of employees grouped by first_name, 
-- but only for those hired after 1st January 1990.
SELECT 
    first_name, COUNT(first_name)
FROM
    employees
WHERE
    hire_date > '1990-01-01'
GROUP BY first_name;

-- Retrieve the count of employees grouped by their first name.
-- This query will show how many employees have the same first name.
SELECT 
    first_name, COUNT(first_name)
FROM
    employees
GROUP BY first_name;

-- Retrieve the count of employees grouped by their first name, ordered alphabetically by first name (ascending).
-- This query will show how many employees share the same first name, sorted from A to Z.
SELECT 
    first_name, COUNT(first_name)
FROM
    employees
GROUP BY first_name
ORDER BY first_name ASC;

-- Retrieve the count of employees grouped by their last name, 
-- with the result ordered alphabetically by last name (ascending).
-- The count of each last name is displayed as 'last_name_counts'.
SELECT 
    last_name, COUNT(last_name) AS last_name_counts
FROM
    employees
GROUP BY last_name
ORDER BY last_name ASC;

-- This will be a slightly more sophisticated task.

/*Write a query that obtains two columns. The first column must contain annual salaries higher than 80,000 dollars. 
The second column, renamed to “emps_with_same_salary”, must show the number of employees contracted to that salary. 
Lastly, sort the output by the first column.*/

SELECT 
    salary, COUNT(salary) AS emps_with_same_salary
FROM
    salaries
WHERE
    salary > '80000'
GROUP BY salary
ORDER BY salary ASC;

-- This query retrieves the first names of employees and counts how many times each first name appears.
-- It filters the results to show only those first names that appear more than 250 times,
-- and orders the results alphabetically by first name.
-- This query retrieves the first names of employees and counts how many times each first name appears.
-- It filters the results to show only those first names that appear more than 250 times,
-- and orders the results alphabetically by first name.

SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
GROUP BY first_name
HAVING COUNT(first_name) > 250
ORDER BY first_name;

-- Select all employees whose average salary is higher than $120,000 per annum.
SELECT 
    emp_no, AVG(salary) AS average_salary
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000
ORDER BY emp_no;

-- Extract a list of all names that are encountered less than 200 times. Let the data refer to people hired after the 1st of January 1999.
SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
WHERE
    hire_date > '1999-01-01'
GROUP BY first_name
HAVING COUNT(first_name) < 200
ORDER BY first_name DESC;

-- Select the employee numbers of all individuals who have signed more than 1 contract after the 1st of January 2000.
-- Hint: To solve this exercise, use the “dept_emp” table.

SELECT 
    emp_no
FROM
    dept_emp
WHERE
    from_date > '2000-01-01'
GROUP BY emp_no
HAVING COUNT(from_date) > '1'
ORDER BY emp_no;

-- Please show me the employee numbers of the 10 highest paid employees in the database
SELECT 
    emp_no
FROM
    salaries
ORDER BY salary DESC
LIMIT 10;

SELECT 
    *
FROM
    salaries
ORDER BY emp_no DESC
LIMIT 10;

-- Select the first 100 rows from the ‘dept_emp’ table. 
SELECT 
    *
FROM
    dept_emp
LIMIT 100;



















