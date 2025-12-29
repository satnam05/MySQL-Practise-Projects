-- CASE 

-- Helps in adding logic in SQL statements

-- Use case:1 - 
-- Find all the data for the age brackets of young, old and very old people in our organization.

select 
concat(first_name, ' ', last_name) Employee_Names,
CASE 
	WHEN age < 30 THEN 'Young'
    WHEN age > 30 AND age < 50 THEN 'Old'
    WHEN age > 50 THEN 'Very Old'
END age_brackets
from employee_demographics;

-- Use Case 2
-- Find all the data related to new salary and bonus paid at the end of the year for our organization
-- Conditions:
-- salary < 50000 = 5% increase
-- salary > 70000 = 7% increase
-- for Finance department Bonus = 10%

select * from employee_demographics;
select * from employee_salary;
select * from parks_departments; -- 'Finance'

select concat(first_name, ' ', last_name),
sal.salary current_salary,
CASE 
	WHEN salary < 50000 THEN salary * 1.05
    WHEN salary > 50000 THEN salary * 1.07
END AS New_salary,
CASE 
	WHEN sal.dept_id = 6 THEN salary * 1.10
END AS Bonus
from employee_salary sal;
from employee_salary sal;