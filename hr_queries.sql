-- Selection ROWS from a table
select * from Employees;

select employee_id EMPID, first_name FNAME, last_name LNAME, salary+5000 SAL from employees;

-- Where clause
select * from employees;
select * from employees where salary > 15000;
select * from employees where salary <= 3000;
select * from employees where department_id = 30;
select * from employees where commission_pct is null;
select * from employees where first_name = 'Jennifer';

-- All departaments:  select department_id from employees;

-- Distinct (display unique records based on conditions)
select distinct department_id from employees;
select distinct * from employees; -- all attributes uniques in employees

-- Logical operators (AND, OR, NOT)
set sql_safe_updates = 0;
select * from employees;
-- Both condition need to be satisfied
select * from employees where salary > 15000 and job_id = 'AD_VP';
-- Just one condition satisfied
select * from employees where salary > 15000 or job_id = 'AD_VP';
-- Search all less the condition
select * from employees where not first_name = 'David';


-- Between & IN Operators
-- Between -> Used to display the rows which is following in the range of values.
select * from employees where salary >= 10000 and salary <= 12000;
select * from employees where salary Between 10000 and 12000;
select * from employees where salary not Between 10000 and 12000;

-- IN -> IN operator return the rows when the values are matching in the list.
select * from employees where salary = 3400 or salary = 2500 or salary = 3000;
select * from employees where salary in (3400, 2500, 3000);
select * from employees where salary not in (3400, 2500, 3000);


-- Pattern Matching Operators (whiled card characters)
-- LIKE is a logical operator that is used to determine whether a specific character string matches a specified pattern.
-- % -> many characters
-- _ -> single character
select first_name from employees where first_name like 'S%';
select first_name from employees where first_name like '%r';
select first_name from employees where first_name like 'S%r';
select * from employees where first_name like '%m%';
select first_name from employees where first_name not like 'S%';
select first_name from employees where first_name like '%e_';
-- Name with three caracters
select first_name from employees where first_name like '___';




