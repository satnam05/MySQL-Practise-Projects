-- Window Function

select * from employee_demographics;

-- Use case: find the average of salary for each employee with name, gender
-- group by is not giving intended results so we have to use window function like OVER (Partiion by )
SELECT 
    emp.first_name, emp.last_name, emp.gender, AVG(sal.salary)
FROM
    employee_salary sal
        INNER JOIN
    employee_demographics emp ON sal.employee_id = emp.employee_id
GROUP BY emp.first_name , emp.last_name , emp.gender; 

-- This window function is now giving intended data result so this satisfies the usecase
SELECT 
    emp.first_name, emp.last_name, emp.gender, AVG(sal.salary) OVER(PARTITION BY emp.gender) avg_salary
FROM
    employee_salary sal
        INNER JOIN
    employee_demographics emp ON sal.employee_id = emp.employee_id; 
    
-- use_case-2: find the rolling sum of salary gender wise

SELECT 
    emp.first_name, emp.last_name, emp.gender, sum(sal.salary) OVER(PARTITION BY emp.gender order by emp.employee_id) salary_total
FROM
    employee_salary sal
        INNER JOIN
    employee_demographics emp ON sal.employee_id = emp.employee_id; 
    
-- USE CASE 3: find the salary of different employees and then rank them in decreasing order
-- Row number don't identify duplicates but Rank() and Dense_rank() identify duplicates
--  only difference is that rank() skips the next number but dense_rank() dont
SELECT 
    emp.first_name, 
    emp.last_name, 
    emp.gender, 
    sal.salary, 
    ROW_NUMBER() OVER(PARTITION BY emp.gender order by sal.salary desc) salary_num,
    RANK() OVER(PARTITION BY emp.gender order by sal.salary desc) salary_rank,
    DENSE_RANK() OVER(PARTITION BY emp.gender order by sal.salary desc) salary_dense_rank
FROM
    employee_salary sal
        INNER JOIN
    employee_demographics emp ON sal.employee_id = emp.employee_id;