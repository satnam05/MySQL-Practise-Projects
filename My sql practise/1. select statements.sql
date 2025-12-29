SELECT * FROM parks_and_recreation.employee_demographics;
SELECT * FROM parks_and_recreation.employee_salary;

select * from parks_and_recreation.employee_demographics;

select t.first_name, t.last_name, t.age from parks_and_recreation.employee_demographics t;

select t.first_name, t.last_name, t.age, (t.age + 20)*10+10
from parks_and_recreation.employee_demographics t; 

select first_name, 
last_name, 
birth_date, 
age, 
(age + 10)*10 
from employee_demographics;

select distinct first_name, gender from employee_demographics;

