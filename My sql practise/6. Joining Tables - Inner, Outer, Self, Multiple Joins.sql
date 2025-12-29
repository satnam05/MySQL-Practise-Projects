-- Joins

SELECT 
    *
FROM
    employee_demographics;

SELECT 
    *
FROM
    employee_salary;
    
-- INNER JOIN - returns same rows which are same in both tables based on column

SELECT 
    *
FROM
    employee_demographics
        INNER JOIN
    employee_salary ON employee_id = employee_id; -- ERROR - column employee_id in ON clause is ambiguous
-- It doesn't know that to which table employee_id column belongs

-- To resolve this we would put the table name explicitly
SELECT 
    *
FROM
    employee_demographics
        INNER JOIN
    employee_salary ON employee_demographics.employee_id = employee_salary.employee_id;
 
 -- use ALIASES to make it look better   
SELECT 
    *
FROM
    employee_demographics AS dem
        INNER JOIN
    employee_salary AS sal ON dem.employee_id = sal.employee_id;
 
 -- specific columns can be selected
SELECT 
    employee_id, first_name, occupation, salary
FROM
    employee_demographics AS dem
        INNER JOIN
    employee_salary AS sal ON dem.employee_id = sal.employee_id;  -- ERROR - column employee_id is ambiguous
    -- since emploee_id and first_name columns are present in both tables we have to mention the table name.

-- to resolve this error use which table's employee id to select

SELECT 
    dem.employee_id, dem.first_name, occupation, salary
FROM
    employee_demographics AS dem
        INNER JOIN
    employee_salary AS sal ON dem.employee_id = sal.employee_id;
    
-- OUTER JOINS

-- Left Join = it takes everything from left table and matches with right
SELECT 
    *
FROM
    employee_demographics AS dem
        LEFT OUTER JOIN -- can also be written as LEFT JOIN
    employee_salary AS sal ON dem.employee_id = sal.employee_id;

-- RIGHT Join - it takes everything from Right table and matches with left
SELECT 
    *
FROM
    employee_demographics AS dem
        RIGHT JOIN
    employee_salary AS sal ON dem.employee_id = sal.employee_id; 
    -- the values not present in left table will come as NULL as its right outer join
    
-- SELF JOIN use case

-- select employees as secret santa based on employee id and create the list of such data in December 

SELECT 
    *
FROM
    employee_salary;

SELECT 
    emp1.employee_id,
    emp1.first_name,
    emp1.last_name,
    emp2.employee_id secret_santa_employee_id,
    emp2.first_name secret_santa_first_name,
    emp2.last_name secret_santa_last_name
FROM
    employee_salary emp1
    JOIN employee_salary emp2
    ON emp1.employee_id = emp2.employee_id + 1;
    
-- JOINING Multiple Tables

SELECT 
    *
FROM
    employee_demographics AS dem
        INNER JOIN
    employee_salary AS sal ON dem.employee_id = sal.employee_id
    INNER JOIN parks_departments pd
    ON sal.dept_id = pd.department_id;