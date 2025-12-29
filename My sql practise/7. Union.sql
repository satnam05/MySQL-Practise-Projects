-- UNION
select * from employee_demographics
UNION
select * from employee_salary;

-- UNION is going to return distinct combined results
-- UNION All retuns all result with duplicates

SELECT 
    first_name, last_name
FROM
    employee_demographics 
UNION 
SELECT 
    first_name, last_name
FROM
    employee_salary;

SELECT 
    first_name, last_name
FROM
    employee_demographics 
UNION ALL 
SELECT 
    first_name, last_name
FROM
    employee_salary;

-- Use case: Find all old employees with salary greater than 70000 for redundancy or early retirement

SELECT 
    first_name, last_name, 'Old Man' AS Label
FROM
    employee_demographics
WHERE
    age > 40 AND gender = 'Male'
UNION
SELECT 
    first_name, last_name, 'Old Lady' AS Label
FROM
    employee_demographics
WHERE
    age > 40 AND gender = 'Female'
    UNION
SELECT 
    first_name, last_name, 'Highly Paid' AS Label
FROM
    employee_salary
where salary > 70000
order by first_name, last_name;