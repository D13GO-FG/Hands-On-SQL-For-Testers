-- create table tab1(numid int);
-- create table tab2(numid int);
-- insert into tab1 values(10);
-- insert into tab1 values(11);
-- insert into tab1 values(12);
-- insert into tab1 values(14);

-- insert into tab2 values(11);
-- insert into tab2 values(12);
-- insert into tab2 values(13);
-- insert into tab2 values(14);

-- select * from tab1;
-- select * from tab2;

-- select * from tab1 inner join tab2 on tab1.numid=tab2.numid;
-- select * from tab1 left join tab2 on tab1.numid=tab2.numid;
-- select * from tab1 right join tab2 on tab1.numid=tab2.numid;
-- select * from tab1 full join tab2 on tab1.numid=tab2.numid;

select * from employees;
select * from departments;

-- Inner Join -> Matched records
select first_name, salary, departments.department_id from employees inner join departments on employees.department_id = departments.department_id;

-- Left Join -> Mathched records + un matched records from left table
select employee_id, first_name, job_id, dept.department_id, department_name, location_id from employees emp left join departments dept on emp.department_id = dept.department_id;

-- right Join -> Mathched records + un matched records from right table
select employee_id, first_name, job_id, dept.department_id, department_name, location_id from employees emp right join departments dept on emp.department_id = dept.department_id;

-- self-join -> join with a table with the same table
-- Query: Print Employees details who is Manager of other employees.
select e.employee_id, m.manager_id, e.first_name, e.job_id, m.first_name from employees e, employees m where e.employee_id = m.manager_id;

--- Sub Queries
-- Display employees whose salary is less than the of Ellen's Salary
select salary from employees where first_name = 'Ellen';
select salary from employees where salary < 11000.00;

select salary from employees where salary < (select salary from employees where first_name = 'Ellen');

-- 2nd max salary from employee
select max(salary) from employees;
select salary from employees order by salary desc;

select max(salary) from employees where salary < (select max(salary) from employees);
-- 3nd
select max(salary) from employees where salary < (select max(salary) from employees where salary < (select max(salary) from employees));

-- Find the salary of employees whose salary is greater than the salary of employee whose EMPLOYEE_ID 150.
select salary from employees where employee_id = 150;
select salary from employees where salary > 10000.00;

select salary from employees where salary > (select salary from employees where employee_id = 150);

-- Display the employee who all are earning the highest salary.
select * from employees where salary = (select max(salary) from employees);

-- Display employees whose salary is equal to the salary of the at least one employee in departament id 30. IN
select salary from employees where department_id = 30;
select * from employees where salary in (select salary from employees where department_id = 30);

-- Display employees whose salary is greater than the at least on employee in departament id 30.
select salary from employees where department_id = 30;
select * from employees where salary > any(select salary from employees where department_id = 30);

-- Display employees whose salary is less than the at least on employee in departament id 30.
select salary from employees where department_id = 30;
select * from employees where salary < any(select salary from employees where department_id = 30);

-- All
select salary from employees where department_id = 30;
select * from employees where salary < all(select salary from employees where department_id = 30);

select salary from employees where department_id = 30;
select * from employees where salary > all(select salary from employees where department_id = 30);

-- Query to get department name of the employee.
select * from departments;
select * from employees;

select department_name from departments where departments.department_id = employees.department_id;

select first_name, employee_id, department_id, (select department_name from departments where departments.department_id = employees.department_id) DNAME from employees;

-- List out the employees 
-- who are having salary less than the maximum salary 
-- and also having hire date greater than the hire date 
-- of an employee who is having maximun salary.

select employee_id, first_name, salary, hire_date from employees 
    where 
    salary < (select max(salary) from employees) 
    and 
    hire_date > (select hire_date from employees where salary = (select max(salary) from employees));


