select * from employee_demographics;

SELECT 
    gender, AVG(age)
FROM
    employee_demographics
WHERE
    AVG(age) > 40
GROUP BY gender; -- Invalid use of Group function

-- aggregate function happens only after group by and in where clause 
-- we are trying to find something which has not yet occurred

SELECT 
    gender, AVG(age)
FROM
    employee_demographics
GROUP BY gender
HAVING AVG(age) > 40; -- so we have to use HAVING clause to get rid off this error since this happened after Group By
-- HAVING is there to execute such queries.

SELECT 
    occupation, AVG(salary)
FROM
    employee_salary
WHERE
    occupation LIKE '%Manager%'
GROUP BY occupation
HAVING AVG(salary) > 50000;