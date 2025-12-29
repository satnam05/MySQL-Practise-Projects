-- Group by Order by - aggregate functionb- AVG, MAX, MIN, 

select * from employee_demographics;

select first_name from employee_demographics group by gender; -- Error - SELECT list is not in GROUP BY clause and contains nonaggregated column 'parks_and_recreation.employee_demographics.first_name' which is not functionally dependent on columns in GROUP BY clause;

select gender, AVG(age) from employee_demographics group by gender;

select occupation, salary from employee_salary
group by occupation, salary
;

-- using other aggregate function like MAX, MIN, COUNT
select gender, 
		AVG(age),
        MAX(age),
        MIN(age),
        COUNT(age)
from employee_demographics 
group by gender;

-- ORDER BY
select * 
from employee_demographics
order by first_name desc; -- desc order

select * 
from employee_demographics
order by first_name asc;

select * 
from employee_demographics
order by gender; -- ascending order is default

select * 
from employee_demographics
order by gender, age; -- here first gender is sorted and then age within the same order

select * 
from employee_demographics
order by age, gender; -- here age take precedence over gender sorting so gender is not sorted because age is unique and there are no duplicates 

select * 
from employee_demographics
order by 5, 4; -- column number can also be placed but not recommended
