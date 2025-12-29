select * from employee_salary;
-- where statement
select * from employee_salary where first_name = 'Leslie';

select * from employee_demographics;

select * from employee_salary where salary <= 50000;

select * from employee_demographics where gender = 'Female';

select * from employee_demographics where birth_date > '1985-01-01';

-- Logical Operators AND OR NOT

select * from employee_demographics where birth_date > '1985-01-01' and gender = 'Female';

select * from employee_demographics where birth_date > '1985-01-01' or gender = 'Male';

select * from employee_demographics where first_name = 'Leslie' or age > 55;

-- LIKE operator

select * from employee_demographics where first_name = 'Jerry';
select * from employee_demographics where first_name like '%Jer%';
select * from employee_demographics where first_name like 'a%';
select * from employee_demographics where first_name like 'a__';
select * from employee_demographics where first_name like 'a___';
select * from employee_demographics where first_name like 'a___%';
select * from employee_demographics where birth_date like '1985%';
