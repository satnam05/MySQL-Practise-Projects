-- String Functions

-- LENGTH -- gives the length of the string
SELECT LENGTH('SKYFALL');

SELECT 
    first_name, LENGTH(first_name) AS length
FROM
    employee_demographics
ORDER BY 2;

-- Upper - converts to upper case

SELECT UPPER('skyfall') FROM DUAL;
SELECT UPPER('skyfall'); -- both works.
select upper(first_name) from employee_demographics;

-- Lower -- converts to lower case
SELECT LOWER('SKYFALL') FROM DUAL;
SELECT LOWER('SKYFALL'); -- both works.
select LOWER(first_name) from employee_demographics;

-- TRIM -- trims the leading and trailing space of the string

select ('     skyfall   ');
select trim('     skyfall   ');
select ltrim('     skyfall   ');
select rtrim('     skyfall   ');

-- LEFT/RIGHT - find the the number of chars from left or right
select first_name, LEFT(first_name, 3) from employee_demographics;
select first_name, RIGHT(first_name, 3) from employee_demographics;

-- ** Useful - SUBSTRING - selects the number of character from the specified position
select first_name, SUBSTRING(first_name, 3, 3) from employee_demographics;

-- USECASE - find the month of birth for all employees

select first_name, last_name, SUBSTRING(birth_date, 6, 2) as birth_month from employee_demographics;

-- REPLACE
select first_name, REPLACE(first_name, 'a', 'z') from employee_demographics;

-- LOCATE - help find the pattern
select locate('x', 'Alexander');
select first_name, locate('An', first_name) from employee_demographics;

-- ** Useful CONCAT- concatenation of two strings

select concat(first_name, ' ', last_name) from employee_demographics;

