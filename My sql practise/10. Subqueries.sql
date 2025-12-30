-- Subqueries

SELECT *
FROM employee_demographics
WHERE
    employee_id IN (SELECT employee_id
        FROM employee_salary
        WHERE dept_id = 1);
SELECT *
FROM
    employee_salary;

SELECT *
FROM
    parks_departments;

-- find the average salary for all employees

select sal.first_name, 
		sal.last_name, 
(select AVG(sal1.salary) from employee_salary sal1)
from employee_salary sal
group by sal.first_name, 
		sal.last_name;
        
-- find the max, min, average age of all employees based on gender

SELECT 
    emp.gender, AVG(emp.age), MAX(emp.age), MIN(emp.age)
FROM
    employee_demographics emp
group by emp.gender;

-- find the average of max age and min age based on gender

SELECT 
    gender, AVG(`MAX(emp.age)`), AVG(`MIN(emp.age)`)
FROM
    (SELECT 
        emp.gender, AVG(emp.age), MAX(emp.age), MIN(emp.age)
    FROM
        employee_demographics emp
    GROUP BY emp.gender) agg_table
GROUP BY genderSS;

SELECT 
    AVG(max_age), AVG(min_age)
FROM
    (SELECT 
        emp.gender,
            AVG(emp.age) AS avg_age,
            MAX(emp.age) AS max_age,
            MIN(emp.age) AS min_age,
            COUNT(emp.age) AS count_age
    FROM
        employee_demographics emp
    GROUP BY emp.gender) agg_table;
