-- Limit & Aliasing

SELECT 
    *
FROM
    employee_demographics
LIMIT 3; -- it would show top 3 rows in the output

# If you would like to find top 3 oldest employee then combine Order by
-- since order by is asc by default you have to put desc order to get the top 3 oldest employees
SELECT 
    *
FROM
    employee_demographics
ORDER BY age DESC
LIMIT 3;

# if you would like to see only output of 3rd person after top 2 oldest employee then use comma to find the 3rd row after 2
SELECT 
    *
FROM
    employee_demographics
ORDER BY age DESC
LIMIT 2, 1;

-- ALIASING

SELECT 
    gender, AVG(age) as avg_age
FROM
    employee_demographics
GROUP BY gender
HAVING AVG(age) > 40; 

SELECT 
    gender, AVG(age) avg_age
FROM
    employee_demographics
GROUP BY gender
HAVING AVG(age) > 40; 