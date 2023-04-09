-- Functions Strings
-- upper() -> converts into upper case letters.
select upper('DIEGO');
select upper(first_name) from employees;
-- lower() -> convert into lower case letters.
select lower(first_name) from employees;
-- length() -> return the length of string.
select length('welcome');
select length(first_name) from employees;

-- Prints of employees whose nasme has 4 characters.
select * from employees where length(first_name)=4;

-- trim() -> removes the specified characters from both sides.
select trim('   welcome    ');
select trim('z' from 'zzkajkzaslkazz');

-- position() -> returns the position of the character within a string.
select position('o' in 'welcome');

-- substr / substring() -> returns the subtring of the string.
select substr('oracle', 2,3);
select substr('oracle', 3,3);
select substr('oracle', 4,3);

select substring('oracle', 2,3);
select substring('oracle', 3,3);
select substring('oracle', 4,3);

select substring(first_name, 1, 4) from employees;

-- concat() -> join strings
select concat('sql_', 'training');
select concat(first_name,' ', last_name) fullName from employees;

-- Functions Numbers

-- Returns the absolute value of numeric expression.
select abs(-40); 
select abs(40);
-- Returns the non-negative square root of numeric expression.
select sqrt(25);
-- Returns the remainder of one expression by diving by another expression.
select mod(26,5);
-- Returns the value of passed expression converted from degrees to radians.
select power(2,3);

-- Truncate: used to truncate the decimal places to a certain precision.
select trunc(40.123123, 3);
select trunc(6876, -2);

-- greatest() & least() -> returns greatest, least values in the provided values.
select greatest(100, 200, 300, 400, 500);
select least(100, 200, 23)


-- Date Functions

-- current_date: -> function returns the current date.
select current_date;
-- current_time: -> return current time.
select current_time;
-- now() -> retrun current time and date.
select now();
-- month()
select extract(month from TIMESTAMP '2020-01-13'); 
-- year()
select extract(year from TIMESTAMP '2020-01-13'); 
-- day()
select extract(day from TIMESTAMP '2020-01-13'); 

-- Display employees who are joined in 1998
select * from employees;
select * from employees where extract(year from hire_date)='1998';

-- Display employees who are joined in June
select * from employees where extract(month from hire_date)=6;


-- Aggregate Functions
select avg(salary) from employees;
select sum(salary) from employees;
select min(salary) from employees;
select max(salary) from employees;
select count(*) from employees;